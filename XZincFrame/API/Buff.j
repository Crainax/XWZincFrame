//! zinc
library Buff
{
    public
    {
        hashtable BuffHT = InitHashtable();
    }

    public struct BuffType
    {
        private
        {
            // BuffType名字标识
            string name;
            // Event参数
            static Buff triggerBuff = 0;
            // 回调执行地址
            integer addEventIdName;
            integer removeEvnetIdName;
            integer updateEventIdName;
            // BuffType唯一Id
            trigger id;
            integer handleId;
        }

        public
        {
            // BuffType的回调地址
            integer addEventId;
            integer removeEvnetId;
            integer updateEventId;
            // 是否为可叠加
            boolean flag;
        }
        
        public
        {
            static method create(string name, boolean isFlag) ->thistype
            {
                thistype this = thistype.allocate();
                // 参数记录
                this.name = name;
                this.flag = isFlag;
                // 映射关系和ID定义
                this.id = CreateTrigger();
                this.handleId = GetHandleId(this.id);
                save(integer, XZHT, strHash("bufftype实例"), StringHash(name), integer(this));
                // Event回调参数定义
                this.addEventId = 0;
                this.removeEvnetId = 0;
                this.updateEventId = 0;
                this.addEventIdName = StringHash("添加" + this.name);
                this.removeEvnetIdName = StringHash("移除" + this.name);
                this.updateEventIdName = StringHash("刷新" + this.name);
                return this;
            }

            // 注册回调
            method onAdd(code action)
            {
                this.addEventId = Event.onDiy("添加" + this.name, action);
            }
            method onRemove(code action)
            {
                this.removeEvnetId = Event.onDiy("移除" + this.name, action);
            }
            method onUpdate(code action)
            {
                this.updateEventId = Event.onDiy("刷新" + this.name, action);
            }

            // 执行回调
            method callBackAddEvent(Buff bf)
            {
                thistype.triggerBuff = bf;
                Event.executeDiyInt(this.addEventIdName);
            }
            method callBackSubEvent(Buff bf)
            {
                thistype.triggerBuff = bf;
                Event.executeDiyInt(this.removeEvnetIdName);
            }
            method callBackUpdateEvent(Buff bf)
            {
                thistype.triggerBuff = bf;
                Event.executeDiyInt(this.updateEventIdName);
            }

            // Get
            method HandleId() ->integer { return this.handleId; }

            // 获取触发的buff实例
            static method getBuff() ->Buff
            {
                return thistype.triggerBuff;
            }
        }
    }

    #define Buff_Timer_UpdateDur        0.02

    public struct Buff
    {
        private
        {
            // 成员属性
            real dur;
            unit du;
            unit tu;

            // 重复判断需求
            boolean repeat;
            real repeatTime;

            // Buff唯一Id
            trigger id;
            integer handleId;
        }

        public
        {
            BuffType buffType;
            Timer time;
        }

        private
        {
            method onTimer()
            {
                this.time = Timer.create(Buff_Timer_UpdateDur, true, function() {
                    thistype this = Timer.thisData();
                    // 重置周期
                    this.dur = this.dur - Buff_Timer_UpdateDur;
                    // 判断当前Buff目标是否存活
                    if (!UnitAlive(this.tu)) this.destroy();
                    // 执行周期回调
                    if (this.buffType.updateEventId != 0) { this.buffType.callBackUpdateEvent(this); }
                    // 判断是否到期并给出移除
                    if (this.dur <= 0.0) {
                        if (this.buffType.removeEvnetId != 0) { this.buffType.callBackSubEvent(this); }
                        this.destroy();
                    }
                });
                this.time.setData(integer(this));
            }
        }

        public
        {
            static method create(Unit whichDu, Unit whichTu, BuffType whichType, real whichDur) ->thistype
            {
                thistype this = 0;
                integer size = 0;
                if (hasHash(integer, XZHT, whichTu.HandleId(), whichType.HandleId())) {
                    // 获取添加前实例
                    this = load(integer, XZHT, whichTu.HandleId(), whichType.HandleId());
                    // 记录重复信息
                    this.repeat = true;
                    this.repeatTime = whichDur;
                    // 执行添加Buff回调
                    if (this.buffType.addEventId != 0) this.buffType.callBackAddEvent(this);
                    return this;
                }
                // 参数处理
                this = thistype.allocate();
                this.du = whichDu.Handle();
                this.tu = whichTu.Handle();
                this.buffType = whichType;
                this.dur = whichDur;
                // 唯一性ID
                this.id = CreateTrigger();
                this.handleId = GetHandleId(this.id);
                // 重置残留数据
                this.time = 0;
                this.repeat = false;
                this.repeatTime = 0.0;
                // 绑定Buff实例
                save(integer, XZHT, whichTu.HandleId(), whichType.HandleId(), integer(this));
                // 判断是否为永久Buff效果
                if (this.dur > 0.0) {
                    // 执行心动事件
                    this.onTimer();
                } else {
                    // 添加实例
                    size = load(integer, BuffHT, whichTu.HandleId(), strHash("永久Buff数量")) + 1;
                    save(integer, BuffHT, whichTu.HandleId(), size, integer(this));
                    save(integer, BuffHT, whichTu.HandleId(), strHash("永久Buff数量"), size);
                }
                // 执行添加Buff回调
                if (this.buffType.addEventId != 0) this.buffType.callBackAddEvent(this);
                return this;
            }
            static method new(Unit whichDu, Unit whichTu, string whichType, real whichDur) ->thistype
            {
                thistype this = 0;
                integer size = 0;
                BuffType Type = load(integer, XZHT, strHash("bufftype实例"), StringHash(whichType));
                if (hasHash(integer, XZHT, whichTu.HandleId(), Type.HandleId())) {
                    // 获取添加前实例
                    this = load(integer, XZHT, whichTu.HandleId(), Type.HandleId());
                    // 记录重复信息
                    this.repeat = true;
                    this.repeatTime = whichDur;
                    // 执行添加Buff回调
                    if (this.buffType.addEventId != 0) this.buffType.callBackAddEvent(this);
                    return this;
                }
                // 参数处理
                this = thistype.allocate();
                this.du = whichDu.Handle();
                this.tu = whichTu.Handle();
                this.buffType = Type;
                this.dur = whichDur;
                // 唯一性ID
                this.id = CreateTrigger();
                this.handleId = GetHandleId(this.id);
                // 重置残留数据
                this.time = 0;
                this.repeat = false;
                this.repeatTime = 0.0;
                // 绑定Buff实例
                save(integer, XZHT, whichTu.HandleId(), Type.HandleId(), integer(this));
                // 判断是否为永久Buff效果
                if (this.dur > 0.0) {
                    // 执行心动事件
                    this.onTimer();
                } else {
                    // 添加实例
                    size = load(integer, BuffHT, whichTu.HandleId(), strHash("永久Buff数量")) + 1;
                    save(integer, BuffHT, whichTu.HandleId(), size, integer(this));
                    save(integer, BuffHT, whichTu.HandleId(), strHash("永久Buff数量"), size);
                }
                // 执行添加Buff回调
                if (this.buffType.addEventId != 0) this.buffType.callBackAddEvent(this);
                return this;
            }

            static method remove(Unit whichUnit, string whichType) ->boolean
            {
                thistype this = 0;
                BuffType Type = load(integer, XZHT, strHash("bufftype实例"), StringHash(whichType));
                if (hasHash(integer, XZHT, whichUnit.HandleId(), Type.HandleId())) {
                    this = load(integer, XZHT, whichUnit.HandleId(), Type.HandleId());
                    this.endTime();
                    return true;
                }
                return false;
            }

            // 获取唯一ID
            method HandleId() ->integer
            {
                return this.handleId;
            }
            // 获取事件参数
            method getSource() ->Unit
            {
                return Unit.byHandle(this.du);
            }
            method getTarget() ->Unit
            {
                return Unit.byHandle(this.tu);
            }
            // 持续时间相关
            method getTime() ->real
            {
                return this.dur;
            }
            method setTime(real value)
            {
                this.dur = value;
            }
            method addTime(real value)
            {
                this.dur = this.dur + value;
            }
            method subTime(real value)
            {
                this.dur = this.dur - value;
            }
            method endTime()
            {
                this.dur = 0.0;
            }
            // 判断是否为可叠加
            method IsFlag() ->boolean
            {
                return this.buffType.flag;
            }
            // 处理重复相关
            method IsRepeat() ->boolean
            {
                return this.repeat;
            }
            method getRepeatTime() ->real
            {
                return this.repeatTime;
            }
            // 析构函数
            method destroy()
            {
                this.time.delete();
                clearHash(integer, XZHT, GetHandleId(this.tu), this.buffType.HandleId());
                userClearTable(integer, this.handleId);
                DestroyTrigger(this.id);
                this.deallocate();
            }
        }
    }
}
//! endzinc
