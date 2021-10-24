//! zinc
library Motion requires XZAPI
{
    public
    {
        // 运动器参数结构
        /**
            运动器参数结构使用说明:参数结构内的单位实例不会自动释放，需要自己手动管理。
        */
        struct MotionPara
        {
            Unit mover   = 0;      // 运动单位 默认为 无单位
            real x       = 0.0;    // 目标X坐标 默认为 0.0
            real y       = 0.0;    // 目标Y坐标 默认为 0.0
            real angle   = 270.0;  // 角度 默认为 默认建筑朝向 ~ 当x和y为0时 自动启用面向角度冲锋 否则使用坐标冲锋
            real dist    = 800.0;  // 距离 默认为 800
            real height  = 0.0;    // 最大高度 默认为 0.0
            real dur     = 0.8;    // 持续时间 默认为 0.8
            real time    = 0.03;   // 周期时间 默认为 0.03
            real range   = 325.0;  // 碰撞范围 默认为 325.0
            boolean flag = true;   // 是否计算碰撞 默认为 true
            boolean vest = false;  // 运动单位是否需要销毁
            boolean isCover = false;    // 重复执行是否覆盖参数
            boolean eventMover = false; // 是否启用移动事件
            boolean eventColli = true;  // 是否启用碰撞事件
            boolean eventEnd   = false; // 是否启用完成事件
        }

        // 运动器 衍生 运动碰撞事件[运动过程碰撞单位则会触发] 运动移动事件[每次运动都会触发] 运动完成事件[运动到目标位置则会触发]
        struct Motion
        {
            private
            {
                static Table ht = 0;
                static method onInit()
                {
                    thistype.ht = Table.create();
                }
            }

            private
            {
                Unit mover;         // 运动单位
                Unit collisionUnit; // 碰撞来源
                real x,y;           // 运动单位当前坐标
                real dx,dy;         // 运动偏移坐标
                real z;             // 运动单位高度
                integer count;      // 该运动器总运动次数
                integer number;     // 当前运动的次数
                real dist;          // 每次运动距离
                real dheig;         // 高度还原参数
                real height;        // 运动最大高度
                real angle;         // 运动方向
                boolean flag;       // 是否计算碰撞
                real range;         // 碰撞范围
                Timer time;         // 计时器索引
            }

            public
            {
                string name;        // 当前运动名称
                MotionPara para;    // 当前运动结构参数体
                Group screen;       // 碰撞单位筛选器

                // 获取运动单位
                method getMover() ->Unit
                {
                    return this.mover;
                }

                // 获取被碰撞单位
                method getUnit() ->Unit
                {
                    return this.collisionUnit;
                }

                // 获取唯一性ID
                method HandleId() ->integer
                {
                    return this.time.HandleId();
                }
            }

            private
            {
                method destroy()
                {
                    // 重置单位高度和开启单位碰撞
                    if (this.height > 0.0) {
                        this.mover.setZ(this.z, 99999);
                        this.mover.collisable(true);
                    }
                    // 发动一次停止命令避免往回走且清除绑定实例
                    this.mover.issueImmediateOrder("stop");
                    this.mover.setFacing(this.angle, true);
                    thistype.ht.remove(this.mover.HandleId());
                    // 响应完成事件
                    if (this.para.eventEnd) {
                        Event.setEventDataInt(strHash("运动完成事件"), integer(this));
                        Event.executeDiyInt(strHash("运动完成事件"));
                    }
                    // 清空状态
                    this.mover.setStateString("冲锋状态", 0.0);
                    // 数据排泄
                    if (this.para.vest) {
                        this.mover.delete();
                    } else {
                        this.mover.Null();
                    }
                    this.collisionUnit.Null();
                    this.mover = 0;
                    this.collisionUnit = 0;
                    this.time.delete();
                    this.screen.destroy();
                    this.para.destroy();
                    this.deallocate();
                }

                static method Spin()
                {
                    thistype this   = Timer.thisData();
                    boolean terrain = false;
                    real gheight    = 0.0;
                    Group grou      = 0;
                    // 判断运动器是否继续
                    if (!this.mover.IsAlive()) {
                        this.destroy();
                        return;
                    }
                    // 开始判断是否满足跳出
                    if (this.number < this.count) {
                        // 开始计算偏移坐标
                        this.dx = position.correctX(this.x + this.number * this.dist * math.cos(this.angle * 3.14159 / 180.0));
                        this.dy = position.correctY(this.y + this.number * this.dist * math.sin(this.angle * 3.14159 / 180.0));
                        // 开始判断下一次运动的坐标是否能够通过
                        if (this.flag) {
                            terrain = Point.IsWalkable(this.dx, this.dy);
                        } else {
                            terrain = true;
                        }
                        // 开始执行下一次运动内容
                        if (terrain) {
                            // 移动单位
                            this.mover.setX(this.dx);
                            this.mover.setY(this.dy);
                            // 响应移动事件
                            if (this.para.eventMover) {
                                Event.setEventDataInt(strHash("运动移动事件"), integer(this));
                                Event.executeDiyInt(strHash("运动移动事件"));
                            }
                            // 刷新执行次数
                            this.number +=1;
                            // 计算当前运动帧数高度
                            if (this.height > 0.0) {
                                gheight = (-(2 * I2R(this.number) * this.dheig - 1) * (2 * I2R(this.number) * this.dheig - 1) + 1) * this.height + this.z;
                                // 设置单位高度
                                this.mover.setZ(gheight, 99999);
                            }
                            // 设置单位面向角度
                            this.mover.setFacing(this.angle, true);
                            // 开始判断碰撞事件和捕捉被碰撞单位
                            if (this.range > 0.0 && this.para.eventColli) {
                                grou = Group.create();
                                grou.unitsInArea(this.dx, this.dy, this.range);
                                this.collisionUnit = grou.getUnit();
                                while (this.collisionUnit.Handle() != null) {
                                    grou.remove(this.collisionUnit);
                                    if (this.collisionUnit.IsAlive() && !this.screen.IsInUnit(this.collisionUnit)) {
                                        // 往运动器碰撞单位过滤器内添加被碰撞单位和绑定被碰撞单位
                                        this.screen.add(this.collisionUnit);
                                        // 响应碰撞事件
                                        Event.setEventDataInt(strHash("运动碰撞事件"), integer(this));
                                        Event.executeDiyInt(strHash("运动碰撞事件"));
                                    }
                                    this.collisionUnit.Null();
                                    this.collisionUnit = grou.getUnit();
                                }
                                this.collisionUnit.Null();
                                grou.destroy();
                            }
                        } else {
                            this.destroy();
                        }
                    } else {
                        this.destroy();
                    }
                }
            }

            public
            {
                // 创建运动器，重复创建会覆盖参数
                static method create(MotionPara Para, string Name) ->thistype
                {
                    thistype this = 0;
                    // 判断是否为重复执行运动器
                    if (thistype.ht.has(Para.mover.HandleId())) {
                        this = thistype.ht[Para.mover.HandleId()];
                        if (this.para.isCover) {
                            this.para.destroy();
                            this.para = Para;
                        } else {
                            Para.destroy();
                            return 0;
                        }
                    } else {
                        this = thistype.allocate();
                        this.para = Para;
                        this.mover  = Unit.byHandle(this.para.mover.Handle());
                    }
                    // 运动参数注册
                    this.x      = this.mover.x();
                    this.y      = this.mover.y();
                    this.dx     = this.x;
                    this.dy     = this.y;
                    this.count  = math.miR2I(this.para.dur / this.para.time);
                    this.number = 0;
                    this.dheig  = 1.0 / this.count;
                    this.height = this.para.height;
                    this.flag   = this.para.flag;
                    this.range  = Para.range;
                    this.name   = Name;
                    // 判断运动类型
                    if (this.para.x != 0.0 && this.para.y != 0.0) {
                        this.dist  = math.unitDistanceXY(this.mover, this.para.x, this.para.y) / this.count;
                        this.angle = math.xyAngle(this.x, this.y, this.para.x, this.para.y);
                    } else {
                        this.dist  = this.para.dist / this.count;
                        this.angle = this.para.angle;
                    }
                    if (!thistype.ht.has(this.para.mover.HandleId())) {
                        thistype.ht[Para.mover.HandleId()] = integer(this);
                        this.z      = this.mover.z();
                        this.screen = Group.create();
                        // 把运动单位添加到过滤器
                        this.screen.add(this.mover);
                        this.mover.setStateString("冲锋状态", 100.0);
                        // 设定高度参数设置
                        if (this.height > 0.0) {
                            this.mover.flyEnable();
                            this.mover.collisable(false);
                        }
                        // 开始执行运动
                        this.time = Timer.create(Para.time, true, function thistype.Spin);
                        this.time.setData(integer(this));
                    }
                    return this;
                }
            }
        }
    }
}
//! endzinc
