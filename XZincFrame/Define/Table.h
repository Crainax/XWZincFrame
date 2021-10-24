#ifndef INCLUDE_USERTABLE
#define INCLUDE_USERTABLE

/*
    哈希表 H2I && S2I
    Example:
    A2I(type, any) ->integer [type(integer, real, string, boolean, handle_type, struct_type)]
    描述:
    A2I(string, "实例")			        把字符串"实例"转为实例的哈希值
    A2I(item, GetManipulatedItem())	    把物品"被操作的物品"转为对应的句柄
    A2I(Item, Item.manipulatedItem())	把物品结构类型的被操作的物品转为对应的物品句柄
*/
#define A2I(type, any)                      USERTABLE_ANY2I_##type##(any)

#define USERTABLE_I2I(any)                  any
#define USERTABLE_R2I(any)                  R2I(any)
#define USERTABLE_B2I(any)                  ERROR "错误，布尔值不支持转整数，不支持以布尔值为table索引。"
#define USERTABLE_S2I(any)                  StringHash(any)
#define USERTABLE_H2I(any)                  GetHandleId(any)
#define USERTABLE_G2I(any)                  any.HandleId()

// 结构体
#define USERTABLE_ANY2I_Gamer(any)          USERTABLE_G2I(any)
#define USERTABLE_ANY2I_Dialog(any)         USERTABLE_G2I(any)
#define USERTABLE_ANY2I_Effect(any)         USERTABLE_G2I(any)
#define USERTABLE_ANY2I_Game(any)           USERTABLE_G2I(any)
#define USERTABLE_ANY2I_Group(any)          USERTABLE_G2I(any)
#define USERTABLE_ANY2I_Item(any)           USERTABLE_G2I(any)
#define USERTABLE_ANY2I_Unit(any)           USERTABLE_G2I(any)
#define USERTABLE_ANY2I_Panel(any)          USERTABLE_G2I(any)
#define USERTABLE_ANY2I_Point(any)          USERTABLE_G2I(any)

