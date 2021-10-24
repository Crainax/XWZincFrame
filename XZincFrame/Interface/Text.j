/*
 * @Descripttion: 文本组件
 * @Author: Carlos
 * @Date: 2020-05-21 02:34:04
 * @LastEditors: Carlos
 * @LastEditTime: 2020-05-29 17:21:37
 */ 

//! zinc
library Text
{
    // 样式
    #define TextStyle_normal 0  // 无样式
    #define TextStyle_shadow 1  // 阴影
    //默认值
    /*  对齐
        1 16 32
        2 18 34 
        4 20 36
    */
    #define TextDefault_font "Ui\\Fonts\\TypeTrue.ttf"  // 默认字体在本地环境
    #define TextDefault_size 16
    #define TextDefault_text "new Text"                 // 默认文本内容
    #define TextDefault_alignment 18                    // 默认对齐方式居中
    #define TextDefault_color   ""                      // 采用颜色字段渲染颜色 ff ff ff
    #define TextDefault_style TextStyle_normal          // 字体样式
    #define TextDefault_state false
    #define TextDefault_shadowColor "|cffff0000"
    #define TextDefault_show true
    #define TextDefault_alpha 255

    //结构属性
    #define TextUserFont "font"
    #define TextUserSize "size"
    #define TextUserText "text"
    #define TextUserAlignment "alignment"
    #define TextUserColor "color"
    #define TextUserStyle "style"
    #define TextUserState "state"
    #define TextUserShadowColor "shadowColor"
    #define TextUserShow "show"
    #define TextUserAlpha "alpha"

    //结构属性类型
    #define TextUserFontType string 
    #define TextUserSizeType integer
    #define TextUserTextType string
    #define TextUserAlignmentType integer 
    #define TextUserColorType string
    #define TextUserStyleType integer
    #define TextUserStateType boolean
    #define TextUserShadowColorType string
    #define TextUserShowType boolean
    #define TextUserAlphaType integer

    public
    {
        struct Text
        {
            private
            {
                integer str;
                integer css;

                static method onInit()
                {
                    <?
                        local temp = [[
                            /*
                            * @Descripttion: 文本组件模板
                            * @Author: Carlos
                            * @Date: 2020-03-25 18:52:10
                            * @LastEditors: Carlos
                            * @LastEditTime: 2020-05-21 04:13:46
                            */ 
                            Frame "TEXT" "TEXTTemp" {
                                FontShadowColor 0.0 0.0 0.0 0.9,	
                                FontShadowOffset 0.001 -0.001,
                            }
                        ]]
                        import('Ui\\TEXTtemp.fdf')(temp)
                        import('Ui\\TEXTtempPath.toc')([[
                        Ui\TEXTtemp.fdf
                        
                    ]])
                    ?>

                    Frame.loadToc("Ui\\TEXTtempPath.toc");
                }
            }

            public
            {
                // 添加矩形变换模块
                module RectTransform;     
                           
                static method create() -> thistype 
                {
                    thistype this = thistype.allocate();
                    
                    this.css = DzCreateFrameByTagName("TEXT","",RectDefault_parent,"",0);
                    this.str = DzCreateFrameByTagName("TEXT","",RectDefault_parent,"TEXTTemp",0);
                    

                    DzFrameSetAllPoints(this.css,this.Handle);
                    DzFrameSetEnable(this.css,false);
                    
                    this.init();
                    return this;
                }

                method destroy()
                {
                    this.str = 0;
                    this.css = 0;

                    this.deallocate();
                }

                method delete() 
                {
                    userClearTable(integer, this.Handle);
                    DzDestroyFrame(this.Handle);
                    DzDestroyFrame(this.css);

                    this.destroy();
                }

                // 获取句柄 - handle
                method operator Handle() -> integer { return this.str;}

                // 获取属性 - 字体
                method operator font() -> TextUserFontType { return userGet(integer,this.Handle,TextUserFontType,TextUserFont);}
                // 获取属性 - 字体大小
                method operator size() -> TextUserSizeType { return userGet(integer,this.Handle,TextUserSizeType,TextUserSize);}
                // 获取属性 - 文本内容
                method operator text() -> TextUserTextType { return userGet(integer,this.Handle,TextUserTextType,TextUserText);}
                // 获取属性 - 对齐方式
                method operator alignment() -> TextUserAlignmentType { return userGet(integer,this.Handle,TextUserAlignmentType,TextUserAlignment);}
                // 获取属性 - 颜色
                method operator color() -> TextUserColorType { return userGet(integer,this.Handle,TextUserColorType,TextUserColor);}
                // 获取属性 - 样式
                method operator style() -> TextUserStyleType { return userGet(integer,this.Handle,TextUserStyleType,TextUserStyle);}
                // 获取属性 - 状态
                method operator state() -> TextUserStateType { return userGet(integer,this.Handle,TextUserStateType,TextUserState);}
                // 获取属性 - 阴影颜色
                method operator shadowColor() -> TextUserShadowColorType { return userGet(integer,this.Handle,TextUserShadowColorType,TextUserShadowColor);}
                // 获取属性 - 显示状态
                method operator show() -> TextUserShowType { return userGet(integer,this.Handle,TextUserShowType,TextUserShow);}
                // 获取属性 - Alpha
                method operator alpha() -> TextUserAlphaType { return userGet(integer,this.Handle,TextUserAlphaType,TextUserAlpha);}

                // 设置属性 - 字体
                method operator font=(TextUserFontType font)
                {
                    userSet(integer,this.Handle,TextUserFontType,TextUserFont,font);
                    this.setFont(font,this.size);
                }
                // 设置属性 - 字体大小
                method operator size=(TextUserSizeType size)
                {
                    userSet(integer,this.Handle,TextUserSizeType,TextUserSize,size);
                    this.setFont(this.font,size);
                }
                // 设置属性 - 字体内容
                method operator text=(TextUserTextType text)
                {
                    userSet(integer,this.Handle,TextUserTextType,TextUserText,text);
                    this.setText(text);
                }
                // 设置属性 - 对齐方式
                method operator alignment=(TextUserAlignmentType alignment)
                {
                    userSet(integer,this.Handle,TextUserAlignmentType,TextUserAlignment,alignment);
                    this.setAlignment(alignment);
                }
                // 设置属性 - 颜色 
                // 设置属性 - 样式
                method operator style=(TextUserStyleType style)
                {
                    userSet(integer,this.Handle,TextUserStyleType,TextUserStyle,style);
                    this.setStyle(style);
                }
                // 设置属性 - 状态
                method operator state=(TextUserStateType state)
                {
                    userSet(integer,this.Handle,TextUserStateType,TextUserState,state);
                    this.setState(state);
                }
                // 设置属性 - 阴影颜色
                method operator shadowColor=(TextUserShadowColorType shadowColor)
                {
                    userSet(integer,this.Handle,TextUserShadowColorType,TextUserShadowColor,shadowColor);
                    this.setText(this.text);
                }
                // 设置属性 - 显示状态
                method operator show=(TextUserShowType flag)
                {
                    userSet(integer,this.Handle,TextUserShowType,TextUserShow,flag);
                    this.setShow(flag);
                }
                // 设置属性 - 透明度
                method operator alpha=(TextUserAlphaType alpha)
                {
                    userSet(integer,this.Handle,TextUserAlphaType,TextUserAlpha,alpha);
                    DzFrameSetAlpha(this.Handle,alpha);
                }
            }

            private
            {

                //初始化结构的默认自定义值
                method default()
                {
                    userSet(integer,this.Handle,TextUserFontType,TextUserFont,TextDefault_font);
                    userSet(integer,this.Handle,TextUserSizeType,TextUserSize,TextDefault_size);
                    userSet(integer,this.Handle,TextUserTextType,TextUserText,TextDefault_text);
                    userSet(integer,this.Handle,TextUserAlignmentType,TextUserAlignment,TextDefault_alignment);
                    userSet(integer,this.Handle,TextUserColorType,TextUserColor,TextDefault_color);
                    userSet(integer,this.Handle,TextUserStyleType,TextUserStyle,TextDefault_style);
                    userSet(integer,this.Handle,TextUserStateType,TextUserState,TextDefault_state);
                    userSet(integer,this.Handle,TextUserShadowColorType,TextUserShadowColor,TextDefault_shadowColor);
                    userSet(integer,this.Handle,TextUserShowType,TextUserShow,TextDefault_show);
                    userSet(integer,this.Handle,TextUserAlphaType,TextUserAlpha,TextDefault_alpha);
                }

                // 初始化
                method init()
                {
                    this.rect_init();    // 此函数在RectTransform 模块
                    this.default();

                    // 重置文本组件的宽高为0 默认初始化不指定宽高
                    this.width = 0;
                    this.height = 0;

                    this.font = this.font;
                    this.size = this.size;
                    this.text = this.text;
                    this.alignment = this.alignment;
                    //this.color = this.color;
                    this.style = this.style;
                    this.state = this.state;
                    this.show = this.show;
                    this.alpha = this.alpha;
                    

                }             

                // 设置字体
                method setFont(TextUserFontType font,TextUserSizeType size) { DzFrameSetFont(this.Handle,font,AutoSize(size),0);DzFrameSetFont(this.css,font,AutoSize(size),0);}
                // 设置文本
                method setText(TextUserTextType text) { DzFrameSetText(this.Handle,text);DzFrameSetText(this.css,this.shadowColor + text + "|r");}
                // 设置对齐方式
                method setAlignment(TextUserAlignmentType flag) { DzFrameSetTextAlignment(this.Handle,flag);}
                // 设置颜色 暂时不考虑，目前方案不是很好
                // 设置样式
                method setStyle(TextUserStyleType style)
                {
                    if (style == TextStyle_normal)
                    {
                        DzFrameShow(this.css,false);
                        return;
                    }else if (style == TextStyle_shadow)
                    {
                        this.css_shadow();
                        return;
                    }

                    print("样式类型错误-> Text");
                }
                // 设置状态
                method setState(TextUserStateType state) { DzFrameSetEnable(this.Handle,state);}
                // 设置显示状态
                method setShow(TextUserShowType flag)   { DzFrameShow(this.Handle,flag);}
                /**
                 * @name: this.css_shadow
                 * @test: 
                 * @msg: 样式 - 阴影
                 * @param {} 
                 * @return: 
                 */                
                method css_shadow()
                {
                    DzFrameShow(this.css,true);
                    DzFrameClearAllPoints(this.css);

                    DzFrameSetPoint(this.css,FRAME_POINT_TOPLEFT,this.Handle,FRAME_POINT_TOPLEFT,0.0012,-0.0015);
                }
            }
        }
    }
}
//! endzinc
