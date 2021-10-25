// // 框架
// 宏常量和宏语法糖
// 初始化载入库
<? local slk = require 'slk' ?>
// frame
// 宏函数
// 预处理函数
<?
    -- 创建一个Buff物编[含技能和魔法效果][Buff名字，特效绑定路径，特效绑定附加节点，Buff提示，Buff扩展提示，移速，攻速][移速和攻速可负可正，1为100%]
    function createBuff(Name, Effect, Attach, Icon, Tip, Discription, Speed, Aspect)
        -- 技能
        local obj_ability = slk.ability.Aasl:new(Name)
        obj_ability.Name = Name
        obj_ability.TargetArt = Effect
        obj_ability.Targetattach = Attach
        obj_ability.DataA1 = tonumber(Speed)
        obj_ability.DataB1 = tonumber(Aspect)
        obj_ability.targs1 = 'self'
        -- 魔法效果
        local obj_buff = slk.buff.BHbz:new(Name)
        obj_buff.Buffart = Icon
        obj_buff.EditorName = Name
        obj_buff.Bufftip = Tip
        obj_buff.Buffubertip = Discription
        -- 绑定
        obj_ability.BuffID1 = obj_buff:get_id()
        --[[
            通过userGet(string, "毒箭Buff", integer, "abId") -> 获取Name为毒箭Buff的技能ID
            通过userGet(string, "毒箭Buff", integer, "buffId") -> 获取Name为毒箭Buff的魔法效果ID
        ]]
        ?>
        userSet(string, "<?= Name ?>", integer, "abId", '<?= obj_ability:get_id() ?>');
        userSet(string, "<?= Name ?>", integer, "buffId", '<?= obj_buff:get_id() ?>');
        <?
    end
    MagicPassiveBool = false
    -- 创建一个咆哮技能的被动模版
    function createPassive(Table)
        local obj_ability = slk.ability.ANbr:new(Table.Name)
        obj_ability.Name = Table.Name
        -- 自定义数据
        obj_ability.Tip = Table.Tip
        obj_ability.Ubertip = Table.Ubertip
        obj_ability.Art = Table.Art
        -- 必备数据
        obj_ability.DataA1 = 0.00
        obj_ability.DataG1 = 1
        obj_ability.Animnames = ''
        obj_ability.CasterArt = ''
        obj_ability.hero = 0
        obj_ability.race = 'orc'
        obj_ability.levels = 1
        obj_ability.Cool1 = 0.00
        obj_ability.targs1 = 'none'
        obj_ability.Dur1 = 0.001
        obj_ability.HeroDur1 = 0.001
        obj_ability.Cost1 = 0
        obj_ability.Area1 = 0.00
        --[[
            接口使用方法:
            createPassive{
                Name = '此处是WE上面显示的名字及储存AI所使用的名字索引';
                Tip = '此处是游戏上面显示的名字';
                Ubertip = '此处是游戏上面显示的描述';
                Art = '此处是游戏内图标路径';
            }
        ]]
        -- 此处为创建通魔模版来辅助用的
        if not MagicPassiveBool then
            MagicPassiveBool = true
            local obj_magic = slk.ability.ANcl:new('通魔-战争咆哮')
            obj_ability.Name = '通魔-战争咆哮'
            obj_magic.DataF1 = 'battleroar'
            obj_magic.DataA1 = 0.00
            obj_magic.DataE1 = 0
            obj_magic.hero = 0
            obj_magic.levels = 1
        end
        ?>
        userSet(string, "<?= Table.Name ?>", integer, "abId", '<?= obj_ability:get_id() ?>');
        <?
    end
?>
// Gamer
// 聊天频道
// Damage
//Frame 瞄点 
// Frame 锚点位置
// Unit
// 移动类型
// 属性类型
// BuffId 生命周期用的
// 单位朝向用的bone参数
// collisableId 碰撞类型
// 整数字段
// 实数字段
// 字符串字段
// Item
// Game
// 游戏速度
// 地图参数
// #define MAP_USE_HANDICAPS                   ConvertMapFlag(8)       // 生命障碍
// #define MAP_OBSERVERS                       ConvertMapFlag(16)      // 允许观看者
// #define MAP_OBSERVERS_ON_DEATH              ConvertMapFlag(32)      // 失败时作为观看者
// #define MAP_LOCK_RESOURCE_TRADING           ConvertMapFlag(256)     // 锁定资源交易
// #define MAP_RESOURCE_TRADING_ALLIES_ONLY    ConvertMapFlag(512)     // 限制盟友资源交易
// #define MAP_LOCK_ALLIANCE_CHANGES           ConvertMapFlag(1024)    // 锁定联盟设置
// #define MAP_ALLIANCE_CHANGES_HIDDEN         ConvertMapFlag(2048)    // 隐藏联盟设置
// #define MAP_RELOADED                        ConvertMapFlag(8192*64) // 地图转换
// #define MAP_RANDOM_HERO                     ConvertMapFlag(8192*16) // 使用随机英雄
// #define MAP_RANDOM_RACES                    ConvertMapFlag(8192*32) // 使用随机种族
// #define MAP_FOG_HIDE_TERRAIN                ConvertMapFlag(1)       // 隐藏地形
// #define MAP_FOG_MAP_EXPLORED                ConvertMapFlag(2)       // 可见地形
// #define MAP_FOG_ALWAYS_VISIBLE              ConvertMapFlag(4)       // 总是可见

// 结构体
// 原生

// 结构体
// 原生
// 结构体
// 原生

// 结构体
// 原生


// JAPI && DzAPI
library JAPI
    // AI
    native UnitAlive takes unit u returns boolean
    // Unit
    native EXSetUnitFacing takes unit u, real angle returns nothing
	native EXPauseUnit takes unit u, boolean flag returns nothing
	native EXSetUnitCollisionType takes boolean enable, unit u, integer t returns nothing
	native EXSetUnitMoveType takes unit u, integer t returns nothing
    // Ability
    native EXGetUnitAbility takes unit u, integer abilcode returns ability
	native EXGetUnitAbilityByIndex takes unit u, integer index returns ability
	native EXGetAbilityId takes ability abil returns integer
	native EXGetAbilityState takes ability abil, integer state_type returns real
	native EXSetAbilityState takes ability abil, integer state_type, real value returns boolean
	native EXGetAbilityDataReal takes ability abil, integer level, integer data_type returns real
	native EXSetAbilityDataReal takes ability abil, integer level, integer data_type, real value returns boolean
	native EXGetAbilityDataInteger takes ability abil, integer level, integer data_type returns integer
	native EXSetAbilityDataInteger takes ability abil, integer level, integer data_type, integer value returns boolean
	native EXGetAbilityDataString takes ability abil, integer level, integer data_type returns string
	native EXSetAbilityDataString takes ability abil, integer level, integer data_type, string value returns boolean
    native EXSetAbilityAEmeDataA takes ability abil, integer unitid returns boolean
    // Item
    native EXGetItemDataString takes integer itemcode, integer data_type returns string
    native EXSetItemDataString takes integer itemcode, integer data_type, string value returns boolean
    // Buff
    // native EXGetBuffDataString     takes integer buffcode, integer data_type returns string
	// native EXSetBuffDataString     takes integer buffcode, integer data_type, string value returns boolean
    // Damage
    native EXGetEventDamageData takes integer edd_type returns integer
	native EXSetEventDamage takes real amount returns boolean
    // Effect
    native EXGetEffectX takes effect e returns real
	native EXGetEffectY takes effect e returns real
	native EXGetEffectZ takes effect e returns real
	native EXSetEffectXY takes effect e, real x, real y returns nothing
	native EXSetEffectZ takes effect e, real z returns nothing
	native EXGetEffectSize takes effect e returns real
	native EXSetEffectSize takes effect e, real size returns nothing
	native EXEffectMatRotateX takes effect e, real angle returns nothing
	native EXEffectMatRotateY takes effect e, real angle returns nothing
	native EXEffectMatRotateZ takes effect e, real angle returns nothing
	native EXEffectMatScale takes effect e, real x, real y, real z returns nothing
	native EXEffectMatReset takes effect e returns nothing
	native EXSetEffectSpeed takes effect e, real speed returns nothing
    // Other
    native EXDisplayChat takes player p, integer chat_recipient, string message returns nothing
	native EXExecuteScript takes string script returns string
	native EXBlendButtonIcon takes string a, string b, string c returns boolean
endlibrary
library DzAPI
    // Platform
    native DzAPI_Map_SaveServerValue takes player whichPlayer, string key, string value returns boolean
	native DzAPI_Map_GetServerValue takes player whichPlayer, string key returns string
	native DzAPI_Map_Ladder_SetStat takes player whichPlayer, string key, string value returns nothing
	native DzAPI_Map_IsRPGLadder takes nothing returns boolean
	native DzAPI_Map_GetGameStartTime takes nothing returns integer
	native DzAPI_Map_Stat_SetStat takes player whichPlayer, string key, string value returns nothing
	native DzAPI_Map_GetMatchType takes nothing returns integer
	native DzAPI_Map_Ladder_SetPlayerStat takes player whichPlayer, string key, string value returns nothing
	native DzAPI_Map_GetServerValueErrorCode takes player whichPlayer returns integer
	native DzAPI_Map_GetLadderLevel takes player whichPlayer returns integer
	native DzAPI_Map_IsRedVIP takes player whichPlayer returns boolean
	native DzAPI_Map_IsBlueVIP takes player whichPlayer returns boolean
	native DzAPI_Map_GetLadderRank takes player whichPlayer returns integer
	native DzAPI_Map_GetMapLevelRank takes player whichPlayer returns integer
	native DzAPI_Map_GetGuildName takes player whichPlayer returns string
	native DzAPI_Map_GetGuildRole takes player whichPlayer returns integer
	native DzAPI_Map_IsRPGLobby takes nothing returns boolean
	native DzAPI_Map_GetMapLevel takes player whichPlayer returns integer
	native DzAPI_Map_MissionComplete takes player whichPlayer, string key, string value returns nothing
	native DzAPI_Map_GetActivityData takes nothing returns string
	native DzAPI_Map_GetMapConfig takes string key returns string
	native DzAPI_Map_HasMallItem takes player whichPlayer, string key returns boolean
	native DzAPI_Map_SavePublicArchive takes player whichPlayer, string key, string value returns boolean
	native DzAPI_Map_GetPublicArchive takes player whichPlayer, string key returns string
	native DzAPI_Map_UseConsumablesItem takes player whichPlayer, string key returns nothing
	native DzAPI_Map_OrpgTrigger takes player whichPlayer, string key returns nothing
	native DzAPI_Map_GetServerArchiveDrop takes player whichPlayer, string key returns string
	native DzAPI_Map_GetServerArchiveEquip takes player whichPlayer, string key returns integer
	native RequestExtraIntegerData takes integer dataType, player whichPlayer, string param1, string param2, boolean param3, integer param4, integer param5, integer param6 returns integer
	native RequestExtraBooleanData takes integer dataType, player whichPlayer, string param1, string param2, boolean param3, integer param4, integer param5, integer param6 returns boolean
	native RequestExtraStringData takes integer dataType, player whichPlayer, string param1, string param2, boolean param3, integer param4, integer param5, integer param6 returns string
	native RequestExtraRealData takes integer dataType, player whichPlayer, string param1, string param2, boolean param3, integer param4, integer param5, integer param6 returns real
	native DzAPI_Map_GetPlatformVIP takes player whichPlayer returns integer
    // Hardware
    native DzGetMouseTerrainX takes nothing returns real
    native DzGetMouseTerrainY takes nothing returns real
    native DzGetMouseTerrainZ takes nothing returns real
    native DzIsMouseOverUI takes nothing returns boolean
    native DzGetMouseX takes nothing returns integer
    native DzGetMouseY takes nothing returns integer
    native DzGetMouseXRelative takes nothing returns integer
    native DzGetMouseYRelative takes nothing returns integer
    native DzSetMousePos takes integer x, integer y returns nothing
    native DzTriggerRegisterMouseEvent takes trigger trig, integer btn, integer status, boolean sync, string func returns nothing
    native DzTriggerRegisterMouseEventByCode takes trigger trig, integer btn, integer status, boolean sync, code funcHandle returns nothing
    native DzTriggerRegisterKeyEvent takes trigger trig, integer key, integer status, boolean sync, string func returns nothing
    native DzTriggerRegisterKeyEventByCode takes trigger trig, integer key, integer status, boolean sync, code funcHandle returns nothing
    native DzTriggerRegisterMouseWheelEvent takes trigger trig, boolean sync, string func returns nothing
    native DzTriggerRegisterMouseWheelEventByCode takes trigger trig, boolean sync, code funcHandle returns nothing
    native DzTriggerRegisterMouseMoveEvent takes trigger trig, boolean sync, string func returns nothing
    native DzTriggerRegisterMouseMoveEventByCode takes trigger trig, boolean sync, code funcHandle returns nothing
    native DzGetTriggerKey takes nothing returns integer
    native DzGetWheelDelta takes nothing returns integer
    native DzIsKeyDown takes integer iKey returns boolean
    native DzGetTriggerKeyPlayer takes nothing returns player
    native DzGetWindowWidth takes nothing returns integer
    native DzGetWindowHeight takes nothing returns integer
    native DzGetWindowX takes nothing returns integer
    native DzGetWindowY takes nothing returns integer
    native DzTriggerRegisterWindowResizeEvent takes trigger trig, boolean sync, string func returns nothing
    native DzTriggerRegisterWindowResizeEventByCode takes trigger trig, boolean sync, code funcHandle returns nothing
    native DzIsWindowActive takes nothing returns boolean
    // Plus
    native DzDestructablePosition takes destructable d, real x, real y returns nothing
    native DzSetUnitPosition takes unit whichUnit, real x, real y returns nothing
    native DzExecuteFunc takes string funcName returns nothing
    native DzGetUnitUnderMouse takes nothing returns unit
    native DzSetUnitTexture takes unit whichUnit, string path, integer texId returns nothing
    native DzSetMemory takes integer address, real value returns nothing
    native DzSetUnitID takes unit whichUnit, integer id returns nothing
    native DzSetUnitModel takes unit whichUnit, string path returns nothing
    native DzSetWar3MapMap takes string map returns nothing
    native DzGetLocale takes nothing returns string
    native DzGetUnitNeededXP takes unit whichUnit, integer level returns integer
    // Sync
    native DzTriggerRegisterSyncData takes trigger trig, string prefix, boolean server returns nothing
    native DzSyncData takes string prefix, string data returns nothing
    native DzGetTriggerSyncData takes nothing returns string
    native DzGetTriggerSyncPlayer takes nothing returns player
    // Gui
    native DzFrameHideInterface takes nothing returns nothing
    native DzFrameEditBlackBorders takes real upperHeight, real bottomHeight returns nothing
    native DzFrameGetPortrait takes nothing returns integer
    native DzFrameGetMinimap takes nothing returns integer
    native DzFrameGetCommandBarButton takes integer row, integer column returns integer
    native DzFrameGetHeroBarButton takes integer buttonId returns integer
    native DzFrameGetHeroHPBar takes integer buttonId returns integer
    native DzFrameGetHeroManaBar takes integer buttonId returns integer
    native DzFrameGetItemBarButton takes integer buttonId returns integer
    native DzFrameGetMinimapButton takes integer buttonId returns integer
    native DzFrameGetUpperButtonBarButton takes integer buttonId returns integer
    native DzFrameGetTooltip takes nothing returns integer
    native DzFrameGetChatMessage takes nothing returns integer
    native DzFrameGetUnitMessage takes nothing returns integer
    native DzFrameGetTopMessage takes nothing returns integer
    native DzGetColor takes integer r, integer g, integer b, integer a returns integer
    native DzFrameSetUpdateCallback takes string func returns nothing
    native DzFrameSetUpdateCallbackByCode takes code funcHandle returns nothing
    native DzFrameShow takes integer frame, boolean enable returns nothing
    native DzCreateFrame takes string frame, integer parent, integer id returns integer
    native DzCreateSimpleFrame takes string frame, integer parent, integer id returns integer
    native DzDestroyFrame takes integer frame returns nothing
    native DzLoadToc takes string fileName returns nothing
    native DzFrameSetPoint takes integer frame, integer point, integer relativeFrame, integer relativePoint, real x, real y returns nothing
    native DzFrameSetAbsolutePoint takes integer frame, integer point, real x, real y returns nothing
    native DzFrameClearAllPoints takes integer frame returns nothing
    native DzFrameSetEnable takes integer name, boolean enable returns nothing
    native DzFrameSetScript takes integer frame, integer eventId, string func, boolean sync returns nothing
    native DzFrameSetScriptByCode takes integer frame, integer eventId, code funcHandle, boolean sync returns nothing
    native DzGetTriggerUIEventPlayer takes nothing returns player
    native DzGetTriggerUIEventFrame takes nothing returns integer
    native DzFrameFindByName takes string name, integer id returns integer
    native DzSimpleFrameFindByName takes string name, integer id returns integer
    native DzSimpleFontStringFindByName takes string name, integer id returns integer
    native DzSimpleTextureFindByName takes string name, integer id returns integer
    native DzGetGameUI takes nothing returns integer
    native DzClickFrame takes integer frame returns nothing
    native DzSetCustomFovFix takes real value returns nothing
    native DzEnableWideScreen takes boolean enable returns nothing
    native DzFrameSetText takes integer frame, string text returns nothing
    native DzFrameGetText takes integer frame returns string
    native DzFrameSetTextSizeLimit takes integer frame, integer size returns nothing
    native DzFrameGetTextSizeLimit takes integer frame returns integer
    native DzFrameSetTextColor takes integer frame, integer color returns nothing
    native DzGetMouseFocus takes nothing returns integer
    native DzFrameSetAllPoints takes integer frame, integer relativeFrame returns boolean
    native DzFrameSetFocus takes integer frame, boolean enable returns boolean
    native DzFrameSetModel takes integer frame, string modelFile, integer modelType, integer flag returns nothing
    native DzFrameGetEnable takes integer frame returns boolean
    native DzFrameSetAlpha takes integer frame, integer alpha returns nothing
    native DzFrameGetAlpha takes integer frame returns integer
    native DzFrameSetAnimate takes integer frame, integer animId, boolean autocast returns nothing
    native DzFrameSetAnimateOffset takes integer frame, real offset returns nothing
    native DzFrameSetTexture takes integer frame, string texture, integer flag returns nothing
    native DzFrameSetScale takes integer frame, real scale returns nothing
    native DzFrameSetTooltip takes integer frame, integer tooltip returns nothing
    native DzFrameCageMouse takes integer frame, boolean enable returns nothing
    native DzFrameGetValue takes integer frame returns real
    native DzFrameSetMinMaxValue takes integer frame, real minValue, real maxValue returns nothing
    native DzFrameSetStepValue takes integer frame, real step returns nothing
    native DzFrameSetValue takes integer frame, real value returns nothing
    native DzFrameSetSize takes integer frame, real w, real h returns nothing
    native DzCreateFrameByTagName takes string frameType, string name, integer parent, string template, integer id returns integer
    native DzFrameSetVertexColor takes integer frame, integer color returns nothing
    native DzOriginalUIAutoResetPoint takes boolean enable returns nothing
    native DzFrameSetPriority takes integer frame, integer priority returns nothing
    native DzFrameSetParent takes integer frame, integer parent returns nothing
    native DzFrameGetHeight takes integer frame returns real
    native DzFrameSetFont takes integer frame, string fileName, real height, integer flag returns nothing
    native DzFrameGetParent takes integer frame returns integer
    native DzFrameSetTextAlignment takes integer frame, integer align returns nothing
    native DzFrameGetName takes integer frame returns string
endlibrary
// Library
library Table 
    
globals
    private integer less = 0 //Index generation for TableArrays (below 0).
private integer more = 8190 //Index generation for Tables.
//Configure it if you use more than 8190 "key" variables in your map (this will never happen though).

    private hashtable ht = InitHashtable()
    private key sizeK
    private key listK
endglobals
    
private struct dex extends array
    static method operator size takes nothing returns Table
        return sizeK
    endmethod
    static method operator list takes nothing returns Table
        return listK
    endmethod
endstruct
    
private struct handles extends array
    method has takes integer key returns boolean
        return HaveSavedHandle(ht, this, key)
    endmethod
    method remove takes integer key returns nothing
        call RemoveSavedHandle(ht, this, key)
    endmethod
endstruct
    
private struct agents extends array
    method operator []= takes integer key, agent value returns nothing
        call SaveAgentHandle(ht, this, key, value)
    endmethod
endstruct
    
//! textmacro NEW_ARRAY_BASIC takes SUPER, FUNC, TYPE
private struct $TYPE$s extends array
    method operator [] takes integer key returns $TYPE$
        return Load$FUNC$(ht, this, key)
    endmethod
    method operator []= takes integer key, $TYPE$ value returns nothing
        call Save$FUNC$(ht, this, key, value)
    endmethod
    method has takes integer key returns boolean
        return HaveSaved$SUPER$(ht, this, key)
    endmethod
    method remove takes integer key returns nothing
        call RemoveSaved$SUPER$(ht, this, key)
    endmethod
endstruct
private module $TYPE$m
    method operator $TYPE$ takes nothing returns $TYPE$s
        return this
    endmethod
endmodule
//! endtextmacro
    
//! textmacro NEW_ARRAY takes FUNC, TYPE
private struct $TYPE$s extends array
    method operator [] takes integer key returns $TYPE$
        return Load$FUNC$Handle(ht, this, key)
    endmethod
    method operator []= takes integer key, $TYPE$ value returns nothing
        call Save$FUNC$Handle(ht, this, key, value)
    endmethod
    method has takes integer key returns boolean
        return HaveSavedHandle(ht, this, key)
    endmethod
    method remove takes integer key returns nothing
        call RemoveSavedHandle(ht, this, key)
    endmethod
endstruct
private module $TYPE$m
    method operator $TYPE$ takes nothing returns $TYPE$s
        return this
    endmethod
endmodule
//! endtextmacro
    
//Run these textmacros to include the entire hashtable API as wrappers.
//Don't be intimidated by the number of macros - Vexorian's map optimizer is
//supposed to kill functions which inline (all of these functions inline).
//! runtextmacro NEW_ARRAY_BASIC("Real", "Real", "real")
//! runtextmacro NEW_ARRAY_BASIC("Boolean", "Boolean", "boolean")
//! runtextmacro NEW_ARRAY_BASIC("String", "Str", "string")
//New textmacro to allow table.integer[] syntax for compatibility with textmacros that might desire it.
//! runtextmacro NEW_ARRAY_BASIC("Integer", "Integer", "integer")
    
//! runtextmacro NEW_ARRAY("Player", "player")
//! runtextmacro NEW_ARRAY("Widget", "widget")
//! runtextmacro NEW_ARRAY("Destructable", "destructable")
//! runtextmacro NEW_ARRAY("Item", "item")
//! runtextmacro NEW_ARRAY("Unit", "unit")
//! runtextmacro NEW_ARRAY("Ability", "ability")
//! runtextmacro NEW_ARRAY("Timer", "timer")
//! runtextmacro NEW_ARRAY("Trigger", "trigger")
//! runtextmacro NEW_ARRAY("TriggerCondition", "triggercondition")
//! runtextmacro NEW_ARRAY("TriggerAction", "triggeraction")
//! runtextmacro NEW_ARRAY("TriggerEvent", "event")
//! runtextmacro NEW_ARRAY("Force", "force")
//! runtextmacro NEW_ARRAY("Group", "group")
//! runtextmacro NEW_ARRAY("Location", "location")
//! runtextmacro NEW_ARRAY("Rect", "rect")
//! runtextmacro NEW_ARRAY("BooleanExpr", "boolexpr")
//! runtextmacro NEW_ARRAY("Sound", "sound")
//! runtextmacro NEW_ARRAY("Effect", "effect")
//! runtextmacro NEW_ARRAY("UnitPool", "unitpool")
//! runtextmacro NEW_ARRAY("ItemPool", "itempool")
//! runtextmacro NEW_ARRAY("Quest", "quest")
//! runtextmacro NEW_ARRAY("QuestItem", "questitem")
//! runtextmacro NEW_ARRAY("DefeatCondition", "defeatcondition")
//! runtextmacro NEW_ARRAY("TimerDialog", "timerdialog")
//! runtextmacro NEW_ARRAY("Leaderboard", "leaderboard")
//! runtextmacro NEW_ARRAY("Multiboard", "multiboard")
//! runtextmacro NEW_ARRAY("MultiboardItem", "multiboarditem")
//! runtextmacro NEW_ARRAY("Trackable", "trackable")
//! runtextmacro NEW_ARRAY("Dialog", "dialog")
//! runtextmacro NEW_ARRAY("Button", "button")
//! runtextmacro NEW_ARRAY("TextTag", "texttag")
//! runtextmacro NEW_ARRAY("Lightning", "lightning")
//! runtextmacro NEW_ARRAY("Image", "image")
//! runtextmacro NEW_ARRAY("Ubersplat", "ubersplat")
//! runtextmacro NEW_ARRAY("Region", "region")
//! runtextmacro NEW_ARRAY("FogState", "fogstate")
//! runtextmacro NEW_ARRAY("FogModifier", "fogmodifier")
//! runtextmacro NEW_ARRAY("Hashtable", "hashtable")
    
struct Table extends array
    
    // Implement modules for intuitive syntax (tb.handle; tb.unit; etc.)
    implement realm
    implement integerm
    implement booleanm
    implement stringm
    implement playerm
    implement widgetm
    implement destructablem
    implement itemm
    implement unitm
    implement abilitym
    implement timerm
    implement triggerm
    implement triggerconditionm
    implement triggeractionm
    implement eventm
    implement forcem
    implement groupm
    implement locationm
    implement rectm
    implement boolexprm
    implement soundm
    implement effectm
    implement unitpoolm
    implement itempoolm
    implement questm
    implement questitemm
    implement defeatconditionm
    implement timerdialogm
    implement leaderboardm
    implement multiboardm
    implement multiboarditemm
    implement trackablem
    implement dialogm
    implement buttonm
    implement texttagm
    implement lightningm
    implement imagem
    implement ubersplatm
    implement regionm
    implement fogstatem
    implement fogmodifierm
    implement hashtablem
    
    method operator handle takes nothing returns handles
        return this
    endmethod
    
    method operator agent takes nothing returns agents
        return this
    endmethod
    
    //set this = tb[GetSpellAbilityId()]
    method operator [] takes integer key returns Table
        return LoadInteger(ht, this, key) //return this.integer[key]
endmethod
    
    //set tb[389034] = 8192
    method operator []= takes integer key, Table tb returns nothing
        call SaveInteger(ht, this, key, tb) //set this.integer[key] = tb
endmethod
    
    //set b = tb.has(2493223)
    method has takes integer key returns boolean
        return HaveSavedInteger(ht, this, key) //return this.integer.has(key)
endmethod
    
    //call tb.remove(294080)
    method remove takes integer key returns nothing
        call RemoveSavedInteger(ht, this, key) //call this.integer.remove(key)
endmethod
    
    //Remove all data from a Table instance
    method flush takes nothing returns nothing
        call FlushChildHashtable(ht, this)
    endmethod
    
    //local Table tb = Table.create()
    static method create takes nothing returns Table
        local Table this = dex.list[0]
        
        if this == 0 then
            set this = more + 1
            set more = this
        else
            set dex.list[0] = dex.list[this]
            call dex.list.remove(this) //Clear hashed memory
endif
        
        debug set dex.list[this] = -1
        return this
    endmethod
    
    // Removes all data from a Table instance and recycles its index.
    //
    // call tb.destroy()
    //
    method destroy takes nothing returns nothing
        debug if dex.list[this] != -1 then
            debug call BJDebugMsg("Table Error: Tried to double-free instance: " + I2S(this))
            debug return
        debug endif
        
        call this.flush()
        
        set dex.list[this] = dex.list[0]
        set dex.list[0] = this
    endmethod
    
    //! runtextmacro optional TABLE_BC_METHODS()
endstruct
    
//! runtextmacro optional TABLE_BC_STRUCTS()
    
struct TableArray extends array
    
    //Returns a new TableArray to do your bidding. Simply use:
    //
    // local TableArray ta = TableArray[array_size]
    //
    static method operator [] takes integer array_size returns TableArray
        local Table tb = dex.size[array_size] //Get the unique recycle list for this array size
local TableArray this = tb[0] //The last-destroyed TableArray that had this array size

        debug if array_size <= 0 then
            debug call BJDebugMsg("TypeError: Invalid specified TableArray size: " + I2S(array_size))
            debug return 0
        debug endif
        
        if this == 0 then
            set this = less - array_size
            set less = this
        else
            set tb[0] = tb[this] //Set the last destroyed to the last-last destroyed
call tb.remove(this) //Clear hashed memory
endif
        
        set dex.size[this] = array_size //This remembers the array size
return this
    endmethod
    
    //Returns the size of the TableArray
    method operator size takes nothing returns integer
        return dex.size[this]
    endmethod
    
    //This magic method enables two-dimensional[array][syntax] for Tables,
    //similar to the two-dimensional utility provided by hashtables them-
    //selves.
    //
    //ta[integer a].unit[integer b] = unit u
    //ta[integer a][integer c] = integer d
    //
    //Inline-friendly when not running in debug mode
    //
    method operator [] takes integer key returns Table
        static if DEBUG_MODE then
            local integer i = this.size
            if i == 0 then
                call BJDebugMsg("IndexError: Tried to get key from invalid TableArray instance: " + I2S(this))
                return 0
            elseif key < 0 or key >= i then
                call BJDebugMsg("IndexError: Tried to get key [" + I2S(key) + "] from outside TableArray bounds: " + I2S(i))
                return 0
            endif
        endif
        return this + key
    endmethod
    
    //Destroys a TableArray without flushing it; I assume you call .flush()
    //if you want it flushed too. This is a public method so that you don't
    //have to loop through all TableArray indices to flush them if you don't
    //need to (ie. if you were flushing all child-keys as you used them).
    //
    method destroy takes nothing returns nothing
        local Table tb = dex.size[this.size]
        
        debug if this.size == 0 then
            debug call BJDebugMsg("TypeError: Tried to destroy an invalid TableArray: " + I2S(this))
            debug return
        debug endif
        
        if tb == 0 then
            //Create a Table to index recycled instances with their array size
            set tb = Table.create()
            set dex.size[this.size] = tb
        endif
        
        call dex.size.remove(this) //Clear the array size from hash memory

        set tb[this] = tb[0]
        set tb[0] = this
    endmethod
    
    private static Table tempTable
    private static integer tempEnd
    
    //Avoids hitting the op limit
    private static method clean takes nothing returns nothing
        local Table tb = .tempTable
        local integer end = tb + 0x1000
        if end < .tempEnd then
            set .tempTable = end
            call ForForce(bj_FORCE_PLAYER[0], function thistype.clean)
        else
            set end = .tempEnd
        endif
        loop
            call tb.flush()
            set tb = tb + 1
            exitwhen tb == end
        endloop
    endmethod
    
    //Flushes the TableArray and also destroys it. Doesn't get any more
    //similar to the FlushParentHashtable native than this.
    //
    method flush takes nothing returns nothing
        debug if this.size == 0 then
            debug call BJDebugMsg("TypeError: Tried to flush an invalid TableArray instance: " + I2S(this))
            debug return
        debug endif
        set .tempTable = this
        set .tempEnd = this + this.size
        call ForForce(bj_FORCE_PLAYER[0], function thistype.clean)
        call this.destroy()
    endmethod
    
endstruct
    
//NEW: Added in Table 4.0. A fairly simple struct but allows you to do more
//than that which was previously possible.
struct HashTable extends array
    //Enables myHash[parentKey][childKey] syntax.
    //Basically, it creates a Table in the place of the parent key if
    //it didn't already get created earlier.
    method operator [] takes integer index returns Table
        local Table t = Table(this)[index]
        if t == 0 then
            set t = Table.create()
            set Table(this)[index] = t //whoops! Forgot that line. I'm out of practice!
endif
        return t
    endmethod
    //You need to call this on each parent key that you used if you
    //intend to destroy the HashTable or simply no longer need that key.
    method remove takes integer index returns nothing
        local Table t = Table(this)[index]
        if t != 0 then
            call t.destroy()
            call Table(this).remove(index)
        endif
    endmethod
    
    //Added in version 4.1
    method has takes integer index returns boolean
        return Table(this).has(index)
    endmethod
    
    //HashTables are just fancy Table indices.
    method destroy takes nothing returns nothing
        call Table(this).destroy()
    endmethod
    
    //Like I said above...
    static method create takes nothing returns thistype
        return Table.create()
    endmethod
endstruct
endlibrary
//! zinc
<?
local obj
local slk = require 'slk'
?>
library Base
{
    public
    {
        hashtable XWHT = InitHashtable(); // 全局哈希表
hashtable XZHT = InitHashtable(); // 全局框架表
hashtable USDT = InitHashtable(); // 自定义值表 真实名字需要查看Table.h里面所定义的文本宏
}
    public
    {
        // or value < 0 return Expect else return value
        function orInteger(integer value, integer Expect) ->integer {
            if (value < 0) {
                return Expect;
            }
            return value;
        }
        // or value < 0. return Expect else return value
        function orReal(real value, real Expect) ->real {
            if (value < 0.) {
                return Expect;
            }
            return value;
        }
    }
    // 坐标结构
    public struct position
    {
        private
        {
            // 地图大小信息
            static real MapMinX = 0.0;
            static real MapMinY = 0.0;
            static real MapMaxX = 0.0;
            static real MapMaxY = 0.0;
            // 初始化
            static method onInit() {
                thistype.MapMinX = GetCameraBoundMinX() - GetCameraMargin(CAMERA_MARGIN_LEFT);
                thistype.MapMinY = GetCameraBoundMinY() - GetCameraMargin(CAMERA_MARGIN_BOTTOM);
                thistype.MapMaxX = GetCameraBoundMaxX() + GetCameraMargin(CAMERA_MARGIN_RIGHT);
                thistype.MapMaxY = GetCameraBoundMaxY() + GetCameraMargin(CAMERA_MARGIN_TOP);
            }
        }
        public
        {
            // 位置成员属性
            real x = 0.0;
            real y = 0.0;
            static method correctX(real x) ->real { return RMinBJ(RMaxBJ(x, thistype.MapMinX), thistype.MapMaxX); } // 修整X坐标
static method correctY(real y) ->real { return RMinBJ(RMaxBJ(y, thistype.MapMinY), thistype.MapMaxY); } // 修整Y坐标
}
    }
    // 万能马甲
    public struct Majia
    {
        public
        {
            static integer Id = 0;
        }
        private
        {
            static method onInit() {
                <?
                -- 万能马甲
                obj = slk.unit.ewsp:new "万能马甲"
                -- 名字
                obj.Name = "万能马甲"
                -- 技能
                obj.abilList = "Avul,Aro1,Aloc"
                -- 魔法释放回复
                obj.castbsw = 0
                -- 最大魔法值
                obj.manaN = 100000
                -- 魔法初始值
                obj.mana0 = 100000
                -- 马甲模型
                obj.file = "XZincFrameModel\\Unit\\Majia\\dummy.mdl"
                -- 占用人口
                obj.fused = 0
                -- 类别
                obj.type = "neutral"
                ?>
                thistype.Id = '<?=obj:get_id()?>';
            }
        }
    }
    public{
        // 生成区域 以X,Y为中心 创建一个长度为long 宽度为wide
        function createRect(real x, real y, real long, real wide) ->rect {
            return Rect( x - long*0.5, y - wide*0.5, x + long*0.5, y + wide*0.5 );
        }
    }
    private function onInit() {
        <?
			function CommandFuncLuaMY(Table)
                local CommandFunc='[CmdMove]'..'\n'
                CommandFunc=CommandFunc..'Art=CommandMove'..'\n'
                CommandFunc=CommandFunc..'Buttonpos='..Table.MoveX..','..Table.MoveY..'\n'
                CommandFunc=CommandFunc..'[CmdAttack]'..'\n'
                CommandFunc=CommandFunc..'Art=CommandAttack'..'\n'
                CommandFunc=CommandFunc..'Buttonpos='..Table.AttackX..','..Table.AttackY..'\n'
                CommandFunc=CommandFunc..'[CmdAttackGround]'..'\n'
                CommandFunc=CommandFunc..'Art=CommandAttackGround'..'\n'
                CommandFunc=CommandFunc..'Buttonpos=3,1'..'\n'
                CommandFunc=CommandFunc..'[CmdBuild]'..'\n'
                CommandFunc=CommandFunc..'Art=CommandBasicStruct'..'\n'
                CommandFunc=CommandFunc..'Buttonpos=0,2'..'\n'
                CommandFunc=CommandFunc..'[CmdBuildHuman]'..'\n'
                CommandFunc=CommandFunc..'Art=CommandBasicStructHuman'..'\n'
                CommandFunc=CommandFunc..'Buttonpos=0,2'..'\n'
                CommandFunc=CommandFunc..'[CmdBuildOrc]'..'\n'
                CommandFunc=CommandFunc..'Art=CommandBasicStructOrc'..'\n'
                CommandFunc=CommandFunc..'Buttonpos=0,2'..'\n'
                CommandFunc=CommandFunc..'[CmdBuildNightElf]'..'\n'
                CommandFunc=CommandFunc..'Art=CommandBasicStructNightElf'..'\n'
                CommandFunc=CommandFunc..'Buttonpos=0,2'..'\n'
                CommandFunc=CommandFunc..'[CmdBuildUndead]'..'\n'
                CommandFunc=CommandFunc..'Art=CommandBasicStructUndead'..'\n'
                CommandFunc=CommandFunc..'Buttonpos=0,2'..'\n'
                CommandFunc=CommandFunc..'[CmdCancel]'..'\n'
                CommandFunc=CommandFunc..'Art=CommandCancel'..'\n'
                CommandFunc=CommandFunc..'ButtonPos=3,2'..'\n'
                CommandFunc=CommandFunc..'[CmdCancelBuild]'..'\n'
                CommandFunc=CommandFunc..'Art=CommandCancel'..'\n'
                CommandFunc=CommandFunc..'ButtonPos=3,2'..'\n'
                CommandFunc=CommandFunc..'[CmdCancelTrain]'..'\n'
                CommandFunc=CommandFunc..'Art=CommandCancel'..'\n'
                CommandFunc=CommandFunc..'ButtonPos=3,2'..'\n'
                CommandFunc=CommandFunc..'[CmdCancelRevive]'..'\n'
                CommandFunc=CommandFunc..'Art=CommandCancel'..'\n'
                CommandFunc=CommandFunc..'ButtonPos=3,2'..'\n'
                CommandFunc=CommandFunc..'[CmdHoldPos]'..'\n'
                CommandFunc=CommandFunc..'Art=CommandHoldPosition'..'\n'
                CommandFunc=CommandFunc..'Buttonpos='..Table.StaticX..','..Table.StaticY..'\n'
                CommandFunc=CommandFunc..'[CmdPatrol]'..'\n'
                CommandFunc=CommandFunc..'Art=CommandPatrol'..'\n'
                CommandFunc=CommandFunc..'Buttonpos='..Table.PatrolX..','..Table.PatrolY..'\n'
                CommandFunc=CommandFunc..'[CmdPurchase]'..'\n'
                CommandFunc=CommandFunc..'Art=CommandPurchase'..'\n'
                CommandFunc=CommandFunc..'Buttonpos=0,0'..'\n'
                CommandFunc=CommandFunc..'[CmdRally]'..'\n'
                CommandFunc=CommandFunc..'Art=CommandRally'..'\n'
                CommandFunc=CommandFunc..'Buttonpos=3,1'..'\n'
                CommandFunc=CommandFunc..'PlacementModel=UI\\Feedback\\RallyPoint\\RallyPoint.mdl'..'\n'
                CommandFunc=CommandFunc..'[CmdSelectSkill]'..'\n'
                CommandFunc=CommandFunc..'Art=CommandNewSkill'..'\n'
                CommandFunc=CommandFunc..'Buttonpos='..Table.StudyX..','..Table.StudyY..'\n'
                CommandFunc=CommandFunc..'[CmdStop]'..'\n'
                CommandFunc=CommandFunc..'Art=CommandStop'..'\n'
                CommandFunc=CommandFunc..'Buttonpos='..Table.StopX..','..Table.StopY..'\n'
                import('Units\\CommandFunc.txt')(CommandFunc)
			end
            local coordinate = {
                -- 移动M 原版 0,0
                MoveX = 0;
                MoveY = -11;
                -- 停止S 原版 1,0
                StopX = 2;
                StopY = 0;
                -- 原地H 原版 2,0
                StaticX = 0;
                StaticY = -11;
                -- 攻击A 原版 3,0
                AttackX = 3;
                AttackY = 0;
                -- 巡逻P 原版 0,1
                PatrolX = 0;
                PatrolY = -11;
                -- 学习B 原版 3,1
                StudyX = 3;
                StudyY = 1;
            }
            CommandFuncLuaMY(coordinate)
		?>
    }
}
//! endzinc
//! zinc
library Turn requires Base
{
    public struct Turn
    {
        public
        {
            static method handleId(handle han) ->integer { return GetHandleId(han); } // 获取对象的句柄

            // 句柄转换物品
            static method item(integer id) ->item {
                SaveFogStateHandle(XZHT, <?= StringHash("转换库索引") ?>, 0, ConvertFogState(id));
                return LoadItemHandle(XZHT, <?= StringHash("转换库索引") ?>, 0);
            }
            // 句柄转换单位
            static method unit(integer id) ->unit {
                SaveFogStateHandle(XZHT, <?= StringHash("转换库索引") ?>, 0, ConvertFogState(id));
                return LoadUnitHandle(XZHT, <?= StringHash("转换库索引") ?>, 0);
            }
            // 句柄转换可破坏物
            static method dest(integer id) ->destructable {
                SaveFogStateHandle(XZHT, <?= StringHash("转换库索引") ?>, 0, ConvertFogState(id));
                return LoadDestructableHandle(XZHT, <?= StringHash("转换库索引") ?>, 0);
            }
            static method isItem(integer id) ->boolean { return thistype.item(id) != null; } // 是否为物品
static method isUnit(integer id) ->boolean { return thistype.unit(id) != null; } // 是否为单位
static method isDest(integer id) ->boolean { return thistype.dest(id) != null; } // 是否为可破坏物

            // 获取句柄的Type
            static method typeId(integer id) ->integer {
                if (thistype.isItem(id)) return GetItemTypeId(thistype.item(id));
                if (thistype.isUnit(id)) return GetUnitTypeId(thistype.unit(id));
                if (thistype.isDest(id)) return GetDestructableTypeId(thistype.dest(id));
                return 0;
            }
        }
    }
}
//! endzinc
//! zinc
library Order {
    
    // Class that contains every known order in game that has no string counterpart
    public struct SpecialOrders {
        public {
            // This is an order with no target that opens up the build menu of a unit that can build structures.
            static constant integer buildmenu = 851994;
            
            static constant integer cancel = 851976;
            // An item targeted order that move the target item to a certain inventory slot of the ordered hero.
            static constant integer itemdrag00 = 852002;
            // An item targeted order that move the target item to a certain inventory slot of the ordered hero.
            static constant integer itemdrag01 = 852003;
            // An item targeted order that move the target item to a certain inventory slot of the ordered hero.
            static constant integer itemdrag02 = 852004;
            // An item targeted order that move the target item to a certain inventory slot of the ordered hero.
            static constant integer itemdrag03 = 852005;
            // An item targeted order that move the target item to a certain inventory slot of the ordered hero.
            static constant integer itemdrag04 = 852006;
            // An item targeted order that move the target item to a certain inventory slot of the ordered hero.
            static constant integer itemdrag05 = 852007;
            
            static constant integer itemuse00 = 852008;
            
            static constant integer itemuse01 = 852009;
            
            static constant integer itemuse02 = 852010;
            
            static constant integer itemuse03 = 852011;
            
            static constant integer itemuse04 = 852012;
            
            static constant integer itemuse05 = 852013;
            // Order for AIaa ability, which blizzard made for tome of attack, but never used it. But it can actually change caster's base attack!
            static constant integer tomeOfAttack = 852259;
            // This is a point or object targeted order that is like a right click.
            static constant integer smart = 851971;
            
            static constant integer skillmenu = 852000;
            
            static constant integer stunned = 851973;
            static constant integer wandOfIllusion = 852274;
        }
    }
    // Class that contains every known order in game.
    public struct OrderIds extends SpecialOrders {
        public {
        	static constant integer absorb = 852529;
        	static constant integer acidbomb = 852662;
        	static constant integer acolyteharvest = 852185;
        	static constant integer ambush = 852131;
        	static constant integer ancestralspirit = 852490;
        	static constant integer ancestralspirittarget	= 852491;
        	static constant integer animatedead = 852217;
        	static constant integer antimagicshell = 852186;
        	static constant integer attack = 851983;
        	static constant integer attackground = 851984;
        	static constant integer attackonce = 851985;
        	static constant integer attributemodskill = 852576;
        	static constant integer auraunholy = 852215;
        	static constant integer auravampiric = 852216;
        	static constant integer autodispel = 852132;
        	static constant integer autodispeloff = 852134;
        	static constant integer autodispelon = 852133;
        	static constant integer autoentangle = 852505;
        	static constant integer autoentangleinstant = 852506;
        	static constant integer autoharvestgold = 852021;
        	static constant integer autoharvestlumber = 852022;
        	static constant integer avatar = 852086;
        	static constant integer avengerform = 852531;
        	static constant integer awaken = 852466;
        	static constant integer banish = 852486;
        	static constant integer barkskin = 852135;
        	static constant integer barkskinoff = 852137;
        	static constant integer barkskinon = 852136;
        	static constant integer battleroar = 852599;
        	static constant integer battlestations = 852099;
        	static constant integer bearform = 852138;
        	static constant integer berserk = 852100;
        	static constant integer blackarrow = 852577;
        	static constant integer blackarrowoff = 852579;
        	static constant integer blackarrowon = 852578;
        	static constant integer blight = 852187;
        	static constant integer blink = 852525;
        	static constant integer blizzard = 852089;
        	static constant integer bloodlust = 852101;
        	static constant integer bloodlustoff = 852103;
        	static constant integer bloodluston = 852102;
        	static constant integer board = 852043;
        	static constant integer breathoffire = 852580;
        	static constant integer breathoffrost = 852560;
        	static constant integer build = 851994;
        	static constant integer burrow = 852533;
        	static constant integer cannibalize = 852188;
        	static constant integer carrionscarabs = 852551;
        	static constant integer carrionscarabsinstant	= 852554;
        	static constant integer carrionscarabsoff = 852553;
        	static constant integer carrionscarabson = 852552;
        	static constant integer carrionswarm = 852218;
        	static constant integer chainlightning = 852119;
        	static constant integer channel = 852600;
        	static constant integer charm = 852581;
        	static constant integer chemicalrage = 852663;
        	static constant integer cloudoffog = 852473;
        	static constant integer clusterrockets = 852652;
        	static constant integer coldarrows = 852244;
        	static constant integer coldarrowstarg = 852243;
        	static constant integer controlmagic = 852474;
        	static constant integer corporealform = 852493;
        	static constant integer corrosivebreath = 852140;
        	static constant integer coupleinstant = 852508;
        	static constant integer coupletarget = 852507;
        	static constant integer creepanimatedead = 852246;
        	static constant integer creepdevour = 852247;
        	static constant integer creepheal = 852248;
        	static constant integer creephealoff = 852250;
        	static constant integer creephealon = 852249;
        	static constant integer creepthunderbolt = 852252;
        	static constant integer creepthunderclap = 852253;
        	static constant integer cripple = 852189;
        	static constant integer curse = 852190;
        	static constant integer curseoff = 852192;
        	static constant integer curseon = 852191;
        	static constant integer cyclone = 852144;
        	static constant integer darkconversion = 852228;
        	static constant integer darkportal = 852229;
        	static constant integer darkritual = 852219;
        	static constant integer darksummoning = 852220;
        	static constant integer deathanddecay = 852221;
        	static constant integer deathcoil = 852222;
        	static constant integer deathpact = 852223;
        	static constant integer decouple = 852509;
        	static constant integer defend = 852055;
        	static constant integer detectaoe = 852015;
        	static constant integer detonate = 852145;
        	static constant integer devour = 852104;
        	static constant integer devourmagic = 852536;
        	static constant integer disassociate = 852240;
        	static constant integer disenchant = 852495;
        	static constant integer dismount = 852470;
        	static constant integer dispel = 852057;
        	static constant integer divineshield = 852090;
        	static constant integer doom = 852583;
        	static constant integer drain = 852487;
        	static constant integer dreadlordinferno = 852224;
        	static constant integer dropitem = 852001;
        	static constant integer drunkenhaze = 852585;
        	static constant integer earthquake = 852121;
        	static constant integer eattree = 852146;
        	static constant integer elementalfury = 852586;
        	static constant integer ensnare = 852106;
        	static constant integer ensnareoff = 852108;
        	static constant integer ensnareon = 852107;
        	static constant integer entangle = 852147;
        	static constant integer entangleinstant = 852148;
        	static constant integer entanglingroots = 852171;
        	static constant integer etherealform = 852496;
        	static constant integer evileye = 852105;
        	static constant integer faeriefire = 852149;
        	static constant integer faeriefireoff = 852151;
        	static constant integer faeriefireon = 852150;
        	static constant integer fanofknives = 852526;
        	static constant integer farsight = 852122;
        	static constant integer fingerofdeath = 852230;
        	static constant integer firebolt = 852231;
        	static constant integer flamestrike = 852488;
        	static constant integer flamingarrows = 852174;
        	static constant integer flamingarrowstarg = 852173;
        	static constant integer flamingattack = 852540;
        	static constant integer flamingattacktarg = 852539;
        	static constant integer flare = 852060;
        	static constant integer forceboard = 852044;
        	static constant integer forceofnature = 852176;
        	static constant integer forkedlightning = 852587;
        	static constant integer freezingbreath = 852195;
        	static constant integer frenzy = 852561;
        	static constant integer frenzyoff = 852563;
        	static constant integer frenzyon = 852562;
        	static constant integer frostarmor = 852225;
        	static constant integer frostarmoroff = 852459;
        	static constant integer frostarmoron = 852458;
        	static constant integer frostnova = 852226;
        	static constant integer getitem = 851981;
        	static constant integer gold2lumber = 852233;
        	static constant integer grabtree = 852511;
        	static constant integer harvest = 852018;
        	static constant integer heal = 852063;
        	static constant integer healingspray = 852664;
        	static constant integer healingward = 852109;
        	static constant integer healingwave = 852501;
        	static constant integer healoff = 852065;
        	static constant integer healon = 852064;
        	static constant integer hex = 852502;
        	static constant integer holdposition = 851993;
        	static constant integer holybolt = 852092;
        	static constant integer howlofterror = 852588;
        	static constant integer humanbuild = 851995;
        	static constant integer immolation = 852177;
        	static constant integer impale = 852555;
        	static constant integer incineratearrow = 852670;
        	static constant integer incineratearrowoff = 852672;
        	static constant integer incineratearrowon = 852671;
        	static constant integer inferno = 852232;
        	static constant integer innerfire = 852066;
        	static constant integer innerfireoff = 852068;
        	static constant integer innerfireon = 852067;
        	static constant integer instant = 852200;
        	static constant integer invisibility = 852069;
        	static constant integer lavamonster = 852667;
        	static constant integer lightningshield = 852110;
        	static constant integer load = 852046;
        	static constant integer loadarcher = 852142;
        	static constant integer loadcorpse = 852050;
        	static constant integer loadcorpseinstant = 852053;
        	static constant integer locustswarm = 852556;
        	static constant integer lumber2gold = 852234;
        	static constant integer magicdefense = 852478;
        	static constant integer magicleash = 852480;
        	static constant integer magicundefense = 852479;
        	static constant integer manaburn = 852179;
        	static constant integer manaflareoff = 852513;
        	static constant integer manaflareon = 852512;
        	static constant integer manashieldoff = 852590;
        	static constant integer manashieldon = 852589;
        	static constant integer massteleport = 852093;
        	static constant integer mechanicalcritter = 852564;
        	static constant integer metamorphosis = 852180;
        	static constant integer militia = 852072;
        	static constant integer militiaconvert = 852071;
        	static constant integer militiaoff = 852073;
        	static constant integer militiaunconvert = 852651;
        	static constant integer mindrot = 852565;
        	static constant integer mirrorimage = 852123;
        	static constant integer monsoon = 852591;
        	static constant integer mount = 852469;
        	static constant integer mounthippogryph = 852143;
        	static constant integer move = 851986;
        	static constant integer moveAI = 851988;
        	static constant integer nagabuild = 852467;
        	static constant integer neutraldetectaoe = 852023;
        	static constant integer neutralinteract = 852566;
        	static constant integer neutralspell = 852630;
        	static constant integer nightelfbuild = 851997;
        	static constant integer orcbuild = 851996;
        	static constant integer parasite = 852601;
        	static constant integer parasiteoff = 852603;
        	static constant integer parasiteon = 852602;
        	static constant integer patrol = 851990;
        	static constant integer phaseshift = 852514;
        	static constant integer phaseshiftinstant = 852517;
        	static constant integer phaseshiftoff = 852516;
        	static constant integer phaseshifton = 852515;
        	static constant integer phoenixfire = 852481;
        	static constant integer phoenixmorph = 852482;
        	static constant integer poisonarrows = 852255;
        	static constant integer poisonarrowstarg = 852254;
        	static constant integer polymorph = 852074;
        	static constant integer possession = 852196;
        	static constant integer preservation = 852568;
        	static constant integer purge = 852111;
        	static constant integer rainofchaos = 852237;
        	static constant integer rainoffire = 852238;
        	static constant integer raisedead = 852197;
        	static constant integer raisedeadoff = 852199;
        	static constant integer raisedeadon = 852198;
        	static constant integer ravenform = 852155;
        	static constant integer recharge = 852157;
        	static constant integer rechargeoff = 852159;
        	static constant integer rechargeon = 852158;
        	static constant integer rejuvination = 852160;
        	static constant integer renew = 852161;
        	static constant integer renewoff = 852163;
        	static constant integer renewon = 852162;
        	static constant integer repair = 852024;
        	static constant integer repairoff = 852026;
        	static constant integer repairon = 852025;
        	static constant integer replenish = 852542;
        	static constant integer replenishlife = 852545;
        	static constant integer replenishlifeoff = 852547;
        	static constant integer replenishlifeon = 852546;
        	static constant integer replenishmana = 852548;
        	static constant integer replenishmanaoff = 852550;
        	static constant integer replenishmanaon = 852549;
        	static constant integer replenishoff = 852544;
        	static constant integer replenishon = 852543;
        	static constant integer request_hero = 852239;
        	static constant integer requestsacrifice = 852201;
        	static constant integer restoration = 852202;
        	static constant integer restorationoff = 852204;
        	static constant integer restorationon = 852203;
        	static constant integer resumebuild = 851999;
        	static constant integer resumeharvesting = 852017;
        	static constant integer resurrection = 852094;
        	static constant integer returnresources = 852020;
        	static constant integer revenge = 852241;
        	static constant integer revive = 852039;
        	static constant integer roar = 852164;
        	static constant integer robogoblin = 852656;
        	static constant integer root = 852165;
        	static constant integer sacrifice = 852205;
        	static constant integer sanctuary = 852569;
        	static constant integer scout = 852181;
        	static constant integer selfdestruct = 852040;
        	static constant integer selfdestructoff = 852042;
        	static constant integer selfdestructon = 852041;
        	static constant integer sentinel = 852182;
        	static constant integer setrally = 851980;
        	static constant integer shadowsight = 852570;
        	static constant integer shadowstrike = 852527;
        	static constant integer shockwave = 852125;
        	static constant integer silence = 852592;
        	static constant integer sleep = 852227;
        	static constant integer slow = 852075;
        	static constant integer slowoff = 852077;
        	static constant integer slowon = 852076;
        	static constant integer soulburn = 852668;
        	static constant integer soulpreservation = 852242;
        	static constant integer spellshield = 852571;
        	static constant integer spellshieldaoe = 852572;
        	static constant integer spellsteal = 852483;
        	static constant integer spellstealoff = 852485;
        	static constant integer spellstealon = 852484;
        	static constant integer spies = 852235;
        	static constant integer spiritlink = 852499;
        	static constant integer spiritofvengeance = 852528;
        	static constant integer spirittroll = 852573;
        	static constant integer spiritwolf = 852126;
        	static constant integer stampede = 852593;
        	static constant integer standdown = 852113;
        	static constant integer starfall = 852183;
        	static constant integer stasistrap = 852114;
        	static constant integer steal = 852574;
        	static constant integer stomp = 852127;
        	static constant integer stoneform = 852206;
        	static constant integer stop = 851972;
        	static constant integer submerge = 852604;
        	static constant integer summonfactory = 852658;
        	static constant integer summongrizzly = 852594;
        	static constant integer summonphoenix = 852489;
        	static constant integer summonquillbeast = 852595;
        	static constant integer summonwareagle = 852596;
        	static constant integer tankdroppilot = 852079;
        	static constant integer tankloadpilot = 852080;
        	static constant integer tankpilot = 852081;
        	static constant integer taunt = 852520;
        	static constant integer thunderbolt = 852095;
        	static constant integer thunderclap = 852096;
        	static constant integer tornado = 852597;
        	static constant integer townbelloff = 852083;
        	static constant integer townbellon = 852082;
        	static constant integer tranquility = 852184;
        	static constant integer transmute = 852665;
        	static constant integer unavatar = 852087;
        	static constant integer unavengerform = 852532;
        	static constant integer unbearform = 852139;
        	static constant integer unburrow = 852534;
        	static constant integer uncoldarrows = 852245;
        	static constant integer uncorporealform = 852494;
        	static constant integer undeadbuild = 851998;
        	static constant integer undefend = 852056;
        	static constant integer undivineshield = 852091;
        	static constant integer unetherealform = 852497;
        	static constant integer unflamingarrows = 852175;
        	static constant integer unflamingattack = 852541;
        	static constant integer unholyfrenzy = 852209;
        	static constant integer unimmolation = 852178;
        	static constant integer unload = 852047;
        	static constant integer unloadall = 852048;
        	static constant integer unloadallcorpses = 852054;
        	static constant integer unloadallinstant = 852049;
        	static constant integer unpoisonarrows = 852256;
        	static constant integer unravenform = 852156;
        	static constant integer unrobogoblin = 852657;
        	static constant integer unroot = 852166;
        	static constant integer unstableconcoction = 852500;
        	static constant integer unstoneform = 852207;
        	static constant integer unsubmerge = 852605;
        	static constant integer unsummon = 852210;
        	static constant integer unwindwalk = 852130;
        	static constant integer vengeance = 852521;
        	static constant integer vengeanceinstant = 852524;
        	static constant integer vengeanceoff = 852523;
        	static constant integer vengeanceon = 852522;
        	static constant integer volcano = 852669;
        	static constant integer voodoo = 852503;
        	static constant integer ward = 852504;
        	static constant integer waterelemental = 852097;
        	static constant integer wateryminion = 852598;
        	static constant integer web = 852211;
        	static constant integer weboff = 852213;
        	static constant integer webon = 852212;
        	static constant integer whirlwind = 852128;
        	static constant integer windwalk = 852129;
        	static constant integer wispharvest = 852214;
        }
    }
    // // Deprecated
    public struct Order extends OrderIds { }
}
//! endzinc
//! zinc
library Math
{
    // 数学库
    public struct math
    {
        public
        {
            static method randomReal(real low, real high) ->real { return GetRandomReal(low, high); } // 取随机实数
static method randomInt(integer low, integer high) ->integer { return GetRandomInt(low, high); } // 取随机整数
static method random() ->real{ return GetRandomReal(0.01, 1.0); } // 取0.01~1.0随机实数
static method IsRandomInt(integer value) ->boolean { return math.randomInt(1, 100) <= value; } // 百分比判断
static method randomRectX(rect r) ->real { return GetRandomReal(GetRectMinX(r), GetRectMaxX(r)); } // 获取矩形随机坐标X
static method randomRectY(rect r) ->real { return GetRandomReal(GetRectMinY(r), GetRectMaxY(r)); } // 获取矩形随机坐标Y

            static method sin(real r) ->real { return Sin(r); } // 正弦(弧度)
static method cos(real r) ->real { return Cos(r); } // 余弦(弧度)
static method tan(real r) ->real { return Tan(r); } // 正切(弧度)
static method asin(real r) ->real { return Asin(r); } // 反正弦(弧度)
static method acos(real r) ->real { return Acos(r); } // 反余弦(弧度)
static method atan(real r) ->real { return Atan(r); } // 反正切(弧度)
static method atan2(real y, real x) ->real { return Atan2(y, x); } // 反正切(Y:X)(弧度)
static method pow(real x, real power) ->real { return Pow(x, power); } // 幕运算
static method squareRoot(real x) ->real { return SquareRoot(x); } // 平方根

            static method max(real n1, real n2) ->real {
                if (n1 > n2) {
                    return n1;
                } else {
                    return n2;
                }
            }
            static method sinBJ(real degrees) ->real { return Sin(degrees * bj_DEGTORAD); }
            static method cosBJ(real degrees) ->real { return Cos(degrees * bj_DEGTORAD); }
            static method tanBJ(real degrees) ->real { return Tan(degrees * bj_DEGTORAD); }
            static method asinBJ(real degrees) ->real {
                return Asin(degrees) * bj_DEGTORAD;
            }
            static method acosBJ(real degrees) ->real {
                return Acos(degrees) * bj_DEGTORAD;
            }
            static method atanBJ(real degrees) ->real {
                return Atan(degrees) * bj_DEGTORAD;
            }
            static method atan2BJ(real x, real y) ->real { return Atan2(y, x) * bj_DEGTORAD; }
            static method miR2I(real r) ->integer { return R2I(r * 100 + 0.5) / 100; } // 实数取整转整数
static method miR2S(real r) ->string { return I2S(math.miR2I(r)); } // 实数取整转字符串
static method miR2R(real r) ->real { return I2R(math.miR2I(r)); } // 实数取整
static method miR2SP(real r) ->string { return I2S(R2I(r * 100 + 0.5)); } // 实数转百分比字符串

            static method randomRangeX(real r, real x) ->real { return Cos(GetRandomReal(0, 360)) * GetRandomReal(0, r) + x; } // 范围内随机X
static method randomRangeY(real r, real y) ->real { return Cos(GetRandomReal(0, 360)) * GetRandomReal(0, r) + y; } // 范围内随机Y

            static method deg2Rad(real degrees) ->real { return Deg2Rad(degrees); } // 转换角度为弧度
static method rad2Deg(real radians) ->real { return Rad2Deg(radians); } // 转换弧度为角度

            // 两个角度求锐角
            static method includAngle(real a, real b) ->real {
                real c;
                if (a < 0) a +=360;
                if (b < 0) b +=360;
                c = a - b;
                if (c < 0) c = -c;
                if (c > 180) c = 360 - c;
                return c;
            }
            static method unitAtan2(Unit u, Unit em) ->real { return math.atan2(em.y() - u.y(), em.x() - u.x()); } // 两个单位的反正切
static method lineUnitX(Unit u, real dist, real angle) ->real { return u.x() + dist * math.cos(angle * bj_DEGTORAD); } // 求位移坐标X
static method lineUnitY(Unit u, real dist, real angle) ->real { return u.y() + dist * math.sin(angle * bj_DEGTORAD); } // 求位移坐标Y
static method unitAngleX(Unit u, Unit em) ->real { return math.cos((bj_RADTODEG * math.unitAtan2(u, em)) * bj_DEGTORAD); } // 两个单位的X角度
static method unitAngleY(Unit u, Unit em) ->real { return math.sin((bj_RADTODEG * math.unitAtan2(u, em)) * bj_DEGTORAD); } // 两个单位的Y角度
// 两个单位的角度
static method unitAngle(Unit u, Unit em) ->real {
                real angle = math.rad2Deg(math.unitAtan2(u, em));
                if (angle < 0) angle +=360;
                return angle;
            }
            // 两个坐标的角度
            static method xyAngle(real x1, real y1, real x2, real y2) ->real {
                real angle = math.rad2Deg(math.atan2(y2 - y1, x2 - x1));
                if (angle < 0) angle +=360;
                return angle;
            }
            // 两个坐标的距离
            static method xyDistance(real x1, real y1, real x2, real y2) ->real {
                real dx = x2 - x1;
                real dy = y2 - y1;
                return math.squareRoot(dx * dx + dy * dy);
            }
            // 两个单位的距离
            static method unitDistance(Unit u, Unit em) ->real {
                real dx = em.x() - u.x();
                real dy = em.y() - u.y();
                return math.squareRoot(dx * dx + dy * dy);
            }
            // 单位到坐标的距离
            static method unitDistanceXY(Unit u, real x, real y) ->real {
                real dx = x - u.x();
                real dy = y - u.y();
                return math.squareRoot(dx * dx + dy * dy);
            }
        }
    }
    // 随机池子类型
    public struct RandomInt
    {
        private integer min,max;
        private static hashtable ht;
        // 排泄销毁当前实例
        public method destroy() {
            FlushChildHashtable(thistype.ht, integer(this));
            this.deallocate();
        }
        // 获取长度
        public method operator size() ->integer { return this.max; }
        // 重置当前随机池的随机数 参数为下标和上标,下标不可以<=0
        public method reset(integer min, integer max) {
            integer index;
            if (min > max) {
                debug BJDebugMsg("RandomInt:reset 随机池范围出错,参数max不能小于min.");
                return;
            }
            FlushChildHashtable(thistype.ht, integer(this));
            if (min <= 0) min = 1;
            this.min = min;
            this.max = max;
            for (this.min <= index <= this.max) {
                SaveInteger(thistype.ht, integer(this), index, index);
            }
        }
        // 删除随机池内指定值
        public method remove(integer value) ->integer
        {
            integer forIndex;
            integer index;
            for (1 <= forIndex <= this.max) {
                index = LoadInteger(thistype.ht, integer(this), forIndex);
                if (index == value) {
                    SaveInteger(thistype.ht, integer(this), forIndex, LoadInteger(thistype.ht, integer(this), this.max));
                    this.max -=1;
                    return index;
                }
            }
            return 0;
        }
        // 从当前随机池子剩余的数中抽出随机数.如果随机池子为空,返回0
        public method getInt() ->integer {
            integer Int = 0,N;
            if (this.max > 0) {
                N = GetRandomInt(this.min, this.max);
                Int = LoadInteger(thistype.ht, integer(this), N);
                SaveInteger(thistype.ht, integer(this), N, LoadInteger(thistype.ht, integer(this), this.max));
                this.max -=1;
            } else {
                debug BJDebugMsg("随机池子当中所有随机数已经随出完毕");
            }
            return Int;
        }
        // 声明随机类实例 参数为下标和上标,下标不可以<=0
        public static method create(integer min, integer max) ->thistype {
            thistype this = thistype.allocate();
            integer index;
            if (min > max) {
                debug BJDebugMsg("RandomInt:new 随机池范围出错,参数max不能小于min.");
                this.destroy();
                return 0;
            }
            if (min <= 0) min = 1;
            this.min = min;
            this.max = max;
            for (this.min <= index <= this.max) {
                SaveInteger(thistype.ht, integer(this), index, index);
            }
            return this;
        }
        private static method onInit() {
            thistype.ht = InitHashtable();
        }
    }
}
//! endzinc
//! zinc
library Vec3
{
    public struct Vec3
    {
        public
        {
            // 属性
            real x;
            real y;
            real z;
            // 原始构造函数
            static method create(real X, real Y, real Z) ->Vec3
            {
                Vec3 this = Vec3.allocate();
                this.x = X;
                this.y = Y;
                this.z = Z;
                return this;
            }
            method operator < (Vec3 that) -> boolean { return this.x < that.x && this.y < that.y && this.z < that.z; } // 判断是否少于that

            method operator length () ->real { return SquareRoot(this.x*this.x + this.y*this.y + this.z*this.z); }
            method operator length= (real len)
            {
                real Length = this.length;
                if (Length == 0.0) { debug BJDebugMsg("试图设置没有长度的向量的长度!");return; }
                Length = len / Length;
                this.x = this.x * Length;
                this.y = this.y * Length;
                this.z = this.z * Length;
            }
            // 平扁平化
            method operator norm () -> Vec3
            {
                real len = this.length;
                real x = 0.0;
                real y = 0.0;
                real z = 0.0;
                if (len != 0.0) {
                    x = (this.x / len);
                    y = (this.y / len);
                    z = (this.z / len);
                }
                return Vec3.create(x, y, z);
            }
            // 加法
            method add(Vec3 v) { this.x = this.x + v.x;this.y = this.y + v.y;this.z = this.z + v.z; }
            static method sum(Vec3 a, Vec3 b) ->Vec3
            {
                Vec3 v = Vec3.allocate();
                v.x = a.x + b.x;
                v.y = a.y + b.y;
                v.z = a.z + b.z;
                return v;
            }
            // 减法
            method sub(Vec3 v) { this.x = this.x - v.x;this.y = this.y - v.y;this.z = this.z - v.z; }
            static method difference(Vec3 a, Vec3 b) ->Vec3
            {
                Vec3 v = Vec3.allocate();
                v.x = a.x - b.x;
                v.y = a.y - b.y;
                v.z = a.z - b.z;
                return v;
            }
            // 按给定因子缩放向量
            method scale(real factor) { this.x = this.x * factor;this.y = this.y * factor;this.z = this.z * factor; }
            // 计算两个向量的点积（也称为标量积）
            method dot(Vec3 v) ->real { return this.x*v.x + this.y*v.y + this.z*v.z; }
            static method dotProduct(Vec3 a, Vec3 b) ->real { return a.x*b.x + a.y*b.y + a.z*b.z; }
            // 计算两个向量的叉积（也称为向量积） 并将其作为新向量返回
            static method crossProduct(Vec3 a, Vec3 b) -> Vec3
            {
                Vec3 v = Vec3.allocate();
                v.x = a.y*b.z - a.z*b.y;
                v.y = a.z*b.x - a.x*b.z;
                v.z = a.x*b.y - a.y*b.x;
                return v;
            }
            // 计算三个向量的三次标量积
            static method tripleProductScalar(Vec3 a, Vec3 b, Vec3 c) ->real { return ((a.y*b.z - a.z*b.y)*c.x+(a.z*b.x - a.x*b.z)*c.y+(a.x*b.y - a.y*b.x)*c.z); }
            // 计算三个向量的三向量积并将其作为新向量返回
            static method tripleProductVector(Vec3 a, Vec3 b, Vec3 c) ->Vec3
            {
                Vec3 v = Vec3.allocate();
                real n = a.x*c.x+a.y*c.y+a.z*c.z;
                real m = a.x*b.x+a.y*b.y+a.z*b.z;
                v.x = b.x*n-c.x*m;
                v.y = b.y*n-c.y*m;
                v.z = b.z*n-c.z*m;
                return v;
            }
            // 计算矢量“投影”到矢量“方向”的投影 并将其作为新向量返回。 如果向量方向的长度为0，则返回null。
            static method projectionVector(Vec3 projected, Vec3 direction) ->Vec3
            {
                Vec3 v = 0;
                real l = direction.x*direction.x+direction.y*direction.y+direction.z*direction.z;
                if (l == 0.0) { debug BJDebugMsg("试图投射到没有长度的向量上!");return 0; }
                v = Vec3.allocate();
                l = (projected.x*direction.x+projected.y*direction.y+projected.z*direction.z) / l;
                v.x = direction.x*l;
                v.y = direction.y*l;
                v.z = direction.z*l;
                return v;
            }
            // 将调用它的向量投影到向量“方向”。 如果向量“方向”的长度为0，则不执行任何操作。
            method projectVector(Vec3 direction)
            {
                real l = direction.x*direction.x+direction.y*direction.y+direction.z*direction.z;
                if (l == 0.0) { debug BJDebugMsg("试图投射到没有长度的向量上!");return; }
                l = (this.x*direction.x+this.y*direction.y+this.z*direction.z) / l;
                this.x = direction.x*l;
                this.y = direction.y*l;
                this.z = direction.z*l;
            }
            // 计算投影到由定义的平面上的矢量的投影 它是法向量，并将其作为新向量返回。 如果向量“normal”的长度为0，则返回null。
            static method projectionPlane(Vec3 projected, Vec3 normal) ->Vec3
            {
                Vec3 v = 0;
                real l = normal.x*normal.x+normal.y*normal.y+normal.z*normal.z;
                if (l == 0.0) { debug BJDebugMsg("试图投射到未定义的平面上!");return 0; }
                v = Vec3.allocate();
                l = (projected.x*normal.x+projected.y*normal.y+projected.z*normal.z) / l;
                v.x = projected.x - normal.x*l;
                v.y = projected.y - normal.y*l;
                v.z = projected.z - normal.z*l;
                return v;
            }
            // 将调用它的向量投影到由它的法向量定义的平面上。 如果向量“normal”的长度为0，则不执行任何操作。
            method projectPlane(Vec3 normal)
            {
                real l = normal.x*normal.x+normal.y*normal.y+normal.z*normal.z;
                if (l == 0.0) { debug BJDebugMsg("试图投射到没有长度的向量上!");return; }
                l = (this.x*normal.x+this.y*normal.y+this.z*normal.z) / l;
                this.x = this.x - normal.x*l;
                this.y = this.y - normal.y*l;
                this.z = this.z - normal.z*l;
            }
            // 返回两个向量之间的角度（以弧度为单位），返回介于0和pi之间的值。 如果任何向量的长度为0个单位，则返回0.0。
            static method getAngle(Vec3 a, Vec3 b) ->real
            {
                real l = SquareRoot(a.x*a.x + a.y*a.y + a.z*a.z)*SquareRoot(b.x*b.x + b.y*b.y + b.z*b.z);
                if (l == 0.0) { debug BJDebugMsg("尝试获取没有长度的向量之间的角度!");return 0.0; }
                return Acos((a.x*b.x+a.y*b.y+a.z*b.z) / l); // 角度以弧度为单位返回
}
            // 围绕矢量“轴”定义的轴旋转调用它的矢量 按给定角度，以弧度输入。 如果轴的长度为0个单位，则不执行任何操作。
            method rotate(Vec3 axis, real angle)
            {
                real xx,xy,xz,yx,yy,yz,zx,zy,zz;
                real al = axis.x*axis.x+axis.y*axis.y+axis.z*axis.z; // 轴长度^2
real f;
                real c = Cos(angle);
                real s = Sin(angle);
                if (al == 0.0) { debug BJDebugMsg("试图投射到没有长度的向量上!");return; }
                f = (this.x*axis.x+this.y*axis.y+this.z*axis.z) / al;
                zx = axis.x*f;
                zy = axis.y*f;
                zz = axis.z*f; // 旋转矢量的轴分量
xx = this.x-zx;
                xy = this.y-zy;
                xz = this.z-zz; // 垂直于轴的矢量分量
al = SquareRoot(al);
                yx = (axis.y*xz - axis.z*xy) / al;
                yy = (axis.z*xx - axis.x*xz) / al; // 用叉积除以轴长，y与x的长度相同
yz = (axis.x*xy - axis.y*xx) / al; // x,y - 我们旋转的坐标系
this.x=xx*c+yx*s+zx;
                this.y=xy*c+yy*s+zy;
                this.z=xz*c+yz*s+zz;
            }
        }
    }
}
//! endzinc
//! zinc
library Object
{
    private
    {
        // 单位
        struct UnitType
        {
            public
            {
                static method data(integer id, string data) ->string { return EXExecuteScript("(require'jass.slk').unit[" + I2S(id) + "]." + data); }
                static method IsHero(integer id) ->boolean { return IsHeroUnitId(id); } // 单位类型是英雄
static method IsType(integer id, unittype tp) ->boolean { return IsUnitIdType(id, tp); } // 单位类型检查
static method made(integer id) ->integer { return GetFoodMade(id); } // 制造人口
static method used(integer id) ->integer { return GetFoodUsed(id); } // 使用人口
static method value(integer id) ->integer { return GetUnitPointValueByType(id); } // 附加值
}
        }
        // 物品
        struct ItemType
        {
            public
            {
                static method data(integer id, string data) ->string { return EXExecuteScript("(require'jass.slk').item[" + I2S(id) + "]." + data); }
                static method icon(integer id) ->string { return EXGetItemDataString(id, 1); } // 物品图标
static method name(integer id) ->string { return EXGetItemDataString(id, 4); } // 物品提示[名字]
static method tip(integer id) ->string { return EXGetItemDataString(id, 3); } // 物品提示[扩展]
static method setIcon(integer id, string value) ->boolean { return EXSetItemDataString(id, 1, value); } // 设置物品图标
static method setName(integer id, string value) ->boolean { return EXSetItemDataString(id, 4, value); } // 设置物品图标
static method setTip(integer id, string value) ->boolean { return EXSetItemDataString(id, 3, value); } // 设置物品图标
static method IsPawnable(integer id) ->boolean { return IsItemIdPawnable(id); } // 物品是否为可抵押
static method IsPowerup(integer id) ->boolean { return IsItemIdPowerup(id); } // 物品是否为捡拾自动使用
static method IsSellable(integer id) ->boolean { return IsItemIdSellable(id); } // 物品是否为可出售
}
        }
        // 技能
        struct AbilityType
        {
            public
            {
                static method data(integer id, string data) ->string { return EXExecuteScript("(require'jass.slk').ability[" + I2S(id) + "]." + data); }
            }
        }
        // 魔法效果
        struct BuffType
        {
            public
            {
                static method data(integer id, string data) ->string { return EXExecuteScript("(require'jass.slk').buff[" + I2S(id) + "]." + data); }
            }
        }
        // 科技
        struct TechType
        {
            public
            {
                static method data(integer id, string data) ->string { return EXExecuteScript("(require'jass.slk').upgrade[" + I2S(id) + "]." + data); }
            }
        }
        // 可破坏物
        struct DestructableType
        {
            public
            {
                static method data(integer id, string data) ->string { return EXExecuteScript("(require'jass.slk').destructable[" + I2S(id) + "]." + data); }
            }
        }
        // 地形装饰物
        struct DoodadType
        {
            public
            {
                static method data(integer id, string data) ->string { return EXExecuteScript("(require'jass.slk').doodad[" + I2S(id) + "]." + data); }
            }
        }
    }
    // 对象
    public struct Object
    {
        private
        {
            static method onInit() {
                Unit = UnitType.create();
                Item = ItemType.create();
                Ability = AbilityType.create();
                Buff = BuffType.create();
                Tech = TechType.create();
                Destructable = DestructableType.create();
                Doodad = DoodadType.create();
            }
        }
        public
        {
            static UnitType Unit = 0;
            static ItemType Item = 0;
            static AbilityType Ability = 0;
            static BuffType Buff = 0;
            static TechType Tech = 0;
            static DestructableType Destructable = 0;
            static DoodadType Doodad = 0;
            static method name(integer id) ->string { return GetObjectName(id); } // 获取对象名字
}
    }
}
//! endzinc
library List
//==================================================================================
// List version 1.1
//----------------------------
// Use this version in your map.
//==================================================================================
// - made by MaskedPoptart
// - imitates the functionality of ArrayLists (from Java)
// using a hashtable.
//==================================================================================
// Basic Usage:
// set arr = IntegerList.create() - instantiate a List of integers
// arr.size - get the current number of elements
// call arr.addLast(5732) - add 5732 to the end of the list,
// increase .size by 1
// arr.removeLast() - remove the last element in the list,
// decrease .size by 1, return removed element
// arr.remove(6) - remove the 6th element, decrease .size by 1,
// return removed element, shift elements down
// arr[3] - get the element at index 3
// set arr[23] = 815 - replace the value at index 23 with 815
// call arr.clear() - remove all objects from the list
// call arr.destroy() - clear list and recycle the struct index
//
// WARNING: Most attempts to work with indexes <0 or >=.size will fail and
// generate an error message in debug mode. Returns default to 0 for integers/
// reals, null for handles, false for booleans, etc.
//
// LEAK WARNING: List does no automatic garbage collection. If a List
// is the only place you store a variable, make sure the variable will not leak when
// you remove it or replace it.
//===================================================================================
// Credits:
// - Vexorian for JassHelper
// - Vexorian for Table 3.0 (which I used for reference)
// - All the other people who worked on JassNewGenPack
//===================================================================================
    globals
        private constant integer MAX_INSTANCES = 8190
    endglobals
    
    //! textmacro List takes type, listType, typeName
    struct $listType$List [MAX_INSTANCES]
        private integer min = -1
        private integer max = 0
        private static hashtable contents = InitHashtable()
        private static $type$ tempObject
        private static $type$ DEFAULT_VALUE
        
        private static method onInit takes nothing returns nothing
            set thistype.DEFAULT_VALUE = Load$typeName$(thistype.contents,0,0)
        endmethod
        
        private method getActualIndex takes integer publicIndex returns integer
            return publicIndex + this.min + 1
        endmethod
        
        private method getPublicIndex takes integer actualIndex returns integer
            return actualIndex - this.min - 1
        endmethod
        
        private method isValidIndex takes integer actualIndex returns boolean
            return actualIndex > this.min and actualIndex < this.max
        endmethod
        
//---------------------USER METHODS------------------------
        // 获取列表长度
        method operator size takes nothing returns integer
            return this.max-this.min-1
        endmethod
        // 添加到列表首位置处添加数据
        method addFirst takes $type$ object returns nothing
            call Save$typeName$(this.contents, integer(this), this.min, object)
            set this.min = this.min - 1
        endmethod
        // 在列表最后一个位置处添加数据
        method addLast takes $type$ object returns nothing
            call Save$typeName$(this.contents, integer(this), this.max, object)
            set this.max = this.max + 1
        endmethod
        // 删除列表第一个数据并返回所删除的数据
        method removeFirst takes nothing returns $type$
            if(this.size>0)then
                set this.min = this.min + 1
                return Load$typeName$(this.contents, integer(this), this.min)
            endif
            // debug call BJDebugMsg("ERROR: $listType$List \"removeFirst\" method. Cannot remove from an empty List.")
            return this.DEFAULT_VALUE
        endmethod
        // 删除列表最后一个数据并返回所删除的数据
        method removeLast takes nothing returns $type$
            if(this.size>0)then
                set this.max = this.max - 1
                return Load$typeName$(this.contents, integer(this), this.max)
            endif
            // debug call BJDebugMsg("ERROR: $listType$List \"removeLast\" method. Cannot remove from an empty List.")
            return this.DEFAULT_VALUE
        endmethod
        // 重载[]获取对应索引数据，索引不能超出列表长度
        method operator [] takes integer index returns $type$
            local integer actualIndex = this.getActualIndex(index)
            if(this.isValidIndex(actualIndex))then
                return Load$typeName$(this.contents, integer(this), actualIndex)
            endif
            // debug call BJDebugMsg("ERROR: $listType$List \"[]\" method. Index Out of Bounds ("+I2S(index)+").")
            return this.DEFAULT_VALUE
        endmethod
        // 更改对应索引的数据，不能更改空索引数据
        method operator []= takes integer index, $type$ object returns nothing
            local integer actualIndex = this.getActualIndex(index)
            if(this.isValidIndex(actualIndex))then
                call Save$typeName$(this.contents, integer(this), actualIndex, object)
            debug else
                debug call BJDebugMsg("ERROR: $listType$List \"[]=\" method. Index Out of Bounds ("+I2S(index)+").")
            endif
        endmethod
        // 在指定位置后面添加一个新的数据
        method add takes integer index, $type$ object returns nothing
            local integer i
            local integer actualIndex = this.getActualIndex(index)
            if(actualIndex > this.min and actualIndex <= this.max)then
                if(actualIndex <= 0.5*(this.min+this.max))then
                    set actualIndex = actualIndex - 1
                    set i = this.min
                    loop
                        exitwhen i >= actualIndex
                        call Save$typeName$(this.contents, integer(this), i, Load$typeName$(this.contents, integer(this), i+1))
                        set i = i + 1
                    endloop
                    set this.min = this.min - 1
                else
                    set i = this.max
                    loop
                        exitwhen i <= actualIndex
                        call Save$typeName$(this.contents, integer(this), i, Load$typeName$(this.contents, integer(this), i-1))
                        set i = i - 1
                    endloop
                    set this.max = this.max + 1
                endif
                call Save$typeName$(this.contents, integer(this), actualIndex, object)
            debug else
                debug call BJDebugMsg("ERROR: $listType$List \"add\" method. Index Out of Bounds ("+I2S(index)+").")
            endif
        endmethod
        // 删除指定位置后面的第一个数据
        method remove takes integer index returns $type$
            local integer i
            local integer actualIndex = this.getActualIndex(index)
            if(this.isValidIndex(actualIndex))then
                set this.tempObject = Load$typeName$(this.contents, integer(this), actualIndex)
                set i = actualIndex
                if(actualIndex <= 0.5*(this.min+this.max))then
                    set this.min = this.min + 1
                    loop
                        exitwhen i <= this.min
                        call Save$typeName$(this.contents, integer(this), i, Load$typeName$(this.contents, integer(this), i-1))
                        set i = i - 1
                    endloop 
                else
                    set this.max = this.max - 1
                    loop
                        exitwhen i >= this.max
                        call Save$typeName$(this.contents, integer(this), i, Load$typeName$(this.contents, integer(this), i+1))
                        set i = i + 1
                    endloop
                endif
                return this.tempObject
            endif
            debug call BJDebugMsg("ERROR: $listType$List \"remove\" method. Index Out of Bounds ("+I2S(index)+").")
            return this.DEFAULT_VALUE
        endmethod
        // 清空列表所有数据
        method clear takes nothing returns nothing
            call FlushChildHashtable(this.contents, integer(this))
            set this.min = -1
            set this.max = 0
        endmethod
        // 没有使用过，初步猜测为删除第一个参数到第二个参数这中间的数据
        method removeRange takes integer fromIndex, integer toIndex returns nothing
            local integer i
            local integer actualFromIndex = this.getActualIndex(fromIndex)
            local integer actualToIndex = this.getActualIndex(toIndex-1)
            if(this.isValidIndex(actualFromIndex))then
                if(this.isValidIndex(actualToIndex) and toIndex>fromIndex)then
                    if(actualFromIndex-this.min < this.max-actualToIndex)then
                        set i = actualFromIndex
                        loop
                            set i = i - 1
                            exitwhen i<=this.min
                            call Save$typeName$(this.contents, integer(this), i-fromIndex+toIndex, Load$typeName$(this.contents, integer(this), i))
                        endloop
                        set this.min = this.min-fromIndex+toIndex
                    else
                        set i = actualToIndex
                        loop
                            set i = i + 1
                            exitwhen i>=this.max
                            call Save$typeName$(this.contents, integer(this), i+fromIndex-toIndex, Load$typeName$(this.contents, integer(this), i))
                        endloop
                        set this.max = this.max+fromIndex-toIndex
                    endif
                debug else
                    debug call BJDebugMsg("ERROR: $listType$List \"removeRange\" method. Index Out of Bounds ("+I2S(toIndex)+").")
                endif
            debug else
                debug call BJDebugMsg("ERROR: $listType$List \"removeRange\" method. Index Out of Bounds ("+I2S(fromIndex)+").")
            endif
        endmethod
        // 返回数据第一次出现的索引
        method indexOf takes $type$ object returns integer
            local integer i = this.min
            loop
                set i = i + 1
                exitwhen i>=this.max
                if(Load$typeName$(this.contents, integer(this), i) == object)then
                    return this.getPublicIndex(i)
                endif
            endloop
            return -1
        endmethod
        // 返回数据上一次出现的索引
        method lastIndexOf takes $type$ object returns integer
            local integer i = this.max
            loop
                set i = i - 1
                exitwhen i<=this.min
                if(Load$typeName$(this.contents, integer(this), i) == object)then
                    return this.getPublicIndex(i)
                endif
            endloop
            return -1
        endmethod
        // 交互两个数据的位置
        method swap takes integer index1, integer index2 returns nothing
            local integer actualIndex1 = this.getActualIndex(index1)
            local integer actualIndex2 = this.getActualIndex(index2)
            if(this.isValidIndex(actualIndex1))then
                if(this.isValidIndex(actualIndex2))then
                    set this.tempObject = Load$typeName$(this.contents, integer(this), actualIndex1)
                    call Save$typeName$(this.contents, integer(this), actualIndex1, Load$typeName$(this.contents, integer(this), actualIndex2))
                    call Save$typeName$(this.contents, integer(this), actualIndex2, this.tempObject)
                debug else
                    debug call BJDebugMsg("ERROR: $listType$List \"swap\" method. Index Out of Bounds ("+I2S(index2)+").")
                endif
            debug else
                debug call BJDebugMsg("ERROR: $listType$List \"swap\" method. Index Out of Bounds ("+I2S(index1)+").")
            endif
        endmethod
        // 指定位置内存在数据则返回true
        method exists takes integer index returns boolean
            return index >= 0 and index < this.size
        endmethod
        // 如果当前列表没有任何数据则返回true
        method isEmpty takes nothing returns boolean
            return this.max == 0
        endmethod
        
//------------------END USER METHODS----------------------
        private method onDestroy takes nothing returns nothing
            call this.clear()
        endmethod
    endstruct
    //! endtextmacro
  //runtextmacro List( "type", "listType", "typeName" )
  
//type = type of object to store. must be exact.
//listType = prefix to the List struct name. can be whatever you want.
//ex: Timer --> TimerList
//typeName = suffix in Save, Load hashtable functions. must be exact.
//ex: Str --> LoadStr
  
//! runtextmacro List( "integer", "Integer", "Integer" )
// runtextmacro List( "string", "String", "Str" )
// runtextmacro List( "real", "Real", "Real" )
// runtextmacro List( "boolean", "Boolean", "Boolean" )
// runtextmacro List( "player", "Player", "PlayerHandle" )
// runtextmacro List( "unit", "Unit", "UnitHandle" )
// runtextmacro List( "item", "Item", "ItemHandle" )
// runtextmacro List( "widget", "Widget", "WidgetHandle" )
// runtextmacro List( "timer", "Timer", "TimerHandle" )
// runtextmacro List( "effect", "Effect", "EffectHandle" )
// runtextmacro List( "rect", "Rect", "RectHandle" )
// runtextmacro List( "group", "Group", "GroupHandle" )
// runtextmacro List( "force", "Force", "ForceHandle" )
// Add as many handle list types as you want, and comment out the ones you do not use
// so they do not take up unnecessary space in your map script.
endlibrary
library ListModule
//===========================================================================
// Information: 
//==============
//
//     This module allows you to create a linked list containing all of the allocated
// instances of a struct. Iterating through a linked list is slightly faster than the
// typical method of looping through an array containing all of the instances. However,
// getting a random struct from a list is an O(n) operation instead of O(1) as with
// SetModule. This should be a good trade as most systems don't need random access.
//
//     There is no speed loss while iterating through structs compared to doing
// it yourself, since all of method calls used while iterating get inlined. The best
// use for this module is to hide a lot of ugly low-level code from your systems.
//
// How to use List:
//==================
//
//     Implement the List module in your struct. Your struct will gain all of the
// following methods:
//
// (static) getLength: Returns an integer indicating the number of structs in the list.
//
// (static) getRandom: Returns a random struct from the list. Note that this is rather
//                     slow due to the fact that this is a linked list implementation.
//
// (static) getFirst: Returns the first struct in the list.
//
// (static) getLast: Returns the last struct in the list.
//
// getNext: Returns the next struct in the list.
//
// getPrev: Returns the previous struct in the list.
//
// inList: Returns a boolean indicating whether this struct is in the list.
//
// addList: Adds this struct to the list. Returns false if adding failed because the
//          list is being destroyed or the struct was already in the list.
//
// removeList: Removes this struct from the list. Returns false if removal failed 
//             because the struct was not in the list.
//
// (static) destroyList: Destroys all of the structs in the list.
//
// Example of List usage:
//========================
//
// struct YourStruct
//     implement List
//
//     static method create takes nothing returns YourStruct
//         local YourStruct ys = .allocate()
//             call ys.addList()
//         return ys
//     endmethod
//
//     method onDestroy takes nothing returns nothing
//         call .removeList()
//     endmethod
//
//     static method GetRandomStruct takes nothing returns YourStruct
//         return .getRandom() //That was easy... but slow.
//     endmethod
//
//     static method LoopThroughAllYourStructs takes nothing returns nothing
//         local YourStruct ys = .getFirst() //This is inlined to a variable read.
//             loop
//                 exitwhen ys == 0
//                 //Do something with the YourStruct instance here.
//                 set ys = ys.getNext() //This is inlined to an array read.
//             endloop
//     endmethod
// endstruct
//
//===========================================================================
    module List
    
        private static boolean destroyinglist = false
        private static thistype length = 0
        private static thistype first = 0
        private static thistype last = 0
    
        private thistype prev = 0
        private thistype next = 0
        private boolean inlist = false
    
        static method getLength takes nothing returns integer
            return .length
        endmethod
    
        static method getFirst takes nothing returns thistype
            return .first
        endmethod
    
        static method getLast takes nothing returns thistype
            return .last
        endmethod
    
        static method getRandom takes nothing returns thistype
            local thistype s = .first
            local thistype array list
            local integer n = -1
            loop
                exitwhen s == 0
                set n = n + 1
                set list[n] = s
                set s = s.next
            endloop
            if n == -1 then
                return 0
            endif
            return list[GetRandomInt(0, n)]
        endmethod
    
        method getNext takes nothing returns thistype
            return .next
        endmethod
    
        method getPrev takes nothing returns thistype
            return .prev
        endmethod
    
        method inList takes nothing returns boolean
            return .inlist
        endmethod
        method addList takes nothing returns boolean
            if not .inlist and not .destroyinglist then
                set .inlist = true
                if .first == 0 then
                    set .first = this
                else
                    set .prev = .last
                    set .prev.next = this
                endif
                set .last = this
                set .length = .length + 1
                return true
            endif
            return false
        endmethod
    
        method removeList takes nothing returns boolean
            if .inlist then
                if .destroyinglist then
                    return true
                endif
                set .inlist = false
                if .first == this then
                    set .first = .next
                endif
                if .last == this then
                    set .last = .prev
                endif
                set .prev.next = .next
                set .next.prev = .prev
                set .length = .length - 1
                return true
            endif
            return false
        endmethod
    
        static method destroyList takes nothing returns nothing
            local thistype s = .first
            if not .destroyinglist then
                loop
                    exitwhen s == 0
                    set .destroyinglist = false
                    call s.removeList()
                    set .destroyinglist = true
                    call s.destroy()
                    set s = s.next
                endloop
                set .destroyinglist = false
            endif
        endmethod
    
    endmodule
endlibrary
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
    // 玩家属性事件
    // 玩家属性判断
    private struct InitEvent
    {
        static method onInit()
        {
            integer index = <?= StringHash("事件映射") ?>;
            // 玩家单位
            SaveInteger(XZHT, index, <?= StringHash("被攻击") ?>, 18);
            SaveInteger(XZHT, index, <?= StringHash("被营救") ?>, 19);
            SaveInteger(XZHT, index, <?= StringHash("单位死亡") ?>, 20);
            SaveInteger(XZHT, index, <?= StringHash("开始腐化") ?>, 21);
            SaveInteger(XZHT, index, <?= StringHash("被发现") ?>, 22);
            SaveInteger(XZHT, index, <?= StringHash("单位隐藏") ?>, 23);
            SaveInteger(XZHT, index, <?= StringHash("单位被选择") ?>, 24);
            SaveInteger(XZHT, index, <?= StringHash("单位取消选择") ?>, 25);
            SaveInteger(XZHT, index, <?= StringHash("单位开始建造") ?>, 26);
            SaveInteger(XZHT, index, <?= StringHash("单位取消建造") ?>, 27);
            SaveInteger(XZHT, index, <?= StringHash("单位完成建造") ?>, 28);
            SaveInteger(XZHT, index, <?= StringHash("开始建筑升级") ?>, 29);
            SaveInteger(XZHT, index, <?= StringHash("取消建筑升级") ?>, 30);
            SaveInteger(XZHT, index, <?= StringHash("完成建筑升级") ?>, 31);
            SaveInteger(XZHT, index, <?= StringHash("开始训练单位") ?>, 32);
            SaveInteger(XZHT, index, <?= StringHash("取消训练单位") ?>, 33);
            SaveInteger(XZHT, index, <?= StringHash("完成训练单位") ?>, 34);
            SaveInteger(XZHT, index, <?= StringHash("开始研究科技") ?>, 35);
            SaveInteger(XZHT, index, <?= StringHash("取消研究科技") ?>, 36);
            SaveInteger(XZHT, index, <?= StringHash("完成研究科技") ?>, 37);
            SaveInteger(XZHT, index, <?= StringHash("发布无目标") ?>, 38);
            SaveInteger(XZHT, index, <?= StringHash("发布指定点") ?>, 39);
            SaveInteger(XZHT, index, <?= StringHash("发布指定目标") ?>, 40);
            SaveInteger(XZHT, index, <?= StringHash("提升等级") ?>, 41);
            SaveInteger(XZHT, index, <?= StringHash("学习技能") ?>, 42);
            SaveInteger(XZHT, index, <?= StringHash("变得可重生") ?>, 43);
            SaveInteger(XZHT, index, <?= StringHash("开始复活英雄") ?>, 44);
            SaveInteger(XZHT, index, <?= StringHash("取消复活英雄") ?>, 45);
            SaveInteger(XZHT, index, <?= StringHash("完成复活英雄") ?>, 46);
            SaveInteger(XZHT, index, <?= StringHash("被召唤") ?>, 47);
            SaveInteger(XZHT, index, <?= StringHash("丢弃物品") ?>, 48);
            SaveInteger(XZHT, index, <?= StringHash("获得物品") ?>, 49);
            SaveInteger(XZHT, index, <?= StringHash("使用物品") ?>, 50);
            SaveInteger(XZHT, index, <?= StringHash("运输机装载") ?>, 51);
            SaveInteger(XZHT, index, <?= StringHash("出售单位") ?>, 269);
            SaveInteger(XZHT, index, <?= StringHash("改变所有者") ?>, 270);
            SaveInteger(XZHT, index, <?= StringHash("出售物品") ?>, 271);
            SaveInteger(XZHT, index, <?= StringHash("准备释放技能") ?>, 272);
            SaveInteger(XZHT, index, <?= StringHash("开始释放技能") ?>, 273);
            SaveInteger(XZHT, index, <?= StringHash("发动技能效果") ?>, 274);
            SaveInteger(XZHT, index, <?= StringHash("释放技能结束") ?>, 275);
            SaveInteger(XZHT, index, <?= StringHash("停止释放技能") ?>, 276);
            SaveInteger(XZHT, index, <?= StringHash("单位抵押物品") ?>, 277);
            // 玩家属性事件
            SaveInteger(XZHT, index, <?= StringHash("金币") ?>, 1);
            SaveInteger(XZHT, index, <?= StringHash("木材") ?>, 2);
            SaveInteger(XZHT, index, <?= StringHash("使用人口") ?>, 5);
            SaveInteger(XZHT, index, <?= StringHash("可用人口") ?>, 4);
            SaveInteger(XZHT, index, <?= StringHash("人口上限") ?>, 6);
            // 玩家属性判断
            SaveInteger(XZHT, index, <?= StringHash("<") ?>, 0);
            SaveInteger(XZHT, index, <?= StringHash("<=") ?>, 1);
            SaveInteger(XZHT, index, <?= StringHash("==") ?>, 2);
            SaveInteger(XZHT, index, <?= StringHash(">=") ?>, 3);
            SaveInteger(XZHT, index, <?= StringHash(">") ?>, 4);
            SaveInteger(XZHT, index, <?= StringHash("!=") ?>, 5);
        }
    }
    // Object EventResponse
    // 网易延迟判断 本地环境内 Example : 在异步注册事件的回调下 通过 SyncEventBool() 的方式可以快速判断同步延迟间隔，避免频发
    // 在异步事件内响应执行同步自定义事件 Example : 在异步注册事件的回调下 通过 SyncEventString(事件名) 的方式去同步响应自定义事件 但是该方式没有过滤延迟判断
    // 网易延迟判断 同步事件内 Example : 如果是手动通过SyncEventBool()来快速判断的话，那么在同步事件回调下需要通过SyncEventGamer(Gamer)的方式去刷新一遍
    // 在异步环境内同步执行注册自定义事件 Example : 在异步注册事件的回调下 通过 onSyncEvent(事件名) 的方式去响应自定义事件 - 在同步环境下响应
    // 固定用来同步用的同步事件名
    public struct Event extends InitEvent
    {
        private
        {
            static trigger t[];
            static boolean orderBool = false;
            static boolean abilityBool = false;
            static method onOrder() { TriggerEvaluate(LoadTriggerHandle(XZHT, <?= StringHash("命令事件") ?>, GetIssuedOrderId())); } // 命令发布事件回调
static method onCast() { TriggerEvaluate(LoadTriggerHandle(XZHT, <?= StringHash("技能事件") ?>, GetSpellAbilityId())); } // 发动技能效果回调

            static method onInit() {
                // 自动响应异步注册并且执行同步事件
                Event.onSync("KeyDataEvent", function() {
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
                integer i = LoadInteger(XZHT, <?= StringHash("事件映射") ?>, StringHash(name));
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
                SaveInteger(XZHT, <?= StringHash("单位事件") ?>, index, i);
                SaveTriggerConditionHandle(XZHT, <?= StringHash("单位事件") ?>, index, condition);
                condition = null;
                return index;
            }
            // 玩家单位事件 Example : Event.onUnitForGamer("单位死亡", gamer[0], function action);
            static method onUnitForGamer(string name, Gamer gm, code action) {
                integer i = 16 * LoadInteger(XZHT, <?= StringHash("事件映射") ?>, StringHash(name)) + gm.id();
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
                if (!HaveSavedHandle(XZHT, <?= StringHash("命令事件") ?>, orderId)) {
                    SaveTriggerHandle(XZHT, <?= StringHash("命令事件") ?>, orderId, CreateTrigger());
                }
                TriggerAddCondition(LoadTriggerHandle(XZHT, <?= StringHash("命令事件") ?>, orderId), Filter(action));
            }
            // 任意单位发动指定技能效果 Example : Event.onUnitAbility('A000', function action);
            static method onUnitAbility(integer abId, code action) {
                if (!thistype.abilityBool) {
                    thistype.onUnit("发动技能效果", function thistype.onCast);
                    thistype.abilityBool = true;
                }
                if (!HaveSavedHandle(XZHT, <?= StringHash("技能事件") ?>, abId)) {
                    SaveTriggerHandle(XZHT, <?= StringHash("技能事件") ?>, abId, CreateTrigger());
                }
                TriggerAddCondition(LoadTriggerHandle(XZHT, <?= StringHash("技能事件") ?>, abId), Filter(action));
            }
            // 获取任意单位事件绑定的触发器
            static method getTrigger(string name) ->trigger {
                return thistype.t[LoadInteger(XZHT, <?= StringHash("事件映射") ?>, StringHash(name))];
            }
            // 删除任意单位事件回调函数
            static method removeAction(integer index) {
                if (HaveSavedInteger(XZHT, <?= StringHash("单位事件") ?>, index)) {
                    TriggerRemoveCondition(thistype.t[LoadInteger(XZHT, <?= StringHash("单位事件") ?>, index)], LoadTriggerConditionHandle(XZHT, <?= StringHash("单位事件") ?>, index));
                    RemoveSavedInteger(XZHT, <?= StringHash("单位事件") ?>, index);
                    RemoveSavedHandle(XZHT, <?= StringHash("单位事件") ?>, index);
                }
            }
        }
        public
        {
            // 任意玩家发送消息事件 Example : Event.onGamerChat(function action);
            static method onGamerChat(code action) {
                integer index = 0;
                if (!HaveSavedHandle(XZHT, <?= StringHash("玩家事件") ?>, <?= StringHash("发送消息") ?>)) {
                    SaveTriggerHandle(XZHT, <?= StringHash("玩家事件") ?>, <?= StringHash("发送消息") ?>, CreateTrigger());
                    for (0 <= index <= 15) {
                        TriggerRegisterPlayerChatEvent(LoadTriggerHandle(XZHT, <?= StringHash("玩家事件") ?>, <?= StringHash("发送消息") ?>), Player(index), "", true);
                    }
                }
                TriggerAddCondition(LoadTriggerHandle(XZHT, <?= StringHash("玩家事件") ?>, <?= StringHash("发送消息") ?>), Filter(action));
            }
            // 任意玩家事件 Example : Event.onGamer(EVENT_PLAYER_END_CINEMATIC, function action); <- ESC事件
            static method onGamer(playerevent pe, code action) {
                integer index = 0;
                integer eventId = GetHandleId(pe);
                if (!HaveSavedHandle(XZHT, <?= StringHash("玩家事件") ?>, eventId)) {
                    SaveTriggerHandle(XZHT, <?= StringHash("玩家事件") ?>, eventId, CreateTrigger());
                    for (0 <= index <= 15) {
                        TriggerRegisterPlayerEvent(LoadTriggerHandle(XZHT, <?= StringHash("玩家事件") ?>, eventId), Player(index), pe);
                    }
                }
                TriggerAddCondition(LoadTriggerHandle(XZHT, <?= StringHash("玩家事件") ?>, eventId), Filter(action));
            }
            // 任意玩家属性事件 Example : Event.onGamerData("金币", ">=", 800000); 金币 or 木材 or 使用人口 or 可用人口 or 人口上限
            static method onGamerData(string name, string contrast, integer data, code action) {
                integer index = 0;
                integer nameId = LoadInteger(XZHT, <?= StringHash("事件映射") ?>, StringHash(name));
                integer contrastId = LoadInteger(XZHT, <?= StringHash("事件映射") ?>, StringHash(contrast));
                integer eventId = nameId + contrastId + data;
                if (!HaveSavedHandle(XZHT, <?= StringHash("玩家事件") ?>, eventId)) {
                    SaveTriggerHandle(XZHT, <?= StringHash("玩家事件") ?>, eventId, CreateTrigger());
                    for (0 <= index <= 15) {
                        TriggerRegisterPlayerStateEvent(LoadTriggerHandle(XZHT, <?= StringHash("玩家事件") ?>, eventId), Player(index), ConvertPlayerState(nameId), ConvertLimitOp(contrastId), I2R(data));
                    }
                }
                TriggerAddCondition(LoadTriggerHandle(XZHT, <?= StringHash("玩家事件") ?>, eventId), Filter(action));
            }
        }
        public
        {
            // 任意单位进入区域事件 Example : Event.onEnter(r, function action);
            static method onEnter(rect r, code action) {
                integer handleId = GetHandleId(r);
                region rn = null;
                trigger trig = null;
                if (HaveSavedHandle(XZHT, handleId, <?= StringHash("不规则矩形") ?>)) {
                    rn = LoadRegionHandle(XZHT, handleId, <?= StringHash("不规则矩形") ?>);
                } else {
                    rn = CreateRegion();
                    RegionAddRect(rn, r);
                    SaveRegionHandle(XZHT, handleId, <?= StringHash("不规则矩形") ?>, rn);
                    SaveRectHandle(XZHT, GetHandleId(rn), <?= StringHash("规则矩形") ?>, r);
                }
                if (HaveSavedHandle(XZHT, handleId, <?= StringHash("进入触发器") ?>)) {
                    trig = LoadTriggerHandle(XZHT, handleId, <?= StringHash("进入触发器") ?>);
                } else {
                    trig = CreateTrigger();
                    TriggerRegisterEnterRegion(trig, rn, null);
                    SaveTriggerHandle(XZHT, handleId, <?= StringHash("进入触发器") ?>, trig);
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
                if (HaveSavedHandle(XZHT, handleId, <?= StringHash("不规则矩形") ?>)) {
                    rn = LoadRegionHandle(XZHT, handleId, <?= StringHash("不规则矩形") ?>);
                } else {
                    rn = CreateRegion();
                    RegionAddRect(rn, r);
                    SaveRegionHandle(XZHT, handleId, <?= StringHash("不规则矩形") ?>, rn);
                    SaveRectHandle(XZHT, GetHandleId(rn), <?= StringHash("规则矩形") ?>, r);
                }
                if (HaveSavedHandle(XZHT, handleId, <?= StringHash("离开触发器") ?>)) {
                    trig = LoadTriggerHandle(XZHT, handleId, <?= StringHash("离开触发器") ?>);
                } else {
                    trig = CreateTrigger();
                    TriggerRegisterLeaveRegion(trig, rn, null);
                    SaveTriggerHandle(XZHT, handleId, <?= StringHash("离开触发器") ?>, trig);
                }
                TriggerAddCondition(trig, Filter(action));
                rn = null;
                trig = null;
            }
            // 删除规则矩形 Example : Event.removeRect(r);
            static method removeRect(rect r) {
                integer handleId = GetHandleId(r);
                if (HaveSavedHandle(XZHT, handleId, <?= StringHash("不规则矩形") ?>)) {
                    RemoveSavedHandle(XZHT, GetHandleId(LoadRegionHandle(XZHT, handleId, <?= StringHash("不规则矩形") ?>)), <?= StringHash("规则矩形") ?>);
                    RemoveRegion(LoadRegionHandle(XZHT, handleId, <?= StringHash("不规则矩形") ?>));
                    DestroyTrigger(LoadTriggerHandle(XZHT, handleId, <?= StringHash("进入触发器") ?>));
                    DestroyTrigger(LoadTriggerHandle(XZHT, handleId, <?= StringHash("离开触发器") ?>));
                    FlushChildHashtable(XZHT, handleId);
                }
                RemoveRect(r);
            }
            // 获取触发的规则矩形
            static method triggerRect() ->rect {
                return LoadRectHandle(XZHT, GetHandleId(GetTriggeringRegion()), <?= StringHash("规则矩形") ?>);
            }
        }
        public
        {
            // 注册自定义事件 Example : Event.onDiy("自定义事件名", function action);
            static method onDiy(string name, code action) ->integer {
                integer index,nameId;
                triggercondition condition;
                nameId = StringHash(name);
                if (!HaveSavedHandle(XZHT, <?= StringHash("自定义事件") ?>, nameId)) {
                    SaveTriggerHandle(XZHT, <?= StringHash("自定义事件") ?>, nameId, CreateTrigger());
                    SaveStr(XZHT, <?= StringHash("自定义事件") ?>, GetHandleId(LoadTriggerHandle(XZHT, <?= StringHash("自定义事件") ?>, nameId)), name);
                    SaveInteger(XZHT, <?= StringHash("自定义事件") ?>, GetHandleId(LoadTriggerHandle(XZHT, <?= StringHash("自定义事件") ?>, nameId)), nameId);
                }
                condition = TriggerAddCondition(LoadTriggerHandle(XZHT, <?= StringHash("自定义事件") ?>, nameId), Filter(action));
                index = GetHandleId(condition);
                SaveInteger(XZHT, <?= StringHash("自定义事件") ?>, index, nameId);
                SaveTriggerConditionHandle(XZHT, <?= StringHash("自定义事件") ?>, index, condition);
                condition = null;
                return index;
            }
            // 响应自定义事件 Example : Event.executeDiy("自定义事件名"); or Event.executeDiyInt(strHash("自定义事件名"));
            static method executeDiy(string name) {
                integer index = StringHash(name);
                if (HaveSavedHandle(XZHT, <?= StringHash("自定义事件") ?>, index)) {
                    TriggerEvaluate(LoadTriggerHandle(XZHT, <?= StringHash("自定义事件") ?>, index));
                }
            }
            static method executeDiyInt(integer index) {
                if (HaveSavedHandle(XZHT, <?= StringHash("自定义事件") ?>, index)) {
                    TriggerEvaluate(LoadTriggerHandle(XZHT, <?= StringHash("自定义事件") ?>, index));
                }
            }
            // 删除函数
            static method destroyDiy(integer index) {
                if (HaveSavedInteger(XZHT, <?= StringHash("自定义事件") ?>, index)) {
                    TriggerRemoveCondition(LoadTriggerHandle(XZHT, <?= StringHash("自定义事件") ?>, LoadInteger(XZHT, <?= StringHash("自定义事件") ?>, index)), LoadTriggerConditionHandle(XWHT, <?= StringHash("自定义事件") ?>, index));
                    RemoveSavedInteger(XZHT, <?= StringHash("自定义事件") ?>, index);
                    RemoveSavedHandle(XZHT, <?= StringHash("自定义事件") ?>, index);
                }
            }
            // 获取当前触发事件名
            static method getEventName() ->string {
                return LoadStr(XZHT, <?= StringHash("自定义事件") ?>, GetHandleId(GetTriggeringTrigger()));
            }
            // 获取当前触发的事件名哈希值
            static method getEventIndex() ->integer {
                return LoadInteger(XZHT, <?= StringHash("自定义事件") ?>, GetHandleId(GetTriggeringTrigger()));
            }
            // 获取绑定当前事件的数据
            static method getTriggerEventData() ->integer {
                return LoadInteger(XZHT, <?= StringHash("自定义事件数据") ?>, LoadInteger(XZHT, <?= StringHash("自定义事件") ?>, GetHandleId(GetTriggeringTrigger())));
            }
            // 绑定数据
            static method setEventData(string name, integer data) {
                SaveInteger(XZHT, <?= StringHash("自定义事件数据") ?>, StringHash(name), data);
            }
            static method setEventDataInt(integer index, integer data) {
                SaveInteger(XZHT, <?= StringHash("自定义事件数据") ?>, index, data);
            }
            // 获取数据
            static method getEventData(string name) ->integer {
                return LoadInteger(XZHT, <?= StringHash("自定义事件数据") ?>, StringHash(name));
            }
            static method getEventDataInt(integer index) ->integer {
                return LoadInteger(XZHT, <?= StringHash("自定义事件数据") ?>, index);
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
                if (!HaveSavedHandle(XZHT, <?= StringHash("同步事件") ?>, nameId)) {
                    SaveTriggerHandle(XZHT, <?= StringHash("同步事件") ?>, nameId, CreateTrigger());
                    DzTriggerRegisterSyncData(LoadTriggerHandle(XZHT, <?= StringHash("同步事件") ?>, nameId), name, false);
                }
                condition = TriggerAddCondition(LoadTriggerHandle(XZHT, <?= StringHash("同步事件") ?>, nameId), Filter(action));
                index = GetHandleId(condition);
                SaveInteger(XZHT, <?= StringHash("同步事件") ?>, index, nameId);
                SaveTriggerConditionHandle(XZHT, <?= StringHash("同步事件") ?>, index, condition);
                condition = null;
                return index;
            }
            // 同步数据
            static method syncData(string name, string value) { DzSyncData(name, value); }
            // 删除函数
            static method destroySync(integer index) {
                if (HaveSavedInteger(XZHT, <?= StringHash("同步事件") ?>, index)) {
                    TriggerRemoveCondition(LoadTriggerHandle(XZHT, <?= StringHash("同步事件") ?>, LoadInteger(XZHT, <?= StringHash("同步事件") ?>, index)), LoadTriggerConditionHandle(XWHT, <?= StringHash("同步事件") ?>, index));
                    RemoveSavedInteger(XZHT, <?= StringHash("同步事件") ?>, index);
                    RemoveSavedHandle(XZHT, <?= StringHash("同步事件") ?>, index);
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
    private struct DamageEvent
    {
        private
        {
            static trigger Trigger = null; // 伤害事件主体触发器
static trigger TriggerToDestory = null; // 伤害事件销毁替换触发器
static conditionfunc filter = null;
            // 响应事件
            static method AnyUnitDamagedTriggerAction() {
                Event.executeDiyInt(<?= StringHash("单位接受伤害") ?>);
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
                if (true) {
                    thistype.filter = Condition(function thistype.AnyUnitDamagedFilter);
                    thistype.Trigger = CreateTrigger();
                    TriggerAddAction(thistype.Trigger, function thistype.AnyUnitDamagedTriggerAction);
                    thistype.AnyUnitDamagedEnumUnit();
                    thistype.AnyUnitDamagedRegistTriggerUnitEnter();
                    if (true) {
                        // 每隔 DAMAGE_EVENT_SWAP_TIMEOUT 秒, 将正在使用的 DamageEventTrigger 移入销毁队列
                        TimerStart(CreateTimer(), 600, true, function thistype.SyStemAnyUnitDamagedSwap);
                    }
                }
            }
        }
    }
}
//! endzinc
//! zinc
library Timer
{
    public struct Timer
    {
        public
        {
            integer number; // 计时器执行的帧数

            static integer Hour = 0; // 时
static integer Branch = 0; // 分
static integer Second = 0; // 秒
}
        private
        {
            // 成员属性
            trigger trig; // 回调动作
real elapsed; // 流逝时间
real cycle; // 周期时间
real suspendTime; // 暂停时流逝的时间
boolean perio; // 周期状态
boolean pause; // 执行状态
integer dataInt; // 绑定的数据
static timer tm = CreateTimer(); // 中心计时器管控
static integer gameTimer = 0; // 游戏时间
static Timer Structs[]; // 现存实例
static integer size = 0; // 注册数量
static Timer name = 0; // 到期的实例

            // 周期执行
            static method Spin() {
                thistype this = 0;
                integer index = 0;
                thistype.gameTimer +=1;
                if (thistype.size > 0) {
                    while (index != thistype.size) {
                        this = thistype.Structs[index];
                        this.elapsed +=0.01;
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
                TimerStart(thistype.tm, 0.01, true, function thistype.Spin);
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
                this.trig = CreateTrigger();
                this.cycle = time;
                this.perio = flag;
                this.pause = true;
                this.elapsed = 0.0;
                this.dataInt = 0;
                this.number = 0;
                this.suspendTime = 0.0;
                TriggerAddAction(this.trig, action);
                thistype.Structs[thistype.size] = this;
                thistype.size +=1;
                return this;
            }
            // Get
            method HandleId() ->integer { return GetHandleId(this.trig); } // 获取唯一性标识
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
                boolean switch = LoadBoolean(XZHT, GetHandleId(GetLocalPlayer()), <?= StringHash("特效开关") ?>);
                if (switch) name = "";
                this.e = AddSpecialEffect(name, x, y);
                this.timedBool= false;
                this.handleId = GetHandleId(this.e);
                this.thisSize +=1;
                SaveInteger(XZHT, <?= StringHash("特效实例") ?>, this.handleId, integer(this));
                return this;
            }
            static method createUnit(string name, Unit u, string attachPointName) ->thistype {
                thistype this = thistype.allocate();
                boolean switch = LoadBoolean(XZHT, GetHandleId(GetLocalPlayer()), <?= StringHash("特效开关") ?>);
                if (switch) name = "";
                this.e = AddSpecialEffectTarget(name, u.Handle(), attachPointName);
                this.timedBool= false;
                this.handleId = GetHandleId(this.e);
                this.thisSize +=1;
                SaveInteger(XZHT, <?= StringHash("特效实例") ?>, this.handleId, integer(this));
                return this;
            }
            static method byHandle(effect e) ->thistype {
                thistype this = 0;
                if (LoadInteger(XZHT, <?= StringHash("特效实例") ?>, GetHandleId(e)) > 0) {
                    return LoadInteger(XZHT, <?= StringHash("特效实例") ?>, GetHandleId(e));
                }
                this = thistype.allocate();
                this.e = e;
                this.timedBool= false;
                this.handleId = GetHandleId(this.e);
                this.thisSize +=1;
                SaveInteger(XZHT, <?= StringHash("特效实例") ?>, this.handleId, integer(this));
                return this;
            }
            // 析构函数
            method destroy() {
                if (integer(this) < 1) return;
                RemoveSavedInteger(XZHT, <?= StringHash("特效实例") ?>, this.handleId);
                this.e = null;
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
                this.f = CreateFogModifierRadius(gm.Handle(), state, x, y, radius, true, false);
                this.handleId = GetHandleId(this.f);
                if (flag) {
                    FogModifierStart(this.f);
                }
                SaveInteger(XZHT, <?= StringHash("可见度修整器实例") ?>, this.handleId, integer(this));
                return this;
            }
            // 规则矩形 创建以where矩形的可见度修正器给玩家 flag = 是否为启用
            static method createRect(Gamer gm, fogstate state, rect where, boolean flag) ->thistype {
                thistype this = thistype.allocate();
                this.f = CreateFogModifierRect(gm.Handle(), state, where, true, false);
                this.handleId = GetHandleId(this.f);
                if (flag) {
                    FogModifierStart(this.f);
                }
                SaveInteger(XZHT, <?= StringHash("可见度修整器实例") ?>, this.handleId, integer(this));
                return this;
            }
            static method byHandle(fogmodifier fog) ->thistype {
                thistype this = 0;
                if (LoadInteger(XZHT, <?= StringHash("可见度修整器实例") ?>, GetHandleId(fog)) > 0) {
                    return LoadInteger(XZHT, <?= StringHash("可见度修整器实例") ?>, GetHandleId(fog));
                }
                this = thistype.allocate();
                this.f = fog;
                this.handleId = GetHandleId(this.f);
                SaveInteger(XZHT, <?= StringHash("可见度修整器实例") ?>, this.handleId, integer(this));
                return this;
            }
            // 析构函数
            method destroy() {
                RemoveSavedInteger(XZHT, <?= StringHash("可见度修整器实例") ?>, this.handleId);
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
//! zinc
library Gamer requires Base
{
    private
    {
        integer Count = 0; // 玩家数量
}
    public struct Gamer
    {
        public
        {
            // 玩家自身
            static Gamer user[];
            // 特殊玩家
            static Gamer NEUTRAL_AGGRESSIVE; //中立敌对
static Gamer NEUTRAL_VICTIM; //中立受害
static Gamer NEUTRAL_EXTRA; //中立特殊
static Gamer NEUTRAL_PASSIVE; //中立被动
// 成员属性
Table ht; // 玩家表
Unit hero; // 英雄
Unit pets; // 宠物
}
        private
        {
            // 玩家成员属性
            integer pid;
            player p;
            integer team;
            // 原始构造
            static Gamer gamerEx[];
            // 初始化
            static method onInit()
            {
                integer index;
                for (0 <= index <= 15) {
                    thistype.user[index] = thistype.allocate();
                    thistype.user[index].pid = index;
                    thistype.user[index].p = Player(index);
                    thistype.user[index].team = 0;
                    thistype.user[index].ht = Table.create();
                    thistype.user[index].hero = 0;
                    thistype.user[index].pets = 0;
                    thistype.gamerEx[index] = thistype.user[index];
                    if (thistype.user[index].IsPlayer()) {
                        Count +=1;
                    }
                }
            }
        }
        public
        {
            // 重载 ==
            method operator == (Gamer gm) ->boolean { return this.p == gm.Handle(); }
            // Get
            static method Gamer(integer id) ->thistype {
                if (id > 15) {
                    debug BJDebugMsg("Gamer-id >15!");
                    return 0;
                }
                return thistype.gamerEx[id];
            }
            method Handle() ->player { return this.p; } // 获取玩家
method HandleId() ->integer { return GetHandleId(this.p); } // 获取句柄
method id() ->integer { return this.pid; } // 获取ID
method name() ->string { return GetPlayerName(this.p); } // 获取名字
method expRate() ->real { return GetPlayerHandicapXP(this.p); } // 获取经验获得率
method gamerState(playerstate ps) ->integer { return GetPlayerState(this.p, ps); } // 玩家属性
method gold() ->integer { return GetPlayerState(this.p, PLAYER_STATE_RESOURCE_GOLD); } // 金币
method wood() ->integer { return GetPlayerState(this.p, PLAYER_STATE_RESOURCE_LUMBER); } // 木材
method usedFood() ->integer { return GetPlayerState(this.p, PLAYER_STATE_RESOURCE_FOOD_USED); } // 人口使用
method maxFood() ->integer { return GetPlayerState(this.p, PLAYER_STATE_FOOD_CAP_CEILING); } // 人口上限
method techLevel(integer techId) ->integer { return GetPlayerTechCount(this.p, techId, true); } // 当前科技等级
method maxTechLevel(integer techId) ->integer { return GetPlayerTechMaxAllowed(this.p, techId); } // 最大科技等级
method color() ->playercolor { return GetPlayerColor(this.p); } // 玩家颜色
method HPRate() ->real { return GetPlayerHandicap(this.p); } // 获取生命障碍
method controller() ->mapcontrol { return GetPlayerController(this.p); } // 玩家控制者
method taxRate(Gamer tar, playerstate ps) ->integer { return GetPlayerTaxRate(this.p, tar.Handle(), ps); } // 获取税率
method startPointIndex() ->integer { return GetPlayerStartLocation(this.p); } // 玩家开始位置
method Race() ->race { return GetPlayerRace(this.p); } // 玩家种族
method selectable() ->boolean { return GetPlayerSelectable(this.p); } // 让玩家选择
method slotState() ->playerslotstate { return GetPlayerSlotState(this.p); } // 获取游戏状态
method unitCount(boolean flag) ->integer { return GetPlayerUnitCount(this.p, flag); } // 获取玩家单位数量，是否包括未完成的
method structureCount(boolean flag) ->integer { return GetPlayerStructureCount(this.p, flag); } // 获取玩家建筑数量，是否包括未完成的
method gamerNumber() ->integer { return GetPlayers(); } // 获取玩家数量
// 获取玩家队伍编号
method teamId() ->integer {
                if (this.team >= 0) {
                    this.team = GetPlayerTeam(this.p) + 1;
                }
                return this.team;
            }
            // 获取在线人数
            static method countAlive() ->integer {
                integer index;
                for (0 <= index <= 15) {
                    if (thistype.gamerEx[index].IsPlayer()) {
                        debug BJDebugMsg(I2S(index));
                        index +=1;
                    }
                }
                return index;
            }
            static method getNumber() ->integer { return Count; } // 获取游戏玩家数

            // Set
            method setName(string name) { SetPlayerName(this.p, name); } // 设置玩家名字
method setEXPRate(real rate) { SetPlayerHandicapXP(this.p, rate); } // 设置经验获得率
method setGamerState(playerstate ps, integer value) { SetPlayerState(this.p, ps, value); } // 设置玩家属性
method setGold(integer value) { SetPlayerState(this.p, PLAYER_STATE_RESOURCE_GOLD, value); } // 设置金币
method setWood(integer value) { SetPlayerState(this.p, PLAYER_STATE_RESOURCE_LUMBER, value); } // 设置木材
method setUsedFood(integer value) { SetPlayerState(this.p, PLAYER_STATE_RESOURCE_FOOD_USED, value); } // 设置人口使用数量
method setMaxFood(integer value) { SetPlayerState(this.p, PLAYER_STATE_FOOD_CAP_CEILING, value); } // 设置人口最大上限
// 玩家结盟 0 = 结盟[不侵犯]，1 = 救援请求，2 = 救援回应，3 = 共享经验，4 = 盟友魔法锁定，5 = 共享视野，6 = 共享单位，7 = 共享完全控制权
method setAlliance(Gamer dest, integer alliance, boolean flag) {
                SetPlayerAlliance(this.p, dest.Handle(), ConvertAllianceType(alliance), flag);
            }
            // 简单结盟
            method setAllianceSimple(Gamer dest, boolean flag) {
                SetPlayerAlliance(this.p, dest.Handle(), ConvertAllianceType(0), flag); // 结盟
SetPlayerAlliance(this.p, dest.Handle(), ConvertAllianceType(1), false); // 救援请求
SetPlayerAlliance(this.p, dest.Handle(), ConvertAllianceType(2), false); // 救援回应
SetPlayerAlliance(this.p, dest.Handle(), ConvertAllianceType(3), flag); // 共享经验
SetPlayerAlliance(this.p, dest.Handle(), ConvertAllianceType(4), false); // 魔法锁定
SetPlayerAlliance(this.p, dest.Handle(), ConvertAllianceType(5), flag); // 共享视野
}
            // 允许控制 flag参数为是否显示头像
            method enableControl(Gamer dest, boolean flag) {
                SetPlayerAlliance(this.p, dest.Handle(), ConvertAllianceType(6), true);
                if (flag) {
                    SetPlayerAlliance(this.p, dest.Handle(), ConvertAllianceType(7), true);
                }
            }
            // 设置玩家队伍编号 1开始
            method setTeamId(integer teamId) {
                this.team = teamId;
                SetPlayerTeam(this.p, teamId - 1);
            }
            method setAbilityEnable(integer abId, boolean flag) { SetPlayerAbilityAvailable(this.p, abId, flag); } // 是否禁用技能 true 禁用
method setTechLevel(integer techId, integer level) { SetPlayerTechResearched(this.p, techId, level); } // 设置当前科技等级
method setMaxTechLevel(integer techId, integer level) { SetPlayerTechMaxAllowed(this.p, techId, level); } // 设置最大科技等级
method setColor(playercolor color) { SetPlayerColor(this.p, color); } // 设置玩家颜色
method setHPRate(real value) { SetPlayerHandicap(this.p, value); } // 设置生命障碍
method setStartPointIndex(integer index) { SetPlayerStartLocation(this.p, index); } // 设置玩家起始位置
method setTaxRate(Gamer tar, playerstate ps, integer value) { SetPlayerTaxRate(this.p, tar.Handle(), ps, value); } // 设置税率
static method setGamerNumber(integer size) { SetPlayers(size); } // 设置玩家数量

            // Sub
            method subGold(integer value) { this.setGold(this.gold() - value); } // 减少金币
method subWood(integer value) { this.setWood(this.wood() - value); } // 减少木材
method subUsedFood(integer value) { this.setUsedFood(this.usedFood() - value); } // 减少人口使用
method subMaxFood(integer value) { this.setMaxFood(this.maxFood() - value); } // 减少最大人口上限

            // Add
            method addGamerState(playerstate ps, integer value) { this.setGamerState(ps, this.gamerState(ps) + value); } // 增加玩家属性
method addGold(integer value) { this.setGold(this.gold() + value); } // 增加金币
method addWood(integer value) { this.setWood(this.wood() + value); } // 增加木材
method addUsedFood(integer value) { this.setUsedFood(this.usedFood() + value); } // 增加人口使用
method addMaxFood(integer value) { this.setMaxFood(this.maxFood() + value); } // 增加最大人口上限
method addTechLevel(integer techId, integer value) { AddPlayerTechResearched(this.p, techId, value); } // 增加科技等级

            // boolean
            method IsObserver() ->boolean { return IsPlayerObserver(this.p); } // 是否为裁判
method IsLocal() ->boolean { return this.p == GetLocalPlayer(); } // 是否为本地玩家
// 是否为用户玩家
method IsPlayer() ->boolean {
                return this.controller() == MAP_CONTROL_USER && this.slotState() == PLAYER_SLOT_STATE_PLAYING;
            }
            method IsEnemy(Gamer dest) ->boolean { return IsPlayerEnemy(this.p, dest.Handle()); } // 是否为敌人
method IsAlly(Gamer dest) ->boolean { return IsPlayerAlly(this.p, dest.Handle()); } // 是否为友军
method IsRacePrefSet(racepreference rp) ->boolean { return IsPlayerRacePrefSet(this.p, rp); } // 玩家的种族选择
method IsXYFogged(real x, real y) ->boolean { return IsFoggedToPlayer(x, y, this.p); } // xy坐标在迷雾中
method IsXYMasked(real x, real y) ->boolean { return IsMaskedToPlayer(x, y, this.p); } // xy坐标在黑色阴影中
method IsXYVisible(real x, real y) ->boolean { return IsVisibleToPlayer(x, y, this.p); } // xy坐标是否可见
method IsPointFogged(Point p)->boolean{ return IsLocationFoggedToPlayer(p.Handle(), this.p); } // 点在迷雾中
method IsPointMasked(Point p)->boolean{ return IsLocationMaskedToPlayer(p.Handle(), this.p); } // 点在黑色阴影中
method IsPointVisible(Point p)->boolean{ return IsLocationVisibleToPlayer(p.Handle(), this.p); } // 点是否可见
method IsEffect() ->boolean { return LoadBoolean(XZHT, this.HandleId(), <?= StringHash("特效开关") ?>); } // 获取玩家的特效开关

            // 响应事件，不需要排泄
            static method triggerGamer() ->thistype { return Gamer.Gamer(GetPlayerId(GetTriggerPlayer())); } // 触发玩家
static method keyGamer() ->thistype { return Gamer.Gamer(GetPlayerId(DzGetTriggerKeyPlayer())); } // 触发硬件玩家
static method UIGamer() ->thistype { return Gamer.Gamer(GetPlayerId(DzGetTriggerUIEventPlayer())); } // 触发UI玩家
static method syncGamer() ->thistype { return Gamer.Gamer(GetPlayerId(DzGetTriggerSyncPlayer())); } // 同步数据玩家
static method enumGamer() ->thistype { return Gamer.Gamer(GetPlayerId(GetEnumPlayer())); } // 选取玩家
static method filterGamer() ->thistype { return Gamer.Gamer(GetPlayerId(GetFilterPlayer())); } // 匹配玩家
static method localGamer() ->thistype { return Gamer.Gamer(GetPlayerId(GetLocalPlayer())); } // 本地玩家
static method owningGamer(Unit u) ->thistype { return Gamer.Gamer(GetPlayerId(GetOwningPlayer(u.Handle()))); } // 单位所有者
static method owningGamerEX(unit u) ->thistype { return Gamer.Gamer(GetPlayerId(GetOwningPlayer(u))); } // 单位所有者 改
// static method winningGamer() ->thistype { return Gamer.Gamer(GetPlayerId(GetWinningPlayer())); } // 暂定

            // 其他API
            method switchEffect(boolean flag) { SaveBoolean(XZHT, this.HandleId(), <?= StringHash("特效开关") ?>, flag); } // 设置玩家的特效开关
method victory() { CustomVictoryBJ(this.p, true, true); } // 游戏胜利，显示对话框和计分屏
method defeat(string name) { CustomDefeatBJ(this.p, name); } // 游戏失败，显示失败信息
method remove(playergameresult pr) { RemovePlayer(this.p, pr); } // 踢出玩家
method chat(integer channel, string msg) { EXDisplayChat(this.p, channel, msg); } // 模拟聊天
method clearAllSelection() { ClearSelectionForPlayer(this.p); } // 清空玩家选择
method addSelection(Unit u) { SelectUnitAddForPlayer(u.Handle(), this.p); } // 添加选择单位
method removeSelection(Unit u) { SelectUnitRemoveForPlayer(u.Handle(), this.p); } // 取消选择单位
// 选择指定单位
method selectSingleUnit(Unit u) {
                this.clearAllSelection();
                this.addSelection(u);
            }
            static method allGamersClearAllSelection() { ClearSelection(); } // 清空所有玩家选择
static method allGamersAddSelection(Unit u) { SelectUnit(u.Handle(), true); } // 所有玩家选择单位
static method allGamersRemoveSelection(Unit u) { SelectUnit(u.Handle(), false); } // 所有玩家取消选择单位
// 所有玩家选择指定单位
static method allGamersSelectSingleUnit(Unit u) {
                ClearSelection();
                SelectUnit(u.Handle(), true);
            }
            // 强制按键 ESC == "ESC" A == "A"
            method forceKey(string Key) {
                if (this.IsLocal()) {
                    if (Key == "ESC") {
                        ForceUICancel();
                    } else {
                        ForceUIKey(Key);
                    }
                }
            }
            // 设置镜头位置
            method setCamera(real x, real y, real time) {
                if (this.IsLocal()) {
                    PanCameraToTimed(x, y, time);
                }
            }
            // 增加镜头高度
            method addCameraHeight(real height) {
                if (this.IsLocal()) {
                    SetCameraField(CAMERA_FIELD_TARGET_DISTANCE, GetCameraField(CAMERA_FIELD_TARGET_DISTANCE) + height, 0.0);
                }
            }
            // 降低镜头高度
            method subCameraHeight(real height) {
                if (this.IsLocal()) {
                    SetCameraField(CAMERA_FIELD_TARGET_DISTANCE, GetCameraField(CAMERA_FIELD_TARGET_DISTANCE) - height, 0.0);
                }
            }
            // 小地图信号 位置X 位置Y 显示时间 红色 绿色 蓝色[颜色<0为填预设默认值] 类型[true/惊叹号 false/普通]
            method pingMinimap(real x, real y, real time, integer Red, integer Green, integer Blue, boolean flag) {
                if (this.IsLocal()) {
                    PingMinimapEx(x, y, time, orInteger(Red, 0), orInteger(Green, 255), orInteger(Blue, 0), flag);
                }
            }
            // 清空个人信息
            method clearMsg() {
                if (this.IsLocal()) {
                    ClearTextMessages();
                }
            }
            static method clearAllMsg() { ClearTextMessages(); } // 清空所有信息
// 输出信息 玩家索引[CJ] 持续时间 输出内容 玩家-1 == 全部玩家
static method echo(integer index, real dur, string msg) {
                if (index >= 0 && index <= 15){
                    DisplayTimedTextToPlayer(Player(index), 0, 0, dur, msg);
                }else if (index == -1){
                    DisplayTimedTextToPlayer(GetLocalPlayer(), 0, 0, dur, msg);
                }else{
                    debug BJDebugMsg("echo错误提示:玩家索引参数超出预设范围,原定需要显示的内容为 - [" + msg + "]");
                }
            }
        }
    }
    private function onInit() {
        Gamer.NEUTRAL_AGGRESSIVE = Gamer.user[12];
        Gamer.NEUTRAL_VICTIM = Gamer.user[13];
        Gamer.NEUTRAL_EXTRA = Gamer.user[14];
        Gamer.NEUTRAL_PASSIVE = Gamer.user[15];
    }
}
//! endzinc
//! zinc
library Unit requires Base
{
    private
    {
        function getStateIndex(string index) ->integer {
            integer state = -1;
            if (index == "攻击力" || index == "基础攻击") {
                state = 0x12;
            } else if (index == "护甲" || index == "防御力") {
                state = 0x20;
            } else if (index == "攻击距离" || index == "攻击范围") {
                state = 0x16;
            } else if (index == "攻击间隔") {
                state = 0x25;
            } else if (index == "攻击速度") {
                state = 0x51;
            } else if (index == "生命值") {
                state = 0;
            } else if (index == "魔法值") {
                state = 2;
            } else if (index == "最大生命值" || index == "生命上限") {
                state = 1;
            } else if (index == "最大魔法值" || index == "魔法上限") {
                state = 3;
            }
            return state;
        }
    }
    public struct Unit
    {
        private
        {
            // 单位成员属性
            unit u;
            integer handleId;
            integer GamerId;
            boolean heroBool;
            boolean NullBool;
        }
        public
        {
            // 实例自身数量
            static integer thisSize = 0;
            // 构造函数
            static method create(Gamer p, integer unitId, real x, real y, real angle) ->thistype {
                thistype this = thistype.allocate();
                this.u = CreateUnit(p.Handle(), unitId, x, y, angle);
                this.GamerId = p.id();
                this.handleId = GetHandleId(this.u);
                this.heroBool = IsUnitType(this.u, UNIT_TYPE_HERO);
                this.NullBool = true;
                this.thisSize +=1;
                return this;
            }
            static method byHandle(unit u) ->thistype {
                thistype this = 0;
                if (u == null) return 0;
                this = thistype.allocate();
                this.u = u;
                this.GamerId = GetPlayerId(GetOwningPlayer(this.u));
                this.handleId = GetHandleId(this.u);
                this.heroBool = IsUnitType(this.u, UNIT_TYPE_HERO);
                this.NullBool = true;
                this.thisSize +=1;
                return this;
            }
            // 析构函数
            method Null() {
                if (!this.NullBool || integer(this) < 1) return;
                this.u = null;
                this.GamerId = 0;
                this.handleId = 0;
                this.heroBool = false;
                this.NullBool = false;
                this.thisSize -=1;
                this.deallocate();
            }
            method delete() {
                RemoveUnit(this.u);
                this.flush();
                this.Null();
            }
            // 重载 ==
            method operator == (Unit u) ->boolean { return this.u == u.Handle(); }
            // 伤害函数
            method causeUnit(Unit target, real amount, boolean attack, boolean ranged, attacktype attackType, damagetype damageType, weapontype weaponType) ->boolean
            {
                return UnitDamageTarget(this.u, target.Handle(), amount, attack, ranged, attackType, damageType, weaponType);
            }
            // Get
            method Handle() ->unit { return this.u; } // 获取单位
method HandleId() ->integer { return this.handleId; } // 获取句柄
method gamerId() ->integer { return this.GamerId; } // 获取所属玩家ID
method id() ->integer { return GetUnitTypeId(this.u); } // 获取单位类型
method name() ->string { return GetUnitName(this.u); } // 获取单位名字
method x() ->real { return GetUnitX(this.u); } // 获取单位X
method y() ->real { return GetUnitY(this.u); } // 获取单位Y
method z() ->real { return GetUnitFlyHeight(this.u); } // 当前飞行高度Z
method vec3() ->Vec3 { return Vec3.create(this.x(), this.y(), this.z()); } // 获取单位的向量信息
method defaultZ() ->real { return GetUnitDefaultFlyHeight(this.u); } // 默认飞行角度Z
method data(string index) ->real { return LoadReal(XZHT, this.handleId, StringHash(index)); } // 单位自定义属性值
method owner() ->Gamer { return Gamer.Gamer(this.GamerId); } // 单位所有者
method facing() ->real { return GetUnitFacing(this.u); } // 单位面向角度
method userData() ->integer { return GetUnitUserData(this.u); } // 单位自定义值
method abilityLevel(integer abId) ->integer { return GetUnitAbilityLevel(this.u, abId); } // 技能等级
method currentOrder() ->integer { return GetUnitCurrentOrder(this.u); } // 当前命令ID整数
method acquireRange() ->real { return GetUnitAcquireRange(this.u); } // 当前主动攻击范围
method defaultAcquireRange() ->real { return GetUnitDefaultAcquireRange(this.u); } // 默认主动攻击范围
method moveSpeed() ->real { return GetUnitMoveSpeed(this.u); } // 当前移动速度
method defaultMoveSpeed() ->real { return GetUnitDefaultMoveSpeed(this.u); } // 默认移动速度
method value() ->integer { return GetUnitPointValue(this.u); } // 单位附加值
method Race() ->race { return GetUnitRace(this.u); } // 单位种族
method turnAngle() ->real { return GetUnitPropWindow(this.u); } // 当前转向角度
method defaultTurnAngle() ->real { return GetUnitDefaultPropWindow(this.u); } // 默认转向角度
method turnSpeed() ->real { return GetUnitTurnSpeed(this.u); } // 当前转身速度
method defaultTurnSpeed() ->real { return GetUnitDefaultTurnSpeed(this.u); } // 默认转身速度
method madeFood() ->integer { return GetUnitFoodMade(this.u); } // 单位制造人口
method usedFood() ->integer { return GetUnitFoodUsed(this.u); } // 单位使用人口
method level() ->integer { return GetUnitLevel(this.u); } // 单位等级
method state(integer index) ->real { return GetUnitState(this.u, ConvertUnitState(index)); } // 单位属性
method Life() ->real { return GetUnitStatePercent(this.u, UNIT_STATE_LIFE, UNIT_STATE_MAX_LIFE); } // 百分比生命
method Magic() ->real { return GetUnitStatePercent(this.u, UNIT_STATE_MANA, UNIT_STATE_MAX_MANA); } // 百分比魔法
method abilityId(integer abId) ->ability { return EXGetUnitAbility(this.u, abId); } // 技能类型获取技能实例
method abilityIndex(integer index) ->ability { return EXGetUnitAbilityByIndex(this.u, index); } // 技能序列获取技能实例
method abilityCD(integer abId) ->real { return EXGetAbilityState(EXGetUnitAbility(this.u, abId), 1); } // 单位技能冷却时间
method itemInslot(integer index) ->Item { return Item.byHandle(UnitItemInSlot(this.u, index)); } // 单位物品栏中的物品
// 单位技能整数数据
method abilityDataInt(integer abId, integer level, integer dataId) ->integer {
                return EXGetAbilityDataInteger(EXGetUnitAbility(this.u, abId), level, dataId);
            }
            // 单位技能实数数据
            method abilityDataReal(integer abId, integer level, integer dataId) ->real {
                return EXGetAbilityDataReal(EXGetUnitAbility(this.u, abId), level, dataId);
            }
            // 单位技能字符串数据
            method abilityDataString(integer abId, integer level, integer dataId) ->string {
                return EXGetAbilityDataString(EXGetUnitAbility(this.u, abId), level, dataId);
            }
            // 获取力量
            method str() ->integer {
                if (this.heroBool) {
                    return GetHeroStr(this.u, true);
                }
                return 0;
            }
            // 获取敏捷
            method agi() ->integer {
                if (this.heroBool) {
                    return GetHeroAgi(this.u, true);
                }
                return 0;
            }
            // 获取智力
            method int() ->integer {
                if (this.heroBool) {
                    return GetHeroInt(this.u, true);
                }
                return 0;
            }
            method saiState() ->integer { return this.str() + this.agi() + this.int(); } // 获取全属性
method heroLevel() ->integer { if (this.heroBool) { return GetHeroLevel(this.u); } return 0; } // 英雄等级
method exp() ->integer { if (this.heroBool) { return GetHeroXP(this.u); } return 0; } // 英雄经验
// 英雄主属性
method stateType() ->string {
                string Code = "";
                Code = "(require'jass.slk').unit";
                Code = Code + "[" + I2S(this.id()) + "].";
                Code = Code + "Primary";
                Code = EXExecuteScript(Code);
                if (Code == "STR") {
                    return "力量";
                } else if (Code == "AGI") {
                    return "敏捷";
                } else if (Code == "INT") {
                    return "智力";
                }
                return null;
            }
            // 万能属性获取
            method stateString(string index) ->real {
                integer state = getStateIndex(index);
                real value = 0.0;
                if (state != -1) {
                    value = this.state(state);
                } else if (index == "力量" || index == "力量值") {
                    value = I2R(this.str());
                } else if (index == "敏捷" || index == "敏捷值") {
                    value = I2R(this.agi());
                } else if (index == "智力" || index == "智力值") {
                    value = I2R(this.int());
                } else if (index == "全属性" || index == "三围属性") {
                    value = I2R(this.saiState());
                } else {
                    value = this.data(index);
                }
                return value;
            }
            // 获取绑定在单位类型的附加值
            static method added(integer unId) ->real { return LoadReal(XZHT, <?= StringHash("单位附加值") ?>, unId); }
            // Set 注意 发布命令是有泄露的，不可高频率发布命令
            method setPermanentData(boolean flag) { SaveBoolean(XZHT, this.handleId, <?= StringHash("永久单位") ?>, flag); } // 设置是否为永久单位
method setX(real x) { SetUnitX(this.u, position.correctX(x)); } // 设置X坐标
method setY(real y) { SetUnitY(this.u, position.correctY(y)); } // 设置Y坐标
method setZ(real z, real time) { SetUnitFlyHeight(this.u, z, time); } // 设置飞行高度Z，变换速率
method setXY(real x, real y) { this.setX(x);this.setY(y); } // 设置XY坐标
method move(real x, real y) { SetUnitPosition(this.u, x, y); } // 移动单位XY坐标 注意 该函数有严重泄露
method flyEnable() { UnitAddAbility(this.u,'Amrf');UnitRemoveAbility(this.u,'Amrf'); } // 设置单位可以飞行
method setOwner(Gamer gm, boolean flag) { SetUnitOwner(this.u, gm.Handle(), flag); } // 改变所属
method setuserData(integer value) { SetUnitUserData(this.u, value); } // 设置自定义值
method setData(string index, real value) { SaveReal(XZHT, this.handleId, StringHash(index), value); } // 设置自定义属性值
method setAbilityLevel(integer abId, integer level) ->integer { return SetUnitAbilityLevel(this.u, abId, level); } // 设置技能等级
method setAbilityPermanent(integer abId, boolean flag) ->boolean { return UnitMakeAbilityPermanent(this.u, flag, abId); } // 设置技能永久
method setAcquireRange(real range) { SetUnitAcquireRange(this.u, range); } // 设置主动攻击范围
method setSize(real size) { SetUnitScale(this.u, size, size, size); } // 设置单位尺寸 按倍数
method setColor(integer r, integer g, integer b, integer t) { SetUnitVertexColor(this.u, r, g, b, t); } // 颜色 红绿蓝 透明 0-255
method setAnimation(string name) { SetUnitAnimation(this.u, name); } // 播放动画名
method setAnimationByIndex(integer index) { SetUnitAnimationByIndex(this.u, index); } // 播放动画序号
method setAnimationRate(real value) { SetUnitTimeScale(this.u, value); } // 改变动画播放速度 正常的value倍数
method setTexture(string path, integer index) { DzSetUnitTexture(this.u, path, index); } // 修改贴图
method setModel(string path) { DzSetUnitModel(this.u, path); } // 修改模型
method setId(integer unitId) { DzSetUnitID(this.u, unitId); } // 修改单位类型
method setAbilityCD(integer abId, real time) { EXSetAbilityState(EXGetUnitAbility(this.u, abId), 1, time); } // 修改技能冷却时间
method setMoveType(integer moveType) { EXSetUnitMoveType(this.u, moveType); } // 修改移动类型
method setTurnAngle(real angle) { SetUnitPropWindow(this.u, angle); } // 修改单位转向角度 弧度
method setTurnSpeed(real speed) { SetUnitTurnSpeed(this.u, speed); } // 修改单位转身速度
method setExploded(boolean isExploded) { SetUnitExploded(this.u, isExploded); } // 爆炸死亡
method setFacingTime(real angle, real time) { SetUnitFacingTimed(this.u, angle, time); } // 改变单位面向角度 指定时间
method setSpeed(real value) { SetUnitMoveSpeed(this.u, value); } // 设置单位移动速度
// 改变面向角度，是否立即转身 true 为立即 false 为不立即
method setFacing(real angle, boolean isTurn) {
                SetUnitFacing(this.u, angle);
                if (isTurn) {
                    EXSetUnitFacing(this.u, angle);
                }
            }
            // 修改单位技能整数数据
            method setAbilityDataInt(integer abId, integer level, integer dataId, integer value) ->boolean {
                return EXSetAbilityDataInteger(EXGetUnitAbility(this.u, abId), level, dataId, value);
            }
            // 修改单位技能实数数据
            method setAbilityDataReal(integer abId, integer level, integer dataId, real value) ->boolean {
                return EXSetAbilityDataReal(EXGetUnitAbility(this.u, abId), level, dataId, value);
            }
            // 修改单位技能字符串数据
            method setAbilityDataString(integer abId, integer level, integer dataId, string value) ->boolean {
                return EXSetAbilityDataString(EXGetUnitAbility(this.u, abId), level, dataId, value);
            }
            // 修改力量
            method setStr(integer value) {
                if (this.heroBool) {
                    SetHeroStr(this.u, value, true);
                }
            }
            // 修改敏捷
            method setAgi(integer value) {
                if (this.heroBool) {
                    SetHeroAgi(this.u, value, true);
                }
            }
            // 修改智力
            method setInt(integer value) {
                if (this.heroBool) {
                    SetHeroInt(this.u, value, true);
                }
            }
            method setSaiState(integer value) { this.setStr(value);this.setAgi(value);this.setInt(value); } // 设置全属性
method setLevel(integer level) { if (this.heroBool) SetHeroLevelBJ(this.u, level, false); } // 设置等级
method setExp(integer value) { if (this.heroBool) SetHeroXP(this.u, value, false); } // 设置经验值
method setState(integer index, real value) { SetUnitState(this.u, ConvertUnitState(index), value); } // 设置单位属性
// 设置单位百分比生命
method setLife(real value) {
                SetUnitState(this.u, UNIT_STATE_LIFE, GetUnitState(this.u, UNIT_STATE_MAX_LIFE) * value);
            }
            // 设置单位百分比魔法
            method setMagic(real value) {
                SetUnitState(this.u, UNIT_STATE_MANA, GetUnitState(this.u, UNIT_STATE_MAX_MANA) * value);
            }
            // 设置万能属性
            method setStateString(string index, real value) {
                integer state = getStateIndex(index);
                real data = 0.0;
                if (state != -1) {
                    if (state == 1) {
                        data = this.Life();
                        this.setState(state, value);
                        this.setLife(data);
                    } else if ( state == 3) {
                        data = this.Magic();
                        this.setState(state, value);
                        this.setMagic(data);
                    } else {
                        this.setState(state, value);
                    }
                    this.addInt(0);
                } else if (index == "力量" || index == "力量值") {
                    this.setStr(math.miR2I(value));
                } else if (index == "敏捷" || index == "敏捷值") {
                    this.setAgi(math.miR2I(value));
                } else if (index == "智力" || index == "智力值") {
                    this.setInt(math.miR2I(value));
                } else if (index == "全属性" || index == "三围属性") {
                    this.setSaiState(math.miR2I(value));
                } else {
                    this.setData(index, value);
                }
            }
            // 设置绑定在单位类型的附加值
            static method setAdded(integer unId, real value) { SaveReal(XZHT, <?= StringHash("单位附加值") ?>, unId, value); }
            // Add
            method addLevel(integer level) { SetHeroLevel(this.u, level, false); } // 提升等级
method addData(string index, real value) { this.setData(index, this.data(index) + value); } // 增加自定义属性值
method addAbilityLevel(integer abId) { IncUnitAbilityLevel(this.u, abId); } // 提升技能等级
// 增加力量
method addStr(integer value) {
                if (this.heroBool) {
                    SetHeroStr(this.u, this.str() + value, true);
                }
            }
            // 增加敏捷
            method addAgi(integer value) {
                if (this.heroBool) {
                    SetHeroAgi(this.u, this.agi() + value, true);
                }
            }
            // 增加智力
            method addInt(integer value) {
                if (this.heroBool) {
                    SetHeroInt(this.u, this.int() + value, true);
                }
            }
            method addSaiState(integer value) { this.addStr(value);this.addAgi(value);this.addInt(value); } // 提升全属性
method addExp(integer value) { this.setExp(this.exp() + value); } // 提升英雄经验值
method addSkillPoints(integer number) ->boolean { return UnitModifySkillPoints(this.u, number); } // 添加剩余技能点
// 添加技能 是否永久性
method addAbility(integer abId, boolean flag) {
                UnitAddAbility(this.u, abId);
                if (flag) UnitMakeAbilityPermanent(this.u, true, abId);
            }
            // 提升单位属性
            method addState(integer index, real value) {
                real data = 0.0;
                if (index == 1) {
                    data = this.Life();
                    this.setState(index, this.state(index) + value);
                    this.setLife(data);
                } else if (index == 3) {
                    data = this.Magic();
                    this.setState(index, this.state(index) + value);
                    this.setMagic(data);
                } else {
                    this.setState(index, this.state(index) + value);
                }
            }
            // 提升万能属性
            method addStateString(string index, real value) {
                integer state = 0;
                if (value > 0.0) {
                    state = getStateIndex(index);
                    if (state != -1) {
                        this.addState(state, value);
                        this.addInt(0);
                    } else if (index == "力量" || index == "力量值") {
                        this.addStr(math.miR2I(value));
                    } else if (index == "敏捷" || index == "敏捷值") {
                        this.addAgi(math.miR2I(value));
                    } else if (index == "智力" || index == "智力值") {
                        this.addInt(math.miR2I(value));
                    } else if (index == "全属性" || index == "三围属性") {
                        this.addSaiState(math.miR2I(value));
                    } else {
                        this.addData(index, value);
                    }
                }
            }
            // Sub
            method subLevel(integer level) { UnitStripHeroLevel(this.u, level); } // 降低等级
method subData(string index, real value) { this.setData(index, this.data(index) - value); } // 降低自定义属性值
method subAbilityLevel(integer abId) { DecUnitAbilityLevel(this.u, abId); } // 降低技能等级
// 降低力量
method subStr(integer value) {
                if (this.heroBool) {
                    SetHeroStr(this.u, this.str() - value, true);
                }
            }
            // 降低敏捷
            method subAgi(integer value) {
                if (this.heroBool) {
                    SetHeroAgi(this.u, this.agi() - value, true);
                }
            }
            // 降低智力
            method subInt(integer value) {
                if (this.heroBool) {
                    SetHeroInt(this.u, this.int() - value, true);
                }
            }
            method subSaiState(integer value) { this.subStr(value);this.subAgi(value);this.subInt(value); } // 降低全属性
method subExp(integer value) { this.setExp(this.exp() - value); } // 降低英雄经验值
method subState(integer index, real value) { this.setState(index, this.state(index) - value); } //降低单位属性
method subAbility(integer abId) { UnitRemoveAbility(this.u, abId); } // 删除技能
// 降低万能属性
method subStateString(string index, real value) {
                integer state = 0;
                if (value > 0.0) {
                    state = getStateIndex(index);
                    if (state != -1) {
                        this.subState(state, value);
                        this.addInt(0);
                    } else if (index == "力量" || index == "力量值") {
                        this.subStr(math.miR2I(value));
                    } else if (index == "敏捷" || index == "敏捷值") {
                        this.subAgi(math.miR2I(value));
                    } else if (index == "智力" || index == "智力值") {
                        this.subInt(math.miR2I(value));
                    } else if (index == "全属性" || index == "三围属性") {
                        this.subSaiState(math.miR2I(value));
                    } else {
                        this.subData(index, value);
                    }
                }
            }
            // Flush
            method remove(string index) { RemoveSavedReal(XZHT, this.handleId, StringHash(index)); } // 清空单位索引属性
method flush() { FlushChildHashtable(XZHT, this.handleId);FlushChildHashtable(XWHT, this.handleId); } // 清空单位所有属性

            // Boolean
            method IsRace(race rc) ->boolean { return IsUnitRace(this.u, rc); } // 种族检查
method IsType(unittype tp) ->boolean { return IsUnitType(this.u, tp); } // 单位类别检查
method IsHero() ->boolean { return this.heroBool; } // 是否为英雄
method IsStructure() ->boolean { return IsUnitType(this.u, UNIT_TYPE_STRUCTURE); } // 是否为建筑
method IsAlive() ->boolean { return UnitAlive(this.u); } // 是否存活的
method IsDead() ->boolean { return GetUnitState(this.u, UNIT_STATE_LIFE) <= 0.0; } // 是否为死亡的
method IsShow() ->boolean { return !IsUnitHidden(this.u); } // 是否为显示的 显示为true 隐藏为false
method IsIllusion() ->boolean { return IsUnitIllusion(this.u); } // 是否为镜像单位
method IsSelected(Gamer gm) ->boolean { return IsUnitSelected(this.u, gm.Handle()); } // 是否被玩家选择
method IsAlly(Gamer gm) ->boolean { return IsUnitAlly(this.u, gm.Handle()); } // 是否为玩家同盟
method IsEnemy(Gamer gm) ->boolean { return IsUnitEnemy(this.u, gm.Handle()); } // 是否为玩家敌对
method IsEnemyUnit(Unit u) ->boolean { return IsUnitEnemy(u.Handle(), Gamer.user[this.GamerId].Handle()); } // 是否为敌对单位
method IsOwned(Gamer gm) ->boolean { return IsUnitOwnedByPlayer(this.u, gm.Handle()); } // 是玩家的单位
method IsVisible(Gamer gm) ->boolean { return IsUnitVisible(this.u, gm.Handle()); } // 单位对玩家是否可见
method IsInFog(Gamer gm) ->boolean { return IsUnitFogged(this.u, gm.Handle()); } // 单位对玩家是否处于迷雾
method IsInMask(Gamer gm) ->boolean { return IsUnitMasked(this.u, gm.Handle()); } // 单位对玩家是否处于黑色阴影
method IsInGroup(Group gp) ->boolean { return IsUnitInGroup(this.u, gp.Handle()); } // 单位在单位组中
method IsInUnitRange(Unit u, real range) ->boolean { return IsUnitInRange(this.u, u.Handle(), range); } // 在单位范围内
method IsInXYRange(real x, real y, real range) ->boolean { return IsUnitInRangeXY(this.u, x, y, range); } // 在指定坐标范围内
method IsInRect(rect rct) ->boolean { return RectContainsCoords(rct, this.x(), this.y()); } // 单位是否在规则矩形中
method IsInRegion(region rg) ->boolean { return IsPointInRegion(rg, this.x(), this.y()); } // 单位是否在不规则矩形中
method IsInTransport(Unit u) ->boolean { return IsUnitInTransport(this.u, u.Handle()); } // 是否被指定单位装载
method IsInSight(Gamer gm) ->boolean { return IsUnitDetected(this.u, gm.Handle()); } // 在玩家视野范围内
method IsLoaded() ->boolean { return IsUnitLoaded(this.u); } // 单位是否被装载
method IsSleeping() ->boolean { return UnitIsSleeping(this.u); } // 单位是否睡眠
method IsCanSleep() ->boolean { return UnitCanSleep(this.u); } // 单位是否会在夜晚进入睡眠
method IsItem(Item it) ->boolean { return UnitHasItem(this.u, it.Handle()); } // 单位持有物品
method IsData(string index) ->boolean { return HaveSavedReal(XZHT, this.handleId, StringHash(index)); } // 单位拥有该属性值
method IsAbility(integer abId) ->boolean { return GetUnitAbilityLevel(this.u, abId) > 0; } // 判断是否拥有该技能
method IsPermanentData() ->boolean { return LoadBoolean(XZHT, this.handleId, <?= StringHash("永久单位") ?>); } // 检测是否为永久单位 true为永久单位
// 删除指定Buff
method removeBuff(string whichType) ->boolean { return Buff.remove(this, whichType); }
            // 是否拥有该物品类型的物品
            method IsItemHaveBool(integer itemId) ->boolean {
                integer index;
                for (0 <= index <= 5) {
                    if (GetItemTypeId(UnitItemInSlot(this.u, index)) == itemId) {
                        return true;
                    }
                }
                return false;
            }
            // 是否拥有该物品类型的物品，返回物品实例
            method IsItemHave(integer itemId) ->Item {
                integer index;
                for (0 <= index <= 5) {
                    if (GetItemTypeId(UnitItemInSlot(this.u, index)) == itemId) {
                        return this.itemInslot(index);
                    }
                }
                return 0;
            }
            // 判断物品栏是否拥有空位
            method IsUnitItemNumber() ->boolean {
                integer index;
                for (0 <= index <= 5) {
                    if (UnitItemInSlot(this.u, index) == null) {
                        return true;
                    }
                }
                return false;
            }
            // 判断物品栏是否拥有空位，如果有空位则返回物品栏编号，没有空位则返回-1
            method IsUnitItemNumberIndex() ->integer {
                integer index;
                for (0 <= index <= 5) {
                    if (UnitItemInSlot(this.u, index) == null) {
                        return index;
                    }
                }
                return -1;
            }
            // 判断单位内置CD，通过则会自动进入冷却时间
            method IsAbilityCD(string index, real time) ->boolean {
                real result,gameTime,unitTime;
                gameTime = Timer.gameTime();
                unitTime = LoadReal(XZHT, this.handleId, StringHash(index));
                result = gameTime - unitTime;
                if (result >= time || unitTime == 0.0) {
                    SaveReal(XZHT, this.handleId, StringHash(index), gameTime);
                    return true;
                }
                return false;
            }
            // 判断单位咆哮被动技能内置CD，通过则会自动进入冷却状态[包括冷却模型和内置冷却效果]
            method IsPassiveCD(string index, real time) ->boolean {
                string NameIndex = index + "咆哮";
                if (this.IsAbilityCD(NameIndex, time)) {
                    this.setAbilityDataReal(LoadInteger( USDT, StringHash(index), <?= StringHash("abId") ?>), 1, 105, time);
                    this.setAbilityCD(LoadInteger( USDT, StringHash(index), <?= StringHash("abId") ?>), time);
                    return true;
                }
                return false;
            }
            // Order
            method issueImmediateOrder(string order) ->boolean { return IssueImmediateOrder(this.u, order); } // 发布无目标命令
method issueXYOrder(string order, real x, real y) ->boolean { return IssuePointOrder(this.u, order, x, y); } // 发布命令到坐标
method issueUnitOrder(string order, Unit u) ->boolean { return IssueTargetOrder(this.u, order, u.Handle()); } // 发布命令到单位
method issueImmediateOrderById(integer order) ->boolean { return IssueImmediateOrderById(this.u, order); } // 发布无目标命令 ID
method issueXYOrderById(integer order, real x, real y) ->boolean { return IssuePointOrderById(this.u, order, x, y); } // 发布命令到坐标 ID
method issueUnitOrderById(integer order, Unit u) ->boolean { return IssueTargetOrderById(this.u, order, u.Handle()); } // 发布命令到单位 ID
method dropItem(Item it, real x, real y) ->boolean { return UnitDropItemPoint(this.u, it.Handle(), x, y); } // 发布丢弃物品命令到坐标
method dropItemTarget(Item it, Unit u) ->boolean { return UnitDropItemTarget(this.u, it.Handle(), u.Handle()); } // 发布给予物品
method dropItemSlot(Item it, integer index) ->boolean { return UnitDropItemSlot(this.u, it.Handle(), index); } // 移动物品到指定物品栏
method useItem(Item it) ->boolean { return UnitUseItem(this.u, it.Handle()); } // 使用物品
method useItemXY(Item it, real x, real y) ->boolean { return UnitUseItemPoint(this.u, it.Handle(), x, y); } // 在指定坐标使用物品
method useItemTarget(Item it, Unit u) ->boolean { return UnitUseItemTarget(this.u, it.Handle(), u.Handle()); } // 给指定单位使用物品
method issueNeutralImmediateOrder(Gamer gm, string order) ->boolean { return IssueNeutralImmediateOrder(gm.Handle(), this.u, order); } // 发布无目标中介命令
method issueNeutralXYOrder(Gamer gm, string order, real x, real y) ->boolean { return IssueNeutralPointOrder(gm.Handle(), this.u, order, x, y); } // 发布到指定坐标的中介命令
method issueNeutralTargetOrder(Gamer gm, string order, Unit u) ->boolean { return IssueNeutralTargetOrder(gm.Handle(), this.u, order, u.Handle()); } // 发布到单位的中介命令
method issueNeutralImmediateOrderById(Gamer gm, integer order) ->boolean { return IssueNeutralImmediateOrderById(gm.Handle(), this.u, order); } // 发布无目标中介命令 ID
method issueNeutralXYOrderById(Gamer gm, integer order, real x, real y) ->boolean { return IssueNeutralPointOrderById(gm.Handle(), this.u, order, x, y); } // 发布到指定坐标的中介命令 ID
method issueNeutralTargetOrderById(Gamer gm, integer order, Unit u) ->boolean { return IssueNeutralTargetOrderById(gm.Handle(), this.u, order, u.Handle()); } // 发布到单位的中介命令 ID

            // 其他
            method revive(real x, real y) { if (this.heroBool) ReviveHero(this.u, x, y, true); } // 复活英雄单位
method giveItem(Item it) { UnitAddItem(this.u, it.Handle()); } // 给予物品
method removeItem(Item it) { UnitRemoveItem(this.u, it.Handle()); } // 丢弃物品
method giveItemType(integer itemId) ->Item { return Item.byHandle(UnitAddItemByIdSwapped(itemId, this.u)); } // 创建物品后给予 返回物品
method studySkill(integer abId) { if (this.heroBool) SelectHeroSkill(this.u, abId); } // 发布学习技能命令
method suspendEXP(boolean flag) { if (this.heroBool) SuspendHeroXP(this.u, flag); } // 是否暂停英雄经验停止 true为暂停 false恢复
method kill() { KillUnit(this.u); } // 杀死单位
method show(boolean flag) { ShowUnit(this.u, flag); } // 是否显示单位 显示为true 隐藏为false
method pauseCJ(boolean flag) { PauseUnit(this.u, flag); } // 是否暂停单位 暂停为true 恢复为false
method vertigo(boolean flag) { EXPauseUnit(this.u, flag); } // 是否眩晕单位 true为眩晕 false为恢复
method applyTimedLife(integer buffId, real time) { UnitApplyTimedLife(this.u, buffId, time); } // 设置生命周期
method pauseTimedLife(boolean flag) { UnitPauseTimedLife(this.u, flag); } // 暂停生命周期 暂停为true 恢复为false
method resetCD() { UnitResetCooldown(this.u); } // 重置所有技能CD
method sleepPermanent(boolean flag) { UnitAddAbility(this.u, 'Asla');UnitAddSleepPerm(this.u, flag); } // 一直睡觉,中立单位有效
method lookAt(string bone, Unit u, real x, real y, real z) { SetUnitLookAt(this.u, bone, u.Handle(), x, y, z); } // 锁定单位朝向
method shareSight(Gamer gm, boolean flag) { UnitShareVision(this.u, gm.Handle(), flag); } // 共享视野 true为打开 false为关闭
method suspendDecay(boolean flag) { UnitSuspendDecay(this.u, flag); } // 暂停尸体腐烂
method sleepAtNight(boolean flag) { UnitAddSleep(this.u, flag); } // 晚上睡觉,中立单位有效
method wakeUp() { UnitWakeUp(this.u); } // 唤醒
method showSelectionCircle(integer r, integer g, integer b, integer t) { AddIndicator(this.u, r, g, b, t); } // 闪动指示器 红绿蓝 透明
method addType(unittype tp) { UnitAddType(this.u, tp); } // 添加类别
method removeType(unittype tp) { UnitRemoveType(this.u, tp); } // 删除类别
method collisable(boolean flag) { SetUnitPathing(this.u, flag); } // 是否碰撞
method collisableType(boolean flag, integer collisableId) { EXSetUnitCollisionType(flag, this.u, collisableId); } // 是否碰撞(指定碰撞类型)
method useFood(boolean flag) { SetUnitUseFood(this.u, flag); } // 是否打开占用人口 true为打开 false为禁用
method lockGuard(boolean flag) { SetUnitCreepGuard(this.u, flag); } // 锁定警戒点 锁定为true
method removeGuard() { RemoveGuardPosition(this.u); } // 忽略单位警戒点
method invulnerable(boolean flag) { SetUnitInvulnerable(this.u, flag); } // 无敌 无敌为true
method echo(real dur, string msg) { DisplayTimedTextToPlayer(Player(this.GamerId), 0, 0, dur, msg); }
            // JAPI变身
            method transform(integer unitId) {
                UnitAddAbility(this.u, 'AEme');
                EXSetAbilityDataInteger(EXGetUnitAbility(this.u, 'AEme'), 1, 117, GetUnitTypeId(this.u));
                EXSetAbilityAEmeDataA(EXGetUnitAbility(this.u, 'AEme'), GetUnitTypeId(this.u));
                UnitRemoveAbility(this.u, 'AEme');
                UnitAddAbility(this.u, 'AEme');
                EXSetAbilityAEmeDataA(EXGetUnitAbility(this.u, 'AEme'), unitId);
                UnitRemoveAbility(this.u, 'AEme');
            }
            // 创建物品之后给予，并指定使用次数
            method giveItemTypeNumber(integer itemId, integer number) ->Item {
                Item it = Item.create(itemId, this.x(), this.y());
                it.setCharges(number);
                this.giveItem(it);
                return it;
            }
            // Event 事件响应 调用需要排泄，如果不排泄那么会产生泄露
            //! textmacro UnitEvent takes Name, Type, Notes
                static method $Name$() ->thistype {
                    // $Notes$
                    return Unit.byHandle($Type$());
                }
            //! endtextmacro
            //! runtextmacro UnitEvent("triggerUnit", "GetTriggerUnit", "触发单位")
            //! runtextmacro UnitEvent("damageUnit", "GetEventDamageSource", "伤害来源")
            //! runtextmacro UnitEvent("enumUnit", "GetEnumUnit", "选取单位")
            //! runtextmacro UnitEvent("soldUnit", "GetSoldUnit", "被贩卖单位")
            //! runtextmacro UnitEvent("buyingUnit", "GetBuyingUnit", "购买者")
            //! runtextmacro UnitEvent("filterUnit", "GetFilterUnit", "匹配单位")
            //! runtextmacro UnitEvent("loadedUnit", "GetLoadedUnit", "被装载单位")
            //! runtextmacro UnitEvent("killingUnit", "GetKillingUnit", "凶手单位")
            //! runtextmacro UnitEvent("leavingUnit", "GetLeavingUnit", "离开的单位")
            //! runtextmacro UnitEvent("orderedUnit", "GetOrderedUnit", "发布命令的单位")
            //! runtextmacro UnitEvent("sellingUnit", "GetSellingUnit", "贩卖者")
            //! runtextmacro UnitEvent("dyingUnit", "GetDyingUnit", "死亡单位")
            //! runtextmacro UnitEvent("trainedUnit", "GetTrainedUnit", "训练单位")
            //! runtextmacro UnitEvent("summonedUnit", "GetSummonedUnit", "召唤单位")
            //! runtextmacro UnitEvent("changingUnit", "GetChangingUnit", "被改变所有者的单位")
            //! runtextmacro UnitEvent("decayingUnit", "GetDecayingUnit", "腐化的单位")
            //! runtextmacro UnitEvent("detectedUnit", "GetDetectedUnit", "检测单位")
            //! runtextmacro UnitEvent("enteringUnit", "GetEnteringUnit", "进入的单位")
            //! runtextmacro UnitEvent("learningUnit", "GetLearningUnit", "学习技能的单位")
            //! runtextmacro UnitEvent("revivingUnit", "GetRevivingUnit", "复活英雄")
            //! runtextmacro UnitEvent("summoningUnit", "GetSummoningUnit", "召唤者")
            //! runtextmacro UnitEvent("revivableUnit", "GetRevivableUnit", "可复活英雄")
            //! runtextmacro UnitEvent("transportUnit", "GetTransportUnit", "运输单位")
            //! runtextmacro UnitEvent("eventTargetUnit", "GetEventTargetUnit", "事件目标单位")
            //! runtextmacro UnitEvent("orderTargetUnit", "GetOrderTargetUnit", "命令发布目标")
            //! runtextmacro UnitEvent("researchingUnit", "GetResearchingUnit", "研究科技的单位")
            //! runtextmacro UnitEvent("spellTargetUnit", "GetSpellTargetUnit", "技能施放目标")
            //! runtextmacro UnitEvent("manipulatingUnit", "GetManipulatingUnit", "操作物品的单位")
            //! runtextmacro UnitEvent("spellAbilityUnit", "GetSpellAbilityUnit", "施法单位")
            //! runtextmacro UnitEvent("underMouseUnit", "DzGetUnitUnderMouse", "鼠标指向单位")
        }
    }
}
//! endzinc
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
                this.it = CreateItem(itemId, x, y);
                this.handleId = GetHandleId(this.it);
                this.thisSize +=1;
                return this;
            }
            static method byHandle(item it) ->thistype {
                thistype this = thistype.allocate();
                this.it = it;
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
method setPermanentData(boolean flag) { SaveBoolean(XZHT, this.handleId, <?= StringHash("永久物品") ?>, flag); } // 设置是否为永久物品
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
method IsPermanentData() ->boolean { return LoadBoolean(XZHT, this.handleId, <?= StringHash("永久物品") ?>); } // 检测是否为永久物品 true为永久物品
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
                thistype.pItem = CreateItem('wolg', 0, 0);
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
                this.p = Location(x, y);
                this.thisSize +=1;
                return this;
            }
            static method byHandle(location p) ->thistype {
                thistype this = thistype.allocate();
                this.p = p;
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
                return (thistype.X - x) * (thistype.X - x) + (thistype.Y - y) * (thistype.Y - y) <= 10.0 * 10.0 && !IsTerrainPathable(x, y, PATHING_TYPE_WALKABILITY);
            }
        }
    }
}
//! endzinc
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
        public
        {
            // 实例自身数量
            static integer thisSize = 0;
            // 构造函数
            static method create() ->thistype {
                thistype this = thistype.allocate();
                this.g = CreateGroup();
                this.handleId = GetHandleId(this.g);
                this.thisSize +=1;
                SaveInteger(XZHT, <?= StringHash("单位组实例") ?>, this.handleId, integer(this));
                return this;
            }
            static method byHandle(group g) ->thistype {
                thistype this = 0;
                if (LoadInteger(XZHT, <?= StringHash("单位组实例") ?>, GetHandleId(g)) > 0) {
                    return LoadInteger(XZHT, <?= StringHash("单位组实例") ?>, GetHandleId(g));
                }
                this = thistype.allocate();
                this.g = g;
                this.handleId = GetHandleId(this.g);
                this.thisSize +=1;
                SaveInteger(XZHT, <?= StringHash("单位组实例") ?>, this.handleId, integer(this));
                return this;
            }
            // 析构函数
            method destroy() {
                if (integer(this) < 1) return;
                GroupClear(this.g);
                DestroyGroup(this.g);
                RemoveSavedInteger(XZHT, <?= StringHash("单位组实例") ?>, this.handleId);
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
                    if (HaveSavedHandle(XZHT, <?= StringHash("单位组实例") ?>, bId)) {
                        filter = LoadBooleanExprHandle(XZHT, <?= StringHash("单位组实例") ?>, bId);
                    } else {
                        filter = And(Condition(function thistype.Filter), filter);
                        SaveBooleanExprHandle(XZHT, <?= StringHash("单位组实例") ?>, bId, filter);
                    }
                }
                GroupEnumUnitsInRange(this.g, x, y, radius + 197.0, filter);
                thistype.X = 0.0;
                thistype.Y = 0.0;
                thistype.R = 0.0;
            }
            // 选取X,Y为圆心，radius为半径的单位添加到单位组
            method unitsInArea(real x, real y, real radius) {
                thistype.X = x;
                thistype.Y = y;
                thistype.R = radius;
                GroupEnumUnitsInRange(this.g, x, y, radius + 197.0, Condition(function thistype.Filter));
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
                u = null;
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
//! zinc
library String requires Base
{
    public constant real FONT_SIZE = 0.024;
    // 目前 默认的颜色为橙色
    public struct StringPara
    {
        string str = ""; // 显示内容
Unit un = 0; // 绑定单位
real x = 0.0; // 绑定坐标
real y = 0.0; // 绑定坐标
real z = 0.0; // 高度
integer id = -1; // 显示玩家ID
real size = 0.02; // 文字大小
integer r = 255; // 红色
integer g = 165; // 绿色
integer b = 0; // 蓝色
real speedX = 0.0; // X速率
real speedY = 0.05; // Y速率

        // 创建到单位
        static method new(string Str, Unit whichUnit, integer gId) ->thistype
        {
            thistype this = thistype.allocate();
            this.str = Str;
            this.un = whichUnit;
            this.id = gId;
            return this;
        }
        // 创建到坐标
        static method create(string Str, real X, real Y, real Z, integer gId) ->thistype
        {
            thistype this = thistype.allocate();
            this.str = Str;
            this.x = X;
            this.y = Y;
            this.z = Z;
            this.id = gId;
            return this;
        }
    }
    public struct String
    {
        private
        {
            // 成员属性
            texttag s;
            boolean timedBool = false;
            boolean permanent = false;
        }
        public
        {
            // 构造函数
            static method create() ->thistype {
                thistype this = thistype.allocate();
                this.s = CreateTextTag();
                return this;
            }
            static method byHandle(texttag t) ->thistype {
                thistype this = thistype.allocate();
                this.s = t;
                return this;
            }
            // 创建漂浮文字到单位头上 文字内容 绑定单位 异步显示玩家ID[-1为同步显示] 文字大小 红色 绿色 蓝色 X速率 Y速率 <0时为默认值 , 如果是限时删除 必须记得用timed方法
            static method newUnit(StringPara para) ->thistype {
                thistype this = thistype.allocate();
                this.s = CreateTextTag();
                SetTextTagVisibility(this.s, false);
                SetTextTagText(this.s, para.str, para.size);
                SetTextTagColor(this.s, para.r, para.g, para.b, 255);
                SetTextTagPosUnit(this.s, para.un.Handle(), 90.0);
                SetTextTagVelocity(this.s, para.speedX, para.speedY);
                if (para.id == -1) {
                    SetTextTagVisibility(this.s, true);
                } else if (Player(para.id) == GetLocalPlayer()) {
                    SetTextTagVisibility(this.s, true);
                }
                para.destroy();
                return this;
            }
            // 创建漂浮文字在指定坐标 文字内容 坐标位置 高度 异步显示玩家ID[-1为同步显示] 文字大小 红色 绿色 蓝色 X速率 Y速率 <0时为默认值 , 如果是限时删除 必须记得用timed方法
            static method newPoint(StringPara para) ->thistype {
                thistype this = thistype.allocate();
                this.s = CreateTextTag();
                SetTextTagVisibility(this.s, false);
                SetTextTagText(this.s, para.str, para.size);
                SetTextTagColor(this.s, para.r, para.g, para.b, 255);
                SetTextTagPos(this.s, para.x, para.y, para.z);
                SetTextTagVelocity(this.s, para.speedX, para.speedY);
                if (para.id == -1) {
                    SetTextTagVisibility(this.s, true);
                } else if (Player(para.id) == GetLocalPlayer()) {
                    SetTextTagVisibility(this.s, true);
                }
                para.destroy();
                return this;
            }
            // 析构函数
            method Null() {
                if (!this.timedBool) {
                    this.s = null;
                    this.deallocate();
                }
            }
            method delete() {
                DestroyTextTag(this.s);
                this.Null();
            }
            method timed(real dur) {
                if (this.permanent) {
                    this.timedBool = true;
                    Timer.create(dur, false, function() {
                        thistype this = Timer.thisData();
                        this.timedBool = false;
                        this.delete();
                    }).setData(integer(this));
                } else {
                    this.setPermanent(false);
                    this.setLife(dur);
                    this.Null();
                }
            }
            // Set
            method setText(string text, real size) { SetTextTagText(this.s, text, size); } // 改变文字内容同时设置大小
method setPoint(real x, real y, real z) { SetTextTagPos(this.s, x, y, z); } // 改变位置(坐标)
method setUnit(Unit u, real z) { SetTextTagPosUnit(this.s, u.Handle(), z); } // 改变位置(单位)
method SetColor(integer r, integer g, integer b, integer a) { SetTextTagColor(this.s, r, g, b, a); } // 改变颜色 红绿蓝 透明 0-255
// 改变速率 对移动后的漂浮文字设置速率,该漂浮文字会先回到原点再向设定的角度移动.这里的1约等于游戏中的1800速度
method SetVelocity(real speedX, real speedY) { SetTextTagVelocity(this.s, speedX, speedY); }
            method show(boolean flag) { SetTextTagVisibility(this.s, flag); } // 显示/隐藏 true为显示
method suspend(boolean flag) { SetTextTagSuspended(this.s, flag); } // 暂停/恢复 暂停状态暂停漂浮文字的移动和生命计时. true为暂停
method setPermanent(boolean flag) { this.permanent = flag;SetTextTagPermanent(this.s, flag); } // 设置是否为永久 true为永久
method tagAge(real age) { SetTextTagAge(this.s, age); } // 设置已存在时间 该动作并不影响永久性漂浮文字
method setLife(real life) { SetTextTagLifespan(this.s, life); } // 设置显示时间 该动作并不影响永久性漂浮文字
method setFadepoint(real time) { SetTextTagFadepoint(this.s, time); } // 设置消逝时间点 该动作并不影响永久性漂浮文字.当漂浮文字存在时间到达该值时会开始淡化消逝

            // Boolean
            method IsPermanent() ->boolean { return this.permanent; } // 是否为永久漂浮文字
}
        
        public
        {
            static method ID2S(integer id) ->string { return EXExecuteScript("string.pack('>I4'," + I2S(id) + ") "); } // 'A000' -> "A000"
static method S2ID(string id) ->integer { return S2I(EXExecuteScript("string.unpack('>I4', '" + id + "')")); } // "A000" -> 'A000'
static method len(string str) ->integer { return StringLength(str); } // 字符串长度
static method O2S(integer orderId) ->string { return OrderId2String(orderId); } // 转换命令ID整数为字符串ID
static method S2O(string str) ->integer { return OrderId(str); } // 转换字符串ID为命令ID整数
static method U2S(integer unitId) ->string { return UnitId2String(unitId); } // 'Hmkg'-->"mountainking"
static method S2U(string str) ->integer { return UnitId(str); } // "mountainking"-->'Hmkg'
static method toUpper(string str) ->string { return StringCase(str, true); } // 转换大写
static method toLower(string str) ->string { return StringCase(str, false); } // 转换小写
static method localString(string str) ->string { return GetLocalizedString(str); } // 获取ui\\framedef\\globalstrings.fdf中定义的字符串
static method reverse(string str) ->string { return EXExecuteScript("string.reverse('" + str + "')"); } // 倒序字符串
// 查找字符串pattern出现的起始位置
static method find(string str, string pattern, integer init, string Bool) ->integer {
                string Code;
                Code = EXExecuteScript("string.find('" + str + "', '" + pattern + "', " + I2S(init) + ", " + Bool + ")");
                if (Code == null) {
                    return -1;
                }
                return S2I(Code);
            }
            // 替换字符串，替换str里面的pattern内容为value，count为替换次数，少于1则是代表替换所有
            static method gsub(string str, string pattern, string value, integer count) ->string {
                string Code = "";
                if (count < 1) {
                    Code = EXExecuteScript("string.gsub('" + str + "', '" + pattern + "', '" + value + "')");
                } else {
                    Code = EXExecuteScript("string.gsub('" + str + "', '" + pattern + "', '" + value + "', " + I2S(count) + ")");
                }
                return Code;
            }
            // 寻找字符串，从str里面寻找pattern，起始寻找位置init，找到返回位置，失败返回-1，起始位置可以是负数，负数则是从结尾开始倒序寻找
            static method seek(string str, string pattern, integer init) ->integer {
                integer value = -1;
                if (init < 0) {
                    init = init * -1;
                    value = thistype.find(thistype.reverse(str), thistype.reverse(pattern), init, "true");
                    if (value == -1) return value;
                    value = thistype.len(str) - value;
                } else {
                    value = thistype.find(str, pattern, init, "true");
                }
                return value;
            }
            // 匹配字符串，从str里面根据pattern去匹配字符串，匹配成功返回匹配内容，失败返回null，起始匹配位置init，可以是负数，pattern类型为匹配模式
            // 匹配的规则，只能够正序匹配，如果起始位置为负数，那么就是从结尾开始算起，但依然是正序，而不是倒序。如-1 则是倒数第一位 -2 则是倒数第二位
            // String.match("abcd12345efg", "%d%d", 1); -> "12" , String.match("基础攻击+5000|n基础防御+100", "基础防御.(%d*%.?%d*)", 1); -> "100"
            static method match(string str, string pattern, integer init) ->string {
                return EXExecuteScript("string.match('" + str + "', '" + pattern + "', " + I2S(init) + ")");
            }
            // 截取字符串，截取str内容，从Start位置截取到End位置，Start和End位置都可以为负数，-1则为字符串长度
            static method sub(string str, integer start, integer end) ->string {
                return EXExecuteScript("string.sub('" + str + "', " + I2S(start) + ", " + I2S(end) + ")");
            }
            // 事件响应
            static method chat() ->string { return GetEventPlayerChatString(); } // 输入的聊天信息
static method matched() ->string { return GetEventPlayerChatStringMatched(); } // 匹配的聊天信息
static method syncData() ->string { return DzGetTriggerSyncData(); } // 同步的数据
}
    }
}
//! endzinc
//! zinc
library Input
{
    public struct Input
    {
        public
        {
            // 键盘
            static constant integer KEY_A = 0x41;
            static constant integer KEY_B = 0x42;
            static constant integer KEY_C = 0x43;
            static constant integer KEY_D = 0x44;
            static constant integer KEY_E = 0x45;
            static constant integer KEY_F = 0x46;
            static constant integer KEY_G = 0x47;
            static constant integer KEY_H = 0x48;
            static constant integer KEY_I = 0x49;
            static constant integer KEY_J = 0x4A;
            static constant integer KEY_K = 0x4B;
            static constant integer KEY_L = 0x4C;
            static constant integer KEY_M = 0x4D;
            static constant integer KEY_N = 0x4E;
            static constant integer KEY_O = 0x4F;
            static constant integer KEY_P = 0x50;
            static constant integer KEY_Q = 0x51;
            static constant integer KEY_R = 0x52;
            static constant integer KEY_S = 0x53;
            static constant integer KEY_T = 0x54;
            static constant integer KEY_U = 0x55;
            static constant integer KEY_V = 0x56;
            static constant integer KEY_W = 0x57;
            static constant integer KEY_X = 0x58;
            static constant integer KEY_Y = 0x59;
            static constant integer KEY_Z = 0x5A;
            static constant integer KEY_F1 = 0x70;
            static constant integer KEY_F2 = 0x71;
            static constant integer KEY_F3 = 0x72;
            static constant integer KEY_F4 = 0x73;
            static constant integer KEY_F5 = 0x74;
            static constant integer KEY_F6 = 0x75;
            static constant integer KEY_F7 = 0x76;
            static constant integer KEY_F8 = 0x77;
            static constant integer KEY_F9 = 0x78;
            static constant integer KEY_F10 = 0x79;
            static constant integer KEY_F11 = 0x7A;
            static constant integer KEY_F12 = 0x7B;
            static constant integer KEY_TAB = 0x9; // 切换键
static constant integer KEY_ENTER = 0xD; // 回车键
static constant integer KEY_SHIFT = 0x10; // Shift键
static constant integer KEY_CTRL = 0x11; // Ctrl键
static constant integer KEY_ALT = 0x12; // Alt键
static constant integer KEY_ESC = 0x1B; // Esc键
static constant integer KEY_SPACE = 0x20; // 删除退格键
static constant integer KEY_SLASH = 0xBF; // 正斜杠 \            static constant integer KEY_BACKSL = 0xDC;  // 反斜杠 //
static constant integer KEY_LEFT = 0x25; // ←
static constant integer KEY_UP = 0x26; // ↑
static constant integer KEY_RIGHT = 0x27; // →
static constant integer KEY_DOWN = 0x28; // ↓
// 大键盘 数字键
static constant integer KEY_0 = 0x30;
            static constant integer KEY_1 = 0x31;
            static constant integer KEY_2 = 0x32;
            static constant integer KEY_3 = 0x33;
            static constant integer KEY_4 = 0x34;
            static constant integer KEY_5 = 0x35;
            static constant integer KEY_6 = 0x36;
            static constant integer KEY_7 = 0x37;
            static constant integer KEY_8 = 0x38;
            static constant integer KEY_9 = 0x39;
            // 小键盘 数字键
            static constant integer KEY_NUM_0 = 0x60;
            static constant integer KEY_NUM_1 = 0x61;
            static constant integer KEY_NUM_2 = 0x62;
            static constant integer KEY_NUM_3 = 0x63;
            static constant integer KEY_NUM_4 = 0x64;
            static constant integer KEY_NUM_5 = 0x65;
            static constant integer KEY_NUM_6 = 0x66;
            static constant integer KEY_NUM_7 = 0x67;
            static constant integer KEY_NUM_8 = 0x68;
            static constant integer KEY_NUM_9 = 0x69;
            // 按键状态 【注意，网易的按键注册，如果是按下状态 那么一直按住会一直多次频发的触发，所以需要自己增加间隔】
            static constant integer DOWN = 1; // 按下
static constant integer UP = 0; // 松开
}
        public
        {
            static method triggerKey()->integer{ return DzGetTriggerKey(); } // 事件响应 获取触发的键码
}
    }
}
//! endzinc
//! zinc
library Panel
{
    public struct Panle
    {
        private
        {
            // 成员属性
            multiboard b;
            integer handleId;
            static multiboarditem d = null;
        }
        public
        {
            // 构造函数 行数 列数 标题
            static method create(integer row, integer column, string label) ->thistype {
                thistype this = thistype.allocate();
                this.b = CreateMultiboard();
                this.handleId = GetHandleId(this.b);
                MultiboardSetRowCount(this.b, row);
                MultiboardSetColumnCount(this.b, column);
                MultiboardSetTitleText(this.b, label);
                SaveInteger(XZHT, <?= StringHash("多面板实例") ?>, this.handleId, integer(this));
                return this;
            }
            static method byHandle(multiboard m) ->thistype {
                thistype this = 0;
                if (LoadInteger(XZHT, <?= StringHash("多面板实例") ?>, GetHandleId(m)) > 0) {
                    return LoadInteger(XZHT, <?= StringHash("多面板实例") ?>, GetHandleId(m));
                }
                this = thistype.allocate();
                this.b = m;
                this.handleId = GetHandleId(this.b);
                SaveInteger(XZHT, <?= StringHash("多面板实例") ?>, this.handleId, integer(this));
                return this;
            }
            // 析构函数
            method destroy() {
                this.b = null;
                RemoveSavedInteger(XZHT, <?= StringHash("多面板实例") ?>, this.handleId);
                this.deallocate();
            }
            method delete() {
                MultiboardClear(this.b);
                DestroyMultiboard(this.b);
                this.destroy();
            }
            // 清空多面板所有行和列
            method clear() {
                MultiboardClear(this.b);
            }
            // Get
            method Handle() ->multiboard { return this.b; } // 获取多面板
method HandleId() ->integer { return this.handleId; } // 获取句柄
method Title() ->string { return MultiboardGetTitleText(this.b); } // 获取标题
method row() ->integer { return MultiboardGetRowCount(this.b); } // 获取行数
method column() ->integer { return MultiboardGetColumnCount(this.b); } // 获取列数

            // Set
            method show(boolean flag) { MultiboardDisplay(this.b, flag); } // 显示/隐藏 true为显示
method minimize(boolean flag) { MultiboardMinimize(this.b, !flag); } // 最大/最小化 true为最大化 false为最小化
method setTitle(string text) { MultiboardSetTitleText(this.b, text); } // 设置标题
method setRow(integer row) { MultiboardSetRowCount(this.b, row); } // 设置行数
method setColumn(integer column) { MultiboardSetColumnCount(this.b, column); } // 设置列数
method setTitleColor(integer r, integer g, integer b, integer a) { MultiboardSetTitleTextColor(this.b, r, g, b, a); } // 设置标题颜色 红绿蓝 透明 0-255
method setStyle(boolean txet, boolean icons) { MultiboardSetItemsStyle(this.b, txet, icons); } // 设置所有项目风格 文字 图标 true为显示
method setTxet(string txet) { MultiboardSetItemsValue(this.b, txet); } // 设置所有项目文本
method setTxerColor(integer r, integer g, integer b, integer a) { MultiboardSetItemsValueColor(this.b, r, g, b, a); } // 设置所有项目文本颜色 红绿蓝 透明 0-255
method setWidth(real width) { MultiboardSetItemsWidth(this.b, width / 100.0); } // 设置所有项目宽度 宽度为百分比
method setIcons(string route) { MultiboardSetItemsIcon(this.b, route); } // 设置所有项目图标
static method setShowRule(boolean flag) { MultiboardSuppressDisplay(flag); } // 设置多面板隐藏/显示模式规则，如果隐藏 则所有多面板都无法显示 true为隐藏 false为显示
// 设置指定项目风格 文字 图标 true为显示
method setDitemStyle(integer row, integer column, boolean txet, boolean icons) {
                if (row < 1) row = 1; <?= '\n' ?> if ( column < 1) column = 1; <?= '\n' ?> thistype.d = MultiboardGetItem(this.b, row - 1, column - 1);
                MultiboardSetItemStyle(thistype.d, txet, icons);
                MultiboardReleaseItem(thistype.d);
            }
            // 设置指定项目文本
            method setDitemTxet(integer row, integer column, string txet) {
                if (row < 1) row = 1; <?= '\n' ?> if ( column < 1) column = 1; <?= '\n' ?> thistype.d = MultiboardGetItem(this.b, row - 1, column - 1);
                MultiboardSetItemValue(thistype.d, txet);
                MultiboardReleaseItem(thistype.d);
            }
            // 设置指定项目文本颜色 红绿蓝 透明 0-255
            method setDitemTxetColor(integer row, integer column, integer r, integer g, integer b, integer a) {
                if (row < 1) row = 1; <?= '\n' ?> if ( column < 1) column = 1; <?= '\n' ?> thistype.d = MultiboardGetItem(this.b, row - 1, column - 1);
                MultiboardSetItemValueColor(thistype.d, r, g, b, a);
                MultiboardReleaseItem(thistype.d);
            }
            // 设置指定项目宽度 宽度为百分比
            method setDitemWidth(integer row, integer column, real width) {
                if (row < 1) row = 1; <?= '\n' ?> if ( column < 1) column = 1; <?= '\n' ?> thistype.d = MultiboardGetItem(this.b, row - 1, column - 1);
                MultiboardSetItemWidth(thistype.d, width / 100.0);
                MultiboardReleaseItem(thistype.d);
            }
            // 设置指定项目图标
            method setDitemIcons(integer row, integer column, string route) {
                if (row < 1) row = 1; <?= '\n' ?> if ( column < 1) column = 1; <?= '\n' ?> thistype.d = MultiboardGetItem(this.b, row - 1, column - 1);
                MultiboardSetItemIcon(thistype.d, route);
                MultiboardReleaseItem(thistype.d);
            }
            // Boolean
            method IsDisplayed() ->boolean { return IsMultiboardDisplayed(this.b); } // 是否为显示状态 显示返回true
method IsMinimized() ->boolean { return !IsMultiboardMinimized(this.b); } // 是否为最大化状态 最大化返回true
}
    }
}
//! endzinc
//! zinc
library Dialog
{
    public struct Dialog
    {
        private
        {
            // 成员属性
            dialog dg;
            integer handleId;
            trigger click = null;
            string msg = null;
        }
        public
        {
            // 构造函数
            static method create() ->thistype {
                thistype this = thistype.allocate();
                this.dg = DialogCreate();
                this.handleId = GetHandleId(this.dg);
                SaveInteger(XZHT, <?= StringHash("对话框实例") ?>, this.handleId, integer(this));
                return this;
            }
            static method byHandle(dialog d) ->thistype {
                thistype this = 0;
                if (LoadInteger(XZHT, <?= StringHash("对话框实例") ?>, GetHandleId(d)) > 0) {
                    return LoadInteger(XZHT, <?= StringHash("对话框实例") ?>, GetHandleId(d));
                }
                this = thistype.allocate();
                this.dg = DialogCreate();
                this.handleId = GetHandleId(this.dg);
                SaveInteger(XZHT, <?= StringHash("对话框实例") ?>, this.handleId, integer(this));
                return this;
            }
            // 析构函数
            method destroy() {
                this.dg = null;
                RemoveSavedInteger(XZHT, <?= StringHash("对话框实例") ?>, this.handleId);
                this.deallocate();
            }
            method delete() {
                DialogClear(this.dg);
                DialogDestroy(this.dg);
                if (this.click != null) {
                    DestroyTrigger(this.click);
                    this.click = null;
                }
                this.destroy();
            }
            method clear() {
                DialogClear(this.dg);
                this.msg = null;
            }
            // Get
            method Handle() ->dialog { return this.dg; } // 获取对话框
method HandleId() ->integer { return this.handleId; } // 获取句柄
method getTitle() ->string { return this.msg; } // 获取对话框标题
static method triggerDialog() ->thistype { return Dialog.byHandle(GetClickedDialog()); } // 事件响应 获取触发的对话框
static method triggerButton() ->button { return GetClickedButton(); } // 事件响应 获取触发的对话框按钮

            // Set
            // 设置对话框标题 Example : this.title = text;
            method operator title= (string text) {
                DialogSetMessage(this.dg, text);
                this.msg = text;
            }
            // 添加对话框按钮
            method addButton(string text, integer Key) ->button { return DialogAddButton(this.dg, text, Key); }
            // 添加退出游戏按钮 flag = 是否显示计分屏
            method addOutButton(boolean flag, string text, integer Key) ->button { return DialogAddQuitButton(this.dg, flag, text, Key); }
            // 显示/隐藏 对话框 个人 true为显示
            method show(Gamer gm, boolean flag) {
                DialogDisplay(gm.Handle(), this.dg, flag);
                DialogSetMessage(this.dg, this.msg);
            }
            // 显示/隐藏 对话框 所有玩家
            method showAll(boolean flag) {
                DialogDisplay(GetLocalPlayer(), this.dg, flag);
                DialogSetMessage(this.dg, this.msg);
            }
            // Event
            method onClickEvent(code action) {
                if (this.click == null) {
                    this.click = CreateTrigger();
                    TriggerRegisterDialogEvent(this.click, this.dg);
                }
                TriggerAddCondition(this.click, Filter(action));
            }
        }
    }
}
//! endzinc
//! zinc
library Ease
{
    public struct Ease
    {
        private
        {
            static method onDzGlobalChangeMsg() { Event.executeDiy("全局存档变化"); } // 全局存档变化事件回调
static method onInit() {
                trigger trig = CreateTrigger();
                DzTriggerRegisterSyncData(trig, "DZGAU", true);
                TriggerAddAction(trig, function thistype.onDzGlobalChangeMsg);
                trig = null;
            }
        }
        public
        {
            // Get
            // static method getLevel(Gamer gm) ->integer {
            //     integer level = Game.ht[strHash("等级限定")];
            //     if (level <= 0) {
            //         return DzAPI_Map_GetMapLevel(gm.Handle());
            //     }
            //     return level;
            // }
            static method getMatchType() ->integer { return DzAPI_Map_GetMatchType(); } // 获取匹配的模式
static method getGameTime() ->integer { return DzAPI_Map_GetGameStartTime(); } // 获取创建游戏的游戏时间戳
static method getLevel(Gamer gm) ->integer { return DzAPI_Map_GetMapLevel(gm.Handle()); } // 获取玩家地图等级
static method getLevelRanking(Gamer gm) ->integer { return DzAPI_Map_GetMapLevelRank(gm.Handle()); } // 获取玩家地图等级排名
static method getMapData(string Key) ->string { return DzAPI_Map_GetMapConfig(Key); } // 获取全局服务器存档值
static method getGuildName(Gamer gm) ->string { return DzAPI_Map_GetGuildName(gm.Handle()); } // 获取公会名称
static method getGuildRole(Gamer gm) ->integer { return DzAPI_Map_GetGuildRole(gm.Handle()); } // 获取工会职责 10=成员 20=管理员 30=领导者
// 获取游戏局数
static method getGamerNumber(Gamer gm) ->integer {
                return RequestExtraIntegerData(45, gm.Handle(), null, null, false, 0, 0, 0);
            }
            // 获取评论次数
            static method getCommentCount(Gamer gm) ->integer {
                return RequestExtraIntegerData(46, gm.Handle(), null, null, false, 0, 0, 0);
            }
            // 获取好友数量
            static method getFriendCount(Gamer gm) ->integer {
                return RequestExtraIntegerData(47, gm.Handle(), null, null, false, 0, 0, 0);
            }
            // 获取自定义排行榜玩家排名 [100名以外玩家排名为0]
            static method getRanking(Gamer gm, integer Key) ->integer {
                return RequestExtraIntegerData(52, gm.Handle(), null, null, false, Key, 0, 0);
            }
            // 获取地图评论总次数
            static method getCommentTotalCount() ->integer {
                return RequestExtraIntegerData(51, null, null, null, false, 0, 0, 0);
            }
            // 读取只读全局存档
            static method getPublicArchive(Gamer gm, string Key) ->string {
                return DzAPI_Map_GetPublicArchive(gm.Handle(), Key);
            }
            // 读取全局存档 可读可写
            static method getStore(string Key) ->string {
                return RequestExtraStringData(36, GetLocalPlayer(), Key, null, false, 0, 0, 0);
            }
            // 获取服务器储存数据 不区分大小写
            static method getGameData(Gamer gm, string Key) ->string {
                return DzAPI_Map_GetServerValue(gm.Handle(), Key);
            }
            // 获取服务器储存数据 区分大小写 遗弃
            static method getGameDataEX(Gamer gm, string Key) ->string {
                return RequestExtraStringData(38, gm.Handle(), Key, null, false, 0, 0, 0);
            }
            // 读取服务器内BOSS掉落装备类型
            static method getServerArchiveDrop(Gamer gm, string Key) ->string {
                return DzAPI_Map_GetServerArchiveDrop(gm.Handle(), Key);
            }
            // 获取商城道具剩余的库存次数
            static method getMallItemCount(Gamer gm, string Key) ->integer {
                return RequestExtraIntegerData(41, gm.Handle(), Key, null, false, 0, 0, 0);
            }
            // Set
            static method useConsumablesItem(Gamer gm, string Key) { DzAPI_Map_UseConsumablesItem(gm.Handle(), Key); } // 设置本场游戏消耗Key商品一个
// 设置房间显示的数据
static method setStat(Gamer gm, string Key, string value) {
                DzAPI_Map_Stat_SetStat(gm.Handle(), Key, value);
            }
            // 服务器储存数据 不区分大小写
            static method saveGameData(Gamer gm, string Key, string value) ->boolean {
                return DzAPI_Map_SaveServerValue(gm.Handle(), Key, value);
            }
            // 服务器储存数据 区分大小写 遗弃
            static method saveGameDataEX(Gamer gm, string Key, string value) {
                RequestExtraBooleanData(39, gm.Handle(), Key, value, false, 0, 0, 0);
            }
            // 保存全局存档 可读可写
            static method saveStore(string Key, string value) {
                RequestExtraStringData(37, GetLocalPlayer(), Key, value, false, 0, 0, 0);
            }
            // 使用商城道具 次数型 仅对次数消耗型商品有效，只能使用不能恢复
            static method setConsumeMallItem(Gamer gm, string Key, integer count) ->boolean {
                return RequestExtraBooleanData(42, gm.Handle(), Key, null, false, count, 0, 0);
            }
            // Flush
            static method flushDameData(Gamer gm, string Key) ->boolean { return thistype.saveGameData(gm, Key, null); } // 清空Key内数据

            // Boolean
            static method IsRedVIP(Gamer gm) ->boolean { return DzAPI_Map_IsRedVIP(gm.Handle()); } // 判断是否为红V
static method IsBlueVIP(Gamer gm) ->boolean { return DzAPI_Map_IsBlueVIP(gm.Handle()); } // 判断是否为蓝V
static method IsVIP(Gamer gm) ->boolean { return DzAPI_Map_GetPlatformVIP(gm.Handle()) > 0; } // 判断是否为平台VIP
static method IsRPG() ->boolean { return DzAPI_Map_IsRPGLobby(); } // 判断是否来自RPG大厅
static method IsRPGLadder() ->boolean { return DzAPI_Map_IsRPGLadder(); } // 判断是否来自天梯大厅
static method IsMallItem(Gamer gm, string Key) ->boolean { return DzAPI_Map_HasMallItem(gm.Handle(), Key); } // 判断是否拥有商城道具
// 判断玩家是否读取存档成功
static method IsGamerValue(Gamer gm) ->boolean {
                if (DzAPI_Map_GetServerValueErrorCode(gm.Handle()) == 0) {
                    return true;
                }
                return false;
            }
            // 判断是否为回流/收藏玩家 当前平台回流 = 2 当前地图回流 = 8 曾经地图回流 = 4 曾经平台回流 = 1 收藏地图 = 16
            static method IsCollection(Gamer gm, integer label) ->boolean {
                return RequestExtraBooleanData(53, gm.Handle(), null, null, false, label, 0, 0);
            }
            // 判断是否为鉴赏家
            static method IsConnoisseur(Gamer gm) ->boolean {
                return RequestExtraBooleanData(48, gm.Handle(), null, null, false, 0, 0, 0);
            }
            // 判断是否为战网帐号
            static method IsBattleNetAccount(Gamer gm) ->boolean {
                return RequestExtraBooleanData(49, gm.Handle(), null, null, false, 0, 0, 0);
            }
            // 判断是否为作者
            static method IsAuthor(Gamer gm) ->boolean {
                return RequestExtraBooleanData(50, gm.Handle(), null, null, false, 0, 0, 0);
            }
            // 判断是否为匹配模式 匹配的模式通过获取匹配模式来获取模式
            static method IsRPGQuickMatch() ->boolean {
                return RequestExtraBooleanData(40, null, null, null, false, 0, 0, 0);
            }
            // 是否购买了重制版
            static method IsBuyReforged(Gamer gm) ->boolean {
                return RequestExtraBooleanData(44, gm.Handle(), null, null, false, 0, 0, 0);
            }
            // 其他
            static method orpgBoss(Gamer gm, string Key) { DzAPI_Map_OrpgTrigger(gm.Handle(), Key); } // 触发BOSS击杀
// 完成活动 Key活动类型 value活动名称
static method missionComplete(Gamer gm, string Key, string value) {
                DzAPI_Map_MissionComplete(gm.Handle(), Key, value);
            }
            // 修改平台功能设置 1=锁定视距 2=显血/显蓝 3=智能施法 true为打开 false为关闭
            static method enablePlatformSettings(Gamer gm, integer option, boolean enable) ->boolean {
                return RequestExtraBooleanData(43, gm.Handle(), null, null, enable, option, 0, 0);
            }
        }
    }
}
//! endzinc
//! zinc
library Hard
{
    public struct Hard
    {
        private
        {
            // 成员属性
            static boolean keyBool[];
            static boolean mouseWheelBool = false;
            static boolean mouseMoveBool = false;
            static boolean windowResizeBool = false;
            static boolean updateCallBool = false;
            static Vec3 camUp = 0;
            static method worldToView(Vec3 worldPos, Vec3 camPos, Vec3 camTarget) -> Vec3
            {
                Vec3 zS = Vec3.difference(camTarget, camPos);
                Vec3 zaxis = zS.norm;
                Vec3 xS = Vec3.crossProduct(thistype.camUp, zaxis);
                Vec3 xaxis = xS.norm;
                Vec3 yaxis = Vec3.crossProduct(zaxis, xaxis);
                real x = worldPos.x*xaxis.x + worldPos.y*xaxis.y + worldPos.z*xaxis.z - 1*xaxis.dot(camPos);
                real y = worldPos.x*yaxis.x + worldPos.y*yaxis.y + worldPos.z*yaxis.z - 1*yaxis.dot(camPos);
                real z = worldPos.x*zaxis.x + worldPos.y*zaxis.y + worldPos.z*zaxis.z - 1*zaxis.dot(camPos);
                Vec3 ans = Vec3.create(-x, y, z);
                zS.destroy();
                xS.destroy();
                zaxis.destroy();
                xaxis.destroy();
                yaxis.destroy();
                return ans;
            }
            static method onInit()
            {
                thistype.camUp = Vec3.create(0.0, 0.0, 1.0);
            }
        }
        public
        {
            // Get
            static method mouseGameX() ->real { return DzGetMouseTerrainX(); } // 获取鼠标在游戏内的X坐标
static method mouseGameY() ->real { return DzGetMouseTerrainY(); } // 获取鼠标在游戏内的Y坐标
static method mouseGameZ() ->real { return DzGetMouseTerrainZ(); } // 获取鼠标在游戏内的Z坐标
static method mouseX() ->integer { return DzGetMouseX(); } // 获取鼠标在屏幕的X坐标
static method mouseY() ->integer { return DzGetMouseY(); } // 获取鼠标在屏幕的Y坐标
static method mouseXRelative() ->integer { return DzGetMouseXRelative(); } // 获取鼠标游戏窗口坐标X
static method mouseYRelative() ->integer { return DzGetMouseYRelative(); } // 获取鼠标游戏窗口坐标Y
static method windowWidth() ->integer { return DzGetWindowWidth(); } // 获取War3窗口宽度
static method windowHeight() ->integer { return DzGetWindowHeight(); } // 获取War3窗口高度
static method windowX() ->integer { return DzGetWindowX(); } // 获取魔兽窗口X坐标
static method windowY() ->integer { return DzGetWindowY(); } // 获取魔兽窗口Y坐标
static method getKey() ->integer { return DzGetTriggerKey(); } // 事件响应 - 获取触发的按键ID
static method getWheelValue() ->integer { return DzGetWheelDelta(); } // 事件响应 - 获取滚轮变化值
static method mouseUnit() ->Unit { return Unit.byHandle(DzGetUnitUnderMouse()); } // 获取鼠标指向的单位
static method mouseItem() ->Item { return Item.byHandle(Turn.item(GetHandleId(DzGetUnitUnderMouse()))); } // 获取鼠标指向的物品

            static method mouseGameVec3() ->Vec3 { return Vec3.create(DzGetMouseTerrainX(), DzGetMouseTerrainY(), DzGetMouseTerrainZ()); } // 获取鼠标在游戏内的向量信息

            // 游戏坐标转换屏幕坐标
            static method worldToScreenLocal(Vec3 v) ->Vec3
            {
                Vec3 camPos = Vec3.create(GetCameraEyePositionX(), GetCameraEyePositionY(), GetCameraEyePositionZ());
                Vec3 camTarget = Vec3.create(GetCameraTargetPositionX(), GetCameraTargetPositionY(), GetCameraTargetPositionZ());
                Vec3 res = thistype.worldToView(v, camPos, camTarget);
                real clipHalfLength = math.tan(GetCameraField(CAMERA_FIELD_FIELD_OF_VIEW) / 2);
                real n = 0.4 / clipHalfLength;
                res.x = n * res.x / res.z / 0.75;
                res.y = n * res.y / res.z / 0.75 + 0.05;
                res.z = 1;
                camPos.destroy();
                camTarget.destroy();
                return res;
            }
            // Set
            static method setMousePos(integer x, integer y) { DzSetMousePos(x, y); } // 设置鼠标位置
static method setMemory(integer address, real value) { DzSetMemory(address, value); } // 设置内存地址数值

            // Boolean
            static method IsKeyDown(integer Key) ->boolean { return DzIsKeyDown(Key); } // 判断按键是否按下
static method IsMouseGame() ->boolean { return DzIsMouseOverUI(); } // 鼠标是否在游戏UI内
static method IsWindowActive() ->boolean { return DzIsWindowActive(); } // 判断游戏窗口是否处于激活状态

            // 硬件事件 code是异步执行的。只有触发的玩家环境下执行了action
            // 注册异步鼠标事件, 无法在本地环境内执行触发器 status = 触发方式，0为松开 1为按下 , btn = 鼠标键， 1为左键 2为右键
            static method mouseEvent(integer btn, integer status, code action) {
                if (thistype.keyBool[btn + status + 1]) return;
                thistype.keyBool[btn + status + 1] = true;
                DzTriggerRegisterMouseEventByCode(null, btn, status, false, action);
            }
            // 注册异步按键事件，无法在本地环境内执行触发器 status = 触发方式，0为松开 1为按下
            static method keyEvent(integer keyData, integer status, code action) {
                if (thistype.keyBool[keyData + status + 1]) return;
                thistype.keyBool[keyData + status + 1] = true;
                DzTriggerRegisterKeyEventByCode(null, keyData, status, false, action);
            }
            // 注册异步鼠标滚轮事件，无法在本地环境内执行触发器
            static method mouseWheelEvent(code action) {
                if (thistype.mouseWheelBool) return;
                thistype.mouseWheelBool = true;
                DzTriggerRegisterMouseWheelEventByCode(null, false, action);
            }
            // 注册异步鼠标移动事件，无法在本地环境内执行触发器
            static method mouseMoveEvent(code action) {
                if (thistype.mouseMoveBool) return;
                thistype.mouseMoveBool = true;
                DzTriggerRegisterMouseMoveEventByCode(null, false, action);
            }
            // 注册异步窗口大小变化事件，无法在本地环境内执行触发器
            static method windowResizeEvent(code action) {
                if (thistype.windowResizeBool) return;
                thistype.windowResizeBool = true;
                DzTriggerRegisterWindowResizeEventByCode(null, false, action);
            }
            // 注册异步界面更新绘制事件，无法在本地环境内执行触发器
            static method updateCallEvent(code action) {
                if (thistype.updateCallBool) return;
                thistype.updateCallBool = true;
                DzFrameSetUpdateCallbackByCode(action);
            }
        }
    }
}
//! endzinc
//! zinc
library Frame
{
public
    struct Frame
    {
    private
        {
            // 成员属性
            integer f;
            real width;
            boolean showBool;
            string FrameName;
            // 初始化
            static method onInit()
            {
                integer index = <?= StringHash("UI框架事件映射") ?>;
                SaveInteger(XZHT, index, <?= StringHash("无") ?>, 0);
                SaveInteger(XZHT, index, <?= StringHash("鼠标点击") ?>, 1);
                SaveInteger(XZHT, index, <?= StringHash("鼠标进入") ?>, 2);
                SaveInteger(XZHT, index, <?= StringHash("鼠标离开") ?>, 3);
                SaveInteger(XZHT, index, <?= StringHash("鼠标释放") ?>, 4);
                SaveInteger(XZHT, index, <?= StringHash("鼠标弹起") ?>, 5); //1.27测试貌似无用
SaveInteger(XZHT, index, <?= StringHash("鼠标滚轮") ?>, 6);
                SaveInteger(XZHT, index, <?= StringHash("被选中") ?>, 7); //支持复选框
SaveInteger(XZHT, index, <?= StringHash("取消选中") ?>, 8); //支持复选框
SaveInteger(XZHT, index, <?= StringHash("改变文本") ?>,
                SaveInteger(XZHT, index, <?= StringHash("菜单被改变") ?>, 10);
                SaveInteger(XZHT, index, <?= StringHash("菜单项目被改变") ?>, 11);
                SaveInteger(XZHT, index, <?= StringHash("鼠标双击") ?>, 12);
                SaveInteger(XZHT, index, <?= StringHash("动画更新") ?>, 13); //1.27测试貌似无用
}
        }
    public
        {
            // 构造函数
            // 此处名字可以自定义，类型和模版填写fdf文件中的内容。通过此函数创建的Frame无法获取到子Frame 类型 名字 父节点 模版 ID,如果模版为无可以填写template
            static method createTag(string Type, string name, Frame p, string template, integer id)->thistype
            {
                thistype this = thistype.allocate();
                this.FrameName = name;
                this.f = DzCreateFrameByTagName(Type, name, p.Handle(), template, id);
                SaveInteger(XZHT, <?= StringHash("UI框架实例") ?>, this.f, integer(this));
                return this;
            }
            static method create(string name, Frame p, integer id)->thistype
            {
                thistype this = thistype.allocate();
                this.f = DzCreateFrame(name, p.Handle(), id);
                this.FrameName = name;
                SaveInteger(XZHT, <?= StringHash("UI框架实例") ?>, this.f, integer(this));
                return this;
            }
            static method byHandle(integer frame)->thistype
            {
                thistype this = 0;
                if (LoadInteger(XZHT, <?= StringHash("UI框架实例") ?>, frame) > 0)
                {
                    return LoadInteger(XZHT, <?= StringHash("UI框架实例") ?>, frame);
                }
                this = thistype.allocate();
                this.f = frame;
                SaveInteger(XZHT, <?= StringHash("UI框架实例") ?>, this.f, integer(this));
                return this;
            }
            // 析构函数
            method destroy()
            {
                RemoveSavedInteger(XZHT, <?= StringHash("UI框架实例") ?>, this.f);
                this.deallocate();
            }
            method delete ()
            {
                DzDestroyFrame(this.f);
                this.destroy();
            }
            // Event
            // 注册异步UI事件回调 action为异步执行回调 需要自己同步，无法在本地环境内执行触发器
            method scriptEvent(string eventId, code action)
            {
                integer index = LoadInteger(XZHT, <?= StringHash("UI框架事件映射") ?>, StringHash(eventId));
                DzFrameSetScriptByCode(this.f, index, action, false);
            }
            // 注册同步UI事件回调 action为同步执行 已经自动同步
            method scriptEventSync(string eventId, code action)
            {
                integer index = LoadInteger(XZHT, <?= StringHash("UI框架事件映射") ?>, StringHash(eventId));
                DzFrameSetScriptByCode(this.f, index, action, true);
            }
            // Get
            method Handle()->integer { return this.f; } // 获取框架节点
method value()->real { return DzFrameGetValue(this.f); } // 获取当前值
method color(integer r, integer g, integer b, integer a)->integer { return DzGetColor(r, g, b, a); } // 取RGBA色值 红绿蓝透明
method getTextSize()->integer { return DzFrameGetTextSizeLimit(this.f); } // 获取字数限制
method getHeight()->real { return DzFrameGetHeight(this.f); } // 获取高度
method getWidth()->real { return this.width; } // 获取宽度
method name()->string { return this.FrameName; } // 获取名称

            // Get ThisType
            method getParent()->Frame { return Frame.byHandle(DzFrameGetParent(this.f)); } // 获取Parent
// 获取子Frame ID填0，同名时优先获取最后被创建的。非Simple类的Frame类型都用此函数来获取子Frame
static method sonFind(string name, integer id)->Frame { return Frame.byHandle(DzFrameFindByName(name, id)); }
            // 获取子SimpleFrame ID填0，同名时优先获取最后被创建的。SimpleFrame为fdf中的Frame类型
            static method sonSimple(string name, integer id)->Frame { return Frame.byHandle(DzSimpleFrameFindByName(name, id)); }
            // 获取子SimpleFontString ID填0，同名时优先获取最后被创建的。SimpleFontString为fdf中的Frame类型
            static method sonSimpleFontString(string name, integer id)->Frame { return Frame.byHandle(DzSimpleFontStringFindByName(name, id)); }
            // 获取子SimpleTexture ID填0，同名时优先获取最后被创建的。SimpleTexture为fdf中的Frame类型
            static method sonSimpleTexture(string name, integer id)->Frame { return Frame.byHandle(DzSimpleTextureFindByName(name, id)); }
            // 事件响应-触发的Frame
            static method triggerFrame()->Frame { return Frame.byHandle(DzGetTriggerUIEventFrame()); }
            // 鼠标所在的Frame控件指针 不是所有类型的Frame都能响应鼠标，能响应的有BUTTON，TEXT等
            static method mouseFrame()->Frame { return Frame.byHandle(DzGetMouseFocus()); }
            // 原生-单位大头像 小地图右侧的大头像
            static method getPortrait()->Frame { return Frame.byHandle(DzFrameGetPortrait()); }
            // 原生-小地图
            static method getMinimap()->Frame { return Frame.byHandle(DzFrameGetMinimap()); }
            // 原生-技能按钮 参考物编中的技能按钮(x,y)坐标 row = x calumn = y
            static method getCommandBarButton(integer row, integer calumn)->Frame { return Frame.byHandle(DzFrameGetCommandBarButton(row, calumn)); }
            // 原生-英雄按钮 左侧的英雄头像，参数表示第N+1个英雄，索引从0开始
            static method getHeroBarButton(integer index)->Frame { return Frame.byHandle(DzFrameGetHeroBarButton(index)); }
            // 原生-英雄血条 左侧的英雄头像下的血条，参数表示第N+1个英雄，索引从0开始
            static method getHeroHPBar(integer index)->Frame { return Frame.byHandle(DzFrameGetHeroHPBar(index)); }
            // 原生-英雄蓝条 左侧的英雄头像下的蓝条，参数表示第N+1个英雄，索引从0开始
            static method getHeroManaBar(integer index)->Frame { return Frame.byHandle(DzFrameGetHeroManaBar(index)); }
            // 原生-物品栏按钮 索引从0开始
            static method getItemBarButton(integer index)->Frame { return Frame.byHandle(DzFrameGetItemBarButton(index)); }
            // 原生-小地图按钮 小地图右侧竖排按钮，索引从0开始
            static method getMinimapButton(integer index)->Frame { return Frame.byHandle(DzFrameGetMinimapButton(index)); }
            // 原生-界面按钮 左上的菜单等按钮，索引从0开始
            static method getUpperButtonBarButton(integer index)->Frame { return Frame.byHandle(DzFrameGetUpperButtonBarButton(index)); }
            // 原生-鼠标提示 鼠标移动到物品或技能按钮上显示的提示窗，初始位于技能栏上方
            static method getTooltip()->Frame { return Frame.byHandle(DzFrameGetTooltip()); }
            // 原生-玩家聊天信息框
            static method getChatMessage()->Frame { return Frame.byHandle(DzFrameGetChatMessage()); }
            // 原生-系统消息框 包含显示消息给玩家 及 显示Debug消息 等
            static method getUnitMessage()->Frame { return Frame.byHandle(DzFrameGetUnitMessage()); }
            // 原生-上方消息框 高维修费用 等消息
            static method getTopMessage()->Frame { return Frame.byHandle(DzFrameGetTopMessage()); }
            // 原生-游戏UI 一般用作创建自定义UI的父节点
            static method getGameUI()->Frame { return Frame.byHandle(DzGetGameUI()); }
            // 独立的根据左上偏移位置设置相对位置的，x跟y的偏移位置会自动换算，只需要填写偏移像素即可。
            method setPointPs(Frame p, real x, real y)
            {
                DzFrameSetPoint(this.f, 0, p.Handle(), 0, x / 16.0 * 0.01, -y / 16.0 * 0.01);
            }
            // 根据鼠标位置偏移创建
            method setPointMouse(integer point, real whichx, real whichy)
            {
                real x = I2R(Hard.mouseX() - Hard.windowX()) / (I2R(Hard.windowWidth()) / 0.8) + whichx;
                real y = I2R(Hard.windowHeight() + Hard.windowY() - Hard.mouseY()) / (I2R(Hard.windowHeight()) / 0.6) + whichy;
                DzFrameSetAbsolutePoint(this.f, point, x, y);
            }
            // 固定根据游戏UI的中心来设置锚点偏移
            method setPointCenter(real x, real y)
            {
                DzFrameSetPoint(this.f, 4, DzGetGameUI(), 4, x, y);
            }
            // Set
            // 设置相对位置
            method setPoint(integer point, Frame p, integer relativePoint, real x, real y) { DzFrameSetPoint(this.f, point, p.Handle(), relativePoint, x, y); }
            // 设置绝对位置
            method setAbsolutePoint(integer point, real x, real y) { DzFrameSetAbsolutePoint(this.f, point, x, y); }
            // 移动所有锚点到框架节点
            method movePoint(Frame p) { DzFrameSetAllPoints(this.f, p.Handle()); }
            // 设置缩放
            method setScale(real scale) { DzFrameSetScale(this.f, scale); }
            // 设置大小
            method setSize(real w, real h)
            {
                this.width = w;
                DzFrameSetSize(this.f, w / 16 * 0.01, h / 16 * 0.01);
            }
            // 设置焦点 true为获取焦点
            method setFocus(boolean flag) { DzFrameSetFocus(this.f, flag); }
            // 设置文本 支持 EditBox, TextFrame, TextArea, SimpleFontString、GlueEditBoxWar3、SlashChatBox、TimerTextFrame、TextButtonFrame、GlueTextButton
            method setText(string text) { DzFrameSetText(this.f, text); }
            // 设置贴图 支持 Backdrop、SimpleStatusBar flag = 是否平铺
            method setTextUre(string ure, integer flag) { DzFrameSetTexture(this.f, ure, flag); }
            // 设置透明度 0-255 0为隐藏
            method setAlpha(integer alpha) { DzFrameSetAlpha(this.f, alpha); }
            // 设置颜色 红绿蓝 透明 0-255
            method setColor(integer r, integer g, integer b, integer a) { DzFrameSetVertexColor(this.f, DzGetColor(r, g, b, a)); }
            // 设置字数限制
            method setTextSize(integer size) { DzFrameSetTextSizeLimit(this.f, size); }
            // 设置提示
            method setTooltip(integer tooltip) { DzFrameSetTooltip(this.f, tooltip); }
            // 限制鼠标移动 true为限制
            method cageMouse(boolean flag) { DzFrameCageMouse(this.f, flag); }
            // 设置模型文件
            method setModel(string name, integer modelType, integer flag) { DzFrameSetModel(this.f, name, modelType, flag); }
            // 设置动画 flag = 是否自动播放
            method setAnimate(integer alpha, boolean flag) { DzFrameSetAnimate(this.f, alpha, flag); }
            // 设置动画进度 自动播放为false 为可用
            method setAnimateOffset(real offset) { DzFrameSetAnimateOffset(this.f, offset); }
            // 点击
            method click() { DzClickFrame(this.f); }
            // 清空所有锚点
            method flushPoint() { DzFrameClearAllPoints(this.f); }
            // 设置最大/最小值 支持 Slider、SimpleStatusBar、StatusBar
            method setMixMax(real min, real max) { DzFrameSetMinMaxValue(this.f, min, max); }
            // 设置步进值 支持 Slider
            method setStep(real step) { DzFrameSetStepValue(this.f, step); }
            // 设置当前值 支持 Slider、SimpleStatusBar、StatusBar
            method setValue(real value) { DzFrameSetValue(this.f, value); }
            // 启用/禁用 true为启用 false为禁用
            method enable(boolean flag) { DzFrameSetEnable(this.f, flag); }
            // 显示/隐藏 true为显示 false为隐藏
            method show(boolean flag)
            {
                this.showBool = flag;
                DzFrameShow(this.f, flag);
            }
            // 设置优先级
            method setPriority(integer level) { DzFrameSetPriority(this.f, level); }
            // 设置父窗口
            method setParent(Frame p) { DzFrameSetParent(this.f, p.Handle()); }
            // 设置字体 支持 EditBox、SimpleFontString、SimpleMessageFrame 以及非 SimpleFrame 类型的例如TEXT，flag作用未知
            method setFont(string name, real height, integer flag) { DzFrameSetFont(this.f, name, height, flag); }
            // 设置对齐方式 支持 TextFrame、SimpleFontString、SimpleMessageFrame
            method setTextAlignment(integer aligh) { DzFrameSetTextAlignment(this.f, aligh); }
            // Boolean
            // 判断控件是否启用
            method IsEnable()->boolean { return DzFrameGetEnable(this.f); }
            // 判断控件是否显示
            method IsShow()->boolean { return this.showBool; }
            // 其他
            // 加载Toc文件列表 name = fileName.toc 载入自己的fdf列表文件
            static method loadToc(string name) { DzLoadToc(name); }
            // 原生-隐藏所有界面UI 不在地图初始化时调用则会残留小地图和时钟模型
            static method hideInterface() { DzFrameHideInterface(); }
            // 原生-使用宽屏模式 true为宽屏
            static method enableWideScreen(boolean flag) { DzEnableWideScreen(flag); }
            // 原生-修改屏幕比例(FOV)
            static method setCustomFovFix(real value) { DzSetCustomFovFix(value); }
            // 原生-修改游戏渲染黑边范围 修改游戏渲染黑边: 上方高度:upper 下方高度:bottom
            static method editBlackBorders(real upper, real bottom) { DzFrameEditBlackBorders(upper, bottom); }
            // 原生-设置小地图背景贴图 路径 如 war3mapMap.blp
            static method setWar3MapMap(string name) { DzSetWar3MapMap(name); }
        }
    }
}
//! endzinc
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
                SaveInteger( XZHT, <?= StringHash("bufftype实例") ?>, StringHash(name), integer(this));
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
                this.time = Timer.create(0.02, true, function() {
                    thistype this = Timer.thisData();
                    // 重置周期
                    this.dur = this.dur - 0.02;
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
                if (HaveSavedInteger( XZHT, whichTu.HandleId(), whichType.HandleId())) {
                    // 获取添加前实例
                    this = LoadInteger( XZHT, whichTu.HandleId(), whichType.HandleId());
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
                SaveInteger( XZHT, whichTu.HandleId(), whichType.HandleId(), integer(this));
                // 判断是否为永久Buff效果
                if (this.dur > 0.0) {
                    // 执行心动事件
                    this.onTimer();
                } else {
                    // 添加实例
                    size = LoadInteger( BuffHT, whichTu.HandleId(), <?= StringHash("永久Buff数量") ?>) + 1;
                    SaveInteger( BuffHT, whichTu.HandleId(), size, integer(this));
                    SaveInteger( BuffHT, whichTu.HandleId(), <?= StringHash("永久Buff数量") ?>, size);
                }
                // 执行添加Buff回调
                if (this.buffType.addEventId != 0) this.buffType.callBackAddEvent(this);
                return this;
            }
            static method new(Unit whichDu, Unit whichTu, string whichType, real whichDur) ->thistype
            {
                thistype this = 0;
                integer size = 0;
                BuffType Type = LoadInteger( XZHT, <?= StringHash("bufftype实例") ?>, StringHash(whichType));
                if (HaveSavedInteger( XZHT, whichTu.HandleId(), Type.HandleId())) {
                    // 获取添加前实例
                    this = LoadInteger( XZHT, whichTu.HandleId(), Type.HandleId());
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
                SaveInteger( XZHT, whichTu.HandleId(), Type.HandleId(), integer(this));
                // 判断是否为永久Buff效果
                if (this.dur > 0.0) {
                    // 执行心动事件
                    this.onTimer();
                } else {
                    // 添加实例
                    size = LoadInteger( BuffHT, whichTu.HandleId(), <?= StringHash("永久Buff数量") ?>) + 1;
                    SaveInteger( BuffHT, whichTu.HandleId(), size, integer(this));
                    SaveInteger( BuffHT, whichTu.HandleId(), <?= StringHash("永久Buff数量") ?>, size);
                }
                // 执行添加Buff回调
                if (this.buffType.addEventId != 0) this.buffType.callBackAddEvent(this);
                return this;
            }
            static method remove(Unit whichUnit, string whichType) ->boolean
            {
                thistype this = 0;
                BuffType Type = LoadInteger( XZHT, <?= StringHash("bufftype实例") ?>, StringHash(whichType));
                if (HaveSavedInteger( XZHT, whichUnit.HandleId(), Type.HandleId())) {
                    this = LoadInteger( XZHT, whichUnit.HandleId(), Type.HandleId());
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
                RemoveSavedInteger( XZHT, GetHandleId(this.tu), this.buffType.HandleId());
                FlushChildHashtable(USDT, this.handleId);
                DestroyTrigger(this.id);
                this.deallocate();
            }
        }
    }
}
//! endzinc
// requires
//! zinc
library XZAPI requires JAPI, Table, Turn, Base, Order, Math, Vec3, Object, Event, Timer, Effect, Game, Gamer, Unit, Item, Point, Group, String, Input, Panel, Dialog, Ease, Hard, Frame, Buff, List, ListModule 
{
    // private function onInit() {
    //     print("XZincLibrary-load! " + "<?= os.date('%Y-%m-%d %H:%M:%S') ?>");
    // }
}
//! endzinc
// Library
//! zinc
library Excretion
{
    // 单位死亡后清除属性
    private struct deathUnit
    {
        static method action() {
            integer unId = GetHandleId(GetDyingUnit());
            integer size = 0;
            integer forIndex = 0;
            if (!LoadBoolean(XZHT, unId, <?= StringHash("永久单位") ?>)) {
                // 遍历永久Buff
                if (LoadInteger(BuffHT, unId, <?= StringHash("永久Buff数量") ?>) > 0) {
                    size = LoadInteger(BuffHT, unId, <?= StringHash("永久Buff数量") ?>);
                    for (1 <= forIndex <= size) {
                        Buff(LoadInteger(BuffHT, unId, forIndex)).destroy();
                    }
                    FlushChildHashtable(BuffHT, unId);
                }
                // 清空表属性
                FlushChildHashtable(XZHT, unId);
                FlushChildHashtable(XWHT, unId);
                FlushChildHashtable(USDT, unId);
            }
        }
        static method onInit() {
            integer index;
            trigger trig = CreateTrigger();
            for (0 <= index <= 15) {
                TriggerRegisterPlayerUnitEvent(trig, Player(index), EVENT_PLAYER_UNIT_DEATH, null);
            }
            TriggerAddAction(trig, function thistype.action);
            trig = null;
        }
    }
    // 抵押物品和周期性选取物品排泄
    // 用来控制周期性排泄的时间周期 单位为秒
    private struct deathItem
    {
        static method action() {
            integer itId = GetHandleId(GetSoldItem());
            FlushChildHashtable(XZHT, itId);
        }
        static method onInit() {
            trigger trig = CreateTrigger();
            integer index;
            for (0 <= index <= 15) {
                TriggerRegisterPlayerUnitEvent(trig, Player(0), EVENT_PLAYER_UNIT_PAWN_ITEM, null);
            }
            TriggerAddAction(trig, function thistype.action);
            Timer.create(60, true, function() {
                Item.enumInRect(bj_mapInitialPlayableArea, function() {
                    Item it = Item.enumItem();
                    if (it.life() <= 0.0) {
                        it.setLife(1.0);
                        it.delete();
                    } else {
                        it.Null();
                    }
                });
            });
            trig = null;
        }
    }
}
//! endzinc
//! zinc
library Motion requires XZAPI
{
    public
    {
        // 运动器参数结构
        
        struct MotionPara
        {
            Unit mover = 0; // 运动单位 默认为 无单位
real x = 0.0; // 目标X坐标 默认为 0.0
real y = 0.0; // 目标Y坐标 默认为 0.0
real angle = 270.0; // 角度 默认为 默认建筑朝向 ~ 当x和y为0时 自动启用面向角度冲锋 否则使用坐标冲锋
real dist = 800.0; // 距离 默认为 800
real height = 0.0; // 最大高度 默认为 0.0
real dur = 0.8; // 持续时间 默认为 0.8
real time = 0.03; // 周期时间 默认为 0.03
real range = 325.0; // 碰撞范围 默认为 325.0
boolean flag = true; // 是否计算碰撞 默认为 true
boolean vest = false; // 运动单位是否需要销毁
boolean isCover = false; // 重复执行是否覆盖参数
boolean eventMover = false; // 是否启用移动事件
boolean eventColli = true; // 是否启用碰撞事件
boolean eventEnd = false; // 是否启用完成事件
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
                Unit mover; // 运动单位
Unit collisionUnit; // 碰撞来源
real x,y; // 运动单位当前坐标
real dx,dy; // 运动偏移坐标
real z; // 运动单位高度
integer count; // 该运动器总运动次数
integer number; // 当前运动的次数
real dist; // 每次运动距离
real dheig; // 高度还原参数
real height; // 运动最大高度
real angle; // 运动方向
boolean flag; // 是否计算碰撞
real range; // 碰撞范围
Timer time; // 计时器索引
}
            public
            {
                string name; // 当前运动名称
MotionPara para; // 当前运动结构参数体
Group screen; // 碰撞单位筛选器

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
                        Event.setEventDataInt(<?= StringHash("运动完成事件") ?>, integer(this));
                        Event.executeDiyInt(<?= StringHash("运动完成事件") ?>);
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
                    thistype this = Timer.thisData();
                    boolean terrain = false;
                    real gheight = 0.0;
                    Group grou = 0;
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
                                Event.setEventDataInt(<?= StringHash("运动移动事件") ?>, integer(this));
                                Event.executeDiyInt(<?= StringHash("运动移动事件") ?>);
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
                                        Event.setEventDataInt(<?= StringHash("运动碰撞事件") ?>, integer(this));
                                        Event.executeDiyInt(<?= StringHash("运动碰撞事件") ?>);
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
                        this.mover = Unit.byHandle(this.para.mover.Handle());
                    }
                    // 运动参数注册
                    this.x = this.mover.x();
                    this.y = this.mover.y();
                    this.dx = this.x;
                    this.dy = this.y;
                    this.count = math.miR2I(this.para.dur / this.para.time);
                    this.number = 0;
                    this.dheig = 1.0 / this.count;
                    this.height = this.para.height;
                    this.flag = this.para.flag;
                    this.range = Para.range;
                    this.name = Name;
                    // 判断运动类型
                    if (this.para.x != 0.0 && this.para.y != 0.0) {
                        this.dist = math.unitDistanceXY(this.mover, this.para.x, this.para.y) / this.count;
                        this.angle = math.xyAngle(this.x, this.y, this.para.x, this.para.y);
                    } else {
                        this.dist = this.para.dist / this.count;
                        this.angle = this.para.angle;
                    }
                    if (!thistype.ht.has(this.para.mover.HandleId())) {
                        thistype.ht[Para.mover.HandleId()] = integer(this);
                        this.z = this.mover.z();
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
//! zinc
library Damage requires XZAPI
{
    // 伤害类型名字
    // 物理属性
    // 法术属性
    // 通用属性
    // 伤害类型
    // 攻击类型
    // 伤害免疫字体
    // 物理暴击最低倍数，法术暴击最低倍数，分裂范围，分裂人数上限
    // 物理穿透上限，法术穿透上限，护甲因子
    // 物理伤害减免上限，法术伤害减免上限
    // 设置伤害值
    // JAPI伤害类型判断
    // JAPI攻击类型判断
    public struct Damage
    {
        private
        {
            // 成员属性
            real dataValue;
            Unit du,tu;
            Gamer dp,tp;
            integer duId,tuId;
            boolean eventBool;
            Table ht;
            // 静态成员
            static Table table = 0;
        }
        public
        {
            // Get
            method value() ->real { return this.ht.real[<?= StringHash("伤害值") ?>]; } // 获取本次伤害值
method data(string name) ->real { return this.ht.real[StringHash(name)]; } // 获取本次伤害参数值
method dataInt(integer name) ->real { return this.ht.real[name]; } // 获取本次伤害参数值 整数参数
method getAttackStr() ->string { return this.ht.string[<?= StringHash("攻击类型") ?>]; } // 获取攻击方式
method getDamageStr() ->string { return this.ht.string[<?= StringHash("伤害类型") ?>]; } // 获取伤害类型
method getUnit() ->Unit { return this.du; } // 获取伤害来源
method getTrigger() ->Unit { return this.tu; } // 获取触发单位
static method getThis() ->thistype { return thistype.table[GetHandleId(GetEventDamageSource())]; } // 获取触发的伤害实例

            // Set
            method setValue(real value) { this.ht.real[<?= StringHash("伤害值") ?>] = value; } // 修改本次伤害值
method setData(string name, real value) { this.ht.real[StringHash(name)] = value; } // 修改本次伤害参数值
method setDataInt(integer name, real value) { this.ht.real[name] = value; } // 修改本次伤害参数值 整数参数

            // Add
            method addData(string name, real value) { this.ht.real[StringHash(name)] = this.ht.real[StringHash(name)] + value; } // 增加本次伤害参数值
method addDataInt(integer name, real value) { this.ht.real[name] = this.ht.real[name] + value; } // 增加本次伤害参数值 整数参数

            // Boolean
            // 判断攻击类型 - 近战攻击 远程攻击 触发攻击
            method IsAttackType(string name) ->boolean { return this.ht.string[<?= StringHash("攻击类型") ?>] == name; }
            // 判断伤害类型 - 物理伤害 法术伤害 真实伤害
            method IsDamageType(string name) ->boolean { return this.ht.string[<?= StringHash("伤害类型") ?>] == name; }
            // 判断是否为暴击
            method IsCrit() ->boolean { return this.ht.boolean[<?= StringHash("是否暴击") ?>]; }
            // Damage
            // 伤害目标 伤害来源 触发单位 伤害值 是否为近战攻击 是否为远程攻击 伤害类型 是否过滤伤害衍生事件
            static method causeUnit(Unit d, Unit t, real damage, boolean attackDamage, boolean rangedDamage, string damageIndex, boolean flag) {
                SaveBoolean(XZHT, d.HandleId(), <?= StringHash("事件过滤器") ?>, flag);
                if (damageIndex == "物理伤害") {
                    d.causeUnit(t, damage, attackDamage, rangedDamage, ConvertAttackType(1), ConvertDamageType(4), WEAPON_TYPE_WHOKNOWS);
                } else if (damageIndex == "法术伤害") {
                    d.causeUnit(t, damage, attackDamage, rangedDamage, ConvertAttackType(4), ConvertDamageType(4), WEAPON_TYPE_WHOKNOWS);
                } else if (damageIndex == "真实伤害") {
                    d.causeUnit(t, damage, attackDamage, rangedDamage, ConvertAttackType(5), ConvertDamageType(26), WEAPON_TYPE_WHOKNOWS);
                } else {
                    debug BJDebugMsg("damageEvent - causeUnit() [伤害类型参数出错]. 伤害类型参数只能是 物理伤害/法术伤害/真实伤害.");
                }
            }
            // 伤害范围 伤害来源 坐标 范围 伤害值 是否为近战攻击 是否为远程攻击 伤害类型 是否过滤伤害衍生事件 特效
            static method causeRange(Unit d, real x, real y, real range, real damage, boolean attackDamage, boolean rangedDamage, string damageIndex, boolean flag, string name) {
                Group g = 0;
                Unit un = 0;
                if (damageIndex != "物理伤害" && damageIndex != "法术伤害" && damageIndex != "真实伤害") {
                    debug BJDebugMsg("damageEvent - causeRange() [伤害类型参数出错]. 伤害类型参数只能是 物理伤害/法术伤害/真实伤害.");
                    return;
                }
                g = Group.create();
                g.unitsInArea(x, y, range);
                un = g.getUnit();
                while (un.Handle() != null) {
                    g.remove(un);
                    if (d.IsEnemyUnit(un) && un.IsAlive() && d.Handle() != un.Handle()) {
                        if (name != "") {
                            Effect.createUnit(name, un, "origin").delete();
                        }
                        Damage.causeUnit(d, un, damage, attackDamage, rangedDamage, damageIndex, flag);
                    }
                    un.Null();
                    un = g.getUnit();
                }
                g.destroy();
                un.Null();
            }
        }
        private
        {
            // 析构函数
            method destroy()
            {
                SaveBoolean(XZHT, this.duId, <?= StringHash("事件过滤器") ?>, false);
                thistype.table.remove(this.duId);
                this.du.Null();
                this.tu.Null();
                this.ht.destroy();
                this.deallocate();
            }
            // 伤害类型过滤器
            static method damageTypeFilter() ->integer {
                if (!(ConvertDamageType(26) == ConvertDamageType(EXGetEventDamageData(4))) && !(ConvertAttackType(4) == ConvertAttackType(EXGetEventDamageData(6)))) return 1;
                if (!(ConvertDamageType(26) == ConvertDamageType(EXGetEventDamageData(4))) && !(ConvertAttackType(1) == ConvertAttackType(EXGetEventDamageData(6)))) return 2;
                if (ConvertDamageType(26) == ConvertDamageType(EXGetEventDamageData(4)) && ConvertAttackType(5) == ConvertAttackType(EXGetEventDamageData(6))) return 3;
                return 1;
            }
            // 真实伤害处理
            method authenticCount()
            {
                real damageData = this.dataValue;
                // 伤害加成
                damageData = damageData * (1.0 + this.ht.real[<?= StringHash("最终伤害加成") ?>]);
                // 真实伤害附加
                damageData = damageData + this.ht.real[<?= StringHash("真实伤害") ?>];
                // 判断事件过滤和响应机制
                if (!this.eventBool) {
                    this.ht.real[<?= StringHash("伤害值") ?>] = damageData;
                    Event.executeDiyInt(<?= StringHash("伤害计算") ?>);
                    damageData = this.ht.real[<?= StringHash("伤害值") ?>];
                }
                // 设定最终伤害
                EXSetEventDamage(damageData);
            }
            // 法术伤害处理
            method spellsCount()
            {
                real damageData = this.dataValue;
                real armor = 0.0;
                real loc1 = 0.0;
                real loc2 = 0.0;
                real loc3 = 0.0;
                // 穿透处理
                if (this.ht.real[<?= StringHash("法术穿透") ?>] > 0.0) {
                    armor = this.tu.stateString("护甲");
                    if (this.ht.real[<?= StringHash("法术穿透") ?>] >= 0.8) {
                        loc1 = armor * (1.0 - 0.8);
                    } else {
                        loc1 = armor * (1.0 - this.ht.real[<?= StringHash("法术穿透") ?>]);
                    }
                    loc2 = (0.002 * armor) / (0.002 * armor + 1.0);
                    loc3 = damageData / (1.0 - loc2);
                    loc2 = (0.002 * loc1) / (0.002 * loc1 + 1.0);
                    damageData = loc3 * (1.0 - loc2);
                }
                // 暴击处理
                if (this.ht.real[<?= StringHash("法术暴击率") ?>] >= math.random()) {
                    if (this.ht.real[<?= StringHash("法术暴击伤害") ?>] < 2.0) {
                        loc1 = 2.0;
                    } else {
                        loc1 = this.ht.real[<?= StringHash("法术暴击伤害") ?>];
                    }
                    damageData = damageData * loc1;
                    this.ht.boolean[<?= StringHash("是否暴击") ?>] = true;
                }
                // 加成处理
                damageData = damageData * (1.0 + this.ht.real[<?= StringHash("法术加成") ?>]);
                // 伤害抵消
                if (this.ht.real[<?= StringHash("伤害抵消") ?>] > 0.0) {
                    damageData = damageData - this.ht.real[<?= StringHash("伤害抵消") ?>];
                }
                // 伤害减免/伤害免伤处理 减免+免伤 / 2
                loc1 = (this.ht.real[<?= StringHash("伤害免伤") ?>] + this.ht.real[<?= StringHash("伤害减免") ?>]);
                if (loc1 > 0.0) {
                    loc1 = loc1 / 2;
                    if (loc1 > 0.85) {
                        damageData = damageData * (1.0 - 0.85);
                    } else {
                        damageData = damageData * (1.0 - loc1);
                    }
                }
                // 最终伤害加成处理
                damageData = damageData * (1.0 + this.ht.real[<?= StringHash("最终伤害加成") ?>]);
                // 真实伤害附加
                damageData = damageData + this.ht.real[<?= StringHash("真实伤害") ?>];
                // 伤害计算事件 过滤和响应
                if (!this.eventBool) {
                    this.ht.real[<?= StringHash("伤害值") ?>] = damageData;
                    Event.executeDiyInt(<?= StringHash("伤害计算") ?>);
                    damageData = this.ht.real[<?= StringHash("伤害值") ?>];
                }
                // 设置最终伤害
                EXSetEventDamage(damageData);
                // 吸血处理
                if (this.ht.real[<?= StringHash("法术吸血") ?>] > 0.0) {
                    loc1 = damageData * this.ht.real[<?= StringHash("法术吸血") ?>];
                    this.du.addStateString("生命值", loc1);
                    Effect.createUnit("Abilities\\Spells\\Undead\\VampiricAura\\VampiricAuraTarget.mdl", this.du, "origin").delete();
                }
            }
            // 分裂伤害处理
            method sputteringCount()
            {
                real damageData = this.dataValue * this.ht.real[<?= StringHash("分裂伤害") ?>];
                integer sputteringInt = 0;
                Group g = 0;
                Unit un = 0;
                if (damageData > 0.0) {
                    g = Group.create();
                    g.unitsInArea(this.tu.x(), this.tu.y(), 425.0);
                    un = g.getUnit();
                    while (un.Handle() != null) {
                        g.remove(un);
                        if (this.du.IsEnemyUnit(un) && un.IsAlive() && sputteringInt <= 25) {
                            sputteringInt +=1;
                            this.du.causeUnit(un, damageData, false, false, ConvertAttackType(0), ConvertDamageType(0), WEAPON_TYPE_WHOKNOWS);
                        }
                        un.Null();
                        un = g.getUnit();
                    }
                    g.destroy();
                    un.Null();
                }
            }
            // 物理伤害处理
            method physicsCount()
            {
                real damageData = this.dataValue;
                real armor = 0.0;
                real loc1 = 0.0;
                real loc2 = 0.0;
                real loc3 = 0.0;
                // 穿透处理
                if (this.ht.real[<?= StringHash("物理穿透") ?>] > 0.0) {
                    armor = this.tu.stateString("护甲");
                    if (this.ht.real[<?= StringHash("物理穿透") ?>] >= 0.8) {
                        loc1 = armor * (1.0 - 0.8);
                    } else {
                        loc1 = armor * (1.0 - this.ht.real[<?= StringHash("物理穿透") ?>]);
                    }
                    loc2 = (0.002 * armor) / (0.002 * armor + 1.0);
                    loc3 = damageData / (1.0 - loc2);
                    loc2 = (0.002 * loc1) / (0.002 * loc1 + 1.0);
                    damageData = loc3 * (1.0 - loc2);
                }
                // 暴击处理
                if (this.ht.real[<?= StringHash("物理暴击率") ?>] >= math.random()) {
                    if (this.ht.real[<?= StringHash("物理暴击伤害") ?>] < 2.0) {
                        loc1 = 2.0;
                    } else {
                        loc1 = this.ht.real[<?= StringHash("物理暴击伤害") ?>];
                    }
                    damageData = damageData * loc1;
                    this.ht.boolean[<?= StringHash("是否暴击") ?>] = true;
                }
                // 加成处理
                damageData = damageData * (1.0 + this.ht.real[<?= StringHash("物理加成") ?>]);
                // 伤害抵消
                if (this.ht.real[<?= StringHash("伤害抵消") ?>] > 0.0) {
                    damageData = damageData - this.ht.real[<?= StringHash("伤害抵消") ?>];
                }
                // 伤害减免/伤害免伤处理 减免+免伤 / 2
                loc1 = (this.ht.real[<?= StringHash("伤害免伤") ?>] + this.ht.real[<?= StringHash("伤害减免") ?>]);
                if (loc1 > 0.0) {
                    loc1 = loc1 / 2;
                    if (loc1 > 0.85) {
                        damageData = damageData * (1.0 - 0.85);
                    } else {
                        damageData = damageData * (1.0 - loc1);
                    }
                }
                // 最终伤害加成处理
                damageData = damageData * (1.0 + this.ht.real[<?= StringHash("最终伤害加成") ?>]);
                // 真实伤害附加
                damageData = damageData + this.ht.real[<?= StringHash("真实伤害") ?>];
                // 伤害计算事件 过滤和响应
                if (!this.eventBool) {
                    this.ht.real[<?= StringHash("伤害值") ?>] = damageData;
                    Event.executeDiyInt(<?= StringHash("伤害计算") ?>);
                    damageData = this.ht.real[<?= StringHash("伤害值") ?>];
                }
                // 设置最终伤害
                EXSetEventDamage(damageData);
                // 分裂处理
                if (this.ht.real[<?= StringHash("分裂伤害") ?>] > 0.0 && this.IsAttackType("近战攻击")) {
                    this.sputteringCount();
                }
                // 吸血处理
                if (this.ht.real[<?= StringHash("攻击吸血") ?>] > 0.0) {
                    loc1 = damageData * this.ht.real[<?= StringHash("攻击吸血") ?>];
                    this.du.addStateString("生命值", loc1);
                    Effect.createUnit("Abilities\\Spells\\Undead\\VampiricAura\\VampiricAuraTarget.mdl", this.du, "origin").delete();
                }
            }
            static method action()
            {
                thistype this = 0;
                integer damageIndex = 0;
                real Dodge = 0.0;
                
                // 过滤伤害值和筛选伤害类型。
                if (GetEventDamage() > 1.0 && !(ConvertDamageType(0) == ConvertDamageType(EXGetEventDamageData(4))) && !(ConvertAttackType(0) == ConvertAttackType(EXGetEventDamageData(6)))) {
                    // 参数注册
                    this = thistype.allocate();
                    this.dataValue = GetEventDamage();
                    this.du = Unit.damageUnit();
                    this.tu = Unit.triggerUnit();
                    this.dp = this.du.owner();
                    this.tp = this.tu.owner();
                    this.duId = this.du.HandleId();
                    this.tuId = this.tu.HandleId();
                    this.ht = Table.create();
                    thistype.table[this.duId] = this;
                    this.eventBool = LoadBoolean(XZHT, this.duId, <?= StringHash("事件过滤器") ?>);
                    damageIndex = thistype.damageTypeFilter();
                    // 攻击类型记录
                    if (0 != EXGetEventDamageData(3)) {
                        this.ht.string[<?= StringHash("攻击类型") ?>] = "远程攻击";
                    } else if (0 != EXGetEventDamageData(2)) {
                        this.ht.string[<?= StringHash("攻击类型") ?>] = "近战攻击";
                    } else {
                        this.ht.string[<?= StringHash("攻击类型") ?>] = "触发攻击";
                    }
                    // 伤害类型记录
                    if (damageIndex == 3) {
                        this.ht.string[<?= StringHash("伤害类型") ?>] = "真实伤害";
                    } else if (damageIndex == 2) {
                        this.ht.string[<?= StringHash("伤害类型") ?>] = "法术伤害";
                    } else {
                        this.ht.string[<?= StringHash("伤害类型") ?>] = "物理伤害";
                    }
                    // 伤害开始事件 属性参数注册和过滤
                    if (!this.eventBool) {
                        // 物理属性注册 物理穿透，物理暴击率，物理暴击伤害，物理加成，物理吸血，分裂伤害
                        this.ht.real[<?= StringHash("物理穿透") ?>] = this.du.stateString("物理穿透");
                        this.ht.real[<?= StringHash("物理暴击率") ?>] = this.du.stateString("物理暴击率");
                        this.ht.real[<?= StringHash("物理暴击伤害") ?>] = this.du.stateString("物理暴击伤害");
                        this.ht.real[<?= StringHash("物理加成") ?>] = this.du.stateString("物理加成");
                        this.ht.real[<?= StringHash("攻击吸血") ?>] = this.du.stateString("攻击吸血");
                        this.ht.real[<?= StringHash("分裂伤害") ?>] = this.du.stateString("分裂伤害");
                        // 法术属性注册 法术穿透，法术暴击率，法术暴击伤害，法术加成，法术吸血
                        this.ht.real[<?= StringHash("法术穿透") ?>] = this.du.stateString("法术穿透");
                        this.ht.real[<?= StringHash("法术暴击率") ?>] = this.du.stateString("法术暴击率");
                        this.ht.real[<?= StringHash("法术暴击伤害") ?>] = this.du.stateString("法术暴击伤害");
                        this.ht.real[<?= StringHash("法术加成") ?>] = this.du.stateString("法术加成");
                        this.ht.real[<?= StringHash("法术吸血") ?>] = this.du.stateString("法术吸血");
                        // 通用属性注册 格挡，闪避，最终伤害加成，伤害抵消，伤害免伤，伤害减免，真实伤害附加值
                        this.ht.real[<?= StringHash("格挡") ?>] = this.tu.stateString("格挡");
                        this.ht.real[<?= StringHash("闪避") ?>] = this.tu.stateString("闪避");
                        this.ht.real[<?= StringHash("最终伤害加成") ?>] = this.du.stateString("最终伤害加成");
                        this.ht.real[<?= StringHash("伤害抵消") ?>] = this.tu.stateString("伤害抵消");
                        this.ht.real[<?= StringHash("伤害免伤") ?>] = this.tu.stateString("伤害免伤");
                        this.ht.real[<?= StringHash("伤害减免") ?>] = this.tu.stateString("伤害减免");
                        this.ht.real[<?= StringHash("真实伤害") ?>] = this.du.stateString("真实伤害");
                        Event.executeDiyInt(<?= StringHash("伤害开始") ?>);
                    }
                    // 闪避/伤害免疫 判断机制
                    Dodge = (this.ht.real[<?= StringHash("格挡") ?>] + this.ht.real[<?= StringHash("闪避") ?>]);
                    if (Dodge > 0.0) {
                        Dodge = Dodge / 2;
                        if (Dodge >= math.random()) {
                            // 免疫字体
                            Effect.create("WanJieYongHeng3Model\\DamageFont\\Dawn_MY.mdl", this.tu.x(), this.tu.y() + 40.0).delete();
                            EXSetEventDamage(0.0);
                            this.destroy();
                            return;
                        }
                    }
                    // 伤害分流
                    if (damageIndex == 3) {
                        this.authenticCount();
                    } else if (damageIndex == 2) {
                        this.spellsCount();
                    } else {
                        this.physicsCount();
                    }
                    // 伤害结算事件 过滤和响应
                    if (!this.eventBool) {
                        Event.executeDiyInt(<?= StringHash("伤害结算") ?>);
                    }
                    // 特效回调事件
                    Event.executeDiyInt(<?= StringHash("伤害特效处理") ?>);
                    // 释放
                    this.destroy();
                }
            }
            static method onInit()
            {
                thistype.table = Table.create();
                Event.onDiy("单位接受伤害", function thistype.action);
            }
        }
    }
}
//! endzinc
//! zinc
library TimeStamp
{
    public struct TimeStamp
    {
        private
        {
            // 月份 星期
            static integer MonthInt[];
            static string WeekStr[];
            // 时间戳 过滤布尔
            static integer Stamp;
            static boolean Bool;
        }
        public
        {
            // 年份 月份 天数 小时 分 秒 星期
            static integer year;
            static integer mon;
            static integer day;
            static integer hour;
            static integer min;
            static integer sec;
            static integer week;
        }
        private
        {
            static method MathMod(integer dividend,integer divisor) ->integer
            {
                integer modulus = dividend - (dividend / divisor) * divisor;
                if (modulus < 0) modulus = modulus + divisor;
                return modulus;
            }
            static method IsLeapYear(integer y) ->boolean
            {
                if (thistype.MathMod(y, 4) == 0){
                    if (thistype.MathMod(y, 100) == 0){
                        if (thistype.MathMod(y, 400) == 0){
                            return true;
                        }else{
                            return false;
                        }
                    }
                    return true;
                }
                return false;
            }
            static method UpdateDate(integer y,integer remainSec,integer dayBy2015)
            {
                boolean bIsLeap = thistype.IsLeapYear(y);
                real dayNum = I2R(remainSec) / (24*60*60);
                integer totalDay = R2I(dayNum);
                integer totalDayBase,totalMonDay,curMonDay,m;
                totalDayBase = 0,totalMonDay = 0,curMonDay = 0,m = 1;
                if ((dayNum - I2R(totalDay)) > 0) totalDay +=1;
                if (totalDay == 0) totalDay = 1;
                dayBy2015 = dayBy2015 + totalDay;
                while (m <= 12){
                    if (bIsLeap && m == 2){
                        curMonDay = thistype.MonthInt[m] + 1;
                    }else{
                        curMonDay = thistype.MonthInt[m];
                    }
                    if (totalDay <= curMonDay){
                        thistype.year = y;
                        thistype.mon = m;
                        thistype.day = totalDay;
                        thistype.hour = thistype.MathMod(R2I(remainSec / (60 * 60)), 24);
                        thistype.min = thistype.MathMod(R2I(remainSec / 60), 60);
                        thistype.sec = thistype.MathMod(remainSec, 60);
                        m = 100;
                    }
                    m +=1;
                    totalDay = totalDay - curMonDay;
                }
                thistype.week = thistype.MathMod(thistype.MathMod(dayBy2015, 7) + 4, 7);
            }
            
            static method GetDate(integer now)
            {
                integer remain = now - 1451606400 + 28800; // 默认东八区
integer y,baseRemain,dayBy2015,baseDayBy2015;
                y = 2016;baseRemain = 0;dayBy2015 = 0;baseDayBy2015 = 0;
                while (y <= 3000){
                    baseRemain = remain;
                    baseDayBy2015 = dayBy2015;
                    if (thistype.IsLeapYear(y)){
                        remain = remain - 31622400;
                        dayBy2015 = dayBy2015 + 366;
                    }else{
                        remain = remain - 31536000;
                        dayBy2015 = dayBy2015 + 365;
                    }
                    if (remain < 0){
                        thistype.UpdateDate(y, baseRemain, baseDayBy2015);
                        y = 10000;
                    }
                    y +=1;
                }
            }
            static method onInit()
            {
                // 初始化时间戳
                Timer.create(0.0, false, function() {
                    thistype.Stamp = DzAPI_Map_GetGameStartTime();
                    thistype.GetDate(thistype.Stamp);
                    Timer.create(1.0, true, function() {
                        thistype.Stamp +=1;
                        thistype.GetDate(thistype.Stamp);
                    });
                });
            }
        }
        public
        {
            // 输出当前时间
            static method showTime(integer gamerId, real dur)
            {
                string data = "[|Cffff9100系统|r] - 现在北京时间为：" + I2S(thistype.year) + "年" + I2S(thistype.mon) + "月" + I2S(thistype.day) + "日" + I2S(thistype.hour) + "时" + I2S(thistype.min) + "分" + I2S(thistype.sec) + "秒   ,星期" + thistype.WeekStr[thistype.week];
                Gamer.echo(gamerId, dur, data);
            }
            // 获取当前星期字符串
            static method getWeek() ->string
            {
                return "星期" + thistype.WeekStr[thistype.week];
            }
            // 对比两个月份天数，参数二段比参数一段更推后，那么就返回真，否则返回假
            static method IsTime(integer upperMon, integer upperDay, integer lowerMon, integer lowerDay) ->boolean
            {
                if (lowerMon > upperMon) return true;
                if (lowerMon == upperMon && lowerDay > upperDay) return true;
                return false;
            }
        }
    }
}
//! endzinc
//! zinc
library ArticleSynthesis requires XZAPI
{
    private
    {
        integer itemType[];
        integer itemIndex = 0;
    }
    public struct ArticleSynthesis
    {
        private
        {
            static method count(unit un, integer itemId) ->integer
            {
                integer number = 0;
                integer forIndex;
                for (0 <= forIndex <= 5) {
                    if (GetItemTypeId(UnitItemInSlot(un, forIndex)) == itemId) {
                        number +=1;
                    }
                }
                return number;
            }
            static method removeItem(unit un, integer itemId, integer count)
            {
                integer number = 0;
                integer forIndex = 0;
                while (forIndex <= 5 || number < count) {
                    if (GetItemTypeId(UnitItemInSlot(un, forIndex)) == itemId) {
                        RemoveItem(UnitItemInSlot(un, forIndex));
                        number +=1;
                    }
                    forIndex +=1;
                }
            }
            static method countItemTypeAction(unit un, integer itemId) ->integer
            {
                integer itemType = 0;
                integer number = 0;
                integer count = 0;
                integer forIndex;
                for (1 <= forIndex <= 6) {
                    itemType = LoadInteger( XZHT, itemId, forIndex);
                    number = LoadInteger( XZHT, itemId, forIndex + forIndex * 10);
                    if (thistype.count(un, itemType) >= number) {
                        count +=1;
                    }
                }
                return count;
            }
            static method removeMaterial(unit un, integer itemId)
            {
                integer itemType = 0;
                integer number = 0;
                integer forIndex;
                for (1 <= forIndex <= 6) {
                    itemType = LoadInteger( XZHT, itemId, forIndex);
                    number = LoadInteger( XZHT, itemId, forIndex + forIndex * 10);
                    thistype.removeItem(un, itemType, number);
                }
            }
            
            static method onInit()
            {
                Event.onUnit("获得物品", function() {
                    unit un = GetManipulatingUnit();
                    integer itemId = 0;
                    integer number = 0;
                    integer index = 0;
                    if (itemIndex > 0) {
                        for (1 <= index <= itemIndex) {
                            if (thistype.countItemTypeAction(un, index:itemType) >= 6) {
                                removeMaterial(un, index:itemType);
                                UnitAddItemByIdSwapped(index:itemType, un);
                            }
                        }
                    }
                    un = null;
                });
            }
        }
        public
        {
            // 注册合成公式 ArticleSynthesis.register('ches', 0, 'ches', 0, 'ches', 0, 'ches', 0, 'ches', 0, 'ches', 0, 'ches');
            static method register(integer itemId01, integer Number01, integer itemId02, integer Number02, integer itemId03, integer Number03, integer itemId04, integer Number04, integer itemId05, integer Number05, integer itemId06, integer Number06, integer Target)
            {
                // 1为合成材料，11为合成材料数量
                <?
                    local index
                    for index = 1, 6 do
                    ?>
                    SaveInteger(XZHT, Target, <?= index ?>, itemId0<?= index ?>);
                    SaveInteger(XZHT, Target, <?= index ?><?= index ?>, Number0<?= index ?>);
                    <?
                    end
                ?>
                itemIndex +=1;
                itemIndex:itemType = Target;
            }
        }
    }
}
//! endzinc
// requires
//! zinc
library XZLogic requires Excretion, Motion, Damage, TimeStamp, ArticleSynthesis 
{
    // private function onInit() {
    //     print("XZincLibrary-load! " + "<?= os.date('%Y-%m-%d %H:%M:%S') ?>");
    // }
}
//! endzinc
 
 
//! zinc
library Module
{
        
    public
    {
        module RectTransform
        {
            // 获取属性 - 宽
            method operator width() -> real { return LoadReal( USDT, this.Handle, <?= StringHash("width") ?>);}
            // 获取属性 - 高
            method operator height() -> real { return LoadReal( USDT, this.Handle, <?= StringHash("height") ?>);}
            // 获取属性 - x 
            method operator x() -> real { return LoadReal( USDT, this.Handle, <?= StringHash("x") ?>);}
            // 获取属性 - y
            method operator y() -> real { return LoadReal( USDT, this.Handle, <?= StringHash("y") ?>);}
            // 获取属性 - point
            method operator point() -> integer { return LoadInteger( USDT, this.Handle, <?= StringHash("point") ?>);}
            // 获取属性 - 父节点
            method operator parent() -> integer { return LoadInteger( USDT, this.Handle, <?= StringHash("parent") ?>);}
            // 设置属性 - 宽
            method operator width=(real value)
            {
                SaveReal( USDT, this.Handle, <?= StringHash("width") ?>, value);
                this.setSize(width,this.height);
            }
            // 设置属性 - 高
            method operator height=(real value)
            {
                SaveReal( USDT, this.Handle, <?= StringHash("height") ?>, value);
                this.setSize(this.width,height);
            }
            // 设置属性 - x
            method operator x=(real value)
            {
                SaveReal( USDT, this.Handle, <?= StringHash("x") ?>, value);
                this.flushPoint();
                this.setAbsPoint(x,this.y);
            }
            // 设置属性 - y
            method operator y=(real value)
            {
                SaveReal( USDT, this.Handle, <?= StringHash("y") ?>, value);
                this.flushPoint();
                this.setAbsPoint(this.x,y);
            }
            // 设置属性 - 锚点
            method operator point=(integer point)
            {
                SaveInteger( USDT, this.Handle, <?= StringHash("point") ?>, point);
            }
            // 设置属性 - Parent
            method operator parent=(integer frame)
            {
                SaveInteger( USDT, this.Handle, <?= StringHash("parent") ?>, frame);
                this.setParent(frame);
            }
            // 初始化属性默认值
            method default_user()
            {
                SaveReal( USDT, this.Handle, <?= StringHash("width") ?>, (48 / 16.0) * 0.01);
                SaveReal( USDT, this.Handle, <?= StringHash("height") ?>, (48 / 16.0) * 0.01);
                SaveReal( USDT, this.Handle, <?= StringHash("x") ?>, (640 / 16.0) * 0.01);
                SaveReal( USDT, this.Handle, <?= StringHash("y") ?>, (480 / 16.0) * 0.01);
                SaveInteger( USDT, this.Handle, <?= StringHash("point") ?>, 4);
                SaveInteger( USDT, this.Handle, <?= StringHash("parent") ?>, DzGetGameUI());
            }
            // 初始化
            method rect_init()
            {
                this.default_user();
                
                this.width = this.width;
                this.height = this.height;
                this.x = this.x;
                this.y = this.y;
            }
            // 设置图像大小
            method setSize(real width,real height) { DzFrameSetSize(this.Handle,width,height);}
            // 设置绝对坐标
            method setAbsPoint(real x,real y)
            {
                DzFrameSetAbsolutePoint(this.Handle,this.point,x,y);
            }
            // 设置父节点
            method setParent(integer frame) { DzFrameSetParent(this.Handle,frame);} 
            // 清空锚点 一般重置需要
            method flushPoint() { DzFrameClearAllPoints(this.Handle);}
            // 复制结构的虚拟属性 注意这里会调用虚拟属性里面的方法
            method copyUser(integer frame) 
            { 
                this.width = LoadReal( USDT, frame, <?= StringHash("width") ?>);
                this.height = LoadReal( USDT, frame, <?= StringHash("height") ?>);
                this.x = LoadReal( USDT, frame, <?= StringHash("x") ?>);
                this.y = LoadReal( USDT, frame, <?= StringHash("y") ?>);
            }
            // 移动所有锚点
            method movePoint(integer frame)
            {
                this.flushPoint(); //清空所有锚点
DzFrameSetAllPoints(this.Handle,frame);
            }
            // 设置相对位置
            method setPoint(integer frame_point, integer frame,real x,real y)
            {
                
                this.flushPoint();
                DzFrameSetPoint(this.Handle,this.point,frame,frame_point,x,y);
                // 直接调用保存不通过虚拟属性
                SaveReal( USDT, this.Handle, <?= StringHash("x") ?>, x);
                SaveReal( USDT, this.Handle, <?= StringHash("y") ?>, y);
            }
            // 设置对角位置
            method setAnglePoint(integer frame,real x,real y)
            {
                this.flushPoint();
                this.point = 0;
                DzFrameSetPoint(this.Handle,this.point,frame,this.point,0 - x,y);
                this.point = 8;
                DzFrameSetPoint(this.Handle,this.point,frame,this.point,x,0 - y);
            }
            // 设置对角绝对位置
            method setAngleAbsPoint(integer frame,real topleft_x,real topleft_y,real bottomright_x,real bottomright_y)
            {
                this.flushPoint();
                this.point = 0;
                DzFrameSetPoint(this.Handle,this.point,frame,this.point,topleft_x,topleft_y);
                this.point = 8;
                DzFrameSetPoint(this.Handle,this.point,frame,this.point,bottomright_x,bottomright_y);
            }
        } 
    } 
    
}
//! endzinc
 
//! zinc
library Color
{
    public
    {
        struct Color
        {
            static method Argb(integer r,integer g,integer b,integer a) -> integer { return DzGetColor(r,g,b,a);}
            // 黑色 底图必须是白色
            static method operator Black() -> integer { return DzGetColor(255,0,0,0);}
        }
    
    }
}
//! endzinc
 
//! zinc
library Image
{ 
    
    //默认值
    // 结构自定义值字段
    // 结构自定义值类型
    public struct Image
    {
        
        private
        {
            integer TextUre; // 图像
integer Color; //  颜色

            // 创建模板
            static integer index = 0;
            static method onInit()
            {
                <?
                    local temp = [[
                        
                        Frame "SIMPLEFRAME" "ImageTemp" {
                            Width 0.03,
                            Height 0.03,
                            Texture "ImageTempBackdrop" 
                            {
                                
                            }
                        }
                    ]]
                    import('Ui\\Imagetemp.fdf')(temp)
                    import('Ui\\ImagetempPath.toc')([[
                    Ui\Imagetemp.fdf
                    
                ]])
                ?>
                Frame.loadToc("Ui\\ImagetempPath.toc");
            }
        }
        public
        {
            // 添加矩形变换属性模块
            module RectTransform;
            
            static method create() -> thistype
            {
                thistype this = thistype.allocate();
                this.TextUre = DzCreateFrameByTagName("SIMPLEFRAME","",0,"ImageTemp",thistype.index);
                this.Color = DzSimpleTextureFindByName("ImageTempBackdrop",thistype.index);
                this.init(); // 初始化

                thistype.index += 1; //递增
return this;
            }
            method destroy()
            {
                this.TextUre = 0;
                this.Color = 0;
                
                this.deallocate();
            }
            method delete() 
            {
                FlushChildHashtable(USDT, this.Handle); // 清空所有自定义值
DzDestroyFrame(this.Handle);
                DzDestroyFrame(this.Color);
                thistype.index -= 1;
                this.destroy();
            }
            // 获取句柄 - handle
            method operator Handle() -> integer { return this.TextUre;}
            // 获取属性 - 图片路径
            method operator image() -> string { return LoadStr( USDT, this.Handle, <?= StringHash("image") ?>);}
            // 获取属性 - 颜色
            method operator color() -> integer { return LoadInteger( USDT, this.Handle, <?= StringHash("color") ?>);}
            // 获取属性 - 图像模式
            method operator mode() -> integer { return LoadInteger( USDT, this.Handle, <?= StringHash("mode") ?>);}
            // 获取属性 - fillAmount
            method operator fillAmount() -> real { return LoadReal( USDT, this.Handle, <?= StringHash("fillAmount") ?>);}
            // 获取属性 - fillMethod
            method operator fillMethod() -> integer { return LoadInteger( USDT, this.Handle, <?= StringHash("fillMethod") ?>);}
            // 获取属性 - fillOrigin
            method operator fillOrigin() -> integer { return LoadInteger( USDT, this.Handle, <?= StringHash("fillOrigin") ?>);}
            // 获取属性 - 优先级
            method operator priority() -> integer { return LoadInteger( USDT, this.Handle, <?= StringHash("priority") ?>);}
            // 获取属性 - 显示状态
            method operator show() -> boolean { return LoadBoolean( USDT, this.Handle, <?= StringHash("show") ?>);}
            
            // 设置属性 - 图片路径
            method operator image=(string str)
            {
                SaveStr( USDT, this.Handle, <?= StringHash("image") ?>, str);
                this.setTextUre(str,this.mode);
            }
            // 设置属性 - 颜色 
            method operator color=(integer value)
            {
                SaveInteger( USDT, this.Handle, <?= StringHash("color") ?>, value);
                this.setColor(value);
            }
            //设置属性 - 图像模式
            method operator mode=(integer index)
            {
                SaveInteger( USDT, this.Handle, <?= StringHash("mode") ?>, index);
                this.setTextUre(this.image,this.mode);
            }
            // 设置属性 - fillAmount
            method operator fillAmount=(real value)
            {
                // 限定value在0~1
                if (value < 0) value = 0;
                if (value > 1) value = 1;
                SaveReal( USDT, this.Handle, <?= StringHash("fillAmount") ?>, value);
                
                this.setSize(this.width * value,this.height); // 直接调用方法 不会改变虚拟属性
}
            // 设置属性 - fillMethod
            method operator fillMethod=(integer fillmethod)
            {
                SaveInteger( USDT, this.Handle, <?= StringHash("fillMethod") ?>, fillmethod);
            }
            // 设置属性 - fillOrigin 
            method operator fillOrigin=(integer origin)
            {
                SaveInteger( USDT, this.Handle, <?= StringHash("fillOrigin") ?>, origin);
                this.point = origin; // 改变锚点
this.flushPoint(); // 重置锚点。如果不重置,可能是因为没有父节点的关系。不能直接改变也可能是因为绝对位置？
this.setAbsPoint(this.x,this.y); // 直接调用方法 改变控件的缩放锚点
}
            // 设置属性 - 优先级
            method operator priority=(integer level)
            {
                SaveInteger( USDT, this.Handle, <?= StringHash("priority") ?>, level);
                this.setPriority(level);
            }
            // 设置属性 - 显示状态
            method operator show=(boolean flag)
            {
                SaveBoolean( USDT, this.Handle, <?= StringHash("show") ?>, flag);
                if (flag) this.image = this.image;
                else this.setTextUre("Ui\\Alpha.tga",0);
            }
        }
        public
        {
            // 调试模式下可用。打印结构的属性
            method log()
            {
                debug BJDebugMsg("**************************");
                debug BJDebugMsg("width=" + R2S(this.width) + ": height=" + R2S(this.height));
                debug BJDebugMsg("point=" + I2S(this.point) + "x=" + R2S(this.x) + ": y=" + R2S(this.y));
                debug BJDebugMsg("image=" + this.image + ": mode=" + I2S(this.mode));
                debug BJDebugMsg("fillAmount=" + R2S(this.fillAmount));
                debug BJDebugMsg("**************************");
            }
        }
        private
        {
            
            // 初始化结构默认值
            method default()
            {
                SaveStr( USDT, this.Handle, <?= StringHash("image") ?>, "PathTextures\\12x12Unflyable.tga");
                SaveInteger( USDT, this.Handle, <?= StringHash("color") ?>, DzGetColor(255,255,255,255));
                SaveInteger( USDT, this.Handle, <?= StringHash("mode") ?>, 0);
                SaveReal( USDT, this.Handle, <?= StringHash("fillAmount") ?>, 1);
                SaveInteger( USDT, this.Handle, <?= StringHash("fillMethod") ?>, 0);
                SaveInteger( USDT, this.Handle, <?= StringHash("fillOrigin") ?>, 3);
                SaveInteger( USDT, this.Handle, <?= StringHash("priority") ?>, 0);
                SaveBoolean( USDT, this.Handle, <?= StringHash("show") ?>, true);
            }
            // 初始化
            method init() 
            { 
                this.rect_init(); // 此函数在RectTransform 模块
this.default();
                this.image = this.image;
                this.color = this.color;
                this.show = this.show;
                this.fillAmount = this.fillAmount;
                this.fillMethod = this.fillMethod;
                this.fillOrigin = this.fillOrigin;
                this.priority = this.priority;
            }
            // 设置图像贴图
            method setTextUre(string str,integer mode) { DzFrameSetTexture(this.Color,str,mode);}
            // 设置颜色
            method setColor(integer value) { DzFrameSetVertexColor(this.Color,value);}
            // 设置优先级
            method setPriority(integer level) { DzFrameSetPriority(this.Handle,level);}
            // 设置显示状态
            method setShow(boolean flag)
            {
                if (flag) this.setColor(Color.Argb(255,255,255,255));
                else this.setColor(Color.Argb(0,0,0,0));
            }
        }
    }
    
}
//! endzinc
 
//! zinc
library Text
{
    // 样式
    //默认值
    
    //结构属性
    //结构属性类型
    public
    {
        struct Text
        {
            private
            {
                integer str;
                integer css;
                static method onInit()
                {
                    <?
                        local temp = [[
                            
                            Frame "TEXT" "TEXTTemp" {
                                FontShadowColor 0.0 0.0 0.0 0.9,	
                                FontShadowOffset 0.001 -0.001,
                            }
                        ]]
                        import('Ui\\TEXTtemp.fdf')(temp)
                        import('Ui\\TEXTtempPath.toc')([[
                        Ui\TEXTtemp.fdf
                        
                    ]])
                    ?>
                    Frame.loadToc("Ui\\TEXTtempPath.toc");
                }
            }
            public
            {
                // 添加矩形变换模块
                module RectTransform; 
                           
                static method create() -> thistype 
                {
                    thistype this = thistype.allocate();
                    
                    this.css = DzCreateFrameByTagName("TEXT","",DzGetGameUI(),"",0);
                    this.str = DzCreateFrameByTagName("TEXT","",DzGetGameUI(),"TEXTTemp",0);
                    
                    DzFrameSetAllPoints(this.css,this.Handle);
                    DzFrameSetEnable(this.css,false);
                    
                    this.init();
                    return this;
                }
                method destroy()
                {
                    this.str = 0;
                    this.css = 0;
                    this.deallocate();
                }
                method delete() 
                {
                    FlushChildHashtable(USDT, this.Handle);
                    DzDestroyFrame(this.Handle);
                    DzDestroyFrame(this.css);
                    this.destroy();
                }
                // 获取句柄 - handle
                method operator Handle() -> integer { return this.str;}
                // 获取属性 - 字体
                method operator font() -> string { return LoadStr( USDT, this.Handle, <?= StringHash("font") ?>);}
                // 获取属性 - 字体大小
                method operator size() -> integer { return LoadInteger( USDT, this.Handle, <?= StringHash("size") ?>);}
                // 获取属性 - 文本内容
                method operator text() -> string { return LoadStr( USDT, this.Handle, <?= StringHash("text") ?>);}
                // 获取属性 - 对齐方式
                method operator alignment() -> integer { return LoadInteger( USDT, this.Handle, <?= StringHash("alignment") ?>);}
                // 获取属性 - 颜色
                method operator color() -> string { return LoadStr( USDT, this.Handle, <?= StringHash("color") ?>);}
                // 获取属性 - 样式
                method operator style() -> integer { return LoadInteger( USDT, this.Handle, <?= StringHash("style") ?>);}
                // 获取属性 - 状态
                method operator state() -> boolean { return LoadBoolean( USDT, this.Handle, <?= StringHash("state") ?>);}
                // 获取属性 - 阴影颜色
                method operator shadowColor() -> string { return LoadStr( USDT, this.Handle, <?= StringHash("shadowColor") ?>);}
                // 获取属性 - 显示状态
                method operator show() -> boolean { return LoadBoolean( USDT, this.Handle, <?= StringHash("show") ?>);}
                // 获取属性 - Alpha
                method operator alpha() -> integer { return LoadInteger( USDT, this.Handle, <?= StringHash("alpha") ?>);}
                // 设置属性 - 字体
                method operator font=(string font)
                {
                    SaveStr( USDT, this.Handle, <?= StringHash("font") ?>, font);
                    this.setFont(font,this.size);
                }
                // 设置属性 - 字体大小
                method operator size=(integer size)
                {
                    SaveInteger( USDT, this.Handle, <?= StringHash("size") ?>, size);
                    this.setFont(this.font,size);
                }
                // 设置属性 - 字体内容
                method operator text=(string text)
                {
                    SaveStr( USDT, this.Handle, <?= StringHash("text") ?>, text);
                    this.setText(text);
                }
                // 设置属性 - 对齐方式
                method operator alignment=(integer alignment)
                {
                    SaveInteger( USDT, this.Handle, <?= StringHash("alignment") ?>, alignment);
                    this.setAlignment(alignment);
                }
                // 设置属性 - 颜色 
                // 设置属性 - 样式
                method operator style=(integer style)
                {
                    SaveInteger( USDT, this.Handle, <?= StringHash("style") ?>, style);
                    this.setStyle(style);
                }
                // 设置属性 - 状态
                method operator state=(boolean state)
                {
                    SaveBoolean( USDT, this.Handle, <?= StringHash("state") ?>, state);
                    this.setState(state);
                }
                // 设置属性 - 阴影颜色
                method operator shadowColor=(string shadowColor)
                {
                    SaveStr( USDT, this.Handle, <?= StringHash("shadowColor") ?>, shadowColor);
                    this.setText(this.text);
                }
                // 设置属性 - 显示状态
                method operator show=(boolean flag)
                {
                    SaveBoolean( USDT, this.Handle, <?= StringHash("show") ?>, flag);
                    this.setShow(flag);
                }
                // 设置属性 - 透明度
                method operator alpha=(integer alpha)
                {
                    SaveInteger( USDT, this.Handle, <?= StringHash("alpha") ?>, alpha);
                    DzFrameSetAlpha(this.Handle,alpha);
                }
            }
            private
            {
                //初始化结构的默认自定义值
                method default()
                {
                    SaveStr( USDT, this.Handle, <?= StringHash("font") ?>, "Ui\\Fonts\\TypeTrue.ttf");
                    SaveInteger( USDT, this.Handle, <?= StringHash("size") ?>, 16);
                    SaveStr( USDT, this.Handle, <?= StringHash("text") ?>, "new Text");
                    SaveInteger( USDT, this.Handle, <?= StringHash("alignment") ?>, 18);
                    SaveStr( USDT, this.Handle, <?= StringHash("color") ?>, "");
                    SaveInteger( USDT, this.Handle, <?= StringHash("style") ?>, 0);
                    SaveBoolean( USDT, this.Handle, <?= StringHash("state") ?>, false);
                    SaveStr( USDT, this.Handle, <?= StringHash("shadowColor") ?>, "|cffff0000");
                    SaveBoolean( USDT, this.Handle, <?= StringHash("show") ?>, true);
                    SaveInteger( USDT, this.Handle, <?= StringHash("alpha") ?>, 255);
                }
                // 初始化
                method init()
                {
                    this.rect_init(); // 此函数在RectTransform 模块
this.default();
                    // 重置文本组件的宽高为0 默认初始化不指定宽高
                    this.width = 0;
                    this.height = 0;
                    this.font = this.font;
                    this.size = this.size;
                    this.text = this.text;
                    this.alignment = this.alignment;
                    //this.color = this.color;
                    this.style = this.style;
                    this.state = this.state;
                    this.show = this.show;
                    this.alpha = this.alpha;
                    
                } 
                // 设置字体
                method setFont(string font,integer size) { DzFrameSetFont(this.Handle,font,(size / 16.0) * 0.01,0);DzFrameSetFont(this.css,font,(size / 16.0) * 0.01,0);}
                // 设置文本
                method setText(string text) { DzFrameSetText(this.Handle,text);DzFrameSetText(this.css,this.shadowColor + text + "|r");}
                // 设置对齐方式
                method setAlignment(integer flag) { DzFrameSetTextAlignment(this.Handle,flag);}
                // 设置颜色 暂时不考虑，目前方案不是很好
                // 设置样式
                method setStyle(integer style)
                {
                    if (style == 0)
                    {
                        DzFrameShow(this.css,false);
                        return;
                    }else if (style == 1)
                    {
                        this.css_shadow();
                        return;
                    }
                    debug BJDebugMsg("样式类型错误-> Text");
                }
                // 设置状态
                method setState(boolean state) { DzFrameSetEnable(this.Handle,state);}
                // 设置显示状态
                method setShow(boolean flag) { DzFrameShow(this.Handle,flag);}
                
                method css_shadow()
                {
                    DzFrameShow(this.css,true);
                    DzFrameClearAllPoints(this.css);
                    DzFrameSetPoint(this.css,0,this.Handle,0,0.0012,-0.0015);
                }
            }
        }
    }
}
//! endzinc
 
//! zinc
library Button 
{
    // 默认值
    
    // 结构自定义值字段
    // 结构自定义值类型
    
    public
    {
        struct Button 
        {
            private
            {
                integer handle_this;
            }
            public
            {
                Image TextUre; 
                Text TextBox; 
            }
            public
            {
                // 存储全局的Button结构
                static Table table = 0;
                static method onInit()
                {
                    thistype.table = Table.create();
                }
                // 获取响应控件
                static method GetReactive() -> thistype { return Button.byHandle(DzGetTriggerUIEventFrame());}
                
                static method byHandle(integer handle_this) -> thistype 
                {
                    thistype this = 0;
                    if (thistype.table[handle_this] > 0)
                    {
                        this = thistype.table[handle_this];
                    }else{
                        debug BJDebugMsg("Button -> 当前控件没有注册过实例.Id:" + I2S(handle_this));
                    }
                    return this;
                }
            }
            public
            {
                // 添加矩形变换属性模块
                module RectTransform;
                static method create() -> thistype
                {
                    thistype this = thistype.allocate();
                    this.handle_this = DzCreateFrameByTagName("BUTTON","",DzGetGameUI(),"",0);
                    this.TextUre = Image.create();
                    this.TextUre.movePoint(this.Handle);
                    this.TextBox = Text.create();
                    this.TextBox.parent = this.Handle;
                    this.TextBox.movePoint(this.Handle);
                    this.TextBox.size = 16;
                    thistype.table[this.Handle] = this; // 保存new的结构进全局Table 方便注册回调调用

                    this.init();
                    return this;
                }
                method destroy()
                {
                    this.handle_this = 0;
                    this.TextUre.delete();
                    this.TextBox.delete();
                    
                    this.deallocate();
                }
                method delete() 
                {
                    FlushChildHashtable(USDT, this.Handle); // 清空所有自定义值
DzDestroyFrame(this.Handle);
                    this.destroy();
                }
                // 获取句柄 - handle
                method operator Handle() -> integer { return this.handle_this;}
                // 获取属性 - Interactiblei
                method operator interactiblei() -> boolean { return LoadBoolean( USDT, this.Handle, <?= StringHash("interactiblei") ?>);}
                // 获取属性 - show
                method operator show() -> boolean { return LoadBoolean( USDT, this.Handle, <?= StringHash("show") ?>);}
                // 设置属性 - Interactiblei
                method operator interactiblei=(boolean flag)
                {
                    SaveBoolean( USDT, this.Handle, <?= StringHash("interactiblei") ?>, flag);
                    this.SetEnable(flag);
                    if (flag) this.TextUre.color = Color.Argb(255,255,255,255);
                    else this.TextUre.color = Color.Argb(255,50,50,50);
                }
                // 设置属性 - show
                method operator show=(boolean flag)
                {
                    SaveBoolean( USDT, this.Handle, <?= StringHash("show") ?>, flag);
                    this.setShow(flag);
                }
                // 虚拟属性 - 注册点击事件 异步
                method operator on_click=(code action)
                {
                    integer index = LoadInteger(XZHT, <?= StringHash("UI框架事件映射") ?>, <?= StringHash("鼠标点击") ?>);
                    DzFrameSetScriptByCode(this.Handle,index,action,false);
                }
                // 虚拟属性 - 注册进入事件 异步
                method operator on_over=(code action)
                {
                    integer index = LoadInteger(XZHT, <?= StringHash("UI框架事件映射") ?>, <?= StringHash("鼠标进入") ?>);
                    DzFrameSetScriptByCode(this.Handle,index,action,false);
                }
                // 虚拟属性 - 注册离开事件 异步
                method operator on_out=(code action)
                {
                    integer index = LoadInteger(XZHT, <?= StringHash("UI框架事件映射") ?>, <?= StringHash("鼠标离开") ?>);
                    DzFrameSetScriptByCode(this.Handle,index,action,false);
                }
                // 虚拟属性 - 注册滚动事件 异步
                method operator on_wheel=(code action)
                {
                    integer index = LoadInteger(XZHT, <?= StringHash("UI框架事件映射") ?>, <?= StringHash("鼠标滚轮") ?>);
                    DzFrameSetScriptByCode(this.Handle,index,action,false);
                }
                // 虚拟属性 - 注册双击事件 异步
                method operator on_doubleClick=(code action)
                {
                    integer index = LoadInteger(XZHT, <?= StringHash("UI框架事件映射") ?>, <?= StringHash("鼠标双击") ?>);
                    DzFrameSetScriptByCode(this.Handle,index,action,false);
                }
                // 虚拟属性 - 注册释放事件 异步  注意这个释放会和点击回调一起触发。如果是点击事件注册了，不建议注册改用硬件释放
                method operator on_clickUp=(code action)
                {
                    integer index = LoadInteger(XZHT, <?= StringHash("UI框架事件映射") ?>, <?= StringHash("鼠标释放") ?>);
                    DzFrameSetScriptByCode(this.Handle,index,action,false);
                }
                // 实例方法 - 点击自身
                method Click()
                {
                    DzClickFrame(this.Handle);
                } 
            }
            private
            {
                // 初始化结构默认值
                method default()
                {
                    SaveBoolean( USDT, this.Handle, <?= StringHash("interactiblei") ?>, true);
                    SaveBoolean( USDT, this.Handle, <?= StringHash("show") ?>, true);
                }
                // 初始化
                method init() 
                { 
                    this.rect_init(); // 此函数在RectTransform 模块
this.default();
                    this.interactiblei = this.interactiblei;
                    this.show = this.show;
                    // 默认注册事件
                }
                // 启用/禁用
                method SetEnable(boolean flag) { DzFrameSetEnable(this.Handle,flag);} 
                // 显示状态
                method setShow(boolean flag)
                {
                    this.TextUre.show = flag;
                    DzFrameShow(this.Handle,flag);
                } 
            }
        }
    }
}
//! endzinc
 
//! zinc
library Backdrop
{
    public
    {
        //默认值
        // 结构自定义值字段
        // 结构自定义值类型
        struct Backdrop
        {
            private
            {
                integer handle_this;
            }
            public
            {
                // 添加矩形变换属性模块
                module RectTransform;
                
                static method create() -> thistype
                {
                    thistype this = thistype.allocate();
                    
                    this.handle_this = DzCreateFrameByTagName("BACKDROP","",DzGetGameUI(),"",0);
                    this.init();
                    return this;
                }
                method destroy()
                {
                    this.handle_this = 0;
                    
                    this.deallocate();
                }
                method delete() 
                {
                    FlushChildHashtable(USDT, this.Handle); // 清空所有自定义值
DzDestroyFrame(this.Handle);
                    this.destroy();
                }
                // 获取句柄 - handle
                method operator Handle() -> integer { return this.handle_this;}
                // 获取属性 - 图片路径
                method operator image() -> string { return LoadStr( USDT, this.Handle, <?= StringHash("image") ?>);}
                // 获取属性 - 图像模式
                method operator mode() -> integer { return LoadInteger( USDT, this.Handle, <?= StringHash("mode") ?>);}
                // 获取属性 - fillAmount
                method operator fillAmount() -> real { return LoadReal( USDT, this.Handle, <?= StringHash("fillAmount") ?>);}
                // 获取属性 - fillMethod
                method operator fillMethod() -> integer { return LoadInteger( USDT, this.Handle, <?= StringHash("fillMethod") ?>);}
                // 获取属性 - fillOrigin
                method operator fillOrigin() -> integer { return LoadInteger( USDT, this.Handle, <?= StringHash("fillOrigin") ?>);}
                // 获取属性 - 显示状态
                method operator show() -> boolean { return LoadBoolean( USDT, this.Handle, <?= StringHash("show") ?>);}
                // 获取属性 - Alpha
                method operator Alpha() -> integer { return LoadInteger( USDT, this.Handle, <?= StringHash("alpha") ?>);}
                
                // 设置属性 - 图片路径
                method operator image=(string str)
                {
                    SaveStr( USDT, this.Handle, <?= StringHash("image") ?>, str);
                    this.setTextUre(str,this.mode);
                }
                //设置属性 - 图像模式
                method operator mode=(integer index)
                {
                    SaveInteger( USDT, this.Handle, <?= StringHash("mode") ?>, index);
                    this.setTextUre(this.image,this.mode);
                }
                // 设置属性 - fillAmount
                method operator fillAmount=(real value)
                {
                    // 限定value在0~1
                    if (value < 0) value = 0;
                    if (value > 1) value = 1;
                    SaveReal( USDT, this.Handle, <?= StringHash("fillAmount") ?>, value);
                    
                    this.setSize(this.width * value,this.height); // 直接调用方法 不会改变虚拟属性
}
                // 设置属性 - fillMethod
                method operator fillMethod=(integer fillmethod)
                {
                    SaveInteger( USDT, this.Handle, <?= StringHash("fillMethod") ?>, fillmethod);
                }
                // 设置属性 - fillOrigin 
                method operator fillOrigin=(integer origin)
                {
                    SaveInteger( USDT, this.Handle, <?= StringHash("fillOrigin") ?>, origin);
                    this.point = origin; // 改变锚点
this.flushPoint(); // 重置锚点。如果不重置,可能是因为没有父节点的关系。不能直接改变也可能是因为绝对位置？
this.setAbsPoint(this.x,this.y); // 直接调用方法 改变控件的缩放锚点
}
                // 设置属性 - 显示状态
                method operator show=(boolean flag)
                {
                    SaveBoolean( USDT, this.Handle, <?= StringHash("show") ?>, flag);
                    this.setShow(flag);
                }
                // 设置属性 - 透明度
                method operator alpha=(integer alpha)
                {
                    SaveInteger( USDT, this.Handle, <?= StringHash("alpha") ?>, alpha);
                    this.setAlpha(alpha);
                } 
            }
            private
            {
                // 初始化结构默认值
                method default()
                {
                    SaveStr( USDT, this.Handle, <?= StringHash("image") ?>, "PathTextures\\12x12Unflyable.tga");
                    SaveInteger( USDT, this.Handle, <?= StringHash("mode") ?>, 0);
                    SaveReal( USDT, this.Handle, <?= StringHash("fillAmount") ?>, 1);
                    SaveInteger( USDT, this.Handle, <?= StringHash("fillMethod") ?>, 0);
                    SaveInteger( USDT, this.Handle, <?= StringHash("fillOrigin") ?>, 3);
                }
                // 初始化
                method init() 
                { 
                    this.rect_init(); // 此函数在RectTransform 模块
this.default();
                    this.image = this.image;
                    this.fillAmount = this.fillAmount;
                    this.fillMethod = this.fillMethod;
                    this.fillOrigin = this.fillOrigin;
                }
                // 设置图像贴图
                method setTextUre(string str,integer mode) { DzFrameSetTexture(this.Handle,str,mode);}
                // 设置显示状态
                method setShow(boolean flag) { DzFrameShow(this.Handle,flag);}
                // 设置透明度
                method setAlpha(integer alpha) { DzFrameSetAlpha(this.Handle,alpha);}
            }
        } 
} }
//! endzinc
 
 //! zinc
 library Scrollbar
 {
    public
    {
        
        struct Scrollbar
        {
            private
            {
                integer handle_this;
                integer TextUre;
                integer button_this;
                integer ButtonTextUre;
            }
            private
            {
                static integer index = 0;
                static method onInit()
                {
                <?
                    local slider = [[
                        Frame "SLIDER" "SliderTemp" 
                        {
                            SliderLayoutVertical,
                            ControlBackdrop "SliderTempBackdrop",
                            Frame "BACKDROP" "SliderTempBackdrop" {
                                BackdropTileBackground,
                                BackdropBackground "UI\Widgets\EscMenu\Human\slider-background.blp",
                                BackdropCornerFlags "UL|UR|BL|BR|T|L|B|R",
                                BackdropCornerSize 0.003875,
                                BackdropBackgroundInsets 0.001 0.001 0.001 0.001,
                                BackdropEdgeFile "UI\Widgets\EscMenu\Human\slider-border.blp",
                                BackdropBlendAll,
                            }
                            SliderThumbButtonFrame "SliderTemp_Button",
                            Frame "BUTTON" "SliderTemp_Button" {
                                Width 0.015,
                                Height 0.015,
                                ControlBackdrop "SliderTemp_ButtonBackdrop",
                                Frame "BACKDROP" "SliderTemp_ButtonBackdrop" {
                                    BackdropBlendAll,
                                    BackdropBackground "UI\Widgets\EscMenu\Human\slider-knob.blp",
                                }
                                ControlDisabledBackdrop "SliderTemp_ButtonDisabledBackdrop",
                                Frame "BACKDROP" "SliderTemp_ButtonDisabledBackdrop" {
                                    BackdropBlendAll,
                                    BackdropBackground "UI\Widgets\EscMenu\Human\slider-knobdisabled.blp",
                                }
                            }
                        }
                    ]]
                    import('Ui\\SliderTemp.fdf')(slider)
                    import('Ui\\SliderPath.toc')([[
                        Ui\SliderTemp.fdf
                        
                    ]])
                ?>
                Frame.loadToc("Ui\\SliderPath.toc");
                }
            }
            public
            {
                // 添加矩形变换属性模块
                module RectTransform;
                
                static method create() -> thistype
                {
                    thistype this = thistype.allocate();
                    this.handle_this = DzCreateFrame("SliderTemp",DzGetGameUI(),thistype.index);
                    this.TextUre = DzFrameFindByName("SliderTempBackdrop",thistype.index);
                    this.button_this = DzFrameFindByName("SliderTemp_Button",thistype.index);
                    this.ButtonTextUre = DzFrameFindByName("SliderTemp_ButtonBackdrop",thistype.index);
                    this.init();
                    thistype.index += 1;
                    return this;
                }
                method destroy()
                {
                    this.handle_this = 0;
                    this.TextUre = 0;
                    this.button_this = 0;
                    this.ButtonTextUre = 0;
                    
                    this.deallocate();
                }
                method delete() 
                {
                    FlushChildHashtable(USDT, this.Handle); // 清空所有自定义值
DzDestroyFrame(this.Handle);
                    
                    thistype.index -= 1;
                    this.destroy();
                }
                // 获取句柄 - handle
                method operator Handle() -> integer { return this.handle_this;}
                // 获取属性 - 最小值
                method operator min() -> real { return LoadReal( USDT, this.Handle, <?= StringHash("min") ?>);}
                // 获取属性 - 最大值
                method operator max() -> real { return LoadReal( USDT, this.Handle, <?= StringHash("max") ?>);}
                // 获取属性 - 当前值
                method operator value() -> real { return DzFrameGetValue(this.Handle);} //userGet(integer,this.Handle,ScrollbarUserValueType,ScrollbarUserValue);}
// 获取属性 - 步进值
method operator step() -> real { return LoadReal( USDT, this.Handle, <?= StringHash("step") ?>);}
                // 获取属性 - 显示状态
                method operator show() -> boolean { return LoadBoolean( USDT, this.Handle, <?= StringHash("show") ?>);}
                // 设置属性 - 最小和最大值
                method operator min=(real value)
                {
                    SaveReal( USDT, this.Handle, <?= StringHash("min") ?>, value);
                    this.setMinMax(value,this.max);
                }
                method operator max=(real value)
                {
                    SaveReal( USDT, this.Handle, <?= StringHash("max") ?>, value);
                    this.setMinMax(this.min,value);
                }
                // 设置属性 - 当前值
                method operator value=(real value)
                {
                    SaveReal( USDT, this.Handle, <?= StringHash("value") ?>, value);
                    this.setValue(value);
                }
                // 设置属性 - 步进值
                method operator step=(real value)
                {
                    SaveReal( USDT, this.Handle, <?= StringHash("step") ?>, value);
                    this.setStep(value);
                }
                // 设置属性 - 显示状态
                method operator show=(boolean flag)
                {
                    SaveBoolean( USDT, this.Handle, <?= StringHash("show") ?>, flag);
                    DzFrameShow(this.Handle,flag);
                }
            }
            private
            {
                method default()
                {
                    SaveReal( USDT, this.Handle, <?= StringHash("min") ?>, 0);
                    SaveReal( USDT, this.Handle, <?= StringHash("max") ?>, 1);
                    SaveReal( USDT, this.Handle, <?= StringHash("value") ?>, 1);
                    SaveReal( USDT, this.Handle, <?= StringHash("step") ?>, 1);
                    SaveBoolean( USDT, this.Handle, <?= StringHash("show") ?>, true);
                }
                // 初始化
                method init() 
                { 
                    this.rect_init(); // 此函数在RectTransform 模块
this.default();
                    this.min = this.min;
                    this.max = this.max;
                    this.value = this.value;
                    this.step = this.step;
                    this.show = this.show;
                }
                // 设置最小/最大值
                method setMinMax(real min, real max) {DzFrameSetMinMaxValue(this.Handle,min,max);}
                // 设置当前值
                method setValue(real value) { DzFrameSetValue(this.Handle,value);}
                // 设置步进值
                method setStep(real value) { DzFrameSetStepValue(this.Handle,value);}
            }
        }
    }
 }
 //! endzinc
//! zinc
library BackdropUsed
{
    public struct BackdropParaUsed
    {
        Frame pt; //父节点
string name = "Backdrop";
        integer mode = 0; //贴图模式 0 不平铺 1 平铺
string text = ""; //文本内容
string temp = ""; // 文本模版
string blp = "ReplaceableTextures\\TeamColor\\TeamColor02.blp"; //贴图路径 

        static method create() -> thistype
        {
            thistype this = thistype.allocate();
            this.pt = Frame.getGameUI();
            return this;
        }
        static method new(Frame Pt) -> thistype
        {
            thistype this = thistype.allocate();
            this.name = Pt.name() + this.name;
            this.pt = Pt;
            return this;
        }
    }
    public struct BackdropUsed
    {
        private
        {
            BackdropParaUsed para; // 参数体

            integer text; //文本标签
integer textLen; //文本长度

            integer buId; // 主节点句柄

        }
        public
        {
            Frame id; //背景
}
        public
        {
            
            static method create(BackdropParaUsed Para) -> thistype
            {
                thistype this = thistype.allocate();
                this.para = Para;
                // 背景
                this.id = Frame.createTag("BACKDROP", Para.name, Para.pt, "" , 0);
                this.id.setTextUre(Para.blp, Para.mode); // 默认背景
this.buId = this.id.Handle();
                if (Para.text != "")
                {
                    this.setText(Para.text);
                }
                return this;
            }
            // 析构函数 注意 一担析构之后就无法再重新赋值记录 只能重新构造
            method destroy()
            {
                this.id.destroy();
                
                this.textLen = 0;
                this.para.destroy();
                this.deallocate();
            }
            
            method setText(string char)
            {
                if (this.text == 0) {
                    this.text = DzCreateFrameByTagName("TEXT", this.para.name + "_text", this.buId, this.para.temp, 0);
                    DzFrameSetPoint(this.text, 4, this.buId, 4, 0.0, 0.0);
                    //this.textShow(true);
                }
                DzFrameSetText(this.text, char);
                this.para.text = char;
                this.textLen = StringLength(char);
            }
        }
    }
}
//! endzinc
// requires
//! zinc
library XZUI requires Module, Color, Image, Text, Button, Backdrop, Scrollbar, BackdropUsed 
{
}
//! endzinc
// requires
//! zinc
library Xwei requires XZAPI, XZLogic, XZUI 
{
    // private function onInit() {
    //     print("XZincLibrary-load! " + "<?= os.date('%Y-%m-%d %H:%M:%S') ?>");
    // }
}
//! endzinc
// 地图物编预处理
// #include "Code\\Obj\\main.j"
// 接口
//! zinc
library EarlyWarningCircle requires Xwei
{
    public struct EarlyWarningCircle
    {
        private
        {
            unit Source;
            real x,y,r,d,effSize;
            boolean IsAttck,IsInAttck;
            string Type,effPh;
            method destroy()
            {
                this.Source = null;
                this.deallocate();
            }
        }
        // 施法来源 中心坐标，半径范围，伤害值，是否攻击伤害，是否远程伤害，伤害类型，伤害特效，伤害特效大小，延时多少秒
        static method new(unit Source, real X, real Y, real R, real D, boolean IsAttck, boolean IsInAttck, string Type, string effPh, real effSize, real dur)
        {
            thistype this = thistype.allocate();
            Effect eff = 0;
            eff = Effect.create("WanJieYongHeng3Model\\Effect\\EarlyWarningCircle\\yujingquan.mdl", X, Y);
            eff.setSpeed(dur * 1.25);
            eff.setSize(R / 194.0);
            eff.timed(dur);
            
            this.Source = Source;
            this.x = X;this.y = Y;this.r = R;this.d = D;
            this.IsAttck = IsAttck;this.IsInAttck = IsInAttck;
            this.Type = Type;this.effPh = effPh;
            this.effSize = effSize;
            Timer.create(dur, false, function() {
                thistype this = Timer.thisData();
                Effect eff = 0;
                Unit un = Unit.byHandle(this.Source);
                eff = Effect.create(this.effPh, this.x, this.y);
                eff.setSize(this.effSize);
                eff.delete();
                Damage.causeRange(un, this.x, this.y, this.r, this.d, this.IsAttck, this.IsInAttck, this.Type, false, "");
                un.Null();
                this.destroy();
            }).setData(integer(this));
        }
    }
}
//! endzinc
//! zinc
library IllusionUnit requires Xwei
{
    public struct IllusionUnit
    {
        private
        {
            static unit majia;
            static integer abId;
            static unit whichUnit;
            static method onInit()
            {
                // 技能构造
                <?
                    local obj
                    obj = slk.ability.AIil:new '幻象系统核心技能马甲'
                    obj.Name = '小为幻象系统核心技能马甲'
                    obj.DataB1 = 0
                    obj.Rng1 = 1000000000
                    obj.Dur1 = 1
                    obj.HeroDur1 = 1
                    obj.TargetArt = ""
                    obj.Targetattach = ""
                    obj.targs1 = "ground,vulnerable,air,invulnerable"
                ?>
                thistype.abId = '<?=obj:get_id()?>';
                // 马甲创建
                thistype.majia = CreateUnit(Player(PLAYER_NEUTRAL_PASSIVE), Majia.Id, 0., 0., 0.);
                UnitAddAbility(thistype.majia, thistype.abId);
                UnitMakeAbilityPermanent(thistype.majia, true, thistype.abId);
                // 事件捕捉
                Event.onUnit("被召唤", function() {
                    thistype.whichUnit = GetTriggerUnit();
                });
            }
        }
        public
        {
            // 幻象单位，所属玩家，持续时间，造成伤害，受到伤害
            static method new(Unit un, Gamer gm, real dur, real damageDealt, real damageTaken) ->Unit
            {
                // 修改所属
                SetUnitOwner(thistype.majia, gm.Handle(), true);
                // 修改数据
                EXSetAbilityDataReal(EXGetUnitAbility(thistype.majia, thistype.abId), 1, 102, dur);
                EXSetAbilityDataReal(EXGetUnitAbility(thistype.majia, thistype.abId), 1, 103, dur);
                EXSetAbilityDataReal(EXGetUnitAbility(thistype.majia, thistype.abId), 1, 108, damageDealt);
                EXSetAbilityDataReal(EXGetUnitAbility(thistype.majia, thistype.abId), 1, 109, damageTaken);
                // 发布命令
                IssueTargetOrderById(thistype.majia, Order.wandOfIllusion, un.Handle());
                // 返回单位
                return Unit.byHandle(thistype.whichUnit);
            }
            // 获取最后创建的幻象单位
            static method getUnit() ->Unit
            {
                return Unit.byHandle(thistype.whichUnit);
            }
        }
    }
}
//! endzinc
// BuffType注册
// 眩晕Buff
//! zinc
library Vertigo requires Xwei
{
    public BuffType VertigoBuff = 0;
    private function onInit()
    {
        VertigoBuff = BuffType.create("眩晕Buff", false);
        VertigoBuff.onAdd(function() {
            Buff bf = BuffType.getBuff();
            Unit tu = 0;
            if (bf.IsRepeat()) {
                if (bf.getRepeatTime() >= bf.getTime()) {
                    bf.setTime(bf.getRepeatTime());
                }
            } else {
                tu = bf.getTarget();
                tu.vertigo(true);
                SaveInteger( USDT, bf.HandleId(), <?= StringHash( "眩晕模型") ?>, integer( Effect.createUnit("Abilities\\Spells\\Human\\Thunderclap\\ThunderclapTarget.mdl", tu, "overhead")));
                tu.Null();
            }
        });
        VertigoBuff.onRemove(function() {
            Buff bf = BuffType.getBuff();
            Unit tu = bf.getTarget();
            tu.vertigo(false);
            Effect( LoadInteger( USDT, bf.HandleId(), <?= StringHash( "眩晕模型") ?>)).delete();
            tu.Null();
        });
    }
}
//! endzinc
//! zinc
library ReduceArmor requires Xwei
{
    public BuffType ReduceArmor = 0;
    private integer abId = 0;
    private function onInit()
    {
        // 减防技能注册
        <?
            local slk = require 'slk'
            -- 减防数值技能
            local obj = slk.ability.AId1:new "减防系统技能马甲"
            -- 名字
            obj.Name = "小为减防系统核心马甲"
            -- 注释
            obj.EditorSuffix = ""
            -- 技能等级
            obj.levels = 2
            -- 技能数据A1
            obj.DataA1 = 0
            -- 技能数据A2
            obj.DataA2 = 0
            -- 物品技能
            obj.item = 0
            -- 技能图标
            obj.Art = "ReplaceableTextures\\CommandButtons\\BTNRingGreen.blp"
        ?>
        abId = '<?= obj:get_id() ?>';
        // 减防Buff注册
        ReduceArmor = BuffType.create("减防Buff", false);
        ReduceArmor.onAdd(function() {
            Buff bf = BuffType.getBuff();
            Unit tu = 0;
            real loc = 0.0;
            if (bf.IsRepeat()) {
                if (bf.getRepeatTime() >= bf.getTime()) {
                    bf.setTime(bf.getRepeatTime());
                }
            } else {
                tu = bf.getTarget();
                loc = tu.stateString("护甲") * 0.15;
                loc = loc - loc * 2;
                tu.addAbility(abId, true);
                tu.addAbilityLevel(abId);
                tu.setAbilityDataReal(abId, 1, 108, loc);
                tu.subAbilityLevel(abId);
                SaveInteger( USDT, bf.HandleId(), <?= StringHash( "减防模型") ?>, integer( Effect.createUnit("Abilities\\Spells\\NightElf\\FaerieFire\\FaerieFireTarget.mdl", tu, "head")));
                tu.Null();
            }
        });
        ReduceArmor.onRemove(function() {
            Buff bf = BuffType.getBuff();
            Unit tu = bf.getTarget();
            tu.subAbility(abId);
            Effect( LoadInteger( USDT, bf.HandleId(), <?= StringHash( "减防模型") ?>)).delete();
            tu.Null();
        });
    }
}
//! endzinc
// 基础相关
// 地图玩家人数 由0开始计数，如填写3 则是0-3，合计4个。
// 游戏相关
//! zinc
library Attribute
{
    
    <?
    local slk = require 'slk'
    ?>
    <?
    function define(data,index)
        local key = 1
        local Type = 0
        for itemId, item in pairs(data) do
            local name = item.Name or ""
            local ubertip = item.Ubertip:gsub("|[cC]%w%w%w%w%w%w%w%w",""):gsub("(|r",""):gsub("(|n","$\n^"):gsub("^","^"):gsub("$","$")
            local matches = string.gmatch(ubertip, "[\n%^]([^%s%d%p]+)%s*([+-]%d+)([%%千万亿]*)%$")
            key = 1
            Type = 0
            for attribute, value, unit in matches do
                if unit == "千" then
                    value = value * 1000
                elseif unit == "万" then
                    value = value * 10000
                elseif unit == "亿" then
                    value = value * 100000000
                elseif unit == "%" then
                    value = value / 100
                end
                if index == 2 then
                ?>
                SaveReal(XZHT, '<?= itemId ?>', <?= StringHash(attribute) ?>, <?= tonumber(value) ?>);
                <?
                end
                if index == 3 then
                ?>
                SaveStr(XZHT, '<?= itemId ?>', <?= key ?>, "<?= attribute ?>");
                <?
                end
                key = key + 1
                Type = itemId
            end
            if key > 1 and index == 1 then
            ?>
            SaveInteger(XZHT, '<?= Type ?>', <?= StringHash("属性数量") ?>, <?= tonumber(key) - 1 ?>);
            <?
            end
        end
    end
    ?>
    <?
    function AbilityDefine(index)
        local key = 1
        local Type = 0
        for id, object in pairs(slk.ability) do
            local switch = string.sub(object.CasterArt, 1, 2) or ""
            if switch == "1|" then
                local name = object.Name or ""
                local ubertip = object.Ubertip:gsub("|[cC]%w%w%w%w%w%w%w%w",""):gsub("(|r",""):gsub("(|n","$\n^"):gsub("^","^"):gsub("$","$")
                local matches = string.gmatch(ubertip, "[\n%^]([^%s%d%p]+)%s*([+-]%d+)([%%千万亿]*)%$")
                key = 1
                Type = 0
                for attribute, value, unit in matches do
                    if unit == "千" then
                        value = value * 1000
                    elseif unit == "万" then
                        value = value * 10000
                    elseif unit == "亿" then
                        value = value * 100000000
                    elseif unit == "%" then
                        value = value / 100
                    end
                    if index == 2 then
                    ?>
                    SaveReal(XZHT, '<?= id ?>', <?= StringHash(attribute) ?>, <?= tonumber(value) ?>);
                    <?
                    end
                    if index == 3 then
                    ?>
                    SaveStr(XZHT, '<?= id ?>', <?= key ?>, "<?= attribute ?>");
                    <?
                    end
                    key = key + 1
                    Type = id
                end
                if key > 1 and index == 1 then
                ?>
                SaveInteger(XZHT, '<?= Type ?>', <?= StringHash("属性数量") ?>, <?= tonumber(key) - 1 ?>);
                <?
                end
            end
        end
    end
    ?>
    <?
    function timestamp()
        return os.date('%Y-%m-%d %H:%M:%S')
    end
    ?>
    private struct DefineItem
    {
        static method onInit() {
            trigger trig = CreateTrigger();
            // 注册物品
                // 注册属性数量
                TriggerAddAction(trig, function() {
                    <? define(slk.item, 1) ?>
                });
                // 注册属性值
                TriggerAddAction(trig, function() {
                    <? define(slk.item, 2) ?>
                });
                // 注册属性名索引映射
                TriggerAddAction(trig, function() {
                    <? define(slk.item, 3) ?>
                });
            // 注册技能
                // 注册属性数量
                TriggerAddAction(trig, function() {
                    <? AbilityDefine(1) ?>
                });
                // 注册属性值
                TriggerAddAction(trig, function() {
                    <? AbilityDefine(2) ?>
                });
                // 注册属性名索引映射
                TriggerAddAction(trig, function() {
                    <? AbilityDefine(3) ?>
                });
            // 执行
            TriggerExecute(trig);
            trig = null;
        }
    }
    // 物品捡取和丢弃自动给予和删除属性
    private struct ItemAttribute
    {
        static method onInit() {
            trigger pick = CreateTrigger();
            trigger discard = CreateTrigger();
            integer index;
            for (0 <= index <= 15) {
                TriggerRegisterPlayerUnitEvent(pick, Player(index), EVENT_PLAYER_UNIT_PICKUP_ITEM, null);
                TriggerRegisterPlayerUnitEvent(discard, Player(index), EVENT_PLAYER_UNIT_DROP_ITEM, null);
            }
            // 捡取给予属性
            TriggerAddAction(pick, function() {
                Unit u = 0;
                integer itemId = GetItemTypeId(GetManipulatedItem());
                integer level = GetItemLevel(GetManipulatedItem());
                integer index,number;
                string KeyName;
                real value;
                // 判断非人造物品分类和物品等级非45的
                if (GetItemType(GetManipulatedItem()) != ITEM_TYPE_ARTIFACT && level != 45) {
                    u = Unit.manipulatingUnit();
                    number = LoadInteger(XZHT, itemId, <?= StringHash("属性数量") ?>);
                    if (number > 0) {
                        for (1 <= index <= number) {
                            KeyName = LoadStr(XZHT, itemId, index);
                            value = LoadReal(XZHT, itemId, StringHash(KeyName));
                            u.addStateString(KeyName, value);
                        }
                    }
                    u.Null();
                }
            });
            // 丢弃减少属性
            TriggerAddAction(discard, function() {
                Unit u = 0;
                integer itemId = GetItemTypeId(GetManipulatedItem());
                integer level = GetItemLevel(GetManipulatedItem());
                integer index,number;
                string KeyName;
                real value;
                // 判断非人造物品分类和物品等级非45的
                if (GetItemType(GetManipulatedItem()) != ITEM_TYPE_ARTIFACT && level != 45) {
                    u = Unit.manipulatingUnit();
                    number = LoadInteger(XZHT, itemId, <?= StringHash("属性数量") ?>);
                    if (number > 0) {
                        for (1 <= index <= number) {
                            KeyName = LoadStr(XZHT, itemId, index);
                            value = LoadReal(XZHT, itemId, StringHash(KeyName));
                            u.subStateString(KeyName, value);
                        }
                    }
                    u.Null();
                }
            });
            pick = null;
            discard = null;
        }
    }
}
//! endzinc
//! zinc
library HurtEffect requires Xwei
{
    // 特效异步显示的人数上限 例如设置为5 那么就是玩家1-玩家5之间互相攻击是不会显示伤害字体的 而非玩家1-玩家5则会显示伤害字体
    // 物理伤害字体，物理暴击字体
    // 法术伤害字体，法术暴击字体
    // 魔兽自带溅血特效
    // 魔兽自带吸血特效
    // 爆血特效
    private struct HurtEffect
    {
        Damage damage;
        Unit du,tu;
        static string EffectStr[];
        method show()
        {
            Gamer gm = 0;
            integer len = 0;
            integer index = 0;
            integer bjIndex = 0;
            integer forIndex = 0;
            integer damageIndex = 0;
            string bjzt = "";
            string damageStr = "";
            string tx = "";
            real x = 0.0;
            real y = 0.0;
            // 判断伤害类型
            if (this.damage.IsDamageType("法术伤害")) {
                index = 10;
                bjIndex = 31;
                bjzt = "XZincFrameModel\\DamageFont\\Mawn_FBJ.mdl";
            } else {
                index = 0;
                bjIndex = 30;
                bjzt = "XZincFrameModel\\DamageFont\\Dawn_BJ.mdl";
            }
            // 伤害显示异步玩家
            if (this.tu.gamerId() <= 5) {
                gm = this.tu.owner();
            } else if (this.du.gamerId() <= 5) {
                gm = this.du.owner();
            }
            // 过滤较低伤害值
            if (this.tu.gamerId() <= 5 && this.damage.value() < this.tu.stateString("生命值") * 0.03) {
                return;
            }
            // 特效参数注册和位置偏移设置
            damageStr = math.miR2S(this.damage.value());
            len = StringLength(damageStr);
            x = this.tu.x() - len * 20.0;
            y = this.tu.y() + 50.0;
            // 暴击特效
            if (this.damage.IsCrit()) {
                if (gm.IsLocal() && gm.IsPlayer()) {
                    tx = bjzt;
                }
                Effect.create(tx, x - 50.0, y).delete();
            }
            // 伤害数值展现
            if (len > 5) {
                len = len - 4;
                for (1 <= forIndex <= len) {
                    damageIndex = S2I(SubString(damageStr, forIndex - 1, forIndex));
                    if (gm.IsLocal() && gm.IsPlayer()) {
                        tx = thistype.EffectStr[damageIndex + index];
                    }
                    Effect.create(tx, x, y).delete();
                    x = x + 35.0;
                }
                if (gm.IsLocal() && gm.IsPlayer()) {
                    tx = thistype.EffectStr[bjIndex];
                }
                Effect.create(tx, x, y).delete();
            } else {
                for (1 <= forIndex <= len) {
                    damageIndex = S2I(SubString(damageStr, forIndex - 1, forIndex));
                    if (gm.IsLocal() && gm.IsPlayer()) {
                        tx = thistype.EffectStr[damageIndex + index];
                    }
                    Effect.create(tx, x, y).delete();
                    x = x + 35.0;
                }
            }
        }
        static method action()
        {
            thistype this = thistype.allocate();
            this.damage = Damage.getThis();
            this.du = this.damage.getUnit();
            this.tu = this.damage.getTrigger();
            // 过滤非电脑玩家，筛选玩家。
            if (this.du.owner().id() <= 5) {
                // 普通打击溅射小血
                Effect.createUnit("Abilities\\Spells\\Other\\Stampede\\StampedeMissileDeath.mdl", this.tu, "origin").delete();
                // 伤害字体
                if (!LoadBoolean( XWHT, this.du.HandleId(), <?= StringHash("伤害特效过滤器") ?>)) {
                    SaveBoolean( XWHT, this.du.HandleId(), <?= StringHash("伤害特效过滤器") ?>, true);
                    this.show();
                    Timer.create(0.25, false, function() {
                        SaveBoolean( XWHT, Timer.thisData(), <?= StringHash("伤害特效过滤器") ?>, false);
                    }).setData(this.du.HandleId());
                }
            }
            // 释放
            this.destroy();
        }
        static method onInit()
        {
            // 物理字体
            thistype.EffectStr[0] = "XZincFrameModel\\DamageFont\\Dawn_0.mdl";
            thistype.EffectStr[1] = "XZincFrameModel\\DamageFont\\Dawn_1.mdl";
            thistype.EffectStr[2] = "XZincFrameModel\\DamageFont\\Dawn_2.mdl";
            thistype.EffectStr[3] = "XZincFrameModel\\DamageFont\\Dawn_3.mdl";
            thistype.EffectStr[4] = "XZincFrameModel\\DamageFont\\Dawn_4.mdl";
            thistype.EffectStr[5] = "XZincFrameModel\\DamageFont\\Dawn_5.mdl";
            thistype.EffectStr[6] = "XZincFrameModel\\DamageFont\\Dawn_6.mdl";
            thistype.EffectStr[7] = "XZincFrameModel\\DamageFont\\Dawn_7.mdl";
            thistype.EffectStr[8] = "XZincFrameModel\\DamageFont\\Dawn_8.mdl";
            thistype.EffectStr[9] = "XZincFrameModel\\DamageFont\\Dawn_9.mdl";
            thistype.EffectStr[30] = "XZincFrameModel\\DamageFont\\Dawn_W.mdl";
            // 法术字体
            thistype.EffectStr[10] = "XZincFrameModel\\DamageFont\\Mawn_0.mdl";
            thistype.EffectStr[11] = "XZincFrameModel\\DamageFont\\Mawn_1.mdl";
            thistype.EffectStr[12] = "XZincFrameModel\\DamageFont\\Mawn_2.mdl";
            thistype.EffectStr[13] = "XZincFrameModel\\DamageFont\\Mawn_3.mdl";
            thistype.EffectStr[14] = "XZincFrameModel\\DamageFont\\Mawn_4.mdl";
            thistype.EffectStr[15] = "XZincFrameModel\\DamageFont\\Mawn_5.mdl";
            thistype.EffectStr[16] = "XZincFrameModel\\DamageFont\\Mawn_6.mdl";
            thistype.EffectStr[17] = "XZincFrameModel\\DamageFont\\Mawn_7.mdl";
            thistype.EffectStr[18] = "XZincFrameModel\\DamageFont\\Mawn_8.mdl";
            thistype.EffectStr[19] = "XZincFrameModel\\DamageFont\\Mawn_9.mdl";
            thistype.EffectStr[31] = "XZincFrameModel\\DamageFont\\Mawn_W.mdl";
            // 事件注册
            Event.onDiy("伤害特效处理", function thistype.action);
        }
    }
    private struct FightDeath
    {
        static method action()
        {
            Unit du = Unit.killingUnit();
            Unit tu = 0;
            Effect eff = 0;
            // 过滤非电脑玩家
            if (du.owner() <= 5) {
                tu = Unit.triggerUnit();
                eff = Effect.create("XZincFrameModel\\Effect\\Currency\\[tx]bloodex-special-3.mdl", tu.x(), tu.y());
                eff.setSize(0.8);
                eff.delete();
                tu.Null();
            }
            du.Null();
        }
        static method onInit()
        {
            Event.onUnit("单位死亡", function thistype.action);
        }
    }
}
//! endzinc
// 调试库
//! zinc
library Debug requires Xwei
{
    Unit hero = 0;
    Buff bf = 0;
    function initAction()
    {
        hero = Unit.byHandle(gg_unit_Hblm_0016);
    }
    function onInit()
    {
        // 实例调试
        Event.onGamerChat(function() {
            string chat = String.chat();
            if (chat == "thisSize") {
                debug BJDebugMsg("--------------------");
                debug BJDebugMsg("Effect-特效-实例数量：" + I2S(Effect.thisSize));
                debug BJDebugMsg("Point-点-实例数量：" + I2S(Point.thisSize));
                debug BJDebugMsg("Group-单位组-实例数量：" + I2S(Group.thisSize));
                debug BJDebugMsg("Unit-单位-实例数量：" + I2S(Unit.thisSize));
                debug BJDebugMsg("Item-物品-实例数量：" + I2S(Item.thisSize));
                debug BJDebugMsg("--------------------");
            }
            if (chat == "1") {
                bf = Buff.new(hero, hero, "眩晕Buff", 2.0);
            }
            if (chat == "2") {
                bf.endTime();
            }
        });
        // 初始化
        Timer.create(0.0, false, function initAction);
    }
}
//! endzinc