// 原生
#define USERTABLE_ANY2I_int(any)                USERTABLE_I2I(any)
#define USERTABLE_ANY2I_bool(any)               USERTABLE_B2I(any)
#define USERTABLE_ANY2I_integer(any)            USERTABLE_I2I(any)
#define USERTABLE_ANY2I_real(any)               USERTABLE_R2I(any)
#define USERTABLE_ANY2I_boolean(any)            USERTABLE_B2I(any)
#define USERTABLE_ANY2I_string(any)             USERTABLE_S2I(any)
#define USERTABLE_ANY2I_player(any)             USERTABLE_H2I(any)
#define USERTABLE_ANY2I_widget(any)             USERTABLE_H2I(any)
#define USERTABLE_ANY2I_destructable(any)       USERTABLE_H2I(any)
#define USERTABLE_ANY2I_item(any)               USERTABLE_H2I(any)
#define USERTABLE_ANY2I_unit(any)               USERTABLE_H2I(any)
#define USERTABLE_ANY2I_ability(any)            USERTABLE_H2I(any)
#define USERTABLE_ANY2I_timer(any)              USERTABLE_H2I(any)
#define USERTABLE_ANY2I_trigger(any)            USERTABLE_H2I(any)
#define USERTABLE_ANY2I_triggercondition(any)   USERTABLE_H2I(any)
#define USERTABLE_ANY2I_triggeraction(any)      USERTABLE_H2I(any)
#define USERTABLE_ANY2I_event(any)              USERTABLE_H2I(any)
#define USERTABLE_ANY2I_force(any)              USERTABLE_H2I(any)
#define USERTABLE_ANY2I_group(any)              USERTABLE_H2I(any)
#define USERTABLE_ANY2I_location(any)           USERTABLE_H2I(any)
#define USERTABLE_ANY2I_rect(any)               USERTABLE_H2I(any)
#define USERTABLE_ANY2I_boolexpr(any)           USERTABLE_H2I(any)
#define USERTABLE_ANY2I_sound(any)              USERTABLE_H2I(any)
#define USERTABLE_ANY2I_effect(any)             USERTABLE_H2I(any)
#define USERTABLE_ANY2I_unitpool(any)           USERTABLE_H2I(any)
#define USERTABLE_ANY2I_itempool(any)           USERTABLE_H2I(any)
#define USERTABLE_ANY2I_quest(any)              USERTABLE_H2I(any)
#define USERTABLE_ANY2I_questitem(any)          USERTABLE_H2I(any)
#define USERTABLE_ANY2I_defeatcondition(any)    USERTABLE_H2I(any)
#define USERTABLE_ANY2I_timerdialog(any)        USERTABLE_H2I(any)
#define USERTABLE_ANY2I_leaderboard(any)        USERTABLE_H2I(any)
#define USERTABLE_ANY2I_multiboard(any)         USERTABLE_H2I(any)
#define USERTABLE_ANY2I_multiboarditem(any)     USERTABLE_H2I(any)
#define USERTABLE_ANY2I_trackable(any)          USERTABLE_H2I(any)
#define USERTABLE_ANY2I_dialog(any)             USERTABLE_H2I(any)
#define USERTABLE_ANY2I_button(any)             USERTABLE_H2I(any)
#define USERTABLE_ANY2I_texttag(any)            USERTABLE_H2I(any)
#define USERTABLE_ANY2I_lightning(any)          USERTABLE_H2I(any)
#define USERTABLE_ANY2I_image(any)              USERTABLE_H2I(any)
#define USERTABLE_ANY2I_ubersplat(any)          USERTABLE_H2I(any)
#define USERTABLE_ANY2I_region(any)             USERTABLE_H2I(any)
#define USERTABLE_ANY2I_fogstate(any)           USERTABLE_H2I(any)
#define USERTABLE_ANY2I_fogmodifier(any)        USERTABLE_H2I(any)
#define USERTABLE_ANY2I_agent(any)              USERTABLE_H2I(any)
#define USERTABLE_ANY2I_hashtable(any)          USERTABLE_H2I(any)

/*
    结构化
    Example:
    USERTABLE_J2I(type, any) ->integer [type(Gamer, Dialog, Effect, Game, Group, Unit, Item, panel, Point)]
    USERTABLE_I2J(type, code) [type(Gamer, Dialog, Effect, Game, Group, Unit, Item, panel, Point)]
    描述:
    USERTABLE_J2I(Gamer, Gamer.user[0]) -> integer(Gamer.user[0])
    USERTABLE_I2J() 略，这两个是搭配表的操作用的，不在外部使用
*/

#define USERTABLE_J2I(type, any)                          USERTABLE_I2ANY_##type##(any)
#define USERTABLE_I2J(type, code)                         USERTABLE_I2J_##type##(code)

// 结构体
#define USERTABLE_I2ANY_Gamer(any)              integer(any)
#define USERTABLE_I2ANY_Dialog(any)             integer(any)
#define USERTABLE_I2ANY_Effect(any)             integer(any)
#define USERTABLE_I2ANY_Game(any)               integer(any)
#define USERTABLE_I2ANY_Group(any)              integer(any)
#define USERTABLE_I2ANY_Item(any)               integer(any)
#define USERTABLE_I2ANY_Unit(any)               integer(any)
#define USERTABLE_I2ANY_Panel(any)              integer(any)
#define USERTABLE_I2ANY_Point(any)              integer(any)

