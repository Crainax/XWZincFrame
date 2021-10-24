//! zinc
library Group
{
    public struct Group
    {
        private
        {
            // 成员属性
            group g;
            integer handleId;
            static integer size = 0;
            static real X = 0.0;
            static real Y = 0.0;
            static real R = 0.0;

            // 单位计数回调
            static method InCount() { thistype.size +=1; }
            // 选取坐标和范围内的单位到单位组的过滤器
            static method Filter() ->boolean { return IsUnitInRangeXY(GetFilterUnit(), thistype.X, thistype.Y, thistype.R); }
        }

        #define GROUP_MAX_COLLISION_SIZE 197.0  // 对应单位中的最大碰撞大小

        public
        {
            // 实例自身数量
            static integer thisSize = 0;

            // 构造函数
            static method create() ->thistype {
                thistype this = thistype.allocate();
                this.g        = CreateGroup();
                this.handleId = GetHandleId(this.g);
                this.thisSize +=1;
                SaveInteger(XZHT, strHash("单位组实例"), this.handleId, integer(this));
                return this;
            }
            static method byHandle(group g) ->thistype {
                thistype this = 0;
                if (LoadInteger(XZHT, strHash("单位组实例"), GetHandleId(g)) > 0) {
                    return LoadInteger(XZHT, strHash("单位组实例"), GetHandleId(g));
                }
                this          = thistype.allocate();
                this.g        = g;
                this.handleId = GetHandleId(this.g);
                this.thisSize +=1;
                SaveInteger(XZHT, strHash("单位组实例"), this.handleId, integer(this));
                return this;
            }

            // 析构函数
            method destroy() {
                if (integer(this) < 1) return;
                GroupClear(this.g);
                DestroyGroup(this.g);
                RemoveSavedInteger(XZHT, strHash("单位组实例"), this.handleId);
                this.g = null;
                this.handleId = 0;
                this.thisSize -=1;
                this.deallocate();
            }
            method clear() {
                GroupClear(this.g);
            }

            // 重载 ==
            method operator == (Group p) ->boolean { return this.g == p.Handle(); }

            // Get
            method Handle() ->group { return this.g; } // 获取单位组
            method HandleId() ->integer { return this.handleId; } // 获取句柄
            method getUnit() ->Unit { return Unit.byHandle(FirstOfGroup(this.g)); } // 单位组第一个单位
            // 获取单位组中的单位数量
            method count() ->integer {
                thistype.size = 0;
                ForGroup(this.g, function thistype.InCount);
                return thistype.size;
            }

            // Set
            method add(Unit u) { GroupAddUnit(this.g, u.Handle()); } // 添加单位到单位组
            method remove(Unit u) { GroupRemoveUnit(this.g, u.Handle()); } // 移除单位出单位组
            // 选取矩形内满足filter的单位添加到单位组
            method enumUnitsInRect(rect r, boolexpr filter) {
                GroupEnumUnitsInRect(this.g, r, filter);
            }
            // 选取矩形内指定玩家的单位添加到单位组
            method unitsInRectPlayer(rect r, Gamer gm) {
                bj_groupEnumOwningPlayer = gm.Handle();
                GroupEnumUnitsInRect(this.g, r, filterGetUnitsInRectOfPlayer);
            }
            // 选取X,Y为圆心，radius为半径，满足filter的单位添加到单位组
            method enumUnitsInArea(real x, real y, real radius, boolexpr filter) {
                integer bId = 0;
                thistype.X = x;
                thistype.Y = y;
                thistype.R = radius;
                if (filter == null) {
                    filter = Condition(function thistype.Filter);
                } else {
                    bId = GetHandleId(filter);
                    if (HaveSavedHandle(XZHT, strHash("单位组实例"), bId)) {
                        filter = LoadBooleanExprHandle(XZHT, strHash("单位组实例"), bId);
                    } else {
                        filter = And(Condition(function thistype.Filter), filter);
                        SaveBooleanExprHandle(XZHT, strHash("单位组实例"), bId, filter);
                    }
                }
                GroupEnumUnitsInRange(this.g, x, y, radius + GROUP_MAX_COLLISION_SIZE, filter);
                thistype.X = 0.0;
                thistype.Y = 0.0;
                thistype.R = 0.0;
            }
            // 选取X,Y为圆心，radius为半径的单位添加到单位组
            method unitsInArea(real x, real y, real radius) {
                thistype.X = x;
                thistype.Y = y;
                thistype.R = radius;
                GroupEnumUnitsInRange(this.g, x, y, radius + GROUP_MAX_COLLISION_SIZE,  Condition(function thistype.Filter));
                thistype.X = 0.0;
                thistype.Y = 0.0;
                thistype.R = 0.0;
            }
            // 选取X,Y为起始坐标，指定角度和指定长度及宽度的直线范围单位到单位组
            method finLine(real x, real y, real angle, real len, real width) {
                unit u = null;
                real dx = x + len * math.cosBJ(angle);
                real dy = y + len * math.sinBJ(angle);
                real a = y - dy;
                real b = dx - x;
                real c = -a * x - b * y;
                real l = math.pow(a * a + b * b, 0.5);
                group gp = CreateGroup();
                width = width / 2;
                len = len / 2;
                x = (x + dx) / 2;
                y = (y + dy) / 2;
                GroupEnumUnitsInRange(gp, x, y, len, null);
                u = FirstOfGroup(gp);
                while (u != null) {
                    GroupRemoveUnit(gp, u);
                    if (math.squareRoot(math.pow(GetUnitX(u) - x, 2) + math.pow(GetUnitY(u) - y, 2)) < len) {
                        if (width >= RAbsBJ(a * GetUnitX(u) + b * GetUnitY(u) + c) / l) {
                            GroupAddUnit(this.g, u);
                        }
                    }
                    u = FirstOfGroup(gp);
                }
                GroupClear(gp);
                DestroyGroup(gp);
                u  = null;
                gp = null;
            }

            // Boolean
            method IsInUnit(Unit u) ->boolean { return IsUnitInGroup(u.Handle(), this.g); } // 单位在单位组中
            static method IsUnitGroup(Group g, Unit u) ->boolean { return IsUnitInGroup(u.Handle(), g.Handle()); } // 单位在单位组中
            
            // 其他
            method action(code Action) { ForGroup(this.g, Action); } // 选取单位组做动作
        }
    }
}
//! endzinc
