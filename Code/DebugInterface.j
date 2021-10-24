//! zinc
library Debug requires Xwei
{
    Button but = 0;
    Border bor = 0;

    function action_1()
    {
        Button b = Button.getButton();
        b.setHig("", 0);
    }

    function action_2()
    {
        Button b = Button.getButton();
        b.setBack("", 0);
    }

    function action_3()
    {
        Button b = Button.getButton();
        print("捕捉点击");
    }

    function initAction()
    {
        ButtonPara para = ButtonPara.create();
        BorderPara Bpara;
        // 参数注册
        para.text = "测试";
        // 初始化创建
        but = Button.create(para);
        but.id.setPoint(FRAME_MAODIAN_ZHONGXIN, Para.pt, FRAME_MAODIAN_ZHONGXIN, 0.0, 0.0);
        // 创建边框
        Bpara = BorderPara.create(but.id.Handle());
        bor = Border.create(Bpara);
        // 注册事件
        but.onEvent("鼠标进入", function action_1);
        but.onEvent("鼠标离开", function action_2);
        but.onEvent("鼠标点击", function action_3);
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
        });
        // 初始化
        Timer.create(0.0, false, function initAction);
    }
}
//! endzinc
