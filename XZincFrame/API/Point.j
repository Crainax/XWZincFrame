//! zinc
library Point
{
    public struct Point
    {
        private
        {
            // 点成员属性
            location p;
            static location point = null; 
        }

        private
        {
            // 地形判断参数
            #define Point_MAX_RANGE 10.0
            #define Point_DUMMY_ITEM_ID 'wolg'
            // 环境地形判断成员属性
            static item pItem = null;
            static rect pFind = null;
            static item pHid[];
            static integer HidMax = 0;
            static real X = 0.0;
            static real Y = 0.0;
        }

        private
        {
            static method onInit() {
                thistype.point = Location(0.0, 0.0);
                thistype.pFind = Rect(0., 0., 128., 128.);
                thistype.pItem = CreateItem(Point_DUMMY_ITEM_ID, 0, 0);
                SetItemVisible(thistype.pItem, false);
            }
        }

        public
        {
            // 实例自身数量
            static integer thisSize = 0;

            // 构造函数
            static method create(real x, real y) ->thistype {
                thistype this = thistype.allocate();
                this.p        = Location(x, y);
                this.thisSize +=1;
                return this;
            }
            static method byHandle(location p) ->thistype {
                thistype this = thistype.allocate();
                this.p        = p;
                this.thisSize +=1;
                return this;
            }

            // 析构函数
            method Null() {
                if (integer(this) < 1) return;
                this.p = null;
                this.thisSize -=1;
                this.deallocate();
            }
            method delete() {
                RemoveLocation(this.p);
                this.Null();
            }

            // 重载 ==
            method operator == (Point d) ->boolean { return this.p == d.Handle(); }

            // Get
            method Handle() ->location { return this.p; } // 获取点
            method HandleId() ->integer { return GetHandleId(this.p); } // 获取句柄
            method x() ->real { return GetLocationX(this.p); } // 获取X坐标
            method y() ->real { return GetLocationY(this.p); } // 获取Y坐标
            method z() ->real { return GetLocationZ(this.p); } // 获取Z坐标
            // 获取地面高度
            static method getFloorZ(real x, real y) ->real {
                MoveLocation(thistype.point, x, y);
                return GetLocationZ(thistype.point);
            }
            static method getCliffLevel(real x, real y) ->integer { return GetTerrainCliffLevel(x, y); } // 获取悬崖层面

            // Set
            method move(real x, real y) { MoveLocation(this.p, x, y); } // 移动点

            // Boolean
            // 区域矩形包含坐标
            static method IsRect(rect r, real x, real y) ->boolean {
                return x <= GetRectMaxX(r) && y <= GetRectMaxY(r) && x >= GetRectMinX(r) && y >= GetRectMinY(r);
            }
            // 是否为深水地形
            static method IsDeepWater(real x, real y) ->boolean {
                return !IsTerrainPathable(x, y, PATHING_TYPE_FLOATABILITY) && IsTerrainPathable(x, y, PATHING_TYPE_WALKABILITY);
            }
            // 是否为浅水地形
            static method IsShallowWater(real x, real y) ->boolean {
                return !IsTerrainPathable(x, y, PATHING_TYPE_FLOATABILITY) && !IsTerrainPathable(x, y, PATHING_TYPE_WALKABILITY) && IsTerrainPathable(x, y, PATHING_TYPE_BUILDABILITY);
            }
            // 是否为陆地地形
            static method IsLand(real x, real y) ->boolean {
                return IsTerrainPathable(x, y, PATHING_TYPE_FLOATABILITY);
            }
            // 是否为平台
            static method IsPlatform(real x, real y) ->boolean {
                return !IsTerrainPathable(x, y, PATHING_TYPE_FLOATABILITY) && !IsTerrainPathable(x, y, PATHING_TYPE_WALKABILITY) && !IsTerrainPathable(x, y, PATHING_TYPE_BUILDABILITY);
            }
            // 是否可行走
            static method IsWalkable(real x, real y) ->boolean {
                // 隐藏该区域中的任何项目以避免与我们的项目冲突
                MoveRectTo(thistype.pFind, x, y);
                EnumItemsInRect(thistype.pFind, null, function() {
                    if (IsItemVisible(GetEnumItem())) {
                        thistype.pHid[thistype.HidMax] = GetEnumItem();
                        SetItemVisible(thistype.pHid[thistype.HidMax], false);
                        thistype.HidMax +=1;
                    }
                });
                // 尝试移动测试项并获取其坐标
                SetItemPosition(thistype.pItem, x, y);
                thistype.X = GetItemX(thistype.pItem);
                thistype.Y = GetItemY(thistype.pItem);
                // 再藏起来
                SetItemVisible(thistype.pItem, false);
                // 取消隐藏开始时隐藏的任何项目
                while (thistype.HidMax > 0) {
                    thistype.HidMax -=1;
                    SetItemVisible(thistype.pHid[thistype.HidMax], true);
                    thistype.pHid[thistype.HidMax] = null;
                }
                // 返回可行走性
                return (thistype.X - x) * (thistype.X - x) + (thistype.Y - y) * (thistype.Y - y) <= Point_MAX_RANGE * Point_MAX_RANGE && !IsTerrainPathable(x, y, PATHING_TYPE_WALKABILITY);
            }
        }
    }
}
//! endzinc
