/*
 * @Descripttion: 用RGBA表示颜色 
 * @Author: Carlos
 * @Date: 2020-05-23 12:41:44
 * @LastEditors: Carlos
 * @LastEditTime: 2020-05-23 14:10:08
 */ 
//! zinc
library Color
{
    public
    {
        struct Color
        {
            static method Argb(integer r,integer g,integer b,integer a) -> integer { return DzGetColor(r,g,b,a);}
            // 黑色 底图必须是白色
            static method operator Black() -> integer { return DzGetColor(255,0,0,0);}
        }
    
    }
}
//! endzinc
