//! zinc
library ReduceArmor requires Xwei
{
    public BuffType ReduceArmor = 0;

    private integer abId = 0;

    #define ReduceArmorTarArtEffect  "Abilities\\Spells\\NightElf\\FaerieFire\\FaerieFireTarget.mdl" // 精灵之火原版特效

    private function onInit()
    {
        // 减防技能注册
        <?
            local slk = require 'slk'
            -- 减防数值技能
            local obj = slk.ability.AId1:new "减防系统技能马甲"
            -- 名字
            obj.Name = "小为减防系统核心马甲"
            -- 注释
            obj.EditorSuffix = ""
            -- 技能等级
            obj.levels = 2
            -- 技能数据A1
            obj.DataA1 = 0
            -- 技能数据A2
            obj.DataA2 = 0
            -- 物品技能
            obj.item = 0
            -- 技能图标
            obj.Art = "ReplaceableTextures\\CommandButtons\\BTNRingGreen.blp"
        ?>
        abId = '<?= obj:get_id() ?>';
        // 减防Buff注册
        ReduceArmor = BuffType.create("减防Buff", false);
        ReduceArmor.onAdd(function() {
            Buff bf = BuffType.getBuff();
            Unit tu = 0;
            real loc = 0.0;
            if (bf.IsRepeat()) {
                if (bf.getRepeatTime() >= bf.getTime()) {
                    bf.setTime(bf.getRepeatTime());
                }
            } else {
                tu = bf.getTarget();
                loc = tu.stateString("护甲") * 0.15;
                loc = loc - loc * 2;
                tu.addAbility(abId, true);
                tu.addAbilityLevel(abId);
                tu.setAbilityDataReal(abId, 1, ABILITY_DATA_DATA_A, loc);
                tu.subAbilityLevel(abId);
                userSet(integer, bf.HandleId(), Effect, "减防模型", Effect.createUnit(ReduceArmorTarArtEffect, tu, "head"));
                tu.Null();
            }
        });
        ReduceArmor.onRemove(function() {
            Buff bf = BuffType.getBuff();
            Unit tu = bf.getTarget();
            tu.subAbility(abId);
            userGet(integer, bf.HandleId(), Effect, "减防模型").delete();
            tu.Null();
        });
    }
}
//! endzinc
