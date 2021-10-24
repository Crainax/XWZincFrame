//! zinc
library BackdropUsed
{
    public struct BackdropParaUsed
    {
        Frame pt;   //父节点
        string name = "Backdrop";
        integer mode = 0;             //贴图模式 0 不平铺 1 平铺
        string  text = "";        //文本内容
        string temp = "";       // 文本模版
        string blp = "ReplaceableTextures\\TeamColor\\TeamColor02.blp"; //贴图路径 

        static method create() -> thistype
        {
            thistype this = thistype.allocate();
            this.pt = Frame.getGameUI();
            return this;
        }

        static method new(Frame Pt) -> thistype
        {
            thistype this = thistype.allocate();
            this.name = Pt.name() + this.name;
            this.pt = Pt;
            return this;
        }
    }

    public struct BackdropUsed
    {
        private
        {
            BackdropParaUsed para;    // 参数体
            
            integer text; //文本标签
            integer textLen; //文本长度

            integer buId;       // 主节点句柄

        }

        public
        {
            Frame id; //背景
        }

        public
        {
            /**
                @create -> return:Backdrop
                @Para:BackdropParaUsed -> 参数结构体
             */
            static method create(BackdropParaUsed Para) -> thistype
            {
                thistype this = thistype.allocate();

                this.para = Para;

                // 背景
                this.id = Frame.createTag("BACKDROP", Para.name, Para.pt, "" , 0);
                this.id.setTextUre(Para.blp, Para.mode); // 默认背景
                this.buId = this.id.Handle();

                if (Para.text != "")
                {
                    this.setText(Para.text);
                }
                return this;
            }


            // 析构函数 注意 一担析构之后就无法再重新赋值记录 只能重新构造
            method destroy()
            {
                this.id.destroy();
                
                this.textLen = 0;

                this.para.destroy();
                this.deallocate();
            }

            /**
                @ setText -> 修改/添加按钮文本
                @ char:string -> 文本标签内容
            */
            method setText(string char)
            {
                if (this.text == 0) {
                    this.text = DzCreateFrameByTagName("TEXT", this.para.name + "_text", this.buId, this.para.temp, 0);
                    DzFrameSetPoint(this.text, FRAME_POINT_CENTER, this.buId, FRAME_POINT_CENTER, 0.0, 0.0);
                    //this.textShow(true);
                }
                DzFrameSetText(this.text, char);
                this.para.text = char;
                this.textLen   = StringLength(char);
            }
        }
    }
}
//! endzinc