// 原生
#define USERTABLE_I2ANY_int(any)                any
#define USERTABLE_I2ANY_bool(any)               any
#define USERTABLE_I2ANY_integer(any)            any
#define USERTABLE_I2ANY_real(any)               any
#define USERTABLE_I2ANY_boolean(any)            any
#define USERTABLE_I2ANY_string(any)             any
#define USERTABLE_I2ANY_player(any)             any
#define USERTABLE_I2ANY_widget(any)             any
#define USERTABLE_I2ANY_destructable(any)       any
#define USERTABLE_I2ANY_item(any)               any
#define USERTABLE_I2ANY_unit(any)               any
#define USERTABLE_I2ANY_ability(any)            any
#define USERTABLE_I2ANY_timer(any)              any
#define USERTABLE_I2ANY_trigger(any)            any
#define USERTABLE_I2ANY_triggercondition(any)   any
#define USERTABLE_I2ANY_triggeraction(any)      any
#define USERTABLE_I2ANY_event(any)              any
#define USERTABLE_I2ANY_force(any)              any
#define USERTABLE_I2ANY_group(any)              any
#define USERTABLE_I2ANY_location(any)           any
#define USERTABLE_I2ANY_rect(any)               any
#define USERTABLE_I2ANY_boolexpr(any)           any
#define USERTABLE_I2ANY_sound(any)              any
#define USERTABLE_I2ANY_effect(any)             any
#define USERTABLE_I2ANY_unitpool(any)           any
#define USERTABLE_I2ANY_itempool(any)           any
#define USERTABLE_I2ANY_quest(any)              any
#define USERTABLE_I2ANY_defeatcondition(any)    any
#define USERTABLE_I2ANY_timerdialog(any)        any
#define USERTABLE_I2ANY_leaderboard(any)        any
#define USERTABLE_I2ANY_multiboard(any)         any
#define USERTABLE_I2ANY_multiboarditem(any)     any
#define USERTABLE_I2ANY_trackable(any)          any
#define USERTABLE_I2ANY_dialog(any)             any
#define USERTABLE_I2ANY_button(any)             any
#define USERTABLE_I2ANY_texttag(any)            any
#define USERTABLE_I2ANY_lightning(any)          any
#define USERTABLE_I2ANY_image(any)              any
#define USERTABLE_I2ANY_ubersplat(any)          any
#define USERTABLE_I2ANY_region(any)             any
#define USERTABLE_I2ANY_fogstate(any)           any
#define USERTABLE_I2ANY_fogmodifier(any)        any
#define USERTABLE_I2ANY_agent(any)              any
#define USERTABLE_I2ANY_hashtable(any)          any

// 结构体
#define USERTABLE_I2J_Gamer(code)                   Gamer(code)
#define USERTABLE_I2J_Dialog(code)                  Dialog(code)
#define USERTABLE_I2J_Effect(code)                  Effect(code)
#define USERTABLE_I2J_Game(code)                    Game(code)
#define USERTABLE_I2J_Group(code)                   Group(code)
#define USERTABLE_I2J_Item(code)                    Item(code)
#define USERTABLE_I2J_Unit(code)                    Unit(code)
#define USERTABLE_I2J_Panel(code)                   Panel(code)
#define USERTABLE_I2J_Point(code)                   Point(code)

// 原生
#define USERTABLE_I2J_int(code)                     code
#define USERTABLE_I2J_bool(code)                    code
#define USERTABLE_I2J_integer(code)                 code
#define USERTABLE_I2J_real(code)                    code
#define USERTABLE_I2J_boolean(code)                 code
#define USERTABLE_I2J_string(code)                  code
#define USERTABLE_I2J_player(code)                  code
#define USERTABLE_I2J_widget(code)                  code
#define USERTABLE_I2J_destructable(code)            code     
#define USERTABLE_I2J_item(code)                    code
#define USERTABLE_I2J_unit(code)                    code
#define USERTABLE_I2J_ability(code)                 code
#define USERTABLE_I2J_timer(code)                   code
#define USERTABLE_I2J_trigger(code)                 code
#define USERTABLE_I2J_triggercondition(code)        code
#define USERTABLE_I2J_triggeraction(code)           code
#define USERTABLE_I2J_event(code)                   code
#define USERTABLE_I2J_force(code)                   code
#define USERTABLE_I2J_group(code)                   code
#define USERTABLE_I2J_location(code)                code
#define USERTABLE_I2J_rect(code)                    code
#define USERTABLE_I2J_boolexpr(code)                code
#define USERTABLE_I2J_sound(code)                   code
#define USERTABLE_I2J_effect(code)                  code
#define USERTABLE_I2J_unitpool(code)                code
#define USERTABLE_I2J_itempool(code)                code
#define USERTABLE_I2J_quest(code)                   code
#define USERTABLE_I2J_defeatcondition(code)         code
#define USERTABLE_I2J_timerdialog(code)             code
#define USERTABLE_I2J_leaderboard(code)             code
#define USERTABLE_I2J_multiboard(code)              code
#define USERTABLE_I2J_multiboarditem(code)          code
#define USERTABLE_I2J_trackable(code)               code
#define USERTABLE_I2J_dialog(code)                  code
#define USERTABLE_I2J_button(code)                  code
#define USERTABLE_I2J_texttag(code)                 code
#define USERTABLE_I2J_lightning(code)               code
#define USERTABLE_I2J_image(code)                   code
#define USERTABLE_I2J_ubersplat(code)               code
#define USERTABLE_I2J_region(code)                  code
#define USERTABLE_I2J_fogstate(code)                code
#define USERTABLE_I2J_fogmodifier(code)             code
#define USERTABLE_I2J_agent(code)                   code
#define USERTABLE_I2J_hashtable(code)               code

