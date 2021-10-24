/*
 * @Descripttion: 滚动条组件
 * @Author: Carlos
 * @Date: 2020-05-29 09:39:04
 * @LastEditors: Carlos
 * @LastEditTime: 2020-05-29 17:45:08
 */ 

 //! zinc
 library Scrollbar
 {
    public
    {
        #define ScrollbarDefault_min 0
        #define ScrollbarDefault_max 1
        #define ScrollbarDefault_value ScrollbarDefault_max    // 当前值
        #define ScrollbarDefault_step 1
        #define ScrollbarDefault_show true

        #define ScrollbarUserMin "min"
        #define ScrollbarUserMax "max"
        #define ScrollbarUserValue "value"
        #define ScrollbarUserStep "step"
        #define ScrollbarUserShow "show"

        #define ScrollbarUserMinType real
        #define ScrollbarUserMaxType real
        #define ScrollbarUserValueType real
        #define ScrollbarUserStepType real
        #define ScrollbarUserShowType boolean
        
        struct Scrollbar
        {
            private
            {
                integer handle_this;
                integer TextUre;
                integer button_this;
                integer ButtonTextUre;
            }

            private
            {
                static integer index = 0;
                static method onInit()
                {
                <?
                    local slider = [[
                        Frame "SLIDER" "SliderTemp" 
                        {
                            SliderLayoutVertical,

                            ControlBackdrop "SliderTempBackdrop",
                            Frame "BACKDROP" "SliderTempBackdrop" {
                                BackdropTileBackground,
                                BackdropBackground  "UI\Widgets\EscMenu\Human\slider-background.blp",
                                BackdropCornerFlags "UL|UR|BL|BR|T|L|B|R",
                                BackdropCornerSize  0.003875,
                                BackdropBackgroundInsets 0.001 0.001 0.001 0.001,
                                BackdropEdgeFile  "UI\Widgets\EscMenu\Human\slider-border.blp",
                                BackdropBlendAll,
                            }

                            SliderThumbButtonFrame "SliderTemp_Button",
                            Frame "BUTTON" "SliderTemp_Button" {
                                Width 0.015,
                                Height 0.015,
                                ControlBackdrop "SliderTemp_ButtonBackdrop",
                                Frame "BACKDROP" "SliderTemp_ButtonBackdrop" {
                                    BackdropBlendAll,
                                    BackdropBackground  "UI\Widgets\EscMenu\Human\slider-knob.blp",
                                }

                                ControlDisabledBackdrop "SliderTemp_ButtonDisabledBackdrop",
                                Frame "BACKDROP" "SliderTemp_ButtonDisabledBackdrop" {
                                    BackdropBlendAll,
                                    BackdropBackground  "UI\Widgets\EscMenu\Human\slider-knobdisabled.blp",
                                }
                            }
                        }
                    ]]
                    import('Ui\\SliderTemp.fdf')(slider)
                    import('Ui\\SliderPath.toc')([[
                        Ui\SliderTemp.fdf
                        
                    ]])
                ?>

                Frame.loadToc("Ui\\SliderPath.toc");
                }
            }

            public
            {
                // 添加矩形变换属性模块
                module RectTransform;
                
                static method create() -> thistype
                {
                    thistype this = thistype.allocate();

                    this.handle_this = DzCreateFrame("SliderTemp",RectDefault_parent,thistype.index);
                    this.TextUre = DzFrameFindByName("SliderTempBackdrop",thistype.index);
                    this.button_this = DzFrameFindByName("SliderTemp_Button",thistype.index);
                    this.ButtonTextUre = DzFrameFindByName("SliderTemp_ButtonBackdrop",thistype.index);

                    this.init();
                    thistype.index += 1;
                    return this;
                }

                method destroy()
                {
                    this.handle_this = 0;
                    this.TextUre = 0;
                    this.button_this = 0;
                    this.ButtonTextUre = 0;
                    
                    this.deallocate();
                }

                method delete() 
                {
                    userClearTable(integer,this.Handle);    // 清空所有自定义值
                    DzDestroyFrame(this.Handle);
                    
                    thistype.index -= 1;
                    this.destroy();
                }

                // 获取句柄 - handle
                method operator Handle() -> integer { return this.handle_this;}
                // 获取属性 - 最小值
                method operator min() -> ScrollbarUserMinType { return userGet(integer,this.Handle,ScrollbarUserMinType,ScrollbarUserMin);}
                // 获取属性 - 最大值
                method operator max() -> ScrollbarUserMaxType { return userGet(integer,this.Handle,ScrollbarUserMaxType,ScrollbarUserMax);}
                // 获取属性 - 当前值
                method operator value() -> ScrollbarUserValueType { return DzFrameGetValue(this.Handle);} //userGet(integer,this.Handle,ScrollbarUserValueType,ScrollbarUserValue);}
                // 获取属性 - 步进值
                method operator step() -> ScrollbarUserStepType { return userGet(integer,this.Handle,ScrollbarUserStepType,ScrollbarUserStep);}
                // 获取属性 - 显示状态
                method operator show() -> ScrollbarUserShowType { return userGet(integer,this.Handle,ScrollbarUserShowType,ScrollbarUserShow);}

                // 设置属性 - 最小和最大值
                method operator min=(ScrollbarUserMinType value)
                {
                    userSet(integer,this.Handle,ScrollbarUserMinType,ScrollbarUserMin,value);
                    this.setMinMax(value,this.max);
                }
                method operator max=(ScrollbarUserMaxType value)
                {
                    userSet(integer,this.Handle,ScrollbarUserMaxType,ScrollbarUserMax,value);
                    this.setMinMax(this.min,value);
                }
                // 设置属性 - 当前值
                method operator value=(ScrollbarUserValueType value)
                {
                    userSet(integer,this.Handle,ScrollbarUserValueType,ScrollbarUserValue,value);
                    this.setValue(value);
                }
                // 设置属性 - 步进值
                method operator step=(ScrollbarUserStepType value)
                {
                    userSet(integer,this.Handle,ScrollbarUserStepType,ScrollbarUserStep,value);
                    this.setStep(value);
                }
                // 设置属性 - 显示状态
                method operator show=(ScrollbarUserShowType flag)
                {
                    userSet(integer,this.Handle,ScrollbarUserShowType,ScrollbarUserShow,flag);
                    DzFrameShow(this.Handle,flag);
                }
            }

            private
            {
                method default()
                {
                    userSet(integer,this.Handle,ScrollbarUserMinType,ScrollbarUserMin,ScrollbarDefault_min);
                    userSet(integer,this.Handle,ScrollbarUserMaxType,ScrollbarUserMax,ScrollbarDefault_max);
                    userSet(integer,this.Handle,ScrollbarUserValueType,ScrollbarUserValue,ScrollbarDefault_value);
                    userSet(integer,this.Handle,ScrollbarUserStepType,ScrollbarUserStep,ScrollbarDefault_step);
                    userSet(integer,this.Handle,ScrollbarUserShowType,ScrollbarUserShow,ScrollbarDefault_show);
                }
                // 初始化
                method init()   
                { 
                    this.rect_init();    // 此函数在RectTransform 模块
                    this.default();

                    this.min = this.min;
                    this.max = this.max;
                    this.value = this.value;
                    this.step = this.step;
                    this.show = this.show;
                }

                // 设置最小/最大值
                method setMinMax(ScrollbarUserMinType min, ScrollbarUserMaxType max) {DzFrameSetMinMaxValue(this.Handle,min,max);}
                // 设置当前值
                method setValue(ScrollbarUserValueType value) { DzFrameSetValue(this.Handle,value);}
                // 设置步进值
                method setStep(ScrollbarUserStepType value) { DzFrameSetStepValue(this.Handle,value);}
            }
        }
    }
 }
 //! endzinc

