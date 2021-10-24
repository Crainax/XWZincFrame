//! zinc
library Attribute
{
    /*
    预处理注册
    规则:
    格式:字符 空格 ± 数字[数字后缀支持 千 万 亿 %]
    例子:攻击力 +10万[转义后为 属性名为攻击力 属性值为100000]

    在数字后缀后面加上一个空格或一个".",那么系统就会自动忽略掉,不注册.

    在 物品ID的 属性数量里面储存着每个物品的属性类目总数 索引是从1开始的

    在 物品ID的 属性名里面储存着每个属性名的属性值

    在 物品ID的 每个属性类目索引里面储存着每个属性名
    */
    <?
    local slk = require 'slk'
    ?>

    <?
    function define(data,index)
        local key = 1
        local Type = 0
        for itemId, item in pairs(data) do
            local name = item.Name or ""
            local ubertip = item.Ubertip:gsub("|[cC]%w%w%w%w%w%w%w%w",""):gsub("(|r",""):gsub("(|n","$\n^"):gsub("^","^"):gsub("$","$")
            local matches = string.gmatch(ubertip, "[\n%^]([^%s%d%p]+)%s*([+-]%d+)([%%千万亿]*)%$")
            key = 1
            Type = 0
            for attribute, value, unit in matches do
                if unit == "千" then
                    value = value * 1000
                elseif unit == "万" then
                    value = value * 10000
                elseif unit == "亿" then
                    value = value * 100000000
                elseif unit == "%" then
                    value = value / 100
                end
                if index == 2 then
                ?>
                SaveReal(XZHT, '<?= itemId ?>', <?= StringHash(attribute) ?>, <?= tonumber(value) ?>);
                <?
                end
                if index == 3 then
                ?>
                SaveStr(XZHT, '<?= itemId ?>', <?= key ?>, "<?= attribute ?>");
                <?
                end
                key = key + 1
                Type = itemId
            end
            if key > 1 and index == 1 then
            ?>
            SaveInteger(XZHT, '<?= Type ?>', <?= StringHash("属性数量") ?>, <?= tonumber(key) - 1 ?>);
            <?
            end
        end
    end
    ?>

    <?
    function AbilityDefine(index)
        local key = 1
        local Type = 0
        for id, object in pairs(slk.ability) do
            local switch = string.sub(object.CasterArt, 1, 2) or ""
            if switch == "1|" then
                local name = object.Name or ""
                local ubertip = object.Ubertip:gsub("|[cC]%w%w%w%w%w%w%w%w",""):gsub("(|r",""):gsub("(|n","$\n^"):gsub("^","^"):gsub("$","$")
                local matches = string.gmatch(ubertip, "[\n%^]([^%s%d%p]+)%s*([+-]%d+)([%%千万亿]*)%$")
                key = 1
                Type = 0
                for attribute, value, unit in matches do
                    if unit == "千" then
                        value = value * 1000
                    elseif unit == "万" then
                        value = value * 10000
                    elseif unit == "亿" then
                        value = value * 100000000
                    elseif unit == "%" then
                        value = value / 100
                    end
                    if index == 2 then
                    ?>
                    SaveReal(XZHT, '<?= id ?>', <?= StringHash(attribute) ?>, <?= tonumber(value) ?>);
                    <?
                    end
                    if index == 3 then
                    ?>
                    SaveStr(XZHT, '<?= id ?>', <?= key ?>, "<?= attribute ?>");
                    <?
                    end
                    key = key + 1
                    Type = id
                end
                if key > 1 and index == 1 then
                ?>
                SaveInteger(XZHT, '<?= Type ?>', <?= StringHash("属性数量") ?>, <?= tonumber(key) - 1 ?>);
                <?
                end
            end
        end
    end
    ?>

    <?
    function timestamp()
        return os.date('%Y-%m-%d %H:%M:%S')
    end
    ?>

    private struct DefineItem
    {
        static method onInit() {
            trigger trig = CreateTrigger();
            // 注册物品
                // 注册属性数量
                TriggerAddAction(trig, function() {
                    <? define(slk.item, 1) ?>
                });
                // 注册属性值
                TriggerAddAction(trig, function() {
                    <? define(slk.item, 2) ?>
                });
                // 注册属性名索引映射
                TriggerAddAction(trig, function() {
                    <? define(slk.item, 3) ?>
                });
            // 注册技能
                // 注册属性数量
                TriggerAddAction(trig, function() {
                    <? AbilityDefine(1) ?>
                });
                // 注册属性值
                TriggerAddAction(trig, function() {
                    <? AbilityDefine(2) ?>
                });
                // 注册属性名索引映射
                TriggerAddAction(trig, function() {
                    <? AbilityDefine(3) ?>
                });
            // 执行
            TriggerExecute(trig);
            trig = null;
        }
    }

    // 物品捡取和丢弃自动给予和删除属性
    private struct ItemAttribute
    {
        static method onInit() {
            trigger pick = CreateTrigger();
            trigger discard = CreateTrigger();
            integer index;
            for (0 <= index <= 15) {
                TriggerRegisterPlayerUnitEvent(pick, Player(index), EVENT_PLAYER_UNIT_PICKUP_ITEM, null);
                TriggerRegisterPlayerUnitEvent(discard, Player(index), EVENT_PLAYER_UNIT_DROP_ITEM, null);
            }
            // 捡取给予属性
            TriggerAddAction(pick, function() {
                Unit u = 0;
                integer itemId = GetItemTypeId(GetManipulatedItem());
                integer level = GetItemLevel(GetManipulatedItem());
                integer index,number;
                string KeyName;
                real value;
                // 判断非人造物品分类和物品等级非45的
                if (GetItemType(GetManipulatedItem()) != ITEM_TYPE_ARTIFACT && level != 45) {
                    u = Unit.manipulatingUnit();
                    number = LoadInteger(XZHT, itemId, strHash("属性数量"));
                    if (number > 0) {
                        for (1 <= index <= number) {
                            KeyName = LoadStr(XZHT, itemId, index);
                            value = LoadReal(XZHT, itemId, StringHash(KeyName));
                            u.addStateString(KeyName, value);
                        }
                    }
                    u.Null();
                }
            });
            // 丢弃减少属性
            TriggerAddAction(discard, function() {
                Unit u = 0;
                integer itemId = GetItemTypeId(GetManipulatedItem());
                integer level = GetItemLevel(GetManipulatedItem());
                integer index,number;
                string KeyName;
                real value;
                // 判断非人造物品分类和物品等级非45的
                if (GetItemType(GetManipulatedItem()) != ITEM_TYPE_ARTIFACT && level != 45) {
                    u = Unit.manipulatingUnit();
                    number = LoadInteger(XZHT, itemId, strHash("属性数量"));
                    if (number > 0) {
                        for (1 <= index <= number) {
                            KeyName = LoadStr(XZHT, itemId, index);
                            value = LoadReal(XZHT, itemId, StringHash(KeyName));
                            u.subStateString(KeyName, value);
                        }
                    }
                    u.Null();
                }
            });
            pick = null;
            discard = null;
        }
    }
}
//! endzinc