/*
    哈希表 清除 && 判断
    Example:
    clearAll(hashtable)
    clearTable(hashtable, integer)
    clearTableString(hashtable, string)
    clearHash(type, hashtable, integer, integer) [type(integer, real, string, boolean, handle_type)]
    hasHash(type, hashtable, integer, integer) ->boolean [type(integer, real, string, boolean, handle_type)]
    描述:
    clearAll(XWHT)			            清空哈希表XWHT内的所有数据
    clearTable(XWHT, integer)		    清空哈希表XWHT里面的integer索引内数据
    clearTableString(XWHT, string)		清空哈希表XWHT里面的string索引内数据
    clearHash(string, XWHT, table, key)	删除哈希表XWHT里面的table索引内的key索引里面的字符串数据
    hasHash(string, XWHT, table, key)	判断哈希表XWHT里面的table索引内的key索引里面是否存在字符串数据
*/
#define clearAll(handle)                    FlushParentHashtable(handle)
#define clearTable(handle, table)           FlushChildHashtable(handle, table)
#define clearTableString(handle, table)     FlushChildHashtable(handle, StringHash(table))

#define clearHash(Type, Hashable, ParentKey, ChildKey)      USERTABLE_HC_##Type##(CLEAR)(Hashable, ParentKey, ChildKey)
#define hasHash(Type, Hashable, ParentKey, ChildKey)        USERTABLE_HC_##Type##(HAS)(Hashable, ParentKey, ChildKey)

#define USERTABLE_CLEAR(Type)               RemoveSaved##Type
#define USERTABLE_HAS(Type)                 HaveSaved##Type

// 结构体
#define USERTABLE_HC_Gamer(HC)              USERTABLE_##HC##(Integer)
#define USERTABLE_HC_Dialog(HC)             USERTABLE_##HC##(Integer)
#define USERTABLE_HC_Effect(HC)             USERTABLE_##HC##(Integer)
#define USERTABLE_HC_Game(HC)               USERTABLE_##HC##(Integer)
#define USERTABLE_HC_Group(HC)              USERTABLE_##HC##(Integer)
#define USERTABLE_HC_Item(HC)               USERTABLE_##HC##(Integer)
#define USERTABLE_HC_Unit(HC)               USERTABLE_##HC##(Integer)
#define USERTABLE_HC_Panel(HC)              USERTABLE_##HC##(Integer)
#define USERTABLE_HC_Point(HC)              USERTABLE_##HC##(Integer)

