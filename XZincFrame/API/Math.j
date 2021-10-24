//! zinc
library Math
{
    // 数学库
    public struct math
    {
        public
        {
            static method randomReal(real low, real high) ->real { return GetRandomReal(low, high); } // 取随机实数
            static method randomInt(integer low, integer high) ->integer { return GetRandomInt(low, high); } // 取随机整数
            static method random() ->real{ return GetRandomReal(0.01, 1.0); } // 取0.01~1.0随机实数
            static method IsRandomInt(integer value) ->boolean { return math.randomInt(1, 100) <= value; } // 百分比判断
            static method randomRectX(rect r) ->real { return GetRandomReal(GetRectMinX(r), GetRectMaxX(r)); } // 获取矩形随机坐标X
            static method randomRectY(rect r) ->real { return GetRandomReal(GetRectMinY(r), GetRectMaxY(r)); } // 获取矩形随机坐标Y

            static method sin(real r) ->real { return Sin(r); } // 正弦(弧度)
            static method cos(real r) ->real { return Cos(r); } // 余弦(弧度)
            static method tan(real r) ->real { return Tan(r); } // 正切(弧度)
            static method asin(real r) ->real { return Asin(r); } // 反正弦(弧度)
            static method acos(real r) ->real { return Acos(r); } // 反余弦(弧度)
            static method atan(real r) ->real { return Atan(r); } // 反正切(弧度)
            static method atan2(real y, real x) ->real { return Atan2(y, x); } // 反正切(Y:X)(弧度)
            static method pow(real x, real power) ->real { return Pow(x, power); } // 幕运算
            static method squareRoot(real x) ->real { return SquareRoot(x); } // 平方根

            static method max(real n1, real n2) ->real {
                if (n1 > n2) {
                    return n1;
                } else {
                    return n2;
                }
            }

            static method sinBJ(real degrees) ->real { return Sin(degrees * bj_DEGTORAD); }
            static method cosBJ(real degrees) ->real { return Cos(degrees * bj_DEGTORAD); }
            static method tanBJ(real degrees) ->real { return Tan(degrees * bj_DEGTORAD); }
            static method asinBJ(real degrees) ->real {
                return Asin(degrees) * bj_DEGTORAD;
            }
            static method acosBJ(real degrees) ->real {
                return Acos(degrees) * bj_DEGTORAD;
            }
            static method atanBJ(real degrees) ->real {
                return Atan(degrees) * bj_DEGTORAD;
            }
            static method atan2BJ(real x, real y) ->real { return Atan2(y, x) * bj_DEGTORAD; }

            static method miR2I(real r) ->integer { return R2I(r * 100 + 0.5) / 100; } // 实数取整转整数
            static method miR2S(real r) ->string { return I2S(math.miR2I(r)); } // 实数取整转字符串
            static method miR2R(real r) ->real { return I2R(math.miR2I(r)); } // 实数取整
            static method miR2SP(real r) ->string { return I2S(R2I(r * 100 + 0.5)); } // 实数转百分比字符串

            static method randomRangeX(real r, real x) ->real { return Cos(GetRandomReal(0, 360)) * GetRandomReal(0, r) + x; } // 范围内随机X
            static method randomRangeY(real r, real y) ->real { return Cos(GetRandomReal(0, 360)) * GetRandomReal(0, r) + y; } // 范围内随机Y

            static method deg2Rad(real degrees) ->real { return Deg2Rad(degrees); } // 转换角度为弧度
            static method rad2Deg(real radians) ->real { return Rad2Deg(radians); } // 转换弧度为角度

            // 两个角度求锐角
            static method includAngle(real a, real b) ->real {
                real c;
                if (a < 0) a +=360;
                if (b < 0) b +=360;
                c = a - b;
                if (c < 0) c = -c;
                if (c > 180) c = 360 - c;
                return c;
            }

            static method unitAtan2(Unit u, Unit em) ->real { return math.atan2(em.y() - u.y(), em.x() - u.x()); } // 两个单位的反正切
            static method lineUnitX(Unit u, real dist, real angle) ->real { return u.x() + dist * math.cos(angle * bj_DEGTORAD); } // 求位移坐标X
            static method lineUnitY(Unit u, real dist, real angle) ->real { return u.y() + dist * math.sin(angle * bj_DEGTORAD); } // 求位移坐标Y
            static method unitAngleX(Unit u, Unit em) ->real { return math.cos((bj_RADTODEG * math.unitAtan2(u, em)) * bj_DEGTORAD); } // 两个单位的X角度
            static method unitAngleY(Unit u, Unit em) ->real { return math.sin((bj_RADTODEG * math.unitAtan2(u, em)) * bj_DEGTORAD); } // 两个单位的Y角度
            // 两个单位的角度
            static method unitAngle(Unit u, Unit em) ->real {
                real angle = math.rad2Deg(math.unitAtan2(u, em));
                if (angle < 0) angle +=360;
                return angle;
            }
            // 两个坐标的角度
            static method xyAngle(real x1, real y1, real x2, real y2) ->real {
                real angle = math.rad2Deg(math.atan2(y2 - y1, x2 - x1));
                if (angle < 0) angle +=360;
                return angle;
            }
            // 两个坐标的距离
            static method xyDistance(real x1, real y1, real x2, real y2) ->real {
                real dx = x2 - x1;
                real dy = y2 - y1;
                return math.squareRoot(dx * dx + dy * dy);
            }
            // 两个单位的距离
            static method unitDistance(Unit u, Unit em) ->real {
                real dx = em.x() - u.x();
                real dy = em.y() - u.y();
                return math.squareRoot(dx * dx + dy * dy);
            }
            // 单位到坐标的距离
            static method unitDistanceXY(Unit u, real x, real y) ->real {
                real dx = x - u.x();
                real dy = y - u.y();
                return math.squareRoot(dx * dx + dy * dy);
            }
        }
    }

    // 随机池子类型
    public struct RandomInt
    {
        private integer min,max;
        private static hashtable ht;

        // 排泄销毁当前实例
        public method destroy() {
            FlushChildHashtable(thistype.ht, integer(this));
            this.deallocate();
        }

        // 获取长度
        public method operator size() ->integer { return this.max; }

        // 重置当前随机池的随机数 参数为下标和上标,下标不可以<=0
        public method reset(integer min, integer max) {
            integer index;
            if (min > max) {
                print("RandomInt:reset 随机池范围出错,参数max不能小于min.");
                return;
            }
            FlushChildHashtable(thistype.ht, integer(this));
            if (min <= 0) min = 1;
            this.min = min;
            this.max = max;
            for (this.min <= index <= this.max) {
                SaveInteger(thistype.ht, integer(this), index, index);
            }
        }

        // 删除随机池内指定值
        public method remove(integer value) ->integer
        {
            integer forIndex;
            integer index;
            for (1 <= forIndex <= this.max) {
                index = LoadInteger(thistype.ht, integer(this), forIndex);
                if (index == value) {
                    SaveInteger(thistype.ht, integer(this), forIndex, LoadInteger(thistype.ht, integer(this), this.max));
                    this.max -=1;
                    return index;
                }
            }
            return 0;
        }

        // 从当前随机池子剩余的数中抽出随机数.如果随机池子为空,返回0
        public method getInt() ->integer {
            integer Int = 0,N;
            if (this.max > 0) {
                N = GetRandomInt(this.min, this.max);
                Int = LoadInteger(thistype.ht, integer(this), N);
                SaveInteger(thistype.ht, integer(this), N, LoadInteger(thistype.ht, integer(this), this.max));
                this.max -=1;
            } else {
                print("随机池子当中所有随机数已经随出完毕");
            }
            return Int;
        }

        // 声明随机类实例 参数为下标和上标,下标不可以<=0
        public static method create(integer min, integer max) ->thistype {
            thistype this = thistype.allocate();
            integer index;
            if (min > max) {
                print("RandomInt:new 随机池范围出错,参数max不能小于min.");
                this.destroy();
                return 0;
            }
            if (min <= 0) min = 1;
            this.min = min;
            this.max = max;
            for (this.min <= index <= this.max) {
                SaveInteger(thistype.ht, integer(this), index, index);
            }
            return this;
        }

        private static method onInit() {
            thistype.ht = InitHashtable();
        }
    }
}
//! endzinc
