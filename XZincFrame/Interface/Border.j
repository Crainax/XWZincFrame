//! zinc
library Border 
{
    public struct BorderPara
    {
        Frame pt;               // 父节点
        string name = "border";    // 边框名称
        real height = 0.0005;   //边框厚度
        string style = "default"; //边框样式 默认统一贴图
        string blp = "ReplaceableTextures\\TeamColor\\TeamColor08.blp"; //边框贴图路径
        integer mode = 1; //贴图模式 0 不平铺 1 平铺

        // @边框一般不单独使用 要指定一个父节点
        static method new(Frame Pt) ->thistype
        {
            thistype this = thistype.allocate();
            this.name = Pt.name() + this.name;
            this.pt = Pt;
            return this;
        }
    }

    public struct Border 
    {
        private
        {
            BorderPara para;    // 参数体
            
            integer top;
            integer topleft;
            integer topright;
                
            integer bottom;
            integer bottomleft;
            integer bottomright;

            integer left;
            integer right;

        }

        public
        {
            /**
                @create 构造边框 -> return:Border
                @Para:BorderPara -> 参数结构体
             */
             static method create(BorderPara Para) -> thistype
             {
                thistype this = thistype.allocate();

                // 参数初始化
                this.para = Para;

                this.top = DzCreateFrameByTagName("BACKDROP",this.para.name + "_top",this.para.pt.Handle(),"",0);
                this.topleft = DzCreateFrameByTagName("BACKDROP",this.para.name + "_topleft",this.para.pt.Handle(),"",0);
                this.topright = DzCreateFrameByTagName("BACKDROP",this.para.name + "_topright",this.para.pt.Handle(),"",0);

                this.bottom = DzCreateFrameByTagName("BACKDROP",this.para.name + "_bottom",this.para.pt.Handle(),"",0);
                this.bottomleft = DzCreateFrameByTagName("BACKDROP",this.para.name + "_bottomleft",this.para.pt.Handle(),"",0);
                this.bottomright = DzCreateFrameByTagName("BACKDROP",this.para.name + "_bottomright",this.para.pt.Handle(),"",0);

                this.left = DzCreateFrameByTagName("BACKDROP",this.para.name + "_left",this.para.pt.Handle(),"",0);
                this.right = DzCreateFrameByTagName("BACKDROP",this.para.name + "_right",this.para.pt.Handle(),"",0);

                //上
                DzFrameSetPoint(this.top,FRAME_POINT_TOPLEFT,this.para.pt.Handle(),FRAME_POINT_TOPLEFT,0,this.para.height);
                DzFrameSetPoint(this.top,FRAME_POINT_TOPRIGHT,this.para.pt.Handle(),FRAME_POINT_TOPRIGHT,0,this.para.height);
                DzFrameSetPoint(this.top,FRAME_POINT_BOTTOMLEFT,this.para.pt.Handle(),FRAME_POINT_TOPLEFT,0,0);
                DzFrameSetPoint(this.top,FRAME_POINT_BOTTOMRIGHT,this.para.pt.Handle(),FRAME_POINT_TOPRIGHT,0,0);
                //左上
                DzFrameSetPoint(this.topleft,FRAME_POINT_TOPRIGHT,this.top,FRAME_POINT_TOPLEFT,0,0);
                DzFrameSetPoint(this.topleft,FRAME_POINT_TOPLEFT,this.top,FRAME_POINT_TOPLEFT,0 - this.para.height,0);
                DzFrameSetPoint(this.topleft,FRAME_POINT_BOTTOMRIGHT,this.top,FRAME_POINT_BOTTOMLEFT,0,0);
                DzFrameSetPoint(this.topleft,FRAME_POINT_BOTTOMLEFT,this.top,FRAME_POINT_BOTTOMLEFT,0 - this.para.height,0);
                //右上
                DzFrameSetPoint(this.topright,FRAME_POINT_TOPLEFT,this.top,FRAME_POINT_TOPRIGHT,0,0);
                DzFrameSetPoint(this.topright,FRAME_POINT_TOPRIGHT,this.top,FRAME_POINT_TOPRIGHT,this.para.height,0);
                DzFrameSetPoint(this.topright,FRAME_POINT_BOTTOMLEFT,this.top,FRAME_POINT_BOTTOMRIGHT,0,0);
                DzFrameSetPoint(this.topright,FRAME_POINT_BOTTOMRIGHT,this.top,FRAME_POINT_BOTTOMRIGHT,this.para.height,0);
                //下
                DzFrameSetPoint(this.bottom,FRAME_POINT_TOPLEFT,this.para.pt.Handle(),FRAME_POINT_BOTTOMLEFT,0,0);
                DzFrameSetPoint(this.bottom,FRAME_POINT_TOPRIGHT,this.para.pt.Handle(),FRAME_POINT_BOTTOMRIGHT,0,0);
                DzFrameSetPoint(this.bottom,FRAME_POINT_BOTTOMLEFT,this.para.pt.Handle(),FRAME_POINT_BOTTOMLEFT,0,0 - this.para.height);
                DzFrameSetPoint(this.bottom,FRAME_POINT_BOTTOMRIGHT,this.para.pt.Handle(),FRAME_POINT_BOTTOMRIGHT,0,0 - this.para.height);
                //左下
                DzFrameSetPoint(this.bottomleft,FRAME_POINT_TOPRIGHT,this.bottom,FRAME_POINT_TOPLEFT,0,0);
                DzFrameSetPoint(this.bottomleft,FRAME_POINT_TOPLEFT,this.bottom,FRAME_POINT_TOPLEFT,0 - this.para.height,0);
                DzFrameSetPoint(this.bottomleft,FRAME_POINT_BOTTOMRIGHT,this.bottom,FRAME_POINT_BOTTOMLEFT,0,0);
                DzFrameSetPoint(this.bottomleft,FRAME_POINT_BOTTOMLEFT,this.bottom,FRAME_POINT_BOTTOMLEFT,0 - this.para.height,0);
                //右下
                DzFrameSetPoint(this.bottomright,FRAME_POINT_TOPLEFT,this.bottom,FRAME_POINT_TOPRIGHT,0,0);
                DzFrameSetPoint(this.bottomright,FRAME_POINT_TOPRIGHT,this.bottom,FRAME_POINT_TOPRIGHT,this.para.height,0);
                DzFrameSetPoint(this.bottomright,FRAME_POINT_BOTTOMLEFT,this.bottom,FRAME_POINT_BOTTOMRIGHT,0,0);
                DzFrameSetPoint(this.bottomright,FRAME_POINT_BOTTOMRIGHT,this.bottom,FRAME_POINT_BOTTOMRIGHT,this.para.height,0);

                //左
                DzFrameSetPoint(this.left,FRAME_POINT_TOPLEFT,this.topleft,FRAME_POINT_BOTTOMLEFT,0,0);
                DzFrameSetPoint(this.left,FRAME_POINT_TOPRIGHT,this.topleft,FRAME_POINT_BOTTOMRIGHT,0,0);
                DzFrameSetPoint(this.left,FRAME_POINT_BOTTOMLEFT,this.bottomleft,FRAME_POINT_TOPLEFT,0,0);
                DzFrameSetPoint(this.left,FRAME_POINT_BOTTOMRIGHT,this.bottomleft,FRAME_POINT_TOPRIGHT,0,0);

                 //右
                DzFrameSetPoint(this.right,FRAME_POINT_TOPLEFT,this.topright,FRAME_POINT_BOTTOMLEFT,0,0);
                DzFrameSetPoint(this.right,FRAME_POINT_TOPRIGHT,this.topright,FRAME_POINT_BOTTOMRIGHT,0,0);
                DzFrameSetPoint(this.right,FRAME_POINT_BOTTOMLEFT,this.bottomright,FRAME_POINT_TOPLEFT,0,0);
                DzFrameSetPoint(this.right,FRAME_POINT_BOTTOMRIGHT,this.bottomright,FRAME_POINT_TOPRIGHT,0,0);

                //设置边框贴图
                this.setStyle(this.para.style);

                 return this;
             }


             // 析构函数 
            method destroy()
            {

                this.para.destroy();

                this.deallocate();
            }

            /**
                @setTextUre -> 设置边框贴图
                @point:integer -> 边框位置
                @blp:string -> 贴图路径
                @mode:integer ->  贴图模式 0 不平铺 1 平铺
             */
            method setTextUre(integer point, string blp,integer mode)
            { 
                //设置参数
                this.para.blp = blp;
                this.para.mode = mode;

                if (point == -1)
                {
                    DzFrameSetTexture(this.top,blp,mode);
                    DzFrameSetTexture(this.topleft,blp,mode);
                    DzFrameSetTexture(this.topright,blp,mode);

                    DzFrameSetTexture(this.bottom,blp,mode);
                    DzFrameSetTexture(this.bottomleft,blp,mode);
                    DzFrameSetTexture(this.bottomright,blp,mode);

                    DzFrameSetTexture(this.right,blp,mode);
                    DzFrameSetTexture(this.left,blp,mode);
                }else if (point == 0) //左上
                {
                    DzFrameSetTexture(this.topleft,blp,mode);
                }else if (point == 1) //上
                {
                    DzFrameSetTexture(this.top,blp,mode);
                }else if (point == 2) //右上
                {
                    DzFrameSetTexture(this.topright,blp,mode);
                }else if (point == 3) //左
                {
                    DzFrameSetTexture(this.left,blp,mode);
                }else if (point == 5) //右
                {
                    DzFrameSetTexture(this.right,blp,mode);
                }else if (point == 7) //下
                {
                    DzFrameSetTexture(this.bottom,blp,mode);
                }else if (point == 6) //左下
                {
                    DzFrameSetTexture(this.bottomleft,blp,mode);
                }else if (point == 8) //右下
                {
                    DzFrameSetTexture(this.bottomright,blp,mode);
                }else {
                    print("输入错误");
                }
            }

            /**
                @setSize -> 设置边框厚度
                @height:real -> 边框厚度
             */
            method setSize(real height)
            {
                this.para.height = height;
                //上
                DzFrameSetPoint(this.top,FRAME_POINT_TOPLEFT,this.para.pt.Handle(),FRAME_POINT_TOPLEFT,0,height);
                DzFrameSetPoint(this.top,FRAME_POINT_TOPRIGHT,this.para.pt.Handle(),FRAME_POINT_TOPRIGHT,0,height);
                DzFrameSetPoint(this.top,FRAME_POINT_BOTTOMLEFT,this.para.pt.Handle(),FRAME_POINT_TOPLEFT,0,0);
                DzFrameSetPoint(this.top,FRAME_POINT_BOTTOMRIGHT,this.para.pt.Handle(),FRAME_POINT_TOPRIGHT,0,0);
                //左上
                DzFrameSetPoint(this.topleft,FRAME_POINT_TOPRIGHT,this.top,FRAME_POINT_TOPLEFT,0,0);
                DzFrameSetPoint(this.topleft,FRAME_POINT_TOPLEFT,this.top,FRAME_POINT_TOPLEFT,0 - height,0);
                DzFrameSetPoint(this.topleft,FRAME_POINT_BOTTOMRIGHT,this.top,FRAME_POINT_BOTTOMLEFT,0,0);
                DzFrameSetPoint(this.topleft,FRAME_POINT_BOTTOMLEFT,this.top,FRAME_POINT_BOTTOMLEFT,0 - height,0);
                //右上
                DzFrameSetPoint(this.topright,FRAME_POINT_TOPLEFT,this.top,FRAME_POINT_TOPRIGHT,0,0);
                DzFrameSetPoint(this.topright,FRAME_POINT_TOPRIGHT,this.top,FRAME_POINT_TOPRIGHT,height,0);
                DzFrameSetPoint(this.topright,FRAME_POINT_BOTTOMLEFT,this.top,FRAME_POINT_BOTTOMRIGHT,0,0);
                DzFrameSetPoint(this.topright,FRAME_POINT_BOTTOMRIGHT,this.top,FRAME_POINT_BOTTOMRIGHT,height,0);
                //下
                DzFrameSetPoint(this.bottom,FRAME_POINT_TOPLEFT,this.para.pt.Handle(),FRAME_POINT_BOTTOMLEFT,0,0);
                DzFrameSetPoint(this.bottom,FRAME_POINT_TOPRIGHT,this.para.pt.Handle(),FRAME_POINT_BOTTOMRIGHT,0,0);
                DzFrameSetPoint(this.bottom,FRAME_POINT_BOTTOMLEFT,this.para.pt.Handle(),FRAME_POINT_BOTTOMLEFT,0,0 - height);
                DzFrameSetPoint(this.bottom,FRAME_POINT_BOTTOMRIGHT,this.para.pt.Handle(),FRAME_POINT_BOTTOMRIGHT,0,0 - height);
                //左下
                DzFrameSetPoint(this.bottomleft,FRAME_POINT_TOPRIGHT,this.bottom,FRAME_POINT_TOPLEFT,0,0);
                DzFrameSetPoint(this.bottomleft,FRAME_POINT_TOPLEFT,this.bottom,FRAME_POINT_TOPLEFT,0 - height,0);
                DzFrameSetPoint(this.bottomleft,FRAME_POINT_BOTTOMRIGHT,this.bottom,FRAME_POINT_BOTTOMLEFT,0,0);
                DzFrameSetPoint(this.bottomleft,FRAME_POINT_BOTTOMLEFT,this.bottom,FRAME_POINT_BOTTOMLEFT,0 - height,0);
                //右下
                DzFrameSetPoint(this.bottomright,FRAME_POINT_TOPLEFT,this.bottom,FRAME_POINT_TOPRIGHT,0,0);
                DzFrameSetPoint(this.bottomright,FRAME_POINT_TOPRIGHT,this.bottom,FRAME_POINT_TOPRIGHT,height,0);
                DzFrameSetPoint(this.bottomright,FRAME_POINT_BOTTOMLEFT,this.bottom,FRAME_POINT_BOTTOMRIGHT,0,0);
                DzFrameSetPoint(this.bottomright,FRAME_POINT_BOTTOMRIGHT,this.bottom,FRAME_POINT_BOTTOMRIGHT,height,0);

                //左
                DzFrameSetPoint(this.left,FRAME_POINT_TOPLEFT,this.topleft,FRAME_POINT_BOTTOMLEFT,0,0);
                DzFrameSetPoint(this.left,FRAME_POINT_TOPRIGHT,this.topleft,FRAME_POINT_BOTTOMRIGHT,0,0);
                DzFrameSetPoint(this.left,FRAME_POINT_BOTTOMLEFT,this.bottomleft,FRAME_POINT_TOPLEFT,0,0);
                DzFrameSetPoint(this.left,FRAME_POINT_BOTTOMRIGHT,this.bottomleft,FRAME_POINT_TOPRIGHT,0,0);

                 //右
                DzFrameSetPoint(this.right,FRAME_POINT_TOPLEFT,this.topright,FRAME_POINT_BOTTOMLEFT,0,0);
                DzFrameSetPoint(this.right,FRAME_POINT_TOPRIGHT,this.topright,FRAME_POINT_BOTTOMRIGHT,0,0);
                DzFrameSetPoint(this.right,FRAME_POINT_BOTTOMLEFT,this.bottomright,FRAME_POINT_TOPLEFT,0,0);
                DzFrameSetPoint(this.right,FRAME_POINT_BOTTOMRIGHT,this.bottomright,FRAME_POINT_TOPRIGHT,0,0);
            }

            /**
                @setStyle -> 设置边框样式
                @style:string -> 
                     -> 边框样式:
                        - default 统一边角贴图 [默认样式]
                        - custom 自定义边角贴图
             */
            method setStyle(string style)
            {
                if (style == "default")
                {
                    this.setTextUre(FRAME_POINT_ALL,this.para.blp,this.para.mode);
                }else if (style == "custom")
                {
                    this.setTextUre(FRAME_POINT_TOP,this.para.blp + "top.blp",this.para.mode);
                    this.setTextUre(FRAME_POINT_TOPLEFT,this.para.blp + "topleft.blp",this.para.mode);
                    this.setTextUre(FRAME_POINT_TOPRIGHT,this.para.blp + "topright.blp",this.para.mode);

                    this.setTextUre(FRAME_POINT_LEFT,this.para.blp + "left.blp",this.para.mode);
                    this.setTextUre(FRAME_POINT_RIGHT,this.para.blp + "right.blp",this.para.mode);

                    this.setTextUre(FRAME_POINT_BOTTOM,this.para.blp + "bottom.blp",this.para.mode);
                    this.setTextUre(FRAME_POINT_BOTTOMLEFT,this.para.blp + "bottomleft.blp",this.para.mode);
                    this.setTextUre(FRAME_POINT_BOTTOMRIGHT,this.para.blp + "bottomright.blp",this.para.mode);
                }else{
                    print("输入[样式类型]错误!");
                }
            }


            /**
                @show -> 显示/隐藏指定边框
             */
            method show(integer point, boolean flag)
            {
                if (point == -1)
                {
                    DzFrameShow(this.top,flag);
                    DzFrameShow(this.topleft,flag);
                    DzFrameShow(this.topright,flag);

                    DzFrameShow(this.left,flag);
                    DzFrameShow(this.right,flag);

                    DzFrameShow(this.bottom,flag);
                    DzFrameShow(this.bottomleft,flag);
                    DzFrameShow(this.bottomright,flag);
                }else if (point == 0) //左上
                {
                    DzFrameShow(this.topleft,flag);
                }else if (point == 1) //上
                {
                    DzFrameShow(this.top,flag);
                }else if (point == 2) //右上
                {
                    DzFrameShow(this.topright,flag);
                }else if (point == 3) //左
                {
                    DzFrameShow(this.left,flag);
                }else if (point == 5) //右
                {
                    DzFrameShow(this.right,flag);
                }else if (point == 7) //下
                {
                    DzFrameShow(this.bottom,flag);
                }else if (point == 6) //左下
                {
                    DzFrameShow(this.bottomleft,flag);
                }else if (point == 8) //右下
                {
                    DzFrameShow(this.bottomright,flag);
                }else {
                    print("输入错误");
                }
            }
        }
    }
}
//! endzinc