// 原生
#define USERTABLE_HC_int(HC)                USERTABLE_##HC##(Integer)
#define USERTABLE_HC_bool(HC)               USERTABLE_##HC##(Boolean)
#define USERTABLE_HC_integer(HC)            USERTABLE_##HC##(Integer)
#define USERTABLE_HC_real(HC)               USERTABLE_##HC##(Real)
#define USERTABLE_HC_boolean(HC)            USERTABLE_##HC##(Boolean)
#define USERTABLE_HC_string(HC)             USERTABLE_##HC##(String)
#define USERTABLE_HC_player(HC)             USERTABLE_##HC##(Handle)
#define USERTABLE_HC_widget(HC)             USERTABLE_##HC##(Handle)
#define USERTABLE_HC_destructable(HC)       USERTABLE_##HC##(Handle)
#define USERTABLE_HC_item(HC)               USERTABLE_##HC##(Handle)
#define USERTABLE_HC_unit(HC)               USERTABLE_##HC##(Handle)
#define USERTABLE_HC_ability(HC)            USERTABLE_##HC##(Handle)
#define USERTABLE_HC_timer(HC)              USERTABLE_##HC##(Handle)
#define USERTABLE_HC_trigger(HC)            USERTABLE_##HC##(Handle)
#define USERTABLE_HC_triggercondition(HC)   USERTABLE_##HC##(Handle)
#define USERTABLE_HC_triggeraction(HC)      USERTABLE_##HC##(Handle)
#define USERTABLE_HC_event(HC)              USERTABLE_##HC##(Handle)
#define USERTABLE_HC_force(HC)              USERTABLE_##HC##(Handle)
#define USERTABLE_HC_group(HC)              USERTABLE_##HC##(Handle)
#define USERTABLE_HC_location(HC)           USERTABLE_##HC##(Handle)
#define USERTABLE_HC_rect(HC)               USERTABLE_##HC##(Handle)
#define USERTABLE_HC_boolexpr(HC)           USERTABLE_##HC##(Handle)
#define USERTABLE_HC_sound(HC)              USERTABLE_##HC##(Handle)
#define USERTABLE_HC_effect(HC)             USERTABLE_##HC##(Handle)
#define USERTABLE_HC_unitpool(HC)           USERTABLE_##HC##(Handle)
#define USERTABLE_HC_itempool(HC)           USERTABLE_##HC##(Handle)
#define USERTABLE_HC_quest(HC)              USERTABLE_##HC##(Handle)
#define USERTABLE_HC_questitem(HC)          USERTABLE_##HC##(Handle)
#define USERTABLE_HC_defeatcondition(HC)    USERTABLE_##HC##(Handle)
#define USERTABLE_HC_timerdialog(HC)        USERTABLE_##HC##(Handle)
#define USERTABLE_HC_leaderboard(HC)        USERTABLE_##HC##(Handle)
#define USERTABLE_HC_multiboard(HC)         USERTABLE_##HC##(Handle)
#define USERTABLE_HC_multiboarditem(HC)     USERTABLE_##HC##(Handle)
#define USERTABLE_HC_trackable(HC)          USERTABLE_##HC##(Handle)
#define USERTABLE_HC_dialog(HC)             USERTABLE_##HC##(Handle)
#define USERTABLE_HC_button(HC)             USERTABLE_##HC##(Handle)
#define USERTABLE_HC_texttag(HC)            USERTABLE_##HC##(Handle)
#define USERTABLE_HC_lightning(HC)          USERTABLE_##HC##(Handle)
#define USERTABLE_HC_image(HC)              USERTABLE_##HC##(Handle)
#define USERTABLE_HC_ubersplat(HC)          USERTABLE_##HC##(Handle)
#define USERTABLE_HC_region(HC)             USERTABLE_##HC##(Handle)
#define USERTABLE_HC_fogstate(HC)           USERTABLE_##HC##(Handle)
#define USERTABLE_HC_fogmodifier(HC)        USERTABLE_##HC##(Handle)
#define USERTABLE_HC_agent(HC)              USERTABLE_##HC##(Handle)
#define USERTABLE_HC_hashtable(HC)          USERTABLE_##HC##(Handle)

