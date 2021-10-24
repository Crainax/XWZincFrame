//! zinc
library Debug requires Xwei
{
    Unit hero = 0;
    Buff bf = 0;

    function initAction()
    {
        hero = Unit.byHandle(gg_unit_Hblm_0016);
    }

    function onInit()
    {
        // 实例调试
        Event.onGamerChat(function() {
            string chat = String.chat();
            if (chat == "thisSize") {
                print("--------------------");
                print("Effect-特效-实例数量：" + I2S(Effect.thisSize));
                print("Point-点-实例数量：" + I2S(Point.thisSize));
                print("Group-单位组-实例数量：" + I2S(Group.thisSize));
                print("Unit-单位-实例数量：" + I2S(Unit.thisSize));
                print("Item-物品-实例数量：" + I2S(Item.thisSize));
                print("--------------------");
            }
            if (chat == "1") {
                bf = Buff.new(hero, hero, "眩晕Buff", 2.0);
            }
            if (chat == "2") {
                bf.endTime();
            }
        });
        // 初始化
        Timer.create(0.0, false, function initAction);
    }
}
//! endzinc
