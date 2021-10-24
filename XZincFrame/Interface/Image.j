/*
 * @Descripttion: 图像组件,可设置Color属性改变颜色
 * @Author: Carlos
 * @Date: 2020-03-25 18:52:10
 * @LastEditors: Carlos
 * @LastEditTime: 2020-05-29 18:01:08
 */ 

//! zinc
library Image
{   
    
    #define ImageFillMehodHorizontal 0  // 水平 目前魔兽只支持水平
    #define ImageFillOriginCenter 4
    #define ImageFillOriginLeft 3
    #define ImageFillOriginRight 5

    //默认值
    #define ImageDefault_image "PathTextures\\12x12Unflyable.tga"
    #define ImageDefault_color DzGetColor(255,255,255,255)
    #define ImageDefault_mode  0
    #define ImageDefault_fillAmount 1   // 默认值 0~1之间
    #define ImageDefault_fillMethod ImageFillMehodHorizontal
    #define ImageDefault_fillOrigin ImageFillOriginLeft // 默认往左移动
    #define ImageDefault_priority   0
    #define ImageDefault_show true

    // 结构自定义值字段
    #define ImageUserImage "image"
    #define ImageUserColor "color"
    #define ImageUserMode "mode"
    #define ImageUserFillAmount "fillAmount"
    #define ImageUserFillMethod "fillMethod"
    #define ImageUserFillOrigin "fillOrigin"
    #define ImageUserPriority "priority"
    #define ImageUserShow "show"

    // 结构自定义值类型
    #define ImageUserImageType string 
    #define ImageUserColorType integer
    #define ImageUserModeType integer
    #define ImageUserFillAmountType real
    #define ImageUserFillMethodType integer
    #define ImageUserFillOriginType integer
    #define ImageUserPriorityType integer
    #define ImageUserShowType boolean

    public struct Image
    {
        

        private
        {
            integer TextUre; // 图像
            integer Color;  //  颜色

            // 创建模板
            static integer index = 0;
            static method onInit()
            {
                <?
                    local temp = [[
                        /*
                        * @Descripttion: 图像组件模板
                        * @Author: Carlos
                        * @Date: 2020-03-25 18:52:10
                        * @LastEditors: Carlos
                        * @LastEditTime: 2020-05-21 04:13:46
                        */ 
                        Frame "SIMPLEFRAME" "ImageTemp" {
                            Width 0.03,
                            Height 0.03,
                            Texture "ImageTempBackdrop" 
                            {
                                
                            }
                        }
                    ]]
                    import('Ui\\Imagetemp.fdf')(temp)
                    import('Ui\\ImagetempPath.toc')([[
                    Ui\Imagetemp.fdf
                    
                ]])
                ?>

                Frame.loadToc("Ui\\ImagetempPath.toc");
            }

        }

        public
        {
            // 添加矩形变换属性模块
            module RectTransform;
            
            static method create() -> thistype
            {
                thistype this = thistype.allocate();

                this.TextUre = DzCreateFrameByTagName("SIMPLEFRAME","",0,"ImageTemp",thistype.index);
                this.Color = DzSimpleTextureFindByName("ImageTempBackdrop",thistype.index);

                this.init();    // 初始化

                thistype.index += 1; //递增
                return this;
            }



            method destroy()
            {
                this.TextUre = 0;
                this.Color = 0;
                
                this.deallocate();
            }

            method delete() 
            {
                userClearTable(integer,this.Handle);    // 清空所有自定义值
                DzDestroyFrame(this.Handle);
                DzDestroyFrame(this.Color);

                thistype.index -= 1;
                this.destroy();
            }


            // 获取句柄 - handle
            method operator Handle() -> integer { return this.TextUre;}
            // 获取属性 - 图片路径
            method operator image() -> ImageUserImageType { return userGet(integer,this.Handle,ImageUserImageType,ImageUserImage);}
            // 获取属性 - 颜色
            method operator color() -> ImageUserColorType {   return userGet(integer,this.Handle,ImageUserColorType,ImageUserColor);}
            // 获取属性 - 图像模式
            method operator mode() -> ImageUserModeType { return userGet(integer,this.Handle,ImageUserModeType,ImageUserMode);}
            // 获取属性 - fillAmount
            method operator fillAmount() -> ImageUserFillAmountType { return userGet(integer,this.Handle,ImageUserFillAmountType,ImageUserFillAmount);}
            // 获取属性 - fillMethod
            method operator fillMethod() -> ImageUserFillMethodType { return userGet(integer,this.Handle,ImageUserFillMethodType,ImageUserFillMethod);}
            // 获取属性 - fillOrigin
            method operator fillOrigin() -> ImageUserFillOriginType { return userGet(integer,this.Handle,ImageUserFillOriginType,ImageUserFillOrigin);}
            // 获取属性 - 优先级
            method operator priority() -> ImageUserPriorityType { return userGet(integer,this.Handle,ImageUserPriorityType,ImageUserPriority);}
            // 获取属性 - 显示状态
            method operator show() -> ImageUserShowType { return userGet(integer,this.Handle,ImageUserShowType,ImageUserShow);}

            
            // 设置属性 - 图片路径
            method operator image=(ImageUserImageType str)
            {
                userSet(integer,this.Handle,ImageUserImageType,ImageUserImage,str);
                this.setTextUre(str,this.mode);
            }
            // 设置属性 - 颜色 
            method operator color=(ImageUserColorType value)
            {
                userSet(integer,this.Handle,ImageUserColorType,ImageUserColor,value);
                this.setColor(value);
            }
            //设置属性 - 图像模式
            method operator mode=(ImageUserModeType index)
            {
                userSet(integer,this.Handle,ImageUserModeType,ImageUserMode,index);
                this.setTextUre(this.image,this.mode);
            }
            // 设置属性 - fillAmount
            method operator fillAmount=(ImageUserFillAmountType value)
            {
                // 限定value在0~1
                if (value < 0) value = 0;
                if (value > 1) value = ImageDefault_fillAmount;
                userSet(integer,this.Handle,ImageUserFillAmountType,ImageUserFillAmount,value);
                
                this.setSize(this.width * value,this.height);   // 直接调用方法 不会改变虚拟属性
            }
            // 设置属性 - fillMethod
            method operator fillMethod=(ImageUserFillMethodType fillmethod)
            {
                userSet(integer,this.Handle,ImageUserFillMethodType,ImageUserFillMethod,fillmethod);
            }
            // 设置属性 - fillOrigin 
            method operator fillOrigin=(ImageUserFillOriginType origin)
            {
                userSet(integer,this.Handle,ImageUserFillOriginType,ImageUserFillOrigin,origin);
                this.point = origin;    // 改变锚点
                this.flushPoint();  // 重置锚点。如果不重置,可能是因为没有父节点的关系。不能直接改变也可能是因为绝对位置？
                this.setAbsPoint(this.x,this.y); // 直接调用方法 改变控件的缩放锚点
            }
            // 设置属性 - 优先级
            method operator priority=(ImageUserPriorityType level)
            {
                userSet(integer,this.Handle,ImageUserPriorityType,ImageUserPriority,level);
                this.setPriority(level);
            }
            // 设置属性 - 显示状态
            method operator show=(ImageUserShowType flag)
            {
                userSet(integer,this.Handle,ImageUserShowType,ImageUserShow,flag);
                if (flag) this.image = this.image;
                else      this.setTextUre("Ui\\Alpha.tga",0);
            }
        }

        public
        {
            // 调试模式下可用。打印结构的属性
            method log()
            {
                print("**************************");
                print("width=" + R2S(this.width) + ": height=" + R2S(this.height));
                print("point=" + I2S(this.point) + "x=" + R2S(this.x) + ": y=" + R2S(this.y));
                print("image=" + this.image + ": mode=" + I2S(this.mode));
                print("fillAmount=" + R2S(this.fillAmount));
                print("**************************");
            }
        }
        private
        {
            
            // 初始化结构默认值
            method default()
            {
                userSet(integer,this.Handle,ImageUserImageType,ImageUserImage,ImageDefault_image);
                userSet(integer,this.Handle,ImageUserColorType,ImageUserColor,ImageDefault_color);
                userSet(integer,this.Handle,ImageUserModeType,ImageUserMode,ImageDefault_mode);
                userSet(integer,this.Handle,ImageUserFillAmountType,ImageUserFillAmount,ImageDefault_fillAmount);
                userSet(integer,this.Handle,ImageUserFillMethodType,ImageUserFillMethod,ImageDefault_fillMethod);
                userSet(integer,this.Handle,ImageUserFillOriginType,ImageUserFillOrigin,ImageDefault_fillOrigin);
                userSet(integer,this.Handle,ImageUserPriorityType,ImageUserPriority,ImageDefault_priority);
                userSet(integer,this.Handle,ImageUserShowType,ImageUserShow,ImageDefault_show);
            }
            // 初始化
            method init()   
            { 
                this.rect_init();    // 此函数在RectTransform 模块
                this.default();

                this.image = this.image;
                this.color = this.color;
                this.show = this.show;

                this.fillAmount = this.fillAmount;
                this.fillMethod = this.fillMethod;
                this.fillOrigin = this.fillOrigin;
                this.priority = this.priority;
            }

            // 设置图像贴图
            method setTextUre(ImageUserImageType str,ImageUserModeType mode) { DzFrameSetTexture(this.Color,str,mode);}
            // 设置颜色
            method setColor(ImageUserColorType value) { DzFrameSetVertexColor(this.Color,value);}
            // 设置优先级
            method setPriority(ImageUserPriorityType level) { DzFrameSetPriority(this.Handle,level);}
            // 设置显示状态
            method setShow(ImageUserShowType flag)
            {
                if (flag) this.setColor(Color.Argb(255,255,255,255));
                else      this.setColor(Color.Argb(0,0,0,0));
            }
        }
    }

    
}
//! endzinc