/*
    哈希表 Set && Get
    Example:
    save(type, hashtable, integer, integer, type_value)     [type(integer, real, boolean, string, handle_type)]
    load(type, hashtable, integer, integer) ->type_value    [type(integer, real, boolean, string, handle_type)]
    描述:
    save(integer, XWHT, table, key, value)	在哈希表XWHT里面的table索引内的key索引里面储存integer类型的value值
    load(integer, XWHT, table, key)		    从哈希表XWHT里面的table索引内的key索引里面提取integer类型的数值
*/
#define save(Type, Hashable, ParentKey, ChildKey, Value)    USERTABLE_##Type##(SET)(Hashable, ParentKey, ChildKey, USERTABLE_J2I(Type, Value))
#define load(Type, Hashable, ParentKey, ChildKey)           USERTABLE_I2J(Type, USERTABLE_##Type##(GET)(Hashable, ParentKey, ChildKey))

#define USERTABLE_HTSET(Type)                   Save##Type
#define USERTABLE_HTGET(Type)                   Load##Type

#define USERTABLE_Gamer(SG)                     USERTABLE_HT##SG##(Integer)
#define USERTABLE_Dialog(SG)                    USERTABLE_HT##SG##(Integer)
#define USERTABLE_Effect(SG)                    USERTABLE_HT##SG##(Integer)
#define USERTABLE_Game(SG)                      USERTABLE_HT##SG##(Integer)
#define USERTABLE_Group(SG)                     USERTABLE_HT##SG##(Integer)
#define USERTABLE_Item(SG)                      USERTABLE_HT##SG##(Integer)
#define USERTABLE_Unit(SG)                      USERTABLE_HT##SG##(Integer)
#define USERTABLE_Panel(SG)                     USERTABLE_HT##SG##(Integer)
#define USERTABLE_Point(SG)                     USERTABLE_HT##SG##(Integer)

#define USERTABLE_int(SG)                       USERTABLE_HT##SG##(Integer)
#define USERTABLE_bool(SG)                      USERTABLE_HT##SG##(Boolean)
#define USERTABLE_integer(SG)                   USERTABLE_HT##SG##(Integer)
#define USERTABLE_real(SG)                      USERTABLE_HT##SG##(Real)
#define USERTABLE_boolean(SG)                   USERTABLE_HT##SG##(Boolean)
#define USERTABLE_string(SG)                    USERTABLE_HT##SG##(Str)
#define USERTABLE_player(SG)                    USERTABLE_HT##SG##(PlayerHandle)
#define USERTABLE_widget(SG)                    USERTABLE_HT##SG##(WidgetHandle)
#define USERTABLE_destructable(SG)              USERTABLE_HT##SG##(DestructableHandle)
#define USERTABLE_item(SG)                      USERTABLE_HT##SG##(ItemHandle)
#define USERTABLE_unit(SG)                      USERTABLE_HT##SG##(UnitHandle)
#define USERTABLE_ability(SG)                   USERTABLE_HT##SG##(AbilityHandle)
#define USERTABLE_timer(SG)                     USERTABLE_HT##SG##(TimerHandle)
#define USERTABLE_trigger(SG)                   USERTABLE_HT##SG##(TriggerHandle)
#define USERTABLE_triggercondition(SG)          USERTABLE_HT##SG##(TriggerConditionHandle)
#define USERTABLE_triggeraction(SG)             USERTABLE_HT##SG##(TriggerActionHandle)
#define USERTABLE_event(SG)                     USERTABLE_HT##SG##(TriggerEventHandle)
#define USERTABLE_force(SG)                     USERTABLE_HT##SG##(ForceHandle)
#define USERTABLE_group(SG)                     USERTABLE_HT##SG##(GroupHandle)
#define USERTABLE_location(SG)                  USERTABLE_HT##SG##(LocationHandle)
#define USERTABLE_rect(SG)                      USERTABLE_HT##SG##(RectHandle)
#define USERTABLE_boolexpr(SG)                  USERTABLE_HT##SG##(BooleanExprHandle)
#define USERTABLE_sound(SG)                     USERTABLE_HT##SG##(SoundHandle)
#define USERTABLE_effect(SG)                    USERTABLE_HT##SG##(EffectHandle)
#define USERTABLE_unitpool(SG)                  USERTABLE_HT##SG##(UnitpoolHandle)
#define USERTABLE_itempool(SG)                  USERTABLE_HT##SG##(ItemPoolHandle)
#define USERTABLE_quest(SG)                     USERTABLE_HT##SG##(QuestHandle)
#define USERTABLE_questitem(SG)                 USERTABLE_HT##SG##(QuestItemHandle)
#define USERTABLE_defeatcondition(SG)           USERTABLE_HT##SG##(DefeatConditionHandle)
#define USERTABLE_timerdialog(SG)               USERTABLE_HT##SG##(TimerDialogHandle)
#define USERTABLE_leaderboard(SG)               USERTABLE_HT##SG##(LeaderboardHandle)
#define USERTABLE_multiboard(SG)                USERTABLE_HT##SG##(MultiboardHandle)
#define USERTABLE_multiboarditem(SG)            USERTABLE_HT##SG##(MultiboardItemHandle)
#define USERTABLE_trackable(SG)                 USERTABLE_HT##SG##(TrackableHandle)
#define USERTABLE_dialog(SG)                    USERTABLE_HT##SG##(DialogHandle)
#define USERTABLE_button(SG)                    USERTABLE_HT##SG##(ButtonHandle)
#define USERTABLE_texttag(SG)                   USERTABLE_HT##SG##(TextTagHandle)
#define USERTABLE_lightning(SG)                 USERTABLE_HT##SG##(LightningHandle)
#define USERTABLE_image(SG)                     USERTABLE_HT##SG##(ImageHandle)
#define USERTABLE_ubersplat(SG)                 USERTABLE_HT##SG##(UbersplatHandle)
#define USERTABLE_region(SG)                    USERTABLE_HT##SG##(RegionHandle)
#define USERTABLE_fogstate(SG)                  USERTABLE_HT##SG##(FogStateHandle)
#define USERTABLE_fogmodifier(SG)               USERTABLE_HT##SG##(FogModifierHandle)
#define USERTABLE_agent(SG)                     USERTABLE_HT##SG##(AgentHandle)
#define USERTABLE_hashtable(SG)                 USERTABLE_HT##SG##(HashtableHandle)

