//! zinc
library Slider 
{
    public struct SliderPara 
    {
        Frame pt;   //父节点
        string name = "Slider"; //名字
        integer mode = 1;   // 0 H 1 V

        // 必须有一个父节点
        static method new(Frame Pt) -> thistype
        {
            thistype this = thistype.allocate();
            this.name = Pt.name() + this.name;
            this.pt = Pt;
            return this;
        }
    }
    
    public struct Slider 
    {
        private
        {
            integer index = 0;  //实例索引

            SliderPara para;    // 参数体

            integer back;   //滚动条背景
            integer but;    //滚动条按钮
        }

        public
        {
            static integer thisSize = 0;    //实例数量
            
            Frame id;
        }

        public
        {
            static method create(SliderPara Para) -> thistype
            {
                thistype this = thistype.allocate();

                this.index = this.thisSize;
                this.para = Para;

                this.id = Frame.create("ScrollBarTemplate_" + this.getMode(),Para.pt,this.index);
                this.back = DzFrameFindByName("ScrollBarTemplate_" + this.getMode() + "Backdrop",this.index);
                this.but = DzFrameFindByName("ScrollBarTemplate_" + this.getMode() + "Button",this.index);
    
                this.thisSize += 1;
                return this;
            }

            // 析构函数 注意 一担析构之后就无法再重新赋值记录 只能重新构造
            method destroy()
            {
                this.index = 0;
                this.thisSize -= 1;

                this.id.destroy();
                this.para.destroy();
                this.deallocate();
            }


            /**
                @setTextUre -> 设置滚动条背景
            */
            method setTextUre(string str,integer flag)
            {
                DzFrameSetTexture(this.back,str,flag);
            }

            /**
                @setButton -> 设置按钮贴图
             */
            method setButton(string str,integer flag)
            {
                DzFrameSetTexture(DzFrameFindByName("ScrollBarTemplate_" + this.getMode() + "ButtonBackdrop",this.index),str,flag);
            }


            // 获取滚动条模式 1 垂直 0 水平
            method getMode() -> string 
            {
                if (this.para.mode == 1)
                {
                    return "V";
                }
                return "H";
            }
        }
    }
}
//! endzinc
