//! zinc
library Game
{
    public struct Game
    {
        private
        {
            // 可见度修正器成员属性
            fogmodifier f;
            integer handleId;

            static method onInit()
            {
                thistype.ht = Table.create();
            }
        }

        public
        {
            static Table ht;
        }

        public
        {
            // 构造函数
            // 圆范围 创建以x,y为中心 半径为radius的可见度修正器给玩家 flag = 是否为启用
            static method create(Gamer gm, fogstate state, real x, real y, real radius, boolean flag) ->thistype {
                thistype this = thistype.allocate();
                this.f        = CreateFogModifierRadius(gm.Handle(), state, x, y, radius, true, false);
                this.handleId = GetHandleId(this.f);
                if (flag) {
                    FogModifierStart(this.f);
                }
                SaveInteger(XZHT, strHash("可见度修整器实例"), this.handleId, integer(this));
                return this;
            }
            // 规则矩形 创建以where矩形的可见度修正器给玩家 flag = 是否为启用
            static method createRect(Gamer gm, fogstate state, rect where, boolean flag) ->thistype {
                thistype this = thistype.allocate();
                this.f        = CreateFogModifierRect(gm.Handle(), state, where, true, false);
                this.handleId = GetHandleId(this.f);
                if (flag) {
                    FogModifierStart(this.f);
                }
                SaveInteger(XZHT, strHash("可见度修整器实例"), this.handleId, integer(this));
                return this;
            }
            static method byHandle(fogmodifier fog) ->thistype {
                thistype this = 0;
                if (LoadInteger(XZHT, strHash("可见度修整器实例"), GetHandleId(fog)) > 0) {
                    return LoadInteger(XZHT, strHash("可见度修整器实例"), GetHandleId(fog));
                }
                this          = thistype.allocate();
                this.f        = fog;
                this.handleId = GetHandleId(this.f);
                SaveInteger(XZHT, strHash("可见度修整器实例"), this.handleId, integer(this));
                return this;
            }

            // 析构函数
            method destroy() {
                RemoveSavedInteger(XZHT, strHash("可见度修整器实例"), this.handleId);
                this.f = null;
                this.deallocate();
            }
            method delete() {
                DestroyFogModifier(this.f);
                this.destroy();
            }

            // Get
            method Handle() ->fogmodifier { return this.f; } // 获取可见度修正器
            method HandleId() ->integer { return this.handleId; } // 获取句柄

            // Set
            method open() { FogModifierStart(this.f); } // 启用可见度修正器
            method close() { FogModifierStop(this.f); } // 禁用可见度修正器
            static method shadow(boolean flag) { FogMaskEnable(flag); } // 是否开启黑色阴影
            static method denseFog(boolean flag) { FogEnable(flag); } // 是否开启战争迷雾

            // Boolean
            static method IsShadow() ->boolean { return IsFogMaskEnabled(); } // 判断是否开启黑色阴影
            static method IsDenseFog() ->boolean { return IsFogEnabled(); } // 判断是否开启战争迷雾

            // 其他
            // 规则矩形 设置地图迷雾 为玩家设置fogstate在指定范围 flag为是否对盟友共享视野
            static method setFogStateRect(Gamer gm, fogstate state, rect where, boolean flag) { SetFogStateRect(gm.Handle(), state, where, flag); }
            // 圆范围 设置地图迷雾 为玩家设置fogstate在指定范围 flag为是否对盟友共享视野
            static method setFogStateRadius(Gamer gm, fogstate state, real x, real y, real radius, boolean flag) { SetFogStateRadius(gm.Handle(), state, x, y, radius, flag); }

        }

        public
        {
            // 游戏系统
            static method pause(boolean flag) { PauseGame(flag); } // 暂停游戏，true为暂停 false为恢复
            static method setSpeed(gamespeed gs) { SetGameSpeed(gs); } // 设定游戏速度
            static method lockSpeed(boolean flag) { SetMapFlag(MAP_LOCK_SPEED, flag); } // 锁定游戏速度 true为锁定 false为解锁
            static method lockTrading(boolean flag) { SetMapFlag(MAP_LOCK_RESOURCE_TRADING, flag); } // 锁定资源交易
            static method setTime(real time) { SetFloatGameState(GAME_STATE_TIME_OF_DAY, time); } // 设置游戏时间 24小时制
            static method setTimeOfDayScale(real scalePercent) { SetTimeOfDayScale(scalePercent * 0.01); } // 设置昼夜流逝默认值 百分比 100%恢复
            static method suspendTimeOfDay(boolean flag) { SuspendTimeOfDay(flag); } // 关闭昼夜交替 true为关闭 false为恢复
            static method doNotSaveReplay() { DoNotSaveReplay(); } // 关闭游戏录像功能

            // 市场
            static method setItemSlots(Unit u, integer count) { SetItemTypeSlots(u.Handle(), count); } // 限制可出售物品种类数量 指定单位市场
            static method setItemSlotsAll(integer count) { SetAllItemTypeSlots(count); } // 限制可出售物品种类数量 所有市场
            static method setUnitSlots(Unit u, integer count) { SetUnitTypeSlots(u.Handle(), count); } // 限制可出售单位种类数量 指定单位市场
            static method setUnitSlotsAll(integer count) { SetAllUnitTypeSlots(count); } // 限制可出售单位种类数量 所有市场
            // 添加物品到指定单位市场
            static method addItemToStock(integer itemId, Unit u, integer count, integer mdx) { AddItemToStock(u.Handle(), itemId, count, mdx); }
            // 添加物品到所有市场
            static method addItemTostockAll(integer itemId, integer count, integer mdx) { AddItemToAllStock(itemId, count, mdx); }
            // 添加单位到指定单位市场
            static method addUnitTostock(integer unitId, Unit u, integer count, integer mdx) { AddUnitToStock(u.Handle(), unitId, count, mdx); }
            // 添加单位到所有市场
            static method addUnitTostockAll(integer unieId, integer count, integer mdx) { AddUnitToAllStock(unieId, count, mdx); }
            // 在指定单位市场删除物品
            static method removeItemTostock(integer itemId, Unit u) { RemoveItemFromStock(u.Handle(), itemId); }
            // 在所有市场删除物品
            static method removeItemTostockAll(integer itemId) { RemoveItemFromAllStock(itemId); }
            // 在指定单位市场删除单位
            static method removeUnitTostock(integer unitId, Unit u) { RemoveUnitFromStock(u.Handle(), unitId); }
            // 在所有市场删除单位
            static method removeUnitTostockAll(integer unitId) { RemoveUnitFromAllStock(unitId); }
        }
    }
}
//! endzinc
