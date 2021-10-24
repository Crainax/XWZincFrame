//! zinc
library ArticleSynthesis requires XZAPI
{
    private
    {
        integer itemType[];
        integer itemIndex = 0;
    }

    public struct ArticleSynthesis
    {
        private
        {
            static method count(unit un, integer itemId) ->integer
            {
                integer number = 0;
                integer forIndex;
                for (0 <= forIndex <= 5) {
                    if (GetItemTypeId(UnitItemInSlot(un, forIndex)) == itemId) {
                        number +=1;
                    }
                }
                return number;
            }
            static method removeItem(unit un, integer itemId, integer count)
            {
                integer number = 0;
                integer forIndex = 0;
                while (forIndex <= 5 || number < count) {
                    if (GetItemTypeId(UnitItemInSlot(un, forIndex)) == itemId) {
                        RemoveItem(UnitItemInSlot(un, forIndex));
                        number +=1;
                    }
                    forIndex +=1;
                }
            }
            static method countItemTypeAction(unit un, integer itemId) ->integer
            {
                integer itemType = 0;
                integer number = 0;
                integer count = 0;
                integer forIndex;
                for (1 <= forIndex <= 6) {
                    itemType = load(integer, XZHT, itemId, forIndex);
                    number = load(integer, XZHT, itemId, forIndex + forIndex * 10);
                    if (thistype.count(un, itemType) >= number) {
                        count +=1;
                    }
                }
                return count;
            }
            static method removeMaterial(unit un, integer itemId)
            {
                integer itemType = 0;
                integer number = 0;
                integer forIndex;
                for (1 <= forIndex <= 6) {
                    itemType = load(integer, XZHT, itemId, forIndex);
                    number = load(integer, XZHT, itemId, forIndex + forIndex * 10);
                    thistype.removeItem(un, itemType, number);
                }
            }
            
            static method onInit()
            {
                Event.onUnit("获得物品", function() {
                    unit un = GetManipulatingUnit();
                    integer itemId = 0;
                    integer number = 0;
                    integer index = 0;
                    if (itemIndex > 0) {
                        for (1 <= index <= itemIndex) {
                            if (thistype.countItemTypeAction(un, index:itemType) >= 6) {
                                removeMaterial(un, index:itemType);
                                UnitAddItemByIdSwapped(index:itemType, un);
                            }
                        }
                    }
                    un = null;
                });
            }
        }

        public
        {
            // 注册合成公式 ArticleSynthesis.register('ches', 0, 'ches', 0, 'ches', 0, 'ches', 0, 'ches', 0, 'ches', 0, 'ches');
            static method register(integer itemId01, integer Number01, integer itemId02, integer Number02, integer itemId03, integer Number03, /*
            */integer itemId04, integer Number04, integer itemId05, integer Number05, integer itemId06, integer Number06, integer Target)
            {
                // 1为合成材料，11为合成材料数量
                <?
                    local index
                    for index = 1, 6 do
                    ?>
                    SaveInteger(XZHT, Target, <?= index ?>, itemId0<?= index ?>);
                    SaveInteger(XZHT, Target, <?= index ?><?= index ?>, Number0<?= index ?>);
                    <?
                    end
                ?>
                itemIndex +=1;
                itemIndex:itemType = Target;
            }
        }
    }
}
//! endzinc
