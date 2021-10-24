//! zinc
library Effect
{
    private
    {
        // addSpecial 函数传参
        integer number[];
        integer Count[];
        real X[];
        real Y[];
        real Range[];
        string Name[];
    }

    public struct Effect
    {
        private
        {
            // 成员属性
            effect e;
            integer handleId;
            boolean timedBool;
        }

        public
        {
            // 实例自身数量
            static integer thisSize = 0;

            // 构造函数
            static method create(string name, real x, real y) ->thistype {
                thistype this = thistype.allocate();
                boolean switch = LoadBoolean(XZHT, GetHandleId(GetLocalPlayer()), strHash("特效开关"));
                if (switch) name = "";
                this.e        = AddSpecialEffect(name, x, y);
                this.timedBool= false;
                this.handleId = GetHandleId(this.e);
                this.thisSize +=1;
                SaveInteger(XZHT, strHash("特效实例"), this.handleId, integer(this));
                return this;
            }
            static method createUnit(string name, Unit u, string attachPointName) ->thistype {
                thistype this = thistype.allocate();
                boolean switch = LoadBoolean(XZHT, GetHandleId(GetLocalPlayer()), strHash("特效开关"));
                if (switch) name = "";
                this.e        = AddSpecialEffectTarget(name, u.Handle(), attachPointName);
                this.timedBool= false;
                this.handleId = GetHandleId(this.e);
                this.thisSize +=1;
                SaveInteger(XZHT, strHash("特效实例"), this.handleId, integer(this));
                return this;
            }
            static method byHandle(effect e) ->thistype {
                thistype this = 0;
                if (LoadInteger(XZHT, strHash("特效实例"), GetHandleId(e)) > 0) {
                    return LoadInteger(XZHT, strHash("特效实例"), GetHandleId(e));
                }
                this          = thistype.allocate();
                this.e        = e;
                this.timedBool= false;
                this.handleId = GetHandleId(this.e);
                this.thisSize +=1;
                SaveInteger(XZHT, strHash("特效实例"), this.handleId, integer(this));
                return this;
            }

            // 析构函数
            method destroy() {
                if (integer(this) < 1) return;
                RemoveSavedInteger(XZHT, strHash("特效实例"), this.handleId);
                this.e        = null;
                this.handleId = 0;
                this.thisSize -=1;
                this.deallocate();
            }
            method Null() {
                if (!this.timedBool) {
                    this.destroy();
                }
            }
            method delete() {
                DestroyEffect(this.e);
                this.destroy();
            }
            method clear() {
                this.setSize(0);
                DestroyEffect(this.e);
                this.destroy();
            }
            method timed(real dur) {
                if (dur > 0) {
                    this.timedBool = true;
                    Timer.create(dur, false, function() {
                        thistype this = Timer.thisData();
                        this.timedBool = false;
                        this.clear();
                    }).setData(integer(this));
                } else {
                    this.clear();
                }
            }

            // 重载 ==
            method operator == (Effect c) ->boolean { return this.e == c.Handle(); }

            // Get
            method Handle() ->effect { return this.e; } // 获取特效
            method HandleId() ->integer { return this.handleId; } // 获取句柄
            method x() ->real { return EXGetEffectX(this.e); } // 获取X坐标
            method y() ->real { return EXGetEffectY(this.e); } // 获取Y坐标
            method z() ->real { return EXGetEffectZ(this.e); } // 获取Z高度
            method size() ->real { return EXGetEffectSize(this.e); } // 获取Size大小

            // Set
            method move(real x, real y) { EXSetEffectXY(this.e, x, y); } // 移动特效到XY坐标
            method setZ(real z) { EXSetEffectZ(this.e, z); } // 设置特效Z高度
            method setSize(real size) { EXSetEffectSize(this.e, size); } // 设置Size大小
            method setScale(real x, real y, real z) { EXEffectMatScale(this.e, x, y, z); } // 设置特效缩放
            method setSpeed(real speed) { EXSetEffectSpeed(this.e, speed); } // 设置特效动画播放速度

            // 其他
            method rotateX(real angle) { EXEffectMatRotateX(this.e, angle); } // 绕X轴旋转
            method rotateY(real angle) { EXEffectMatRotateY(this.e, angle); } // 绕Y轴旋转
            method rotateZ(real angle) { EXEffectMatRotateZ(this.e, angle); } // 绕Z轴旋转
            method reset() { EXEffectMatReset(this.e); } // 特效重置变换

            // 指定时间内随机地点创建特效 count 次数，dur 时间间隔，x,y,range XY坐标 范围，n 特效个数，name 特效路径
            static method addSpecial(integer count, real dur, real x, real y,real range, integer n, string name) {
                integer index;
                Timer t = Timer.create(dur, true, function() {
                    integer forIndex;
                    integer index = integer(Timer.thisTimer());
                    if (Count[index] > 0) {
                        for (1 <= forIndex <= number[index]) {
                            thistype.create(Name[index], X[index] + math.cos(math.randomReal(0.0, 6.28)) * math.randomReal(0.0, Range[index]), Y[index] + math.sin(math.randomReal(0.0, 6.28)) * math.randomReal(0.0, Range[index])).delete();
                        }
                        Count[index] -=1;
                    } else {
                        Timer(index).delete();
                    }
                });
                index = integer(t);
                number[index] = n;
                Count[index] = count;
                X[index] = x;
                Y[index] = y;
                Range[index] = range;
                Name[index] = name;
            }
        }
    }
}
//! endzinc
