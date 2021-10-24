/*
 * @Descripttion: 按钮组件
 * @Author: Carlos
 * @Date: 2020-05-21 08:10:42
 * @LastEditors: Carlos
 * @LastEditTime: 2020-05-29 17:59:58
 */ 
//! zinc
library Button 
{
    // 默认值
    #define ButtonDefault_interactiblei true // 是否接收输入 如果为禁用 那么所有过渡效果也禁用包括响应事件
    #define ButtonDefault_show true
    
    #define ButtonUserNormalColor Color.Argb(255,255,255,255)
    #define ButtonUserDisabledColor Color.Argb(255,50,50,50)

    // 结构自定义值字段
    #define ButtonUserInteractiblei "interactiblei"
    #define ButtonUserShow "show"

    // 结构自定义值类型
    #define ButtonUserInteractibleiType boolean
    #define ButtonUserShowType boolean
    
    public
    {
        struct Button 
        {
            private
            {
                integer handle_this;
            }

            public
            {
                Image TextUre;    
                Text  TextBox;     
            }

            public
            {
                // 存储全局的Button结构
                static Table table = 0;
                static method onInit()
                {
                    thistype.table = Table.create();
                }

                // 获取响应控件
                static method GetReactive() -> thistype { return Button.byHandle(DzGetTriggerUIEventFrame());}
                /**
                 * @name: Button.byHandle
                 * @test: 
                 * @msg: 获取响应回调对应的按钮
                 * @param {handle_this} 
                 * @return: Button
                 */
                static method byHandle(integer handle_this) -> thistype 
                {
                    thistype this = 0;
                    if (thistype.table[handle_this] > 0)
                    {
                        this = thistype.table[handle_this];
                    }else{
                        print("Button -> 当前控件没有注册过实例.Id:" + I2S(handle_this));
                    }
                    return this;
                }
            }

            public
            {
                // 添加矩形变换属性模块
                module RectTransform;

                static method create() -> thistype
                {
                    thistype this = thistype.allocate();

                    this.handle_this = DzCreateFrameByTagName("BUTTON","",RectDefault_parent,"",0);

                    this.TextUre = Image.create();
                    this.TextUre.movePoint(this.Handle);

                    this.TextBox = Text.create();
                    this.TextBox.parent = this.Handle;
                    this.TextBox.movePoint(this.Handle);
                    this.TextBox.size = 16;

                    thistype.table[this.Handle] = this; // 保存new的结构进全局Table 方便注册回调调用

                    this.init();
                    return this;
                }

                method destroy()
                {
                    this.handle_this = 0;
                    this.TextUre.delete();
                    this.TextBox.delete();
                    
                    this.deallocate();
                }

                method delete() 
                {
                    userClearTable(integer,this.Handle);    // 清空所有自定义值
                    DzDestroyFrame(this.Handle);

                    this.destroy();
                }

                // 获取句柄 - handle
                method operator Handle() -> integer { return this.handle_this;}
                // 获取属性 - Interactiblei
                method operator interactiblei() -> ButtonUserInteractibleiType { return userGet(integer,this.Handle,ButtonUserInteractibleiType,ButtonUserInteractiblei);}
                // 获取属性 - show
                method operator show() -> ButtonUserShowType { return userGet(integer,this.Handle,ButtonUserShowType,ButtonUserShow);}

                // 设置属性 - Interactiblei
                method operator interactiblei=(ButtonUserInteractibleiType flag)
                {
                    userSet(integer,this.Handle,ButtonUserInteractibleiType,ButtonUserInteractiblei,flag);
                    this.SetEnable(flag);

                    if (flag) this.TextUre.color = ButtonUserNormalColor;
                    else      this.TextUre.color = ButtonUserDisabledColor;
                }
                // 设置属性 - show
                method operator show=(ButtonUserShowType flag)
                {
                    userSet(integer,this.Handle,ButtonUserShowType,ButtonUserShow,flag);
                    this.setShow(flag);
                }

                // 虚拟属性 - 注册点击事件 异步
                method operator on_click=(code action)
                {
                    integer index = LoadInteger(XZHT, strHash("UI框架事件映射"), strHash("鼠标点击"));
                    DzFrameSetScriptByCode(this.Handle,index,action,false);
                }
                // 虚拟属性 - 注册进入事件 异步
                method operator on_over=(code action)
                {
                    integer index = LoadInteger(XZHT, strHash("UI框架事件映射"), strHash("鼠标进入"));
                    DzFrameSetScriptByCode(this.Handle,index,action,false);
                }
                // 虚拟属性 - 注册离开事件 异步
                method operator on_out=(code action)
                {
                    integer index = LoadInteger(XZHT, strHash("UI框架事件映射"), strHash("鼠标离开"));
                    DzFrameSetScriptByCode(this.Handle,index,action,false);
                }
                // 虚拟属性 - 注册滚动事件 异步
                method operator on_wheel=(code action)
                {
                    integer index = LoadInteger(XZHT, strHash("UI框架事件映射"), strHash("鼠标滚轮"));
                    DzFrameSetScriptByCode(this.Handle,index,action,false);
                }
                // 虚拟属性 - 注册双击事件 异步
                method operator on_doubleClick=(code action)
                {
                    integer index = LoadInteger(XZHT, strHash("UI框架事件映射"), strHash("鼠标双击"));
                    DzFrameSetScriptByCode(this.Handle,index,action,false);
                }
                // 虚拟属性 - 注册释放事件 异步  注意这个释放会和点击回调一起触发。如果是点击事件注册了，不建议注册改用硬件释放
                method operator on_clickUp=(code action)
                {
                    integer index = LoadInteger(XZHT, strHash("UI框架事件映射"), strHash("鼠标释放"));
                    DzFrameSetScriptByCode(this.Handle,index,action,false);
                }

                // 实例方法 - 点击自身
                method Click()
                {
                    DzClickFrame(this.Handle);
                }                                
            }

            private
            {
                // 初始化结构默认值
                method default()
                {
                    userSet(integer,this.Handle,ButtonUserInteractibleiType,ButtonUserInteractiblei,ButtonDefault_interactiblei);
                    userSet(integer,this.Handle,ButtonUserShowType,ButtonUserShow,ButtonDefault_show);
                }
                // 初始化
                method init()   
                { 
                    this.rect_init();    // 此函数在RectTransform 模块
                    this.default();

                    this.interactiblei = this.interactiblei;
                    this.show = this.show;

                    // 默认注册事件
                }
                // 启用/禁用
                method SetEnable(ButtonUserInteractibleiType flag) { DzFrameSetEnable(this.Handle,flag);}     
                // 显示状态
                method setShow(ButtonUserShowType flag)
                {
                    this.TextUre.show = flag;
                    DzFrameShow(this.Handle,flag);
                }           
            }
        }
    }
}
//! endzinc
