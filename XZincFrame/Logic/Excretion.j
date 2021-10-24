//! zinc
library Excretion
{
    // 单位死亡后清除属性
    private struct deathUnit
    {
        static method action() {
            integer unId = GetHandleId(GetDyingUnit());
            integer size = 0;
            integer forIndex = 0;
            if (!LoadBoolean(XZHT, unId, strHash("永久单位"))) {
                // 遍历永久Buff
                if (LoadInteger(BuffHT, unId, strHash("永久Buff数量")) > 0) {
                    size = LoadInteger(BuffHT, unId, strHash("永久Buff数量"));
                    for (1 <= forIndex <= size) {
                        Buff(LoadInteger(BuffHT, unId, forIndex)).destroy();
                    }
                    FlushChildHashtable(BuffHT, unId);
                }
                // 清空表属性
                FlushChildHashtable(XZHT, unId);
                FlushChildHashtable(XWHT, unId);
                FlushChildHashtable(USERTABLE_USDT, unId);
            }
        }
        static method onInit() {
            integer index;
            trigger trig = CreateTrigger();
            for (0 <= index <= 15) {
                TriggerRegisterPlayerUnitEvent(trig, Player(index), EVENT_PLAYER_UNIT_DEATH, null);
            }
            TriggerAddAction(trig, function thistype.action);
            trig = null;
        }
    }

    // 抵押物品和周期性选取物品排泄
    // 用来控制周期性排泄的时间周期 单位为秒
    #define Item_Destroy_Time_Real          60
    private struct deathItem
    {
        static method action() {
            integer itId = GetHandleId(GetSoldItem());
            FlushChildHashtable(XZHT, itId);
        }
        static method onInit() {
            trigger trig = CreateTrigger();
            integer index;
            for (0 <= index <= 15) {
                TriggerRegisterPlayerUnitEvent(trig, Player(0), EVENT_PLAYER_UNIT_PAWN_ITEM, null);
            }
            TriggerAddAction(trig, function thistype.action);
            Timer.create(Item_Destroy_Time_Real, true, function() {
                Item.enumInRect(bj_mapInitialPlayableArea, function() {
                    Item it = Item.enumItem();
                    if (it.life() <= 0.0) {
                        it.setLife(1.0);
                        it.delete();
                    } else {
                        it.Null();
                    }
                });
            });
            trig = null;
        }
    }
}
//! endzinc
