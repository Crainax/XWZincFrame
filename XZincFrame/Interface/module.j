/*
 * @Descripttion: 矩形变换 模块
 * @Author: Carlos
 * @Date: 2020-05-22 00:58:03
 * @LastEditors: Carlos
 * @LastEditTime: 2020-05-29 08:14:35
 */ 
//! zinc
library Module
{
    #define RectDefault_width  AutoSize(48)
    #define RectDefault_height  AutoSize(48)
    #define RectDefault_x  AutoSize(640)
    #define RectDefault_y  AutoSize(480)
    #define RectDefault_point FRAME_POINT_CENTER
    #define RectDefault_parent DzGetGameUI()

    #define RectUserWidth  "width"
    #define RectUserHeight "height"
    #define RectUserX "x"  
    #define RectUserY "y"   
    #define RectUserPoint "point" 
    #define RectUserParent "parent" 
        
    #define RectUserWidthType real
    #define RectUserHeightType real
    #define RectUserXType real 
    #define RectUserYType real 
    #define RectUserPointType integer
    #define RectUserParentType integer

    public
    {
        module RectTransform
        {
            // 获取属性 - 宽
            method operator width() -> RectUserWidthType { return userGet(integer,this.Handle,RectUserWidthType,RectUserWidth);}
            // 获取属性 - 高
            method operator height() -> RectUserHeightType { return userGet(integer,this.Handle,RectUserHeightType,RectUserHeight);}
            // 获取属性 - x 
            method operator x() -> RectUserXType { return userGet(integer,this.Handle,RectUserXType,RectUserX);}
            // 获取属性 - y
            method operator y() -> RectUserYType { return userGet(integer,this.Handle,RectUserYType,RectUserY);}
            // 获取属性 - point
            method operator point() -> RectUserPointType { return userGet(integer,this.Handle,RectUserPointType,RectUserPoint);}
            // 获取属性 - 父节点
            method operator parent() -> RectUserParentType { return userGet(integer,this.Handle,RectUserParentType,RectUserParent);}

            // 设置属性 - 宽
            method operator width=(RectUserWidthType value)
            {
                userSet(integer,this.Handle,RectUserWidthType,RectUserWidth,value);
                this.setSize(width,this.height);
            }
            // 设置属性 - 高
            method operator height=(RectUserHeightType value)
            {
                userSet(integer,this.Handle,RectUserHeightType,RectUserHeight,value);
                this.setSize(this.width,height);
            }
            // 设置属性 - x
            method operator x=(RectUserXType value)
            {
                userSet(integer,this.Handle,RectUserXType,RectUserX,value);
                this.flushPoint();
                this.setAbsPoint(x,this.y);
            }
            // 设置属性 - y
            method operator y=(RectUserYType value)
            {
                userSet(integer,this.Handle,RectUserYType,RectUserY,value);
                this.flushPoint();
                this.setAbsPoint(this.x,y);
            }
            // 设置属性 - 锚点
            method operator point=(RectUserPointType point)
            {
                userSet(integer,this.Handle,RectUserPointType,RectUserPoint,point);
            }
            // 设置属性 - Parent
            method operator parent=(RectUserParentType frame)
            {
                userSet(integer,this.Handle,RectUserParentType,RectUserParent,frame);
                this.setParent(frame);
            }

            // 初始化属性默认值
            method default_user()
            {
                userSet(integer,this.Handle,RectUserWidthType,RectUserWidth,RectDefault_width);
                userSet(integer,this.Handle,RectUserHeightType,RectUserHeight,RectDefault_height);
                userSet(integer,this.Handle,RectUserXType,RectUserX,RectDefault_x);
                userSet(integer,this.Handle,RectUserYType,RectUserY,RectDefault_y);
                userSet(integer,this.Handle,RectUserPointType,RectUserPoint,RectDefault_point);
                userSet(integer,this.Handle,RectUserParentType,RectUserParent,RectDefault_parent);
            }
            // 初始化
            method rect_init()
            {
                this.default_user();
                
                this.width = this.width;
                this.height = this.height;
                this.x = this.x;
                this.y = this.y;
            }
            // 设置图像大小
            method setSize(RectUserWidthType width,RectUserHeightType height) { DzFrameSetSize(this.Handle,width,height);}
            // 设置绝对坐标
            method setAbsPoint(RectUserXType x,RectUserYType y)
            {
                DzFrameSetAbsolutePoint(this.Handle,this.point,x,y);
            }
            // 设置父节点
            method setParent(RectUserParentType frame) { DzFrameSetParent(this.Handle,frame);}            
            // 清空锚点 一般重置需要
            method flushPoint() { DzFrameClearAllPoints(this.Handle);}
            // 复制结构的虚拟属性 注意这里会调用虚拟属性里面的方法
            method copyUser(integer frame) 
            { 
                this.width = userGet(integer,frame,RectUserWidthType,RectUserWidth);
                this.height = userGet(integer,frame,RectUserHeightType,RectUserHeight);
                this.x = userGet(integer,frame,RectUserXType,RectUserX);
                this.y = userGet(integer,frame,RectUserYType,RectUserY);
            }
            // 移动所有锚点
            method movePoint(integer frame)
            {
                this.flushPoint();  //清空所有锚点
                DzFrameSetAllPoints(this.Handle,frame);
            }
            // 设置相对位置
            method setPoint(integer frame_point, integer frame,real x,real y)
            {
                
                this.flushPoint();
                DzFrameSetPoint(this.Handle,this.point,frame,frame_point,x,y);
                // 直接调用保存不通过虚拟属性
                userSet(integer,this.Handle,RectUserXType,RectUserX,x);
                userSet(integer,this.Handle,RectUserYType,RectUserY,y);
            }
            // 设置对角位置
            method setAnglePoint(integer frame,real x,real y)
            {
                this.flushPoint();
                this.point = FRAME_POINT_TOPLEFT;
                DzFrameSetPoint(this.Handle,this.point,frame,this.point,0 - x,y);
                this.point = FRAME_POINT_BOTTOMRIGHT;
                DzFrameSetPoint(this.Handle,this.point,frame,this.point,x,0 - y);
            }
            // 设置对角绝对位置
            method setAngleAbsPoint(integer frame,real topleft_x,real topleft_y,real bottomright_x,real bottomright_y)
            {
                this.flushPoint();
                this.point = FRAME_POINT_TOPLEFT;
                DzFrameSetPoint(this.Handle,this.point,frame,this.point,topleft_x,topleft_y);
                this.point = FRAME_POINT_BOTTOMRIGHT;
                DzFrameSetPoint(this.Handle,this.point,frame,this.point,bottomright_x,bottomright_y);
            }
        }   
    }        
    
}
//! endzinc
