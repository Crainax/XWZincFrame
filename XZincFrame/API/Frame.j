//! zinc
library Frame
{
    public struct Frame
    {
        private
        {
            // 成员属性
            integer f;
            real width;
            boolean showBool;
            string FrameName;

            // 初始化
            static method onInit() {
                integer index = strHash("UI框架事件映射");
                SaveInteger(XZHT, index, strHash("无"), 0);
                SaveInteger(XZHT, index, strHash("鼠标点击"), 1);
                SaveInteger(XZHT, index, strHash("鼠标进入"), 2);
                SaveInteger(XZHT, index, strHash("鼠标离开"), 3);
                SaveInteger(XZHT, index, strHash("鼠标释放"), 4);
                SaveInteger(XZHT, index, strHash("鼠标弹起"), 5);   //1.27测试貌似无用
                SaveInteger(XZHT, index, strHash("鼠标滚轮"), 6);
                SaveInteger(XZHT, index, strHash("被选中"), 7);     //支持复选框
                SaveInteger(XZHT, index, strHash("取消选中"), 8);   //支持复选框
                SaveInteger(XZHT, index, strHash("改变文本"), 9);   //支持类型EDITBOX
                SaveInteger(XZHT, index, strHash("菜单被改变"), 10);
                SaveInteger(XZHT, index, strHash("菜单项目被改变"), 11);
                SaveInteger(XZHT, index, strHash("鼠标双击"), 12);
                SaveInteger(XZHT, index, strHash("动画更新"), 13);  //1.27测试貌似无用
            }
        }

        public
        {
            // 构造函数
            // 此处名字可以自定义，类型和模版填写fdf文件中的内容。通过此函数创建的Frame无法获取到子Frame 类型 名字 父节点 模版 ID,如果模版为无可以填写template
            static method createTag(string Type, string name, Frame p, string template, integer id) ->thistype {
                thistype this = thistype.allocate();
                this.FrameName = name;
                this.f        = DzCreateFrameByTagName(Type, name, p.Handle(), template, id);
                SaveInteger(XZHT, strHash("UI框架实例"), this.f, integer(this));
                return this;
            }
            static method create(string name, Frame p, integer id) ->thistype {
                thistype this = thistype.allocate();
                this.f        = DzCreateFrame(name, p.Handle(), id);
                this.FrameName = name;
                SaveInteger(XZHT, strHash("UI框架实例"), this.f, integer(this));
                return this;
            }
            static method byHandle(integer frame) ->thistype {
                thistype this = 0;
                if (LoadInteger(XZHT, strHash("UI框架实例"), frame) > 0) {
                    return LoadInteger(XZHT, strHash("UI框架实例"), frame);
                }
                this          = thistype.allocate();
                this.f        = frame;
                SaveInteger(XZHT, strHash("UI框架实例"), this.f, integer(this));
                return this;
            }

            // 析构函数
            method destroy() {
                RemoveSavedInteger(XZHT, strHash("UI框架实例"), this.f);
                this.deallocate();
            }
            method delete() {
                DzDestroyFrame(this.f);
                this.destroy();
            }

            // Event
            // 注册异步UI事件回调 action为异步执行回调 需要自己同步，无法在本地环境内执行触发器
            method scriptEvent(string eventId, code action) {
                integer index = LoadInteger(XZHT, strHash("UI框架事件映射"), StringHash(eventId));
                DzFrameSetScriptByCode(this.f, index, action, false);
            }
            // 注册同步UI事件回调 action为同步执行 已经自动同步
            method scriptEventSync(string eventId, code action) {
                integer index = LoadInteger(XZHT, strHash("UI框架事件映射"), StringHash(eventId));
                DzFrameSetScriptByCode(this.f, index, action, true);
            }

            // Get
            method Handle() ->integer { return this.f; } // 获取框架节点
            method value() ->real { return DzFrameGetValue(this.f); } // 获取当前值
            method color(integer r, integer g, integer b, integer a) ->integer { return DzGetColor(r, g, b, a); } // 取RGBA色值 红绿蓝透明
            method getTextSize() ->integer { return DzFrameGetTextSizeLimit(this.f); } // 获取字数限制
            method getHeight() ->real { return DzFrameGetHeight(this.f); } // 获取高度
            method getWidth() ->real { return this.width; } // 获取宽度
            method name() ->string { return this.FrameName; } // 获取名称

            // Get ThisType
            method getParent() ->Frame { return Frame.byHandle(DzFrameGetParent(this.f)); } // 获取Parent
            // 获取子Frame ID填0，同名时优先获取最后被创建的。非Simple类的Frame类型都用此函数来获取子Frame
            static method sonFind(string name, integer id) ->Frame { return Frame.byHandle(DzFrameFindByName(name, id)); }
            // 获取子SimpleFrame ID填0，同名时优先获取最后被创建的。SimpleFrame为fdf中的Frame类型
            static method sonSimple(string name, integer id) ->Frame { return Frame.byHandle(DzSimpleFrameFindByName(name, id)); }
            // 获取子SimpleFontString ID填0，同名时优先获取最后被创建的。SimpleFontString为fdf中的Frame类型
            static method sonSimpleFontString(string name, integer id) ->Frame { return Frame.byHandle(DzSimpleFontStringFindByName(name, id)); }
            // 获取子SimpleTexture ID填0，同名时优先获取最后被创建的。SimpleTexture为fdf中的Frame类型
            static method sonSimpleTexture(string name, integer id) ->Frame { return Frame.byHandle(DzSimpleTextureFindByName(name, id)); }
            // 事件响应-触发的Frame
            static method triggerFrame() ->Frame { return Frame.byHandle(DzGetTriggerUIEventFrame()); }
            // 鼠标所在的Frame控件指针 不是所有类型的Frame都能响应鼠标，能响应的有BUTTON，TEXT等
            static method mouseFrame() ->Frame { return Frame.byHandle(DzGetMouseFocus()); }
            // 原生-单位大头像 小地图右侧的大头像
            static method getPortrait() ->Frame { return Frame.byHandle(DzFrameGetPortrait()); }
            // 原生-小地图
            static method getMinimap() ->Frame { return Frame.byHandle(DzFrameGetMinimap()); }
            // 原生-技能按钮 参考物编中的技能按钮(x,y)坐标 row = x calumn = y
            static method getCommandBarButton(integer row, integer calumn) ->Frame { return Frame.byHandle(DzFrameGetCommandBarButton(row, calumn)); }
            // 原生-英雄按钮 左侧的英雄头像，参数表示第N+1个英雄，索引从0开始
            static method getHeroBarButton(integer index) ->Frame { return Frame.byHandle(DzFrameGetHeroBarButton(index)); }
            // 原生-英雄血条 左侧的英雄头像下的血条，参数表示第N+1个英雄，索引从0开始
            static method getHeroHPBar(integer index) ->Frame { return Frame.byHandle(DzFrameGetHeroHPBar(index)); }
            // 原生-英雄蓝条 左侧的英雄头像下的蓝条，参数表示第N+1个英雄，索引从0开始
            static method getHeroManaBar(integer index) ->Frame { return Frame.byHandle(DzFrameGetHeroManaBar(index)); }
            // 原生-物品栏按钮 索引从0开始
            static method getItemBarButton(integer index) ->Frame { return Frame.byHandle(DzFrameGetItemBarButton(index)); }
            // 原生-小地图按钮 小地图右侧竖排按钮，索引从0开始
            static method getMinimapButton(integer index) ->Frame { return Frame.byHandle(DzFrameGetMinimapButton(index)); }
            // 原生-界面按钮 左上的菜单等按钮，索引从0开始
            static method getUpperButtonBarButton(integer index) ->Frame { return Frame.byHandle(DzFrameGetUpperButtonBarButton(index)); }
            // 原生-鼠标提示 鼠标移动到物品或技能按钮上显示的提示窗，初始位于技能栏上方
            static method getTooltip() ->Frame { return Frame.byHandle(DzFrameGetTooltip()); }
            // 原生-玩家聊天信息框
            static method getChatMessage() ->Frame { return Frame.byHandle(DzFrameGetChatMessage()); }
            // 原生-系统消息框 包含显示消息给玩家 及 显示Debug消息 等
            static method getUnitMessage() ->Frame { return Frame.byHandle(DzFrameGetUnitMessage()); }
            // 原生-上方消息框 高维修费用 等消息
            static method getTopMessage() ->Frame { return Frame.byHandle(DzFrameGetTopMessage()); }
            // 原生-游戏UI 一般用作创建自定义UI的父节点
            static method getGameUI() ->Frame { return Frame.byHandle(DzGetGameUI()); }

            // 独立的根据左上偏移位置设置相对位置的，x跟y的偏移位置会自动换算，只需要填写偏移像素即可。
            method setPointPs(Frame p, real x, real y)
            {
                DzFrameSetPoint(this.f, FRAME_POINT_TOPLEFT, p.Handle(), FRAME_POINT_TOPLEFT, x / 16.0 * 0.01, -y / 16.0 * 0.01);
            }

            // 根据鼠标位置偏移创建
            method setPointMouse(integer point, real whichx, real whichy)
            {
                real x = I2R(Hard.mouseX() - Hard.windowX()) / (I2R(Hard.windowWidth()) / 0.8) + whichx;
                real y = I2R(Hard.windowHeight() + Hard.windowY() - Hard.mouseY()) / (I2R(Hard.windowHeight()) / 0.6) + whichy;
                DzFrameSetAbsolutePoint(this.f, point, x, y);
            }

            // 固定根据游戏UI的中心来设置锚点偏移
            method setPointCenter(real x, real y)
            {
                DzFrameSetPoint(this.f, FRAME_POINT_CENTER, DzGetGameUI(), FRAME_POINT_CENTER, x, y);
            }

            // Set
            // 设置相对位置
            method setPoint(integer point, Frame p, integer relativePoint, real x, real y) { DzFrameSetPoint(this.f, point, p.Handle(), relativePoint, x, y); }
            // 设置绝对位置
            method setAbsolutePoint(integer point, real x, real y) { DzFrameSetAbsolutePoint(this.f, point, x, y); }
            // 移动所有锚点到框架节点
            method movePoint(Frame p) { DzFrameSetAllPoints(this.f, p.Handle()); }
            // 设置缩放
            method setScale(real scale) { DzFrameSetScale(this.f, scale); }
            // 设置大小
            method setSize(real w, real h) { this.width = w;DzFrameSetSize(this.f, w / 16 * 0.01, h / 16 * 0.01); }
            // 设置焦点 true为获取焦点
            method setFocus(boolean flag) { DzFrameSetFocus(this.f, flag); }
            // 设置文本 支持 EditBox, TextFrame, TextArea, SimpleFontString、GlueEditBoxWar3、SlashChatBox、TimerTextFrame、TextButtonFrame、GlueTextButton
            method setText(string text) { DzFrameSetText(this.f, text); }
            // 设置贴图 支持 Backdrop、SimpleStatusBar flag = 是否平铺
            method setTextUre(string ure, integer flag) { DzFrameSetTexture(this.f, ure, flag); }
            // 设置透明度 0-255 0为隐藏
            method setAlpha(integer alpha) { DzFrameSetAlpha(this.f, alpha); }
            // 设置颜色 红绿蓝 透明 0-255
            method setColor(integer r, integer g, integer b, integer a) { DzFrameSetVertexColor(this.f, DzGetColor(r, g, b, a)); }
            // 设置字数限制
            method setTextSize(integer size) { DzFrameSetTextSizeLimit(this.f, size); }
            // 设置提示
            method setTooltip(integer tooltip) { DzFrameSetTooltip(this.f, tooltip); }
            // 限制鼠标移动 true为限制
            method cageMouse(boolean flag) { DzFrameCageMouse(this.f, flag); }
            // 设置模型文件
            method setModel(string name, integer modelType, integer flag) { DzFrameSetModel(this.f, name, modelType, flag); }
            // 设置动画 flag = 是否自动播放
            method setAnimate(integer alpha, boolean flag) { DzFrameSetAnimate(this.f, alpha, flag); }
            // 设置动画进度 自动播放为false 为可用
            method setAnimateOffset(real offset) { DzFrameSetAnimateOffset(this.f, offset); }
            // 点击
            method click() { DzClickFrame(this.f); }
            // 清空所有锚点
            method flushPoint() { DzFrameClearAllPoints(this.f); }
            // 设置最大/最小值 支持 Slider、SimpleStatusBar、StatusBar
            method setMixMax(real min, real max) { DzFrameSetMinMaxValue(this.f, min, max); }
            // 设置步进值 支持 Slider
            method setStep(real step) { DzFrameSetStepValue(this.f, step); }
            // 设置当前值 支持 Slider、SimpleStatusBar、StatusBar
            method setValue(real value) { DzFrameSetValue(this.f, value); }
            // 启用/禁用 true为启用 false为禁用
            method enable(boolean flag) { DzFrameSetEnable(this.f, flag); }
            // 显示/隐藏 true为显示 false为隐藏
            method show(boolean flag) { this.showBool = flag;DzFrameShow(this.f, flag); }
            // 设置优先级
            method setPriority(integer level) { DzFrameSetPriority(this.f, level); }
            // 设置父窗口
            method setParent(Frame p) { DzFrameSetParent(this.f, p.Handle()); }
            // 设置字体 支持 EditBox、SimpleFontString、SimpleMessageFrame 以及非 SimpleFrame 类型的例如TEXT，flag作用未知
            method setFont(string name, real height, integer flag) { DzFrameSetFont(this.f, name, height, flag); }
            // 设置对齐方式 支持 TextFrame、SimpleFontString、SimpleMessageFrame
            method setTextAlignment(integer aligh) { DzFrameSetTextAlignment(this.f, aligh); }

            // Boolean
            // 判断控件是否启用
            method IsEnable() ->boolean { return DzFrameGetEnable(this.f); }
            // 判断控件是否显示
            method IsShow() ->boolean { return this.showBool; }

            // 其他
            // 加载Toc文件列表 name = fileName.toc 载入自己的fdf列表文件
            static method loadToc(string name) { DzLoadToc(name); }
            // 原生-隐藏所有界面UI 不在地图初始化时调用则会残留小地图和时钟模型
            static method hideInterface() { DzFrameHideInterface(); }
            // 原生-使用宽屏模式 true为宽屏
            static method enableWideScreen(boolean flag) { DzEnableWideScreen(flag); }
            // 原生-修改屏幕比例(FOV)
            static method setCustomFovFix(real value) { DzSetCustomFovFix(value); }
            // 原生-修改游戏渲染黑边范围 修改游戏渲染黑边: 上方高度:upper 下方高度:bottom
            static method editBlackBorders(real upper, real bottom) { DzFrameEditBlackBorders(upper, bottom); }
            // 原生-设置小地图背景贴图 路径 如 war3mapMap.blp
            static method setWar3MapMap(string name) { DzSetWar3MapMap(name); }
        }
    }
}
//! endzinc
