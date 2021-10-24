//! zinc
library Item requires Base
{
    public struct Item
    {
        private
        {
            // 物品成员属性
            item it;
            integer handleId;
        }

        public
        {
            // 实例自身数量
            static integer thisSize = 0;

            // 构造函数
            static method create(integer itemId, real x, real y) ->thistype {
                thistype this = thistype.allocate();
                this.it       = CreateItem(itemId, x, y);
                this.handleId = GetHandleId(this.it);
                this.thisSize +=1;
                return this;
            }
            static method byHandle(item it) ->thistype {
                thistype this = thistype.allocate();
                this.it       = it;
                this.handleId = GetHandleId(this.it);
                this.thisSize +=1;
                return this;
            }

            // 析构函数
            method Null() {
                if (integer(this) < 1) return;
                this.it = null;
                this.handleId = 0;
                this.thisSize -=1;
                this.deallocate();
            }
            method delete() {
                RemoveItem(this.it);
                this.flush();
                this.Null();
            }

            // 重载 ==
            method operator == (Item it) ->boolean { return this.it == it.Handle(); }

            // Get
            method Handle() ->item { return this.it; } // 获取物品
            method HandleId() ->integer { return this.handleId; } // 获取句柄
            method id() ->integer { return GetItemTypeId(this.it); } // 获取物品类型
            method name() ->string { return GetItemName(this.it); } // 获取物品名字
            method itenType() ->itemtype { return GetItemType(this.it); } // 获取物品的分类
            method x() ->real { return GetWidgetX(this.it); } // 获取X坐标
            method y() ->real { return GetWidgetY(this.it); } // 获取Y坐标
            method life() ->real { return GetWidgetLife(this.it); } // 获取物品生命值
            method level() ->integer { return GetItemLevel(this.it); } // 获取物品等级
            method charges() ->integer { return GetItemCharges(this.it); } // 获取物品使用次数
            method owner() ->Gamer { return Gamer.Gamer(GetPlayerId(GetItemPlayer(this.it))); } // 获取物品所属玩家
            method userData() ->integer { return GetItemUserData(this.it); } // 获取物品自定义值
            method data(string index) ->real { return LoadReal(XZHT, this.handleId, StringHash(index)); } // 物品自定义属性值
            static method dataId(integer itemId, string index) ->real { return LoadReal(XZHT, itemId, StringHash(index)); } // 物品类型自定义属性值
            static method dataInt(integer itemId, string index) ->integer { return LoadInteger(XZHT, itemId, StringHash(index)); } // 物品类型自定义属性值
            static method dataStr(integer itemId, integer dataType) ->string { return EXGetItemDataString(itemId, dataType); } // JAPI获取物品类型字符串信息

            // Set
            method move(real x, real y) { SetItemPosition(this.it, x, y); } // 移动物品坐标
            method setCharges(integer number) { SetItemCharges(this.it, number); } // 设置物品使用次数
            method setOwner(Gamer gm, boolean flag) { SetItemPlayer(this.it, gm.Handle(), flag); } // 改变物品所属玩家 是否改变颜色
            method setUserData(integer data) { SetItemUserData(this.it, data); } // 设置物品自定义值
            method setCreateUnitId(integer unitId) { SetItemDropID(this.it, unitId); } // 设置重生神符产生的单位类型
            method setLife(real value) { SetWidgetLife(this.it, value); } // 设置物品生命值
            method setInvulnerable(boolean flag) { SetItemInvulnerable(this.it, flag); } // 设置物品是否无敌 true无敌
            method setPawnable(boolean flag) { SetItemPawnable(this.it, flag); } // 设置物品是否为可抵押的 true为可抵押
            method setDroppable(boolean flag) { SetItemDroppable(this.it, flag); } // 设置物品是否为可抛弃的 true为可抛弃
            method setDropOnDeath(boolean flag) { SetItemDropOnDeath(this.it, flag); } // 设置物品是否为死亡掉落 true为死亡掉落
            method setShow(boolean flag) { SetItemVisible(this.it, flag); } // 设置物品是否为可见的 true为显示 false为隐藏
            method setData(string index, real value) { SaveReal(XZHT, this.handleId, StringHash(index), value); } // 设置物品自定义属性值
            method setPermanentData(boolean flag) { SaveBoolean(XZHT, this.handleId, strHash("永久物品"), flag); } // 设置是否为永久物品
            static method setDataId(integer itemId, string index, real value) { SaveReal(XZHT, itemId, StringHash(index), value); } // 设置物品类型自定义属性值
            static method setDataInt(integer itemId, string index, integer value) { SaveInteger(XZHT, itemId, StringHash(index), value); } // 设置物品类型自定义属性值
            static method setDataStr(integer itemId, integer dataType, string data) { EXSetItemDataString(itemId, dataType, data); } // JAPI修改物品类型字符串信息

            // Add
            method addData(string index, real value) { this.setData(index, this.data(index) + value); } // 增加物品自定义属性值
            method addCharges(integer number) { this.setCharges(this.charges() + number); } // 增加物品使用次数
            // 增加物品类型自定义属性值
            static method addDataId(integer itemId, string index, real value) {
                thistype.setDataId(itemId, index, thistype.dataId(itemId, index) + value);
            }
            // 增加物品类型自定义属性值 整数
            static method addDataInt(integer itemId, string index, integer value) {
                thistype.setDataInt(itemId, index, thistype.dataInt(itemId, index) + value);
            }

            // Sub
            method subData(string index, real value) { this.setData(index, this.data(index) - value); } // 减少物品自定义属性值
            method subCharges(integer number) { this.setCharges(this.charges() - number); } // 减少物品使用次数
            // 减少物品类型自定义属性值
            static method subDataId(integer itemId, string index, real value) {
                thistype.setDataId(itemId, index, thistype.dataId(itemId, index) - value);
            }
            // 减少物品类型自定义属性值 整数
            static method subDataInt(integer itemId, string index, integer value) {
                thistype.setDataInt(itemId, index, thistype.dataInt(itemId, index) - value);
            }

            // Flush
            method remove(string index) { RemoveSavedReal(XZHT, this.handleId, StringHash(index)); } // 清空物品索引属性
            method removeInt(string index) { RemoveSavedInteger(XZHT, this.handleId, StringHash(index)); } // 清空物品索引属性
            static method removeTypeId(integer itemId, string index) { RemoveSavedReal(XZHT, itemId, StringHash(index)); } // 清空物品类型索引属性
            static method removeTypeInt(integer itemId, string index) { RemoveSavedInteger(XZHT, itemId, StringHash(index)); } // 清空物品类型索引属性
            method flush() { FlushChildHashtable(XZHT, this.handleId); } // 清空物品所有属性
            static method flushId(integer itemId) { FlushChildHashtable(XZHT, itemId); } // 清空物品类型所有属性

            // Boolean
            method IsSellable() ->boolean { return IsItemSellable(this.it); } // 物品是否可被市场随机出售
            method IsInvulnerable() ->boolean { return IsItemInvulnerable(this.it); } // 物品是否无敌
            method IsOwned() ->boolean { return IsItemOwned(this.it); } // 物品是否被持有
            method IsPawnable() ->boolean { return IsItemPawnable(this.it); } // 物品可否被抵押
            method IsPowerup() ->boolean { return IsItemPowerup(this.it); } // 物品是否捡取自动使用
            method IsShow() ->boolean { return IsItemVisible(this.it); } // 物品是否可见
            method IsData(string index) ->boolean { return HaveSavedReal(XZHT, this.handleId, StringHash(index)); } // 物品索引内是否存在属性值
            method IsPermanentData() ->boolean { return LoadBoolean(XZHT, this.handleId, strHash("永久物品")); } // 检测是否为永久物品 true为永久物品
            static method IsDataId(integer itemId, string index) ->boolean { return HaveSavedReal(XZHT, itemId, StringHash(index)); } // 物品类型索引内是否存在属性值
            static method IsDataInt(integer itemId, string index) ->boolean { return HaveSavedInteger(XZHT, itemId, StringHash(index)); } // 物品类型索引内是否存在属性值

            // 其他
            method showSelectionCircle(integer r, integer g, integer b, integer t) { AddIndicator(this.it, r, g, b, t); } // 显示选择圈 红绿蓝 透明
            static method enumInRect(rect rct, code action) { EnumItemsInRect(rct, null, action); } // 选取区域内物品做动作

            // Event 事件响应 调用需要排泄，如果不排泄那么可能会产生泄露
            //! textmacro ItemEvent takes Name, Type, Notes
                static method $Name$() ->thistype {
                    // $Notes$
                    return Item.byHandle($Type$());
                }
            //! endtextmacro

            //! runtextmacro ItemEvent("enumItem", "GetEnumItem", "选取物品")
            //! runtextmacro ItemEvent("soldItem", "GetSoldItem", "被售出的物品")
            //! runtextmacro ItemEvent("filterItem", "GetFilterItem", "匹配物品")
            //! runtextmacro ItemEvent("manipulatedItem", "GetManipulatedItem", "被操作的物品")
            //! runtextmacro ItemEvent("orderTargetItem", "GetOrderTargetItem", "命令发布目标")
            //! runtextmacro ItemEvent("spellTargetItem", "GetSpellTargetItem", "技能释放目标")
        }
    }
}
//! endzinc
