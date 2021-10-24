/*
 * @Descripttion: 贴图组件
 * @Author: Carlos
 * @Date: 2020-05-29 06:25:22
 * @LastEditors: Carlos
 * @LastEditTime: 2020-05-29 07:12:53
 */ 

//! zinc
library Backdrop
{
    public
    {
        #define BackdropFillMehodHorizontal 0  // 水平 目前魔兽只支持水平
        #define BackdropFillOriginCenter 4
        #define BackdropFillOriginLeft 3
        #define BackdropFillOriginRight 5

        //默认值
        #define BackdropDefault_image "PathTextures\\12x12Unflyable.tga"
        #define BackdropDefault_mode  0
        #define BackdropDefault_fillAmount 1   // 默认值 0~1之间
        #define BackdropDefault_fillMethod BackdropFillMehodHorizontal
        #define BackdropDefault_fillOrigin BackdropFillOriginLeft // 默认往左移动
        #define BackdropDefault_show true
        #define BackdropDefault_alpha 255

        // 结构自定义值字段
        #define BackdropUserImage "image"
        #define BackdropUserMode "mode"
        #define BackdropUserFillAmount "fillAmount"
        #define BackdropUserFillMethod "fillMethod"
        #define BackdropUserFillOrigin "fillOrigin"
        #define BackdropUserShow "show"
        #define BackdropUserAlpha "alpha"

        // 结构自定义值类型
        #define BackdropUserImageType string 
        #define BackdropUserModeType integer
        #define BackdropUserFillAmountType real
        #define BackdropUserFillMethodType integer
        #define BackdropUserFillOriginType integer
        #define BackdropUserShowType boolean
        #define BackdropUserAlphaType integer

        struct Backdrop
        {
            private
            {
                integer handle_this;
            }

            public
            {
                // 添加矩形变换属性模块
                module RectTransform;
                
                static method create() -> thistype
                {
                    thistype this = thistype.allocate();
                    
                    this.handle_this = DzCreateFrameByTagName("BACKDROP","",RectDefault_parent,"",0);

                    this.init();
                    return this;
                }

                method destroy()
                {
                    this.handle_this = 0;
                    
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
                // 获取属性 - 图片路径
                method operator image() -> BackdropUserImageType { return userGet(integer,this.Handle,BackdropUserImageType,BackdropUserImage);}
                // 获取属性 - 图像模式
                method operator mode() -> BackdropUserModeType { return userGet(integer,this.Handle,BackdropUserModeType,BackdropUserMode);}
                // 获取属性 - fillAmount
                method operator fillAmount() -> BackdropUserFillAmountType { return userGet(integer,this.Handle,BackdropUserFillAmountType,BackdropUserFillAmount);}
                // 获取属性 - fillMethod
                method operator fillMethod() -> BackdropUserFillMethodType { return userGet(integer,this.Handle,BackdropUserFillMethodType,BackdropUserFillMethod);}
                // 获取属性 - fillOrigin
                method operator fillOrigin() -> BackdropUserFillOriginType { return userGet(integer,this.Handle,BackdropUserFillOriginType,BackdropUserFillOrigin);}
                // 获取属性 - 显示状态
                method operator show() -> BackdropUserShowType { return userGet(integer,this.Handle,BackdropUserShowType,BackdropUserShow);}
                // 获取属性 - Alpha
                method operator Alpha() -> BackdropUserAlphaType { return userGet(integer,this.Handle,BackdropUserAlphaType,BackdropUserAlpha);}

                
                // 设置属性 - 图片路径
                method operator image=(BackdropUserImageType str)
                {
                    userSet(integer,this.Handle,BackdropUserImageType,BackdropUserImage,str);
                    this.setTextUre(str,this.mode);
                }
                //设置属性 - 图像模式
                method operator mode=(BackdropUserModeType index)
                {
                    userSet(integer,this.Handle,BackdropUserModeType,BackdropUserMode,index);
                    this.setTextUre(this.image,this.mode);
                }
                // 设置属性 - fillAmount
                method operator fillAmount=(BackdropUserFillAmountType value)
                {
                    // 限定value在0~1
                    if (value < 0) value = 0;
                    if (value > 1) value = BackdropDefault_fillAmount;
                    userSet(integer,this.Handle,BackdropUserFillAmountType,BackdropUserFillAmount,value);
                    
                    this.setSize(this.width * value,this.height);   // 直接调用方法 不会改变虚拟属性
                }
                // 设置属性 - fillMethod
                method operator fillMethod=(BackdropUserFillMethodType fillmethod)
                {
                    userSet(integer,this.Handle,BackdropUserFillMethodType,BackdropUserFillMethod,fillmethod);
                }
                // 设置属性 - fillOrigin 
                method operator fillOrigin=(BackdropUserFillOriginType origin)
                {
                    userSet(integer,this.Handle,BackdropUserFillOriginType,BackdropUserFillOrigin,origin);
                    this.point = origin;    // 改变锚点
                    this.flushPoint();  // 重置锚点。如果不重置,可能是因为没有父节点的关系。不能直接改变也可能是因为绝对位置？
                    this.setAbsPoint(this.x,this.y); // 直接调用方法 改变控件的缩放锚点
                }
                // 设置属性 - 显示状态
                method operator show=(BackdropUserShowType flag)
                {
                    userSet(integer,this.Handle,BackdropUserShowType,BackdropUserShow,flag);
                    this.setShow(flag);
                }
                // 设置属性 - 透明度
                method operator alpha=(BackdropUserAlphaType alpha)
                {
                    userSet(integer,this.Handle,BackdropUserAlphaType,BackdropUserAlpha,alpha);
                    this.setAlpha(alpha);
                }           
            }

            private
            {
                // 初始化结构默认值
                method default()
                {
                    userSet(integer,this.Handle,BackdropUserImageType,BackdropUserImage,BackdropDefault_image);
                    userSet(integer,this.Handle,BackdropUserModeType,BackdropUserMode,BackdropDefault_mode);
                    userSet(integer,this.Handle,BackdropUserFillAmountType,BackdropUserFillAmount,BackdropDefault_fillAmount);
                    userSet(integer,this.Handle,BackdropUserFillMethodType,BackdropUserFillMethod,BackdropDefault_fillMethod);
                    userSet(integer,this.Handle,BackdropUserFillOriginType,BackdropUserFillOrigin,BackdropDefault_fillOrigin);
                }
                // 初始化
                method init()   
                { 
                    this.rect_init();    // 此函数在RectTransform 模块
                    this.default();

                    this.image = this.image;

                    this.fillAmount = this.fillAmount;
                    this.fillMethod = this.fillMethod;
                    this.fillOrigin = this.fillOrigin;
                }

                // 设置图像贴图
                method setTextUre(BackdropUserImageType str,BackdropUserModeType mode) { DzFrameSetTexture(this.Handle,str,mode);}
                // 设置显示状态
                method setShow(BackdropUserShowType flag)   { DzFrameShow(this.Handle,flag);}
                // 设置透明度
                method setAlpha(BackdropUserAlphaType alpha)    { DzFrameSetAlpha(this.Handle,alpha);}
            }
        }   
}   }
//! endzinc
