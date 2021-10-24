//! zinc
library Object
{
    private
    {
        // 单位
        struct UnitType
        {
            public
            {
                static method data(integer id, string data) ->string { return EXExecuteScript("(require'jass.slk').unit[" + I2S(id) + "]." + data); }
                static method IsHero(integer id) ->boolean { return IsHeroUnitId(id); } // 单位类型是英雄
                static method IsType(integer id, unittype tp) ->boolean { return IsUnitIdType(id, tp); } // 单位类型检查
                static method made(integer id) ->integer { return GetFoodMade(id); } // 制造人口
                static method used(integer id) ->integer { return GetFoodUsed(id); } // 使用人口
                static method value(integer id) ->integer { return GetUnitPointValueByType(id); } // 附加值
            }
        }
        // 物品
        struct ItemType
        {
            public
            {
                static method data(integer id, string data) ->string { return EXExecuteScript("(require'jass.slk').item[" + I2S(id) + "]." + data); }
                static method icon(integer id) ->string { return EXGetItemDataString(id, ITEM_STATE_COOLDOWN); } // 物品图标
                static method name(integer id) ->string { return EXGetItemDataString(id, ITEM_STATE_TIP); } // 物品提示[名字]
                static method tip(integer id) ->string { return EXGetItemDataString(id, ITEM_STATE_UBEBTIP); } // 物品提示[扩展]
                static method setIcon(integer id, string value) ->boolean { return EXSetItemDataString(id, ITEM_STATE_COOLDOWN, value); } // 设置物品图标
                static method setName(integer id, string value) ->boolean { return EXSetItemDataString(id, ITEM_STATE_TIP, value); } // 设置物品图标
                static method setTip(integer id, string value) ->boolean { return EXSetItemDataString(id, ITEM_STATE_UBEBTIP, value); } // 设置物品图标
                static method IsPawnable(integer id) ->boolean { return IsItemIdPawnable(id); } // 物品是否为可抵押
                static method IsPowerup(integer id) ->boolean { return IsItemIdPowerup(id); } // 物品是否为捡拾自动使用
                static method IsSellable(integer id) ->boolean { return IsItemIdSellable(id); } // 物品是否为可出售
            }
        }
        // 技能
        struct AbilityType
        {
            public
            {
                static method data(integer id, string data) ->string { return EXExecuteScript("(require'jass.slk').ability[" + I2S(id) + "]." + data); }
            }
        }
        // 魔法效果
        struct BuffType
        {
            public
            {
                static method data(integer id, string data) ->string { return EXExecuteScript("(require'jass.slk').buff[" + I2S(id) + "]." + data); }
            }
        }
        // 科技
        struct TechType
        {
            public
            {
                static method data(integer id, string data) ->string { return EXExecuteScript("(require'jass.slk').upgrade[" + I2S(id) + "]." + data); }
            }
        }
        // 可破坏物
        struct DestructableType
        {
            public
            {
                static method data(integer id, string data) ->string { return EXExecuteScript("(require'jass.slk').destructable[" + I2S(id) + "]." + data); }
            }
        }
        // 地形装饰物
        struct DoodadType
        {
            public
            {
                static method data(integer id, string data) ->string { return EXExecuteScript("(require'jass.slk').doodad[" + I2S(id) + "]." + data); }
            }
        }
    }

    // 对象
    public struct Object
    {
        private
        {
            static method onInit() {
                Unit         = UnitType.create();
                Item         = ItemType.create();
                Ability      = AbilityType.create();
                Buff         = BuffType.create();
                Tech         = TechType.create();
                Destructable = DestructableType.create();
                Doodad       = DoodadType.create();
            }
        }

        public
        {
            static UnitType Unit                 = 0;
            static ItemType Item                 = 0;
            static AbilityType Ability           = 0;
            static BuffType Buff                 = 0;
            static TechType Tech                 = 0;
            static DestructableType Destructable = 0;
            static DoodadType Doodad             = 0;

            static method name(integer id) ->string { return GetObjectName(id); } // 获取对象名字
        }
    }
}
//! endzinc
