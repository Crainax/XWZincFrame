//! zinc
library Vec3
{
    public struct Vec3
    {
        public
        {
            // 属性
            real x;
            real y;
            real z;

            // 原始构造函数
            static method create(real X, real Y, real Z) ->Vec3
            {
                Vec3 this = Vec3.allocate();
                this.x = X;
                this.y = Y;
                this.z = Z;
                return this;
            }

            method operator < (Vec3 that) -> boolean { return this.x < that.x && this.y < that.y && this.z < that.z; } // 判断是否少于that

            method operator length () ->real { return SquareRoot(this.x*this.x + this.y*this.y + this.z*this.z); }
            method operator length= (real len)
            {
                real Length = this.length;
                if (Length == 0.0) { print("试图设置没有长度的向量的长度!");return; }
                Length = len / Length;
                this.x = this.x * Length;
                this.y = this.y * Length;
                this.z = this.z * Length;
            }

            // 平扁平化
            method operator norm () -> Vec3
            {
                real len = this.length;
                real x = 0.0;
                real y = 0.0;
                real z = 0.0;
                if (len != 0.0) {
                    x = (this.x / len);
                    y = (this.y / len);
                    z = (this.z / len);
                }
                return Vec3.create(x, y, z);
            }

            // 加法
            method add(Vec3 v) { this.x = this.x + v.x;this.y = this.y + v.y;this.z = this.z + v.z; }
            static method sum(Vec3 a, Vec3 b) ->Vec3
            {
                Vec3 v = Vec3.allocate();
                v.x = a.x + b.x;
                v.y = a.y + b.y;
                v.z = a.z + b.z;
                return v;
            }

            // 减法
            method sub(Vec3 v) { this.x = this.x - v.x;this.y = this.y - v.y;this.z = this.z - v.z; }
            static method difference(Vec3 a, Vec3 b) ->Vec3
            {
                Vec3 v = Vec3.allocate();
                v.x = a.x - b.x;
                v.y = a.y - b.y;
                v.z = a.z - b.z;
                return v;
            }

            // 按给定因子缩放向量
            method scale(real factor) { this.x = this.x * factor;this.y = this.y * factor;this.z = this.z * factor; }

            // 计算两个向量的点积（也称为标量积）
            method dot(Vec3 v) ->real { return this.x*v.x + this.y*v.y + this.z*v.z; }
            static method dotProduct(Vec3 a, Vec3 b) ->real { return a.x*b.x + a.y*b.y + a.z*b.z; }

            // 计算两个向量的叉积（也称为向量积） 并将其作为新向量返回
            static method crossProduct(Vec3 a, Vec3 b) -> Vec3
            {
                Vec3 v = Vec3.allocate();
                v.x = a.y*b.z - a.z*b.y;
                v.y = a.z*b.x - a.x*b.z;
                v.z = a.x*b.y - a.y*b.x;
                return v;
            }

            // 计算三个向量的三次标量积
            static method tripleProductScalar(Vec3 a, Vec3 b, Vec3 c) ->real { return ((a.y*b.z - a.z*b.y)*c.x+(a.z*b.x - a.x*b.z)*c.y+(a.x*b.y - a.y*b.x)*c.z); }

            // 计算三个向量的三向量积并将其作为新向量返回
            static method tripleProductVector(Vec3 a, Vec3 b, Vec3 c) ->Vec3
            {
                Vec3 v = Vec3.allocate();
                real n = a.x*c.x+a.y*c.y+a.z*c.z;
                real m = a.x*b.x+a.y*b.y+a.z*b.z;
                v.x = b.x*n-c.x*m;
                v.y = b.y*n-c.y*m;
                v.z = b.z*n-c.z*m;
                return v;
            }

            // 计算矢量“投影”到矢量“方向”的投影 并将其作为新向量返回。 如果向量方向的长度为0，则返回null。
            static method projectionVector(Vec3 projected, Vec3 direction) ->Vec3
            {
                Vec3 v = 0;
                real l = direction.x*direction.x+direction.y*direction.y+direction.z*direction.z;
                if (l == 0.0) { print("试图投射到没有长度的向量上!");return 0; }
                v = Vec3.allocate();
                l = (projected.x*direction.x+projected.y*direction.y+projected.z*direction.z) / l;
                v.x = direction.x*l;
                v.y = direction.y*l;
                v.z = direction.z*l;
                return v;
            }
            // 将调用它的向量投影到向量“方向”。 如果向量“方向”的长度为0，则不执行任何操作。
            method projectVector(Vec3 direction)
            {
                real l = direction.x*direction.x+direction.y*direction.y+direction.z*direction.z;
                if (l == 0.0) { print("试图投射到没有长度的向量上!");return; }
                l = (this.x*direction.x+this.y*direction.y+this.z*direction.z) / l;
                this.x = direction.x*l;
                this.y = direction.y*l;
                this.z = direction.z*l;
            }

            // 计算投影到由定义的平面上的矢量的投影 它是法向量，并将其作为新向量返回。 如果向量“normal”的长度为0，则返回null。
            static method projectionPlane(Vec3 projected, Vec3 normal) ->Vec3
            {
                Vec3 v = 0;
                real l = normal.x*normal.x+normal.y*normal.y+normal.z*normal.z;
                if (l == 0.0) { print("试图投射到未定义的平面上!");return 0; }
                v = Vec3.allocate();
                l = (projected.x*normal.x+projected.y*normal.y+projected.z*normal.z) / l;
                v.x = projected.x - normal.x*l;
                v.y = projected.y - normal.y*l;
                v.z = projected.z - normal.z*l;
                return v;
            }
            // 将调用它的向量投影到由它的法向量定义的平面上。 如果向量“normal”的长度为0，则不执行任何操作。
            method projectPlane(Vec3 normal)
            {
                real l = normal.x*normal.x+normal.y*normal.y+normal.z*normal.z;
                if (l == 0.0) { print("试图投射到没有长度的向量上!");return; }
                l = (this.x*normal.x+this.y*normal.y+this.z*normal.z) / l;
                this.x = this.x - normal.x*l;
                this.y = this.y - normal.y*l;
                this.z = this.z - normal.z*l;
            }

            // 返回两个向量之间的角度（以弧度为单位），返回介于0和pi之间的值。 如果任何向量的长度为0个单位，则返回0.0。
            static method getAngle(Vec3 a, Vec3 b) ->real
            {
                real l = SquareRoot(a.x*a.x + a.y*a.y + a.z*a.z)*SquareRoot(b.x*b.x + b.y*b.y + b.z*b.z);
                if (l == 0.0) { print("尝试获取没有长度的向量之间的角度!");return 0.0; }
                return Acos((a.x*b.x+a.y*b.y+a.z*b.z) / l); // 角度以弧度为单位返回
            }

            // 围绕矢量“轴”定义的轴旋转调用它的矢量 按给定角度，以弧度输入。 如果轴的长度为0个单位，则不执行任何操作。
            method rotate(Vec3 axis, real angle)
            {
                real xx,xy,xz,yx,yy,yz,zx,zy,zz;
                real al = axis.x*axis.x+axis.y*axis.y+axis.z*axis.z; // 轴长度^2
                real f;
                real c = Cos(angle);
                real s = Sin(angle);
                if (al == 0.0) { print("试图投射到没有长度的向量上!");return; }
                f = (this.x*axis.x+this.y*axis.y+this.z*axis.z) / al;
                zx = axis.x*f;
                zy = axis.y*f;
                zz = axis.z*f; // 旋转矢量的轴分量
                xx = this.x-zx;
                xy = this.y-zy;
                xz = this.z-zz; // 垂直于轴的矢量分量
                al = SquareRoot(al);
                yx = (axis.y*xz - axis.z*xy) / al;
                yy = (axis.z*xx - axis.x*xz) / al; // 用叉积除以轴长，y与x的长度相同
                yz = (axis.x*xy - axis.y*xx) / al; // x,y - 我们旋转的坐标系
                this.x=xx*c+yx*s+zx;
                this.y=xy*c+yy*s+zy;
                this.z=xz*c+yz*s+zz;
            }
        }
    }
}
//! endzinc
