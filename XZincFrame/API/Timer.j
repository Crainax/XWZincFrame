//! zinc
library Timer
{
    #define Timer_Real_Time         0.01    // 执行周期时间

    public struct Timer
    {
        public
        {
            integer number;     // 计时器执行的帧数

            static integer Hour = 0;    // 时
            static integer Branch = 0;  // 分
            static integer Second = 0;  // 秒
        }

        private
        {
            // 成员属性
            trigger trig;       // 回调动作
            real elapsed;       // 流逝时间
            real cycle;         // 周期时间
            real suspendTime;   // 暂停时流逝的时间
            boolean perio;      // 周期状态
            boolean pause;      // 执行状态
            integer dataInt;    // 绑定的数据
            static timer tm = CreateTimer();    // 中心计时器管控
            static integer gameTimer = 0;       // 游戏时间
            static Timer Structs[];             // 现存实例
            static integer size = 0;            // 注册数量
            static Timer name = 0;              // 到期的实例

            // 周期执行
            static method Spin() {
                thistype this = 0;
                integer index = 0;
                thistype.gameTimer +=1;
                if (thistype.size > 0) {
                    while (index != thistype.size) {
                        this = thistype.Structs[index];
                        this.elapsed +=Timer_Real_Time;
                        if (this.elapsed >= this.cycle) {
                            thistype.name = this;
                            if (this.pause) {
                                this.number +=1;
                                TriggerExecute(this.trig);
                            }
                            if (this.perio) {
                                this.elapsed = 0.0;
                            } else {
                                this.destroy();
                                thistype.size -=1;
                                thistype.Structs[index] = thistype.Structs[thistype.size];
                                index -=1;
                            }
                            thistype.name = 0;
                        }
                        index +=1;
                    }
                }
                // 游戏时间计时
                if (ModuloInteger(thistype.gameTimer, 100) == 0) {
                    if (thistype.Second == 60) {
                        thistype.Second = 0;
                        thistype.Branch +=1;
                    }
                    if (thistype.Branch == 60) {
                        thistype.Branch = 0;
                        thistype.Hour +=1;
                    }
                    thistype.Second +=1;
                }
            }

            // 初始化
            static method onInit() {
                TimerStart(thistype.tm, Timer_Real_Time, true, function thistype.Spin);
            }

            // 析构函数
            method destroy() {
                DestroyTrigger(this.trig);
                this.trig = null;
                this.deallocate();
            }
        }

        public
        {
            // 构造函数
            static method create(real time, boolean flag, code action) ->thistype {
                thistype this = thistype.allocate();
                this.trig     = CreateTrigger();
                this.cycle    = time;
                this.perio    = flag;
                this.pause    = true;
                this.elapsed  = 0.0;
                this.dataInt  = 0;
                this.number   = 0;
                this.suspendTime  = 0.0;
                TriggerAddAction(this.trig, action);
                thistype.Structs[thistype.size] = this;
                thistype.size +=1;
                return this;
            }

            // Get
            method HandleId() ->integer { return GetHandleId(this.trig); }  // 获取唯一性标识
            method elapsedTime() ->real { return this.elapsed; } // 获取流逝的时间
            method cycleTime() ->real { return this.cycle; } // 获取设置的周期时间
            method data() ->integer { return this.dataInt; } // 获取绑定到实例的数据
            static method thisTimer() ->Timer { return thistype.name; } // 获取到期的实例
            static method thisData() ->integer { return thistype.name.data(); } // 获取到期实例绑定的数据
            static method gameTime() ->real { return I2R(thistype.gameTimer) / 100.0; } // 获取当前游戏时间 0.01秒 = 10毫秒

            // 等待(游戏时间)
            static method wait(real time) {
                timer t;
                real timeRemaining;
                if (time > 0.0) {
                    t = CreateTimer();
                    TimerStart(t, time, false, null);
                    while (true) {
                        timeRemaining = TimerGetRemaining(t);
                        if (timeRemaining <= 0) {
                            break;
                        }
                        if (timeRemaining > bj_POLLED_WAIT_SKIP_THRESHOLD) {
                            TriggerSleepAction(0.1 * timeRemaining);
                        } else {
                            TriggerSleepAction(bj_POLLED_WAIT_INTERVAL);
                        }
                    }
                    DestroyTimer(t);
                }
                t = null;
            }

            // Set
            method setData(integer dataInt) { this.dataInt = dataInt; } // 给当前实例绑定整数数据
            // 暂停计时器实例
            method suspend() {
                this.pause = false;
                this.suspendTime = this.elapsed;
            }
            // 启动计时器实例
            method start() {
                this.pause = true;
                this.elapsed = this.suspendTime;
            }
            // 终止计时器实例
            method delete() {
                this.perio = false;
                this.pause = false;
            }
            // 修改计时器实例周期间隔
            method setCycle(real time) {
                this.cycle = time;
            }
        }
    }
}
//! endzinc
