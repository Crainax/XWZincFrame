//! zinc
library Debug requires Xwei
{
    // 运动器演示
    // Unit u = 0;
    // integer count = 0;

    // function action()
    // {
    //     MotionPara para = MotionPara.create();
    //     para.mover = u;
    //     para.angle = u.facing();
    //     para.height = 360.0;
    //     Motion.create(para, "测试冲锋");
    //     para.destroy();
    // }

    // function onInit()
    // {
    //     Game.Shadow(false);
    //     Game.denseFog(false);
    //     u = Unit.create(0:gamer, 'Hblm', 0.0, 0.0, 0.0);
    //     Event.onGamer(EVENT_PLAYER_END_CINEMATIC, function action);
    //     Event.onGamerChat(function() {
    //         0:gamer.clearMsg();
    //     });
    //     Event.onDiy("碰撞事件", function() {
    //         Motion m = Event.getTriggerEventData();

    //         0:gamer.clearMsg();
    //         print("碰撞事件-碰撞来源" + m.getMover().name());
    //         print("碰撞事件-碰撞响应单位" + m.getUnit().name());
    //     });
    //     Event.onDiy("完成事件", function() {
    //         Motion m = Event.getTriggerEventData();
    //         print("完成事件-碰撞响应单位" + m.getUnit().name());
    //     });
    // }

    // Debug当前实例数量演示
    // function onInit()
    // {
    //     Event.onGamerChat(function() {
    //         string chat = String.chat();
    //         if (chat == "thisSize") {
    //             print("--------------------");
    //             print("Effect-特效-实例数量：" + I2S(Effect.thisSize));
    //             print("Point-点-实例数量：" + I2S(Point.thisSize));
    //             print("Group-单位组-实例数量：" + I2S(Group.thisSize));
    //             print("Unit-单位-实例数量：" + I2S(Unit.thisSize));
    //             print("Item-物品-实例数量：" + I2S(Item.thisSize));
    //             print("--------------------");
    //         }
    //     });
    // }

    // 玩家实例演示
    // function onInit()
    // {
    //     print(Gamer.user[0].name());
    //     print(Gamer.Gamer(0).name());
    // }

    // 伤害系统演示
    // function onInit()
    // {
    //     Game.Shadow(false);
    //     Game.denseFog(false);
    //     Event.onGamerChat(function() {
    //         // 打开玩家特效key开关
    //         if (String.chat() == "1") {
    //             Gamer.user[0].switchEffect(true);
    //         }
    //         // 关闭玩家特效key开关
    //         if (String.chat() == "2") {
    //             Gamer.user[0].switchEffect(false);
    //         }
    //     });
    // }

    // 百分比属性演示
    // function onInit()
    // {
    //     Gamer.user[0].hero = Unit.create(Gamer.user[0], 'Hpal', Map_base_X, Map_base_Y, 0.0);
    //     Gamer.user[0].hero.addStateString("百分比力量", 0.5);
    //     Gamer.user[0].hero.addStateString("百分比敏捷", 0.5);
    //     Gamer.user[0].hero.addStateString("百分比智力", 0.5);
    //     Event.onGamerChat(function() {
    //         string chat = String.chat();
    //         if (chat == "=") {
    //             Gamer.user[0].clearMsg();
    //             Gamer.user[0].hero.setStateString("全属性", 100.0);
    //         }
    //         if (chat == "+") {
    //             Gamer.user[0].clearMsg();
    //             Gamer.user[0].hero.addStateString("全属性", 100.0);
    //         }
    //         if (chat == "-") {
    //             Gamer.user[0].clearMsg();
    //             Gamer.user[0].hero.subStateString("全属性", 100.0);
    //         }
    //         print("基础属性-力量：" + I2S(LoadInteger(XZHT, Gamer.user[0].hero.HandleId(), strHash("基础属性-力量"))));
    //         print("基础属性-敏捷：" + I2S(LoadInteger(XZHT, Gamer.user[0].hero.HandleId(), strHash("基础属性-敏捷"))));
    //         print("基础属性-智力：" + I2S(LoadInteger(XZHT, Gamer.user[0].hero.HandleId(), strHash("基础属性-智力"))));
    //         print("结算属性-力量：" + I2S(LoadInteger(XZHT, Gamer.user[0].hero.HandleId(), strHash("结算属性-力量"))));
    //         print("结算属性-敏捷：" + I2S(LoadInteger(XZHT, Gamer.user[0].hero.HandleId(), strHash("结算属性-敏捷"))));
    //         print("结算属性-智力：" + I2S(LoadInteger(XZHT, Gamer.user[0].hero.HandleId(), strHash("结算属性-智力"))));
    //     });
    // }
}
//! endzinc