/*
    自定义值功能
    Example:
    userClearTable(table_type, table)
    userClear(table_type, table, value_type, attribute)
    userHas(table_type, table, value_type, attribute)
    userSet(table_type, table, value_type, attribute, value)
    userGet(table_type, table, value_type, attribute)
    描述:
    userClearTable(string, "进攻系统")		                清空字符串"进攻系统"里面绑定的所有数据
    userClear(string, "进攻系统", integer, "刷怪数量")	    清空字符串"进攻系统"里面的整数属性 属性名为 刷怪数量
    userHas(string, "进攻系统", integer, "刷怪数量")	    判断字符串"进攻系统"是否拥有整数属性 属性名为 刷怪类型
    userSet(string, "进攻系统", integer, "刷怪数量", 25)	往字符串"进攻系统"里面储存一个整数属性 属性名为 刷怪数量 储存值为25
    userGet(string, "进攻系统", integer, "刷怪数量")	    从字符串"进攻系统"里面提取一个整数属性 属性名为 刷怪数量
*/
#define USERTABLE_USDT                                              USDT

#define userClearTable(table_type, table)                           clearTable(USERTABLE_USDT, A2I(table_type, table))
#define userClear(table_type, table, value_type, attribute)         clearHash(value_type, USERTABLE_USDT, A2I(table_type, table),  <?= StringHash(attribute) ?>)
#define userHas(table_type, table, value_type, attribute)           hasHash(value_type, USERTABLE_USDT, A2I(table_type, table),  <?= StringHash(attribute) ?>)
#define userSet(table_type, table, value_type, attribute, value)    save(value_type, USERTABLE_USDT, A2I(table_type, table), <?= StringHash(attribute) ?>, value)
#define userGet(table_type, table, value_type, attribute)           load(value_type, USERTABLE_USDT, A2I(table_type, table), <?= StringHash(attribute) ?>)

#endif
