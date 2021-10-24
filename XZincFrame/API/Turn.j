//! zinc
library Turn requires Base
{
    public struct Turn
    {
        public
        {
            static method handleId(handle han) ->integer { return GetHandleId(han); } // 获取对象的句柄

            // 句柄转换物品
            static method item(integer id) ->item {
                SaveFogStateHandle(XZHT, strHash("转换库索引"), 0, ConvertFogState(id));
                return LoadItemHandle(XZHT, strHash("转换库索引"), 0);
            }
            // 句柄转换单位
            static method unit(integer id) ->unit {
                SaveFogStateHandle(XZHT, strHash("转换库索引"), 0, ConvertFogState(id));
                return LoadUnitHandle(XZHT, strHash("转换库索引"), 0);
            }
            // 句柄转换可破坏物
            static method dest(integer id) ->destructable {
                SaveFogStateHandle(XZHT, strHash("转换库索引"), 0, ConvertFogState(id));
                return LoadDestructableHandle(XZHT, strHash("转换库索引"), 0);
            }

            static method isItem(integer id) ->boolean { return thistype.item(id) != null; } // 是否为物品
            static method isUnit(integer id) ->boolean { return thistype.unit(id) != null; } // 是否为单位
            static method isDest(integer id) ->boolean { return thistype.dest(id) != null; } // 是否为可破坏物

            // 获取句柄的Type
            static method typeId(integer id) ->integer {
                if (thistype.isItem(id)) return GetItemTypeId(thistype.item(id));
                if (thistype.isUnit(id)) return GetUnitTypeId(thistype.unit(id));
                if (thistype.isDest(id)) return GetDestructableTypeId(thistype.dest(id));
                return 0;
            }
        }
    }
}
//! endzinc
