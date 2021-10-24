//! zinc
library Event
{
    private
    {
        hashtable DIYHT = InitHashtable();
    }

    public
    {
        boolean Event_syncEventBool = false;
    }

    // playerunitevent 玩家单位事件 18~51 269~277
    #define UNIT_ATTACKED                    "被攻击"
    #define UNIT_RESCUED                     "被营救"
    #define UNIT_DEATH                       "单位死亡"
    #define UNIT_DECAY                       "开始腐化"
    #define UNIT_DETECTED                    "被发现"
    #define UNIT_HIDDEN                      "单位隐藏"
    #define UNIT_SELECTED                    "单位被选择"
    #define UNIT_DESELECTED                  "单位取消选择"
    #define UNIT_CONSTRUCT_START             "单位开始建造"
    #define UNIT_CONSTRUCT_CANCEL            "单位取消建造"
    #define UNIT_CONSTRUCT_FINISH            "单位完成建造"
    #define UNIT_UPGRADE_START               "开始建筑升级"
    #define UNIT_UPGRADE_CANCEL              "取消建筑升级"
    #define UNIT_UPGRADE_FINISH              "完成建筑升级"
    #define UNIT_TRAIN_START                 "开始训练单位"
    #define UNIT_TRAIN_CANCEL                "取消训练单位"
    #define UNIT_TRAIN_FINISH                "完成训练单位"
    #define UNIT_RESEARCH_START              "开始研究科技"
    #define UNIT_RESEARCH_CANCEL             "取消研究科技"
    #define UNIT_RESEARCH_FINISH             "完成研究科技"
    #define UNIT_ISSUED_ORDER                "发布无目标"
    #define UNIT_ISSUED_POINT_ORDER          "发布指定点"
    #define UNIT_ISSUED_TARGET_ORDER         "发布指定目标"
    #define HERO_LEVEL                       "提升等级"
    #define HERO_SKILL                       "学习技能"
    #define HERO_REVIVABLE                   "变得可重生"
    #define HERO_REVIVE_START                "开始复活英雄"
    #define HERO_REVIVE_CANCEL               "取消复活英雄"
    #define HERO_REVIVE_FINISH               "完成复活英雄"
    #define UNIT_SUMMON                      "被召唤"
    #define UNIT_DROP_ITEM                   "丢弃物品"
    #define UNIT_PICKUP_ITEM                 "获得物品"
    #define UNIT_USE_ITEM                    "使用物品"
    #define UNIT_LOADED                      "运输机装载"
    #define UNIT_SELL                        "出售单位"
    #define UNIT_CHANGE_OWNER                "改变所有者"
    #define UNIT_SELL_ITEM                   "出售物品"
    #define UNIT_SPELL_CHANNEL               "准备释放技能"
    #define UNIT_SPELL_CAST                  "开始释放技能"
    #define UNIT_SPELL_EFFECT                "发动技能效果"
    #define UNIT_SPELL_FINISH                "释放技能结束"
    #define UNIT_SPELL_ENDCAST               "停止释放技能"
    #define UNIT_PAWN_ITEM                   "单位抵押物品"

    // 玩家属性事件
    #define GAMER_STATE_RESOURCE_GOLD       "金币"
    #define GAMER_STATE_RESOURCE_LUMBER     "木材"
    #define GAMER_STATE_RESOURCE_FOOD_USED  "使用人口"
    #define GAMER_STATE_RESOURCE_FOOD_CAP   "可用人口"
    #define GAMER_STATE_FOOD_CAP_CEILING    "人口上限"
    // 玩家属性判断
    #define GAMER_LESS_THAN                 "<"
    #define GAMER_LESS_THAN_OR_EQUAL        "<="
    #define GAMER_EQUAL                     "=="
    #define GAMER_GREATER_THAN_OR_EQUAL     ">="
    #define GAMER_GREATER_THAN              ">"
    #define GAMER_NOT_EQUAL                 "!="

    private struct InitEvent
    {
        static method onInit()
        {
            integer index = strHash("事件映射");
            // 玩家单位
            SaveInteger(XZHT, index, strHash(UNIT_ATTACKED), 18);
            SaveInteger(XZHT, index, strHash(UNIT_RESCUED), 19);
            SaveInteger(XZHT, index, strHash(UNIT_DEATH), 20);
            SaveInteger(XZHT, index, strHash(UNIT_DECAY), 21);
            SaveInteger(XZHT, index, strHash(UNIT_DETECTED), 22);
            SaveInteger(XZHT, index, strHash(UNIT_HIDDEN), 23);
            SaveInteger(XZHT, index, strHash(UNIT_SELECTED), 24);
            SaveInteger(XZHT, index, strHash(UNIT_DESELECTED), 25);
            SaveInteger(XZHT, index, strHash(UNIT_CONSTRUCT_START), 26);
            SaveInteger(XZHT, index, strHash(UNIT_CONSTRUCT_CANCEL), 27);
            SaveInteger(XZHT, index, strHash(UNIT_CONSTRUCT_FINISH), 28);
            SaveInteger(XZHT, index, strHash(UNIT_UPGRADE_START), 29);
            SaveInteger(XZHT, index, strHash(UNIT_UPGRADE_CANCEL), 30);
            SaveInteger(XZHT, index, strHash(UNIT_UPGRADE_FINISH), 31);
            SaveInteger(XZHT, index, strHash(UNIT_TRAIN_START), 32);
            SaveInteger(XZHT, index, strHash(UNIT_TRAIN_CANCEL), 33);
            SaveInteger(XZHT, index, strHash(UNIT_TRAIN_FINISH), 34);
            SaveInteger(XZHT, index, strHash(UNIT_RESEARCH_START), 35);
            SaveInteger(XZHT, index, strHash(UNIT_RESEARCH_CANCEL), 36);
            SaveInteger(XZHT, index, strHash(UNIT_RESEARCH_FINISH), 37);
            SaveInteger(XZHT, index, strHash(UNIT_ISSUED_ORDER), 38);
            SaveInteger(XZHT, index, strHash(UNIT_ISSUED_POINT_ORDER), 39);
            SaveInteger(XZHT, index, strHash(UNIT_ISSUED_TARGET_ORDER), 40);
            SaveInteger(XZHT, index, strHash(HERO_LEVEL), 41);
            SaveInteger(XZHT, index, strHash(HERO_SKILL), 42);
            SaveInteger(XZHT, index, strHash(HERO_REVIVABLE), 43);
            SaveInteger(XZHT, index, strHash(HERO_REVIVE_START), 44);
            SaveInteger(XZHT, index, strHash(HERO_REVIVE_CANCEL), 45);
            SaveInteger(XZHT, index, strHash(HERO_REVIVE_FINISH), 46);
            SaveInteger(XZHT, index, strHash(UNIT_SUMMON), 47);
            SaveInteger(XZHT, index, strHash(UNIT_DROP_ITEM), 48);
            SaveInteger(XZHT, index, strHash(UNIT_PICKUP_ITEM), 49);
            SaveInteger(XZHT, index, strHash(UNIT_USE_ITEM), 50);
            SaveInteger(XZHT, index, strHash(UNIT_LOADED), 51);
            SaveInteger(XZHT, index, strHash(UNIT_SELL), 269);
            SaveInteger(XZHT, index, strHash(UNIT_CHANGE_OWNER), 270);
            SaveInteger(XZHT, index, strHash(UNIT_SELL_ITEM), 271);
            SaveInteger(XZHT, index, strHash(UNIT_SPELL_CHANNEL), 272);
            SaveInteger(XZHT, index, strHash(UNIT_SPELL_CAST), 273);
            SaveInteger(XZHT, index, strHash(UNIT_SPELL_EFFECT), 274);
            SaveInteger(XZHT, index, strHash(UNIT_SPELL_FINISH), 275);
            SaveInteger(XZHT, index, strHash(UNIT_SPELL_ENDCAST), 276);
            SaveInteger(XZHT, index, strHash(UNIT_PAWN_ITEM), 277);

            // 玩家属性事件
            SaveInteger(XZHT, index, strHash(GAMER_STATE_RESOURCE_GOLD), 1);
            SaveInteger(XZHT, index, strHash(GAMER_STATE_RESOURCE_LUMBER), 2);
            SaveInteger(XZHT, index, strHash(GAMER_STATE_RESOURCE_FOOD_USED), 5);
            SaveInteger(XZHT, index, strHash(GAMER_STATE_RESOURCE_FOOD_CAP), 4);
            SaveInteger(XZHT, index, strHash(GAMER_STATE_FOOD_CAP_CEILING), 6);

            // 玩家属性判断
            SaveInteger(XZHT, index, strHash(GAMER_LESS_THAN), 0);
            SaveInteger(XZHT, index, strHash(GAMER_LESS_THAN_OR_EQUAL), 1);
            SaveInteger(XZHT, index, strHash(GAMER_EQUAL), 2);
            SaveInteger(XZHT, index, strHash(GAMER_GREATER_THAN_OR_EQUAL), 3);
            SaveInteger(XZHT, index, strHash(GAMER_GREATER_THAN), 4);
            SaveInteger(XZHT, index, strHash(GAMER_NOT_EQUAL), 5);
        }
    }

    // Object EventResponse
    // 网易延迟判断 本地环境内 Example : 在异步注册事件的回调下 通过 SyncEventBool() 的方式可以快速判断同步延迟间隔，避免频发
    #define SyncEventBool() \
    if (Event_syncEventBool) return; XWEN\
    Event_syncEventBool = true

    // 在异步事件内响应执行同步自定义事件 Example : 在异步注册事件的回调下 通过 SyncEventString(事件名) 的方式去同步响应自定义事件 但是该方式没有过滤延迟判断
    #define SyncEventString(name) \
    Event.syncData(EventSyncName, name)

    // 网易延迟判断 同步事件内 Example : 如果是手动通过SyncEventBool()来快速判断的话，那么在同步事件回调下需要通过SyncEventGamer(Gamer)的方式去刷新一遍
    #define SyncEventGamer(gm) \
    if (gm.IsLocal()) Event_syncEventBool = false

    // 在异步环境内同步执行注册自定义事件 Example : 在异步注册事件的回调下 通过 onSyncEvent(事件名) 的方式去响应自定义事件 - 在同步环境下响应
    #define onSyncEvent(name) \
    if (Event_syncEventBool) return; XWEN\
    Event_syncEventBool = true; XWEN\
    Event.syncData(EventSyncName, name)

    // 固定用来同步用的同步事件名
    #define EventSyncName "KeyDataEvent"

    public struct Event extends InitEvent
    {
        private
        {
            static trigger t[];
            static boolean orderBool = false;
            static boolean abilityBool = false;

            static method onOrder() { TriggerEvaluate(LoadTriggerHandle(XZHT, strHash("命令事件"), GetIssuedOrderId())); } // 命令发布事件回调
            static method onCast() { TriggerEvaluate(LoadTriggerHandle(XZHT, strHash("技能事件"), GetSpellAbilityId())); } // 发动技能效果回调

            static method onInit() {
                // 自动响应异步注册并且执行同步事件
                Event.onSync(EventSyncName, function() {
                    string data = DzGetTriggerSyncData();
                    Event.executeDiy(data);
                    if (DzGetTriggerSyncPlayer() == GetLocalPlayer()) {
                        Event_syncEventBool = false;
                    }
                });
            }
        }

        public
        {
            // 任意单位事件 Example : Event.onUnit("单位死亡", function action);
            static method onUnit(string name, code action) ->integer {
                integer i = LoadInteger(XZHT, strHash("事件映射"), StringHash(name));
                integer index = 0;
                triggercondition condition = null;
                if (thistype.t[i] == null) {
                    thistype.t[i] = CreateTrigger();
                    for (0 <= index <= 15) {
                        TriggerRegisterPlayerUnitEvent(thistype.t[i], Player(index), ConvertPlayerUnitEvent(i), null);
                    }
                }
                condition = TriggerAddCondition(thistype.t[i], Filter(action));
                index = GetHandleId(condition);
                SaveInteger(XZHT, strHash("单位事件"), index, i);
                SaveTriggerConditionHandle(XZHT, strHash("单位事件"), index, condition);
                condition = null;
                return index;
            }
            // 玩家单位事件 Example : Event.onUnitForGamer("单位死亡", gamer[0], function action);
            static method onUnitForGamer(string name, Gamer gm, code action) {
                integer i = 16 * LoadInteger(XZHT, strHash("事件映射"), StringHash(name)) + gm.id();
                if (thistype.t[i] == null) {
                    thistype.t[i] = CreateTrigger();
                    TriggerRegisterPlayerUnitEvent(thistype.t[i], gm.Handle(), ConvertPlayerUnitEvent(i), null);
                }
                TriggerAddCondition(thistype.t[i], Filter(action));
            }
            // 任意单位发布指定命令事件 Example : Event.onUnitOrder(Order.attack, function action);
            static method onUnitOrder(integer orderId, code action) {
                if (!thistype.orderBool) {
                    thistype.onUnit("发布无目标", function thistype.onOrder);
                    thistype.onUnit("发布指定点", function thistype.onOrder);
                    thistype.onUnit("发布指定目标", function thistype.onOrder);
                    thistype.orderBool = true;
                }
                if (!HaveSavedHandle(XZHT, strHash("命令事件"), orderId)) {
                    SaveTriggerHandle(XZHT, strHash("命令事件"), orderId, CreateTrigger());
                }
                TriggerAddCondition(LoadTriggerHandle(XZHT, strHash("命令事件"), orderId), Filter(action));
            }
            // 任意单位发动指定技能效果 Example : Event.onUnitAbility('A000', function action);
            static method onUnitAbility(integer abId, code action) {
                if (!thistype.abilityBool) {
                    thistype.onUnit("发动技能效果", function thistype.onCast);
                    thistype.abilityBool = true;
                }
                if (!HaveSavedHandle(XZHT, strHash("技能事件"), abId)) {
                    SaveTriggerHandle(XZHT, strHash("技能事件"), abId, CreateTrigger());
                }
                TriggerAddCondition(LoadTriggerHandle(XZHT, strHash("技能事件"), abId), Filter(action));
            }
            // 获取任意单位事件绑定的触发器
            static method getTrigger(string name) ->trigger {
                return thistype.t[LoadInteger(XZHT, strHash("事件映射"), StringHash(name))];
            }
            // 删除任意单位事件回调函数
            static method removeAction(integer index) {
                if (HaveSavedInteger(XZHT, strHash("单位事件"), index)) {
                    TriggerRemoveCondition(thistype.t[LoadInteger(XZHT, strHash("单位事件"), index)], LoadTriggerConditionHandle(XZHT, strHash("单位事件"), index));
                    RemoveSavedInteger(XZHT, strHash("单位事件"), index);
                    RemoveSavedHandle(XZHT, strHash("单位事件"), index);
                }
            }
        }

        public
        {
            // 任意玩家发送消息事件 Example : Event.onGamerChat(function action);
            static method onGamerChat(code action) {
                integer index = 0;
                if (!HaveSavedHandle(XZHT, strHash("玩家事件"), strHash("发送消息"))) {
                    SaveTriggerHandle(XZHT, strHash("玩家事件"), strHash("发送消息"), CreateTrigger());
                    for (0 <= index <= 15) {
                        TriggerRegisterPlayerChatEvent(LoadTriggerHandle(XZHT, strHash("玩家事件"), strHash("发送消息")), Player(index), "", true);
                    }
                }
                TriggerAddCondition(LoadTriggerHandle(XZHT, strHash("玩家事件"), strHash("发送消息")), Filter(action));
            }
            // 任意玩家事件 Example : Event.onGamer(EVENT_PLAYER_END_CINEMATIC, function action); <- ESC事件
            static method onGamer(playerevent pe, code action) {
                integer index = 0;
                integer eventId = GetHandleId(pe);
                if (!HaveSavedHandle(XZHT, strHash("玩家事件"), eventId)) {
                    SaveTriggerHandle(XZHT, strHash("玩家事件"), eventId, CreateTrigger());
                    for (0 <= index <= 15) {
                        TriggerRegisterPlayerEvent(LoadTriggerHandle(XZHT, strHash("玩家事件"), eventId), Player(index), pe);
                    }
                }
                TriggerAddCondition(LoadTriggerHandle(XZHT, strHash("玩家事件"), eventId), Filter(action));
            }
            // 任意玩家属性事件 Example : Event.onGamerData("金币", ">=", 800000); 金币 or 木材 or 使用人口 or 可用人口 or 人口上限
            static method onGamerData(string name, string contrast, integer data, code action) {
                integer index = 0;
                integer nameId = LoadInteger(XZHT, strHash("事件映射"), StringHash(name));
                integer contrastId = LoadInteger(XZHT, strHash("事件映射"), StringHash(contrast));
                integer eventId = nameId + contrastId + data;
                if (!HaveSavedHandle(XZHT, strHash("玩家事件"), eventId)) {
                    SaveTriggerHandle(XZHT, strHash("玩家事件"), eventId, CreateTrigger());
                    for (0 <= index <= 15) {
                        TriggerRegisterPlayerStateEvent(LoadTriggerHandle(XZHT, strHash("玩家事件"), eventId), Player(index), ConvertPlayerState(nameId), ConvertLimitOp(contrastId), I2R(data));
                    }
                }
                TriggerAddCondition(LoadTriggerHandle(XZHT, strHash("玩家事件"), eventId), Filter(action));
            }
        }

        public
        {
            // 任意单位进入区域事件 Example : Event.onEnter(r, function action);
            static method onEnter(rect r, code action) {
                integer handleId = GetHandleId(r);
                region rn = null;
                trigger trig = null;
                if (HaveSavedHandle(XZHT, handleId, strHash("不规则矩形"))) {
                    rn = LoadRegionHandle(XZHT, handleId, strHash("不规则矩形"));
                } else {
                    rn = CreateRegion();
                    RegionAddRect(rn, r);
                    SaveRegionHandle(XZHT, handleId, strHash("不规则矩形"), rn);
                    SaveRectHandle(XZHT, GetHandleId(rn), strHash("规则矩形"), r);
                }
                if (HaveSavedHandle(XZHT, handleId, strHash("进入触发器"))) {
                    trig = LoadTriggerHandle(XZHT, handleId, strHash("进入触发器"));
                } else {
                    trig = CreateTrigger();
                    TriggerRegisterEnterRegion(trig, rn, null);
                    SaveTriggerHandle(XZHT, handleId, strHash("进入触发器"), trig);
                }
                TriggerAddCondition(trig, Filter(action));
                rn = null;
                trig = null;
            }
            // 任意单位离开区域事件 Example : Event.onLeave(r, function action);
            static method onLeave(rect r, code action) {
                integer handleId = GetHandleId(r);
                region rn = null;
                trigger trig = null;
                if (HaveSavedHandle(XZHT, handleId, strHash("不规则矩形"))) {
                    rn = LoadRegionHandle(XZHT, handleId, strHash("不规则矩形"));
                } else {
                    rn = CreateRegion();
                    RegionAddRect(rn, r);
                    SaveRegionHandle(XZHT, handleId, strHash("不规则矩形"), rn);
                    SaveRectHandle(XZHT, GetHandleId(rn), strHash("规则矩形"), r);
                }
                if (HaveSavedHandle(XZHT, handleId, strHash("离开触发器"))) {
                    trig = LoadTriggerHandle(XZHT, handleId, strHash("离开触发器"));
                } else {
                    trig = CreateTrigger();
                    TriggerRegisterLeaveRegion(trig, rn, null);
                    SaveTriggerHandle(XZHT, handleId, strHash("离开触发器"), trig);
                }
                TriggerAddCondition(trig, Filter(action));
                rn = null;
                trig = null;
            }
            // 删除规则矩形 Example : Event.removeRect(r);
            static method removeRect(rect r) {
                integer handleId = GetHandleId(r);
                if (HaveSavedHandle(XZHT, handleId, strHash("不规则矩形"))) {
                    RemoveSavedHandle(XZHT, GetHandleId(LoadRegionHandle(XZHT, handleId, strHash("不规则矩形"))), strHash("规则矩形"));
                    RemoveRegion(LoadRegionHandle(XZHT, handleId, strHash("不规则矩形")));
                    DestroyTrigger(LoadTriggerHandle(XZHT, handleId, strHash("进入触发器")));
                    DestroyTrigger(LoadTriggerHandle(XZHT, handleId, strHash("离开触发器")));
                    FlushChildHashtable(XZHT, handleId);
                }
                RemoveRect(r);
            }
            // 获取触发的规则矩形
            static method triggerRect() ->rect {
                return LoadRectHandle(XZHT, GetHandleId(GetTriggeringRegion()), strHash("规则矩形"));
            }
        }

        public
        {
            // 注册自定义事件 Example : Event.onDiy("自定义事件名", function action);
            static method onDiy(string name, code action) ->integer {
                integer index,nameId;
                triggercondition condition;
                nameId = StringHash(name);
                if (!HaveSavedHandle(XZHT, strHash("自定义事件"), nameId)) {
                    SaveTriggerHandle(XZHT, strHash("自定义事件"), nameId, CreateTrigger());
                    SaveStr(XZHT, strHash("自定义事件"), GetHandleId(LoadTriggerHandle(XZHT, strHash("自定义事件"), nameId)), name);
                    SaveInteger(XZHT, strHash("自定义事件"), GetHandleId(LoadTriggerHandle(XZHT, strHash("自定义事件"), nameId)), nameId);
                }
                condition = TriggerAddCondition(LoadTriggerHandle(XZHT, strHash("自定义事件"), nameId), Filter(action));
                index = GetHandleId(condition);
                SaveInteger(XZHT, strHash("自定义事件"), index, nameId);
                SaveTriggerConditionHandle(XZHT, strHash("自定义事件"), index, condition);
                condition = null;
                return index;
            }
            // 响应自定义事件 Example : Event.executeDiy("自定义事件名"); or Event.executeDiyInt(strHash("自定义事件名"));
            static method executeDiy(string name) {
                integer index = StringHash(name);
                if (HaveSavedHandle(XZHT, strHash("自定义事件"), index)) {
                    TriggerEvaluate(LoadTriggerHandle(XZHT, strHash("自定义事件"), index));
                }
            }
            static method executeDiyInt(integer index) {
                if (HaveSavedHandle(XZHT, strHash("自定义事件"), index)) {
                    TriggerEvaluate(LoadTriggerHandle(XZHT, strHash("自定义事件"), index));
                }
            }
            // 删除函数
            static method destroyDiy(integer index) {
                if (HaveSavedInteger(XZHT, strHash("自定义事件"), index)) {
                    TriggerRemoveCondition(LoadTriggerHandle(XZHT, strHash("自定义事件"), LoadInteger(XZHT, strHash("自定义事件"), index)), LoadTriggerConditionHandle(XWHT, strHash("自定义事件"), index));
                    RemoveSavedInteger(XZHT, strHash("自定义事件"), index);
                    RemoveSavedHandle(XZHT, strHash("自定义事件"), index);
                }
            }
            // 获取当前触发事件名
            static method getEventName() ->string {
                return LoadStr(XZHT, strHash("自定义事件"), GetHandleId(GetTriggeringTrigger()));
            }
            // 获取当前触发的事件名哈希值
            static method getEventIndex() ->integer {
                return LoadInteger(XZHT, strHash("自定义事件"), GetHandleId(GetTriggeringTrigger()));
            }
            // 获取绑定当前事件的数据
            static method getTriggerEventData() ->integer {
                return LoadInteger(XZHT, strHash("自定义事件数据"), LoadInteger(XZHT, strHash("自定义事件"), GetHandleId(GetTriggeringTrigger())));
            }
            // 绑定数据
            static method setEventData(string name, integer data) {
                SaveInteger(XZHT, strHash("自定义事件数据"), StringHash(name), data);
            }
            static method setEventDataInt(integer index, integer data) {
                SaveInteger(XZHT, strHash("自定义事件数据"), index, data);
            }
            // 获取数据
            static method getEventData(string name) ->integer {
                return LoadInteger(XZHT, strHash("自定义事件数据"), StringHash(name));
            }
            static method getEventDataInt(integer index) ->integer {
                return LoadInteger(XZHT, strHash("自定义事件数据"), index);
            }
            // 绑定表数据
            static method setEventStr(integer name, integer index, string data) {
                SaveStr(DIYHT, name, index, data);
            }
            static method setEventInteger(integer name, integer index, integer data) {
                SaveInteger(DIYHT, name, index, data);
            }
            static method setEventReal(integer name, integer index, real data) {
                SaveReal(DIYHT, name, index, data);
            }
            // 获取表数据
            static method getEventStr(integer name, integer index) ->string {
                return LoadStr(DIYHT, name, index);
            }
            static method getEventInteger(integer name, integer index) ->integer {
                return LoadInteger(DIYHT, name, index);
            }
            static method getEventReal(integer name, integer index) ->real {
                return LoadReal(DIYHT, name, index);
            }
        }

        public
        {
            // 同步事件 Example : Event.onSync("同步标签", function action);
            static method onSync(string name, code action) ->integer {
                integer index,nameId;
                triggercondition condition;
                nameId = StringHash(name);
                if (!HaveSavedHandle(XZHT, strHash("同步事件"), nameId)) {
                    SaveTriggerHandle(XZHT, strHash("同步事件"), nameId, CreateTrigger());
                    DzTriggerRegisterSyncData(LoadTriggerHandle(XZHT, strHash("同步事件"), nameId), name, false);
                }
                condition = TriggerAddCondition(LoadTriggerHandle(XZHT, strHash("同步事件"), nameId), Filter(action));
                index = GetHandleId(condition);
                SaveInteger(XZHT, strHash("同步事件"), index, nameId);
                SaveTriggerConditionHandle(XZHT, strHash("同步事件"), index, condition);
                condition = null;
                return index;
            }
            // 同步数据
            static method syncData(string name, string value) { DzSyncData(name, value); }
            // 删除函数
            static method destroySync(integer index) {
                if (HaveSavedInteger(XZHT, strHash("同步事件"), index)) {
                    TriggerRemoveCondition(LoadTriggerHandle(XZHT, strHash("同步事件"), LoadInteger(XZHT, strHash("同步事件"), index)), LoadTriggerConditionHandle(XWHT, strHash("同步事件"), index));
                    RemoveSavedInteger(XZHT, strHash("同步事件"), index);
                    RemoveSavedHandle(XZHT, strHash("同步事件"), index);
                }
            }
        }

        public
        {
            // 执行函数
            static method callFunc(string name) { ExecuteFunc(name); }
            // 异步执行函数
            static method callFuncLocal(string name) { DzExecuteFunc(name); }
        }
    }

    // 任意单位接受伤害事件
    #define DAMAGE_SWAP_INIT    true    // 若为 false 则不启用伤害事件
    #define DAMAGE_SWAP_ENABLE  true    // 若为 false 则不启用销毁机制
    #define DAMAGE_SWAP_TIMEOUT 600     // 每隔这个时间[秒], eventTrigger 会被移入销毁队列

    private struct DamageEvent
    {
        private
        {
            static trigger Trigger = null; // 伤害事件主体触发器
            static trigger TriggerToDestory = null; // 伤害事件销毁替换触发器
            static conditionfunc filter = null;

            // 响应事件
            static method AnyUnitDamagedTriggerAction() {
                Event.executeDiyInt(strHash("单位接受伤害"));
            }

            // 蝗虫和非蝗虫单位过滤器
            static method AnyUnitDamagedFilter() ->boolean {
                if (GetUnitAbilityLevel(GetFilterUnit(), 'Aloc') <= 0) {
                    TriggerRegisterUnitEvent(thistype.Trigger, GetFilterUnit(), EVENT_UNIT_DAMAGED);
                }
                return false;
            }

            // 枚举所有玩家非蝗虫单位并过滤蝗虫单位
            static method AnyUnitDamagedEnumUnit() {
                integer index;
                group g = CreateGroup();
                for (0 <= index <= 15) {
                    GroupEnumUnitsOfPlayer(g, Player(index), thistype.filter);
                }
                GroupClear(g);
                DestroyGroup(g);
                g = null;
            }

            // 捕获任意单位进入区域并过滤蝗虫单位
            static method AnyUnitDamagedRegistTriggerUnitEnter() {
                region r = CreateRegion();
                rect world = GetWorldBounds();
                trigger trig = CreateTrigger();
                RegionAddRect(r, world);
                TriggerRegisterEnterRegion(trig, r, thistype.filter);
                RemoveRect(world);
                r = null;
                trig = null;
                world = null;
            }

            // 根据 DAMAGE_SWAP_TIMEOUT 时间来定期将 eventTrigger 移入销毁队列,从而排泄触发器事件
            static method SyStemAnyUnitDamagedSwap() {
                boolean isEnabled = IsTriggerEnabled(thistype.Trigger);
                DisableTrigger(thistype.Trigger);
                if (thistype.TriggerToDestory != null) {
                    DestroyTrigger(thistype.TriggerToDestory);
                }
                thistype.TriggerToDestory = thistype.Trigger;
                thistype.Trigger = CreateTrigger();
                if (!isEnabled) {
                    DisableTrigger(thistype.Trigger);
                }
                TriggerAddAction(thistype.Trigger, function thistype.AnyUnitDamagedTriggerAction);
                thistype.AnyUnitDamagedEnumUnit();
            }

            static method onInit() {
                if (DAMAGE_SWAP_INIT) {
                    thistype.filter = Condition(function thistype.AnyUnitDamagedFilter);
                    thistype.Trigger = CreateTrigger();
                    TriggerAddAction(thistype.Trigger, function thistype.AnyUnitDamagedTriggerAction);
                    thistype.AnyUnitDamagedEnumUnit();
                    thistype.AnyUnitDamagedRegistTriggerUnitEnter();
                    if (DAMAGE_SWAP_ENABLE) {
                        // 每隔 DAMAGE_EVENT_SWAP_TIMEOUT 秒, 将正在使用的 DamageEventTrigger 移入销毁队列
                        TimerStart(CreateTimer(), DAMAGE_SWAP_TIMEOUT, true, function thistype.SyStemAnyUnitDamagedSwap);
                    }
                }
            }
        }
    }
}
//! endzinc
