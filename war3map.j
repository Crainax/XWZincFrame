//W3x2lni Data: 2020-04-20 17:38:49.917
globals
    //globals from Attribute:
    constant boolean LIBRARY_Attribute = true
    //endglobals from Attribute
    //globals from Backdrop:
    constant boolean LIBRARY_Backdrop = true
    //endglobals from Backdrop
    //globals from Base:
    constant boolean LIBRARY_Base = true
    hashtable XWHT = InitHashtable()
    hashtable XZHT = InitHashtable()
    hashtable USDT = InitHashtable()
    //endglobals from Base
    //globals from Border:
    constant boolean LIBRARY_Border = true
    //endglobals from Border
    //globals from Buff:
    constant boolean LIBRARY_Buff = true
    //endglobals from Buff
    //globals from Dialog:
    constant boolean LIBRARY_Dialog = true
    //endglobals from Dialog
    //globals from DzAPI:
    constant boolean LIBRARY_DzAPI = true
    //endglobals from DzAPI
    //globals from Ease:
    constant boolean LIBRARY_Ease = true
    //endglobals from Ease
    //globals from Effect:
    constant boolean LIBRARY_Effect = true
    integer array Effect___number
    integer array Effect___Count
    real array Effect___X
    real array Effect___Y
    real array Effect___Range
    string array Effect___Name
    //endglobals from Effect
    //globals from Event:
    constant boolean LIBRARY_Event = true
    hashtable Event___DIYHT = InitHashtable()
    boolean Event_syncEventBool = false
    //endglobals from Event
    //globals from Excretion:
    constant boolean LIBRARY_Excretion = true
    //endglobals from Excretion
    //globals from Frame:
    constant boolean LIBRARY_Frame = true
    //endglobals from Frame
    //globals from Game:
    constant boolean LIBRARY_Game = true
    //endglobals from Game
    //globals from Group:
    constant boolean LIBRARY_Group = true
    //endglobals from Group
    //globals from Hard:
    constant boolean LIBRARY_Hard = true
    //endglobals from Hard
    //globals from Input:
    constant boolean LIBRARY_Input = true
    //endglobals from Input
    //globals from JAPI:
    constant boolean LIBRARY_JAPI = true
    //endglobals from JAPI
    //globals from Math:
    constant boolean LIBRARY_Math = true
    //endglobals from Math
    //globals from Object:
    constant boolean LIBRARY_Object = true
    //endglobals from Object
    //globals from Order:
    constant boolean LIBRARY_Order = true
    //endglobals from Order
    //globals from Panel:
    constant boolean LIBRARY_Panel = true
    //endglobals from Panel
    //globals from Point:
    constant boolean LIBRARY_Point = true
    //endglobals from Point
    //globals from Table:
    constant boolean LIBRARY_Table = true
    integer Table___less = 0
    integer Table___more = 8190
    //Configure it if you use more than 8190 "key" variables in your map (this will never happen though).

    hashtable Table___ht = InitHashtable()
    constant integer Table___sizeK = 7
    constant integer Table___listK = 8
    //endglobals from Table
    //globals from TimeStamp:
    constant boolean LIBRARY_TimeStamp = true
    //endglobals from TimeStamp
    //globals from Timer:
    constant boolean LIBRARY_Timer = true
    //endglobals from Timer
    //globals from Gamer:
    constant boolean LIBRARY_Gamer = true
    integer Gamer___Count = 0
    //endglobals from Gamer
    //globals from Item:
    constant boolean LIBRARY_Item = true
    //endglobals from Item
    //globals from String:
    constant boolean LIBRARY_String = true
    //endglobals from String
    //globals from Turn:
    constant boolean LIBRARY_Turn = true
    //endglobals from Turn
    //globals from Unit:
    constant boolean LIBRARY_Unit = true
    //endglobals from Unit
    //globals from XZAPI:
    constant boolean LIBRARY_XZAPI = true
    //endglobals from XZAPI
    //globals from Button:
    constant boolean LIBRARY_Button = true
    //endglobals from Button
    //globals from Damage:
    constant boolean LIBRARY_Damage = true
    //endglobals from Damage
    //globals from Motion:
    constant boolean LIBRARY_Motion = true
    //endglobals from Motion
    //globals from XZLogic:
    constant boolean LIBRARY_XZLogic = true
    //endglobals from XZLogic
    //globals from XZUI:
    constant boolean LIBRARY_XZUI = true
    //endglobals from XZUI
    //globals from Xwei:
    constant boolean LIBRARY_Xwei = true
    //endglobals from Xwei
    //globals from Debug:
    constant boolean LIBRARY_Debug = true
    integer Debug__hero = 0
    integer Debug__bf = 0
    //endglobals from Debug
    //globals from HurtEffect:
    constant boolean LIBRARY_HurtEffect = true
    //endglobals from HurtEffect
    //globals from RefreshAttribute:
    constant boolean LIBRARY_RefreshAttribute = true
    //endglobals from RefreshAttribute
    //globals from Vertigo:
    constant boolean LIBRARY_Vertigo = true
    integer VertigoBuff = 0
    //endglobals from Vertigo
    // Generated
    trigger gg_trg_Main = null
    trigger gg_trg_Init = null
    unit gg_unit_Hblm_0016 = null

    trigger l__library_init

    //JASSHelper struct globals:
    constant integer si__Attribute__DefineItem = 1
    integer si__Attribute__DefineItem_F = 0
    integer si__Attribute__DefineItem_I = 0
    integer array si__Attribute__DefineItem_V
    constant integer si__Attribute__ItemAttribute = 2
    integer si__Attribute__ItemAttribute_F = 0
    integer si__Attribute__ItemAttribute_I = 0
    integer array si__Attribute__ItemAttribute_V
    constant integer si__BackdropPara = 3
    integer si__BackdropPara_F = 0
    integer si__BackdropPara_I = 0
    integer array si__BackdropPara_V
    integer array s__BackdropPara_pt
    string array s__BackdropPara_name
    integer array s__BackdropPara_mode
    string array s__BackdropPara_text
    string array s__BackdropPara_temp
    string array s__BackdropPara_blp
    constant integer si__Backdrop = 4
    integer si__Backdrop_F = 0
    integer si__Backdrop_I = 0
    integer array si__Backdrop_V
    integer array s__Backdrop_para
    integer array s__Backdrop_text
    integer array s__Backdrop_textLen
    integer array s__Backdrop_buId
    integer array s__Backdrop_id
    constant integer si__position = 5
    integer si__position_F = 0
    integer si__position_I = 0
    integer array si__position_V
    real s__position_MapMinX = 0.0
    real s__position_MapMinY = 0.0
    real s__position_MapMaxX = 0.0
    real s__position_MapMaxY = 0.0
    real array s__position_x
    real array s__position_y
    constant integer si__Majia = 6
    integer si__Majia_F = 0
    integer si__Majia_I = 0
    integer array si__Majia_V
    integer s__Majia_Id = 0
    constant integer si__BorderPara = 7
    integer si__BorderPara_F = 0
    integer si__BorderPara_I = 0
    integer array si__BorderPara_V
    integer array s__BorderPara_pt
    string array s__BorderPara_name
    real array s__BorderPara_height
    string array s__BorderPara_style
    string array s__BorderPara_blp
    integer array s__BorderPara_mode
    constant integer si__Border = 8
    integer si__Border_F = 0
    integer si__Border_I = 0
    integer array si__Border_V
    integer array s__Border_para
    integer array s__Border_top
    integer array s__Border_topleft
    integer array s__Border_topright
    integer array s__Border_bottom
    integer array s__Border_bottomleft
    integer array s__Border_bottomright
    integer array s__Border_left
    integer array s__Border_right
    constant integer si__BuffType = 9
    integer si__BuffType_F = 0
    integer si__BuffType_I = 0
    integer array si__BuffType_V
    string array s__BuffType_name
    integer s__BuffType_triggerBuff = 0
    integer array s__BuffType_addEventIdName
    integer array s__BuffType_removeEvnetIdName
    integer array s__BuffType_updateEventIdName
    trigger array s__BuffType_id
    integer array s__BuffType_handleId
    integer array s__BuffType_addEventId
    integer array s__BuffType_removeEvnetId
    integer array s__BuffType_updateEventId
    boolean array s__BuffType_flag
    constant integer si__Buff = 10
    integer si__Buff_F = 0
    integer si__Buff_I = 0
    integer array si__Buff_V
    integer array s__Buff_time
    real array s__Buff_dur
    unit array s__Buff_du
    unit array s__Buff_tu
    boolean array s__Buff_repeat
    real array s__Buff_repeatTime
    trigger array s__Buff_id
    integer array s__Buff_handleId
    integer array s__Buff_buffType
    constant integer si__Dialog = 11
    integer si__Dialog_F = 0
    integer si__Dialog_I = 0
    integer array si__Dialog_V
    dialog array s__Dialog_dg
    integer array s__Dialog_handleId
    trigger array s__Dialog_click
    string array s__Dialog_msg
    constant integer si__Ease = 12
    integer si__Ease_F = 0
    integer si__Ease_I = 0
    integer array si__Ease_V
    constant integer si__Effect = 13
    integer si__Effect_F = 0
    integer si__Effect_I = 0
    integer array si__Effect_V
    effect array s__Effect_e
    integer array s__Effect_handleId
    boolean array s__Effect_timedBool
    integer s__Effect_thisSize = 0
    constant integer si__Event___InitEvent = 14
    integer si__Event___InitEvent_F = 0
    integer si__Event___InitEvent_I = 0
    integer array si__Event___InitEvent_V
    constant integer si__Event = 15
    trigger array s__Event_t
    boolean s__Event_orderBool = false
    boolean s__Event_abilityBool = false
    constant integer si__Event___DamageEvent = 16
    integer si__Event___DamageEvent_F = 0
    integer si__Event___DamageEvent_I = 0
    integer array si__Event___DamageEvent_V
    trigger s__Event___DamageEvent_Trigger = null
    trigger s__Event___DamageEvent_TriggerToDestory = null
    conditionfunc s__Event___DamageEvent_filter = null
    constant integer si__Excretion__deathUnit = 17
    integer si__Excretion__deathUnit_F = 0
    integer si__Excretion__deathUnit_I = 0
    integer array si__Excretion__deathUnit_V
    constant integer si__Excretion__deathItem = 18
    integer si__Excretion__deathItem_F = 0
    integer si__Excretion__deathItem_I = 0
    integer array si__Excretion__deathItem_V
    constant integer si__Frame = 19
    integer si__Frame_F = 0
    integer si__Frame_I = 0
    integer array si__Frame_V
    integer array s__Frame_f
    real array s__Frame_width
    boolean array s__Frame_showBool
    string array s__Frame_FrameName
    constant integer si__Game = 20
    integer si__Game_F = 0
    integer si__Game_I = 0
    integer array si__Game_V
    fogmodifier array s__Game_f
    integer array s__Game_handleId
    integer s__Game_ht
    constant integer si__Group = 21
    integer si__Group_F = 0
    integer si__Group_I = 0
    integer array si__Group_V
    group array s__Group_g
    integer array s__Group_handleId
    integer s__Group_size = 0
    real s__Group_X = 0.0
    real s__Group_Y = 0.0
    real s__Group_R = 0.0
    integer s__Group_thisSize = 0
    constant integer si__Hard = 22
    integer si__Hard_F = 0
    integer si__Hard_I = 0
    integer array si__Hard_V
    boolean array s__Hard_keyBool
    boolean s__Hard_mouseWheelBool = false
    boolean s__Hard_mouseMoveBool = false
    boolean s__Hard_windowResizeBool = false
    boolean s__Hard_updateCallBool = false
    constant integer si__Input = 23
    integer si__Input_F = 0
    integer si__Input_I = 0
    integer array si__Input_V
    constant integer s__Input_KEY_A = 0x41
    constant integer s__Input_KEY_B = 0x42
    constant integer s__Input_KEY_C = 0x43
    constant integer s__Input_KEY_D = 0x44
    constant integer s__Input_KEY_E = 0x45
    constant integer s__Input_KEY_F = 0x46
    constant integer s__Input_KEY_G = 0x47
    constant integer s__Input_KEY_H = 0x48
    constant integer s__Input_KEY_I = 0x49
    constant integer s__Input_KEY_J = 0x4A
    constant integer s__Input_KEY_K = 0x4B
    constant integer s__Input_KEY_L = 0x4C
    constant integer s__Input_KEY_M = 0x4D
    constant integer s__Input_KEY_N = 0x4E
    constant integer s__Input_KEY_O = 0x4F
    constant integer s__Input_KEY_P = 0x50
    constant integer s__Input_KEY_Q = 0x51
    constant integer s__Input_KEY_R = 0x52
    constant integer s__Input_KEY_S = 0x53
    constant integer s__Input_KEY_T = 0x54
    constant integer s__Input_KEY_U = 0x55
    constant integer s__Input_KEY_V = 0x56
    constant integer s__Input_KEY_W = 0x57
    constant integer s__Input_KEY_X = 0x58
    constant integer s__Input_KEY_Y = 0x59
    constant integer s__Input_KEY_Z = 0x5A
    constant integer s__Input_KEY_F1 = 0x70
    constant integer s__Input_KEY_F2 = 0x71
    constant integer s__Input_KEY_F3 = 0x72
    constant integer s__Input_KEY_F4 = 0x73
    constant integer s__Input_KEY_F5 = 0x74
    constant integer s__Input_KEY_F6 = 0x75
    constant integer s__Input_KEY_F7 = 0x76
    constant integer s__Input_KEY_F8 = 0x77
    constant integer s__Input_KEY_F9 = 0x78
    constant integer s__Input_KEY_F10 = 0x79
    constant integer s__Input_KEY_F11 = 0x7A
    constant integer s__Input_KEY_F12 = 0x7B
    constant integer s__Input_KEY_TAB = 0x9
    constant integer s__Input_KEY_ENTER = 0xD
    constant integer s__Input_KEY_SHIFT = 0x10
    constant integer s__Input_KEY_CTRL = 0x11
    constant integer s__Input_KEY_ALT = 0x12
    constant integer s__Input_KEY_ESC = 0x1B
    constant integer s__Input_KEY_SPACE = 0x20 // 正斜杠 \            static constant integer KEY_BACKSL = 0xDC;  
    constant integer s__Input_KEY_SLASH = 0xBF
    constant integer s__Input_KEY_LEFT = 0x25
    constant integer s__Input_KEY_UP = 0x26
    constant integer s__Input_KEY_RIGHT = 0x27
    constant integer s__Input_KEY_DOWN = 0x28
    constant integer s__Input_KEY_0 = 0x30
    constant integer s__Input_KEY_1 = 0x31
    constant integer s__Input_KEY_2 = 0x32
    constant integer s__Input_KEY_3 = 0x33
    constant integer s__Input_KEY_4 = 0x34
    constant integer s__Input_KEY_5 = 0x35
    constant integer s__Input_KEY_6 = 0x36
    constant integer s__Input_KEY_7 = 0x37
    constant integer s__Input_KEY_8 = 0x38
    constant integer s__Input_KEY_9 = 0x39
    constant integer s__Input_KEY_NUM_0 = 0x60
    constant integer s__Input_KEY_NUM_1 = 0x61
    constant integer s__Input_KEY_NUM_2 = 0x62
    constant integer s__Input_KEY_NUM_3 = 0x63
    constant integer s__Input_KEY_NUM_4 = 0x64
    constant integer s__Input_KEY_NUM_5 = 0x65
    constant integer s__Input_KEY_NUM_6 = 0x66
    constant integer s__Input_KEY_NUM_7 = 0x67
    constant integer s__Input_KEY_NUM_8 = 0x68
    constant integer s__Input_KEY_NUM_9 = 0x69
    constant integer s__Input_DOWN = 1
    constant integer s__Input_UP = 0
    constant integer si__math = 24
    integer si__math_F = 0
    integer si__math_I = 0
    integer array si__math_V
    constant integer si__RandomInt = 25
    integer si__RandomInt_F = 0
    integer si__RandomInt_I = 0
    integer array si__RandomInt_V
    integer array s__RandomInt_min
    integer array s__RandomInt_max
    hashtable s__RandomInt_ht
    constant integer si__Object___UnitType = 26
    integer si__Object___UnitType_F = 0
    integer si__Object___UnitType_I = 0
    integer array si__Object___UnitType_V
    constant integer si__Object___ItemType = 27
    integer si__Object___ItemType_F = 0
    integer si__Object___ItemType_I = 0
    integer array si__Object___ItemType_V
    constant integer si__Object___AbilityType = 28
    integer si__Object___AbilityType_F = 0
    integer si__Object___AbilityType_I = 0
    integer array si__Object___AbilityType_V
    constant integer si__Object___BuffType = 29
    integer si__Object___BuffType_F = 0
    integer si__Object___BuffType_I = 0
    integer array si__Object___BuffType_V
    constant integer si__Object___TechType = 30
    integer si__Object___TechType_F = 0
    integer si__Object___TechType_I = 0
    integer array si__Object___TechType_V
    constant integer si__Object___DestructableType = 31
    integer si__Object___DestructableType_F = 0
    integer si__Object___DestructableType_I = 0
    integer array si__Object___DestructableType_V
    constant integer si__Object___DoodadType = 32
    integer si__Object___DoodadType_F = 0
    integer si__Object___DoodadType_I = 0
    integer array si__Object___DoodadType_V
    constant integer si__Object = 33
    integer si__Object_F = 0
    integer si__Object_I = 0
    integer array si__Object_V
    integer s__Object_Unit = 0
    integer s__Object_Item = 0
    integer s__Object_Ability = 0
    integer s__Object_Buff = 0
    integer s__Object_Tech = 0
    integer s__Object_Destructable = 0
    integer s__Object_Doodad = 0
    constant integer si__SpecialOrders = 34
    integer si__SpecialOrders_F = 0
    integer si__SpecialOrders_I = 0
    integer array si__SpecialOrders_V
    constant integer s__SpecialOrders_buildmenu = 851994
    constant integer s__SpecialOrders_cancel = 851976
    constant integer s__SpecialOrders_itemdrag00 = 852002
    constant integer s__SpecialOrders_itemdrag01 = 852003
    constant integer s__SpecialOrders_itemdrag02 = 852004
    constant integer s__SpecialOrders_itemdrag03 = 852005
    constant integer s__SpecialOrders_itemdrag04 = 852006
    constant integer s__SpecialOrders_itemdrag05 = 852007
    constant integer s__SpecialOrders_itemuse00 = 852008
    constant integer s__SpecialOrders_itemuse01 = 852009
    constant integer s__SpecialOrders_itemuse02 = 852010
    constant integer s__SpecialOrders_itemuse03 = 852011
    constant integer s__SpecialOrders_itemuse04 = 852012
    constant integer s__SpecialOrders_itemuse05 = 852013
    constant integer s__SpecialOrders_tomeOfAttack = 852259
    constant integer s__SpecialOrders_smart = 851971
    constant integer s__SpecialOrders_skillmenu = 852000
    constant integer s__SpecialOrders_stunned = 851973
    constant integer s__SpecialOrders_wandOfIllusion = 852274
    constant integer si__OrderIds = 35
    constant integer s__OrderIds_absorb = 852529
    constant integer s__OrderIds_acidbomb = 852662
    constant integer s__OrderIds_acolyteharvest = 852185
    constant integer s__OrderIds_ambush = 852131
    constant integer s__OrderIds_ancestralspirit = 852490
    constant integer s__OrderIds_ancestralspirittarget = 852491
    constant integer s__OrderIds_animatedead = 852217
    constant integer s__OrderIds_antimagicshell = 852186
    constant integer s__OrderIds_attack = 851983
    constant integer s__OrderIds_attackground = 851984
    constant integer s__OrderIds_attackonce = 851985
    constant integer s__OrderIds_attributemodskill = 852576
    constant integer s__OrderIds_auraunholy = 852215
    constant integer s__OrderIds_auravampiric = 852216
    constant integer s__OrderIds_autodispel = 852132
    constant integer s__OrderIds_autodispeloff = 852134
    constant integer s__OrderIds_autodispelon = 852133
    constant integer s__OrderIds_autoentangle = 852505
    constant integer s__OrderIds_autoentangleinstant = 852506
    constant integer s__OrderIds_autoharvestgold = 852021
    constant integer s__OrderIds_autoharvestlumber = 852022
    constant integer s__OrderIds_avatar = 852086
    constant integer s__OrderIds_avengerform = 852531
    constant integer s__OrderIds_awaken = 852466
    constant integer s__OrderIds_banish = 852486
    constant integer s__OrderIds_barkskin = 852135
    constant integer s__OrderIds_barkskinoff = 852137
    constant integer s__OrderIds_barkskinon = 852136
    constant integer s__OrderIds_battleroar = 852599
    constant integer s__OrderIds_battlestations = 852099
    constant integer s__OrderIds_bearform = 852138
    constant integer s__OrderIds_berserk = 852100
    constant integer s__OrderIds_blackarrow = 852577
    constant integer s__OrderIds_blackarrowoff = 852579
    constant integer s__OrderIds_blackarrowon = 852578
    constant integer s__OrderIds_blight = 852187
    constant integer s__OrderIds_blink = 852525
    constant integer s__OrderIds_blizzard = 852089
    constant integer s__OrderIds_bloodlust = 852101
    constant integer s__OrderIds_bloodlustoff = 852103
    constant integer s__OrderIds_bloodluston = 852102
    constant integer s__OrderIds_board = 852043
    constant integer s__OrderIds_breathoffire = 852580
    constant integer s__OrderIds_breathoffrost = 852560
    constant integer s__OrderIds_build = 851994
    constant integer s__OrderIds_burrow = 852533
    constant integer s__OrderIds_cannibalize = 852188
    constant integer s__OrderIds_carrionscarabs = 852551
    constant integer s__OrderIds_carrionscarabsinstant = 852554
    constant integer s__OrderIds_carrionscarabsoff = 852553
    constant integer s__OrderIds_carrionscarabson = 852552
    constant integer s__OrderIds_carrionswarm = 852218
    constant integer s__OrderIds_chainlightning = 852119
    constant integer s__OrderIds_channel = 852600
    constant integer s__OrderIds_charm = 852581
    constant integer s__OrderIds_chemicalrage = 852663
    constant integer s__OrderIds_cloudoffog = 852473
    constant integer s__OrderIds_clusterrockets = 852652
    constant integer s__OrderIds_coldarrows = 852244
    constant integer s__OrderIds_coldarrowstarg = 852243
    constant integer s__OrderIds_controlmagic = 852474
    constant integer s__OrderIds_corporealform = 852493
    constant integer s__OrderIds_corrosivebreath = 852140
    constant integer s__OrderIds_coupleinstant = 852508
    constant integer s__OrderIds_coupletarget = 852507
    constant integer s__OrderIds_creepanimatedead = 852246
    constant integer s__OrderIds_creepdevour = 852247
    constant integer s__OrderIds_creepheal = 852248
    constant integer s__OrderIds_creephealoff = 852250
    constant integer s__OrderIds_creephealon = 852249
    constant integer s__OrderIds_creepthunderbolt = 852252
    constant integer s__OrderIds_creepthunderclap = 852253
    constant integer s__OrderIds_cripple = 852189
    constant integer s__OrderIds_curse = 852190
    constant integer s__OrderIds_curseoff = 852192
    constant integer s__OrderIds_curseon = 852191
    constant integer s__OrderIds_cyclone = 852144
    constant integer s__OrderIds_darkconversion = 852228
    constant integer s__OrderIds_darkportal = 852229
    constant integer s__OrderIds_darkritual = 852219
    constant integer s__OrderIds_darksummoning = 852220
    constant integer s__OrderIds_deathanddecay = 852221
    constant integer s__OrderIds_deathcoil = 852222
    constant integer s__OrderIds_deathpact = 852223
    constant integer s__OrderIds_decouple = 852509
    constant integer s__OrderIds_defend = 852055
    constant integer s__OrderIds_detectaoe = 852015
    constant integer s__OrderIds_detonate = 852145
    constant integer s__OrderIds_devour = 852104
    constant integer s__OrderIds_devourmagic = 852536
    constant integer s__OrderIds_disassociate = 852240
    constant integer s__OrderIds_disenchant = 852495
    constant integer s__OrderIds_dismount = 852470
    constant integer s__OrderIds_dispel = 852057
    constant integer s__OrderIds_divineshield = 852090
    constant integer s__OrderIds_doom = 852583
    constant integer s__OrderIds_drain = 852487
    constant integer s__OrderIds_dreadlordinferno = 852224
    constant integer s__OrderIds_dropitem = 852001
    constant integer s__OrderIds_drunkenhaze = 852585
    constant integer s__OrderIds_earthquake = 852121
    constant integer s__OrderIds_eattree = 852146
    constant integer s__OrderIds_elementalfury = 852586
    constant integer s__OrderIds_ensnare = 852106
    constant integer s__OrderIds_ensnareoff = 852108
    constant integer s__OrderIds_ensnareon = 852107
    constant integer s__OrderIds_entangle = 852147
    constant integer s__OrderIds_entangleinstant = 852148
    constant integer s__OrderIds_entanglingroots = 852171
    constant integer s__OrderIds_etherealform = 852496
    constant integer s__OrderIds_evileye = 852105
    constant integer s__OrderIds_faeriefire = 852149
    constant integer s__OrderIds_faeriefireoff = 852151
    constant integer s__OrderIds_faeriefireon = 852150
    constant integer s__OrderIds_fanofknives = 852526
    constant integer s__OrderIds_farsight = 852122
    constant integer s__OrderIds_fingerofdeath = 852230
    constant integer s__OrderIds_firebolt = 852231
    constant integer s__OrderIds_flamestrike = 852488
    constant integer s__OrderIds_flamingarrows = 852174
    constant integer s__OrderIds_flamingarrowstarg = 852173
    constant integer s__OrderIds_flamingattack = 852540
    constant integer s__OrderIds_flamingattacktarg = 852539
    constant integer s__OrderIds_flare = 852060
    constant integer s__OrderIds_forceboard = 852044
    constant integer s__OrderIds_forceofnature = 852176
    constant integer s__OrderIds_forkedlightning = 852587
    constant integer s__OrderIds_freezingbreath = 852195
    constant integer s__OrderIds_frenzy = 852561
    constant integer s__OrderIds_frenzyoff = 852563
    constant integer s__OrderIds_frenzyon = 852562
    constant integer s__OrderIds_frostarmor = 852225
    constant integer s__OrderIds_frostarmoroff = 852459
    constant integer s__OrderIds_frostarmoron = 852458
    constant integer s__OrderIds_frostnova = 852226
    constant integer s__OrderIds_getitem = 851981
    constant integer s__OrderIds_gold2lumber = 852233
    constant integer s__OrderIds_grabtree = 852511
    constant integer s__OrderIds_harvest = 852018
    constant integer s__OrderIds_heal = 852063
    constant integer s__OrderIds_healingspray = 852664
    constant integer s__OrderIds_healingward = 852109
    constant integer s__OrderIds_healingwave = 852501
    constant integer s__OrderIds_healoff = 852065
    constant integer s__OrderIds_healon = 852064
    constant integer s__OrderIds_hex = 852502
    constant integer s__OrderIds_holdposition = 851993
    constant integer s__OrderIds_holybolt = 852092
    constant integer s__OrderIds_howlofterror = 852588
    constant integer s__OrderIds_humanbuild = 851995
    constant integer s__OrderIds_immolation = 852177
    constant integer s__OrderIds_impale = 852555
    constant integer s__OrderIds_incineratearrow = 852670
    constant integer s__OrderIds_incineratearrowoff = 852672
    constant integer s__OrderIds_incineratearrowon = 852671
    constant integer s__OrderIds_inferno = 852232
    constant integer s__OrderIds_innerfire = 852066
    constant integer s__OrderIds_innerfireoff = 852068
    constant integer s__OrderIds_innerfireon = 852067
    constant integer s__OrderIds_instant = 852200
    constant integer s__OrderIds_invisibility = 852069
    constant integer s__OrderIds_lavamonster = 852667
    constant integer s__OrderIds_lightningshield = 852110
    constant integer s__OrderIds_load = 852046
    constant integer s__OrderIds_loadarcher = 852142
    constant integer s__OrderIds_loadcorpse = 852050
    constant integer s__OrderIds_loadcorpseinstant = 852053
    constant integer s__OrderIds_locustswarm = 852556
    constant integer s__OrderIds_lumber2gold = 852234
    constant integer s__OrderIds_magicdefense = 852478
    constant integer s__OrderIds_magicleash = 852480
    constant integer s__OrderIds_magicundefense = 852479
    constant integer s__OrderIds_manaburn = 852179
    constant integer s__OrderIds_manaflareoff = 852513
    constant integer s__OrderIds_manaflareon = 852512
    constant integer s__OrderIds_manashieldoff = 852590
    constant integer s__OrderIds_manashieldon = 852589
    constant integer s__OrderIds_massteleport = 852093
    constant integer s__OrderIds_mechanicalcritter = 852564
    constant integer s__OrderIds_metamorphosis = 852180
    constant integer s__OrderIds_militia = 852072
    constant integer s__OrderIds_militiaconvert = 852071
    constant integer s__OrderIds_militiaoff = 852073
    constant integer s__OrderIds_militiaunconvert = 852651
    constant integer s__OrderIds_mindrot = 852565
    constant integer s__OrderIds_mirrorimage = 852123
    constant integer s__OrderIds_monsoon = 852591
    constant integer s__OrderIds_mount = 852469
    constant integer s__OrderIds_mounthippogryph = 852143
    constant integer s__OrderIds_move = 851986
    constant integer s__OrderIds_moveAI = 851988
    constant integer s__OrderIds_nagabuild = 852467
    constant integer s__OrderIds_neutraldetectaoe = 852023
    constant integer s__OrderIds_neutralinteract = 852566
    constant integer s__OrderIds_neutralspell = 852630
    constant integer s__OrderIds_nightelfbuild = 851997
    constant integer s__OrderIds_orcbuild = 851996
    constant integer s__OrderIds_parasite = 852601
    constant integer s__OrderIds_parasiteoff = 852603
    constant integer s__OrderIds_parasiteon = 852602
    constant integer s__OrderIds_patrol = 851990
    constant integer s__OrderIds_phaseshift = 852514
    constant integer s__OrderIds_phaseshiftinstant = 852517
    constant integer s__OrderIds_phaseshiftoff = 852516
    constant integer s__OrderIds_phaseshifton = 852515
    constant integer s__OrderIds_phoenixfire = 852481
    constant integer s__OrderIds_phoenixmorph = 852482
    constant integer s__OrderIds_poisonarrows = 852255
    constant integer s__OrderIds_poisonarrowstarg = 852254
    constant integer s__OrderIds_polymorph = 852074
    constant integer s__OrderIds_possession = 852196
    constant integer s__OrderIds_preservation = 852568
    constant integer s__OrderIds_purge = 852111
    constant integer s__OrderIds_rainofchaos = 852237
    constant integer s__OrderIds_rainoffire = 852238
    constant integer s__OrderIds_raisedead = 852197
    constant integer s__OrderIds_raisedeadoff = 852199
    constant integer s__OrderIds_raisedeadon = 852198
    constant integer s__OrderIds_ravenform = 852155
    constant integer s__OrderIds_recharge = 852157
    constant integer s__OrderIds_rechargeoff = 852159
    constant integer s__OrderIds_rechargeon = 852158
    constant integer s__OrderIds_rejuvination = 852160
    constant integer s__OrderIds_renew = 852161
    constant integer s__OrderIds_renewoff = 852163
    constant integer s__OrderIds_renewon = 852162
    constant integer s__OrderIds_repair = 852024
    constant integer s__OrderIds_repairoff = 852026
    constant integer s__OrderIds_repairon = 852025
    constant integer s__OrderIds_replenish = 852542
    constant integer s__OrderIds_replenishlife = 852545
    constant integer s__OrderIds_replenishlifeoff = 852547
    constant integer s__OrderIds_replenishlifeon = 852546
    constant integer s__OrderIds_replenishmana = 852548
    constant integer s__OrderIds_replenishmanaoff = 852550
    constant integer s__OrderIds_replenishmanaon = 852549
    constant integer s__OrderIds_replenishoff = 852544
    constant integer s__OrderIds_replenishon = 852543
    constant integer s__OrderIds_request_hero = 852239
    constant integer s__OrderIds_requestsacrifice = 852201
    constant integer s__OrderIds_restoration = 852202
    constant integer s__OrderIds_restorationoff = 852204
    constant integer s__OrderIds_restorationon = 852203
    constant integer s__OrderIds_resumebuild = 851999
    constant integer s__OrderIds_resumeharvesting = 852017
    constant integer s__OrderIds_resurrection = 852094
    constant integer s__OrderIds_returnresources = 852020
    constant integer s__OrderIds_revenge = 852241
    constant integer s__OrderIds_revive = 852039
    constant integer s__OrderIds_roar = 852164
    constant integer s__OrderIds_robogoblin = 852656
    constant integer s__OrderIds_root = 852165
    constant integer s__OrderIds_sacrifice = 852205
    constant integer s__OrderIds_sanctuary = 852569
    constant integer s__OrderIds_scout = 852181
    constant integer s__OrderIds_selfdestruct = 852040
    constant integer s__OrderIds_selfdestructoff = 852042
    constant integer s__OrderIds_selfdestructon = 852041
    constant integer s__OrderIds_sentinel = 852182
    constant integer s__OrderIds_setrally = 851980
    constant integer s__OrderIds_shadowsight = 852570
    constant integer s__OrderIds_shadowstrike = 852527
    constant integer s__OrderIds_shockwave = 852125
    constant integer s__OrderIds_silence = 852592
    constant integer s__OrderIds_sleep = 852227
    constant integer s__OrderIds_slow = 852075
    constant integer s__OrderIds_slowoff = 852077
    constant integer s__OrderIds_slowon = 852076
    constant integer s__OrderIds_soulburn = 852668
    constant integer s__OrderIds_soulpreservation = 852242
    constant integer s__OrderIds_spellshield = 852571
    constant integer s__OrderIds_spellshieldaoe = 852572
    constant integer s__OrderIds_spellsteal = 852483
    constant integer s__OrderIds_spellstealoff = 852485
    constant integer s__OrderIds_spellstealon = 852484
    constant integer s__OrderIds_spies = 852235
    constant integer s__OrderIds_spiritlink = 852499
    constant integer s__OrderIds_spiritofvengeance = 852528
    constant integer s__OrderIds_spirittroll = 852573
    constant integer s__OrderIds_spiritwolf = 852126
    constant integer s__OrderIds_stampede = 852593
    constant integer s__OrderIds_standdown = 852113
    constant integer s__OrderIds_starfall = 852183
    constant integer s__OrderIds_stasistrap = 852114
    constant integer s__OrderIds_steal = 852574
    constant integer s__OrderIds_stomp = 852127
    constant integer s__OrderIds_stoneform = 852206
    constant integer s__OrderIds_stop = 851972
    constant integer s__OrderIds_submerge = 852604
    constant integer s__OrderIds_summonfactory = 852658
    constant integer s__OrderIds_summongrizzly = 852594
    constant integer s__OrderIds_summonphoenix = 852489
    constant integer s__OrderIds_summonquillbeast = 852595
    constant integer s__OrderIds_summonwareagle = 852596
    constant integer s__OrderIds_tankdroppilot = 852079
    constant integer s__OrderIds_tankloadpilot = 852080
    constant integer s__OrderIds_tankpilot = 852081
    constant integer s__OrderIds_taunt = 852520
    constant integer s__OrderIds_thunderbolt = 852095
    constant integer s__OrderIds_thunderclap = 852096
    constant integer s__OrderIds_tornado = 852597
    constant integer s__OrderIds_townbelloff = 852083
    constant integer s__OrderIds_townbellon = 852082
    constant integer s__OrderIds_tranquility = 852184
    constant integer s__OrderIds_transmute = 852665
    constant integer s__OrderIds_unavatar = 852087
    constant integer s__OrderIds_unavengerform = 852532
    constant integer s__OrderIds_unbearform = 852139
    constant integer s__OrderIds_unburrow = 852534
    constant integer s__OrderIds_uncoldarrows = 852245
    constant integer s__OrderIds_uncorporealform = 852494
    constant integer s__OrderIds_undeadbuild = 851998
    constant integer s__OrderIds_undefend = 852056
    constant integer s__OrderIds_undivineshield = 852091
    constant integer s__OrderIds_unetherealform = 852497
    constant integer s__OrderIds_unflamingarrows = 852175
    constant integer s__OrderIds_unflamingattack = 852541
    constant integer s__OrderIds_unholyfrenzy = 852209
    constant integer s__OrderIds_unimmolation = 852178
    constant integer s__OrderIds_unload = 852047
    constant integer s__OrderIds_unloadall = 852048
    constant integer s__OrderIds_unloadallcorpses = 852054
    constant integer s__OrderIds_unloadallinstant = 852049
    constant integer s__OrderIds_unpoisonarrows = 852256
    constant integer s__OrderIds_unravenform = 852156
    constant integer s__OrderIds_unrobogoblin = 852657
    constant integer s__OrderIds_unroot = 852166
    constant integer s__OrderIds_unstableconcoction = 852500
    constant integer s__OrderIds_unstoneform = 852207
    constant integer s__OrderIds_unsubmerge = 852605
    constant integer s__OrderIds_unsummon = 852210
    constant integer s__OrderIds_unwindwalk = 852130
    constant integer s__OrderIds_vengeance = 852521
    constant integer s__OrderIds_vengeanceinstant = 852524
    constant integer s__OrderIds_vengeanceoff = 852523
    constant integer s__OrderIds_vengeanceon = 852522
    constant integer s__OrderIds_volcano = 852669
    constant integer s__OrderIds_voodoo = 852503
    constant integer s__OrderIds_ward = 852504
    constant integer s__OrderIds_waterelemental = 852097
    constant integer s__OrderIds_wateryminion = 852598
    constant integer s__OrderIds_web = 852211
    constant integer s__OrderIds_weboff = 852213
    constant integer s__OrderIds_webon = 852212
    constant integer s__OrderIds_whirlwind = 852128
    constant integer s__OrderIds_windwalk = 852129
    constant integer s__OrderIds_wispharvest = 852214
    constant integer si__Order = 36
    constant integer si__Panle = 37
    integer si__Panle_F = 0
    integer si__Panle_I = 0
    integer array si__Panle_V
    multiboard array s__Panle_b
    integer array s__Panle_handleId
    multiboarditem s__Panle_d = null
    constant integer si__Point = 38
    integer si__Point_F = 0
    integer si__Point_I = 0
    integer array si__Point_V
    location array s__Point_p
    location s__Point_point = null
    item s__Point_pItem = null
    rect s__Point_pFind = null
    item array s__Point_pHid
    integer s__Point_HidMax = 0
    real s__Point_X = 0.0
    real s__Point_Y = 0.0
    integer s__Point_thisSize = 0
    constant integer si__Table___dex = 39
    constant integer si__Table___handles = 40
    constant integer si__Table___agents = 41
    constant integer si__Table___reals = 42
    constant integer si__Table___booleans = 43
    constant integer si__Table___strings = 44
    constant integer si__Table___integers = 45
    constant integer si__Table___players = 46
    constant integer si__Table___widgets = 47
    constant integer si__Table___destructables = 48
    constant integer si__Table___items = 49
    constant integer si__Table___units = 50
    constant integer si__Table___abilitys = 51
    constant integer si__Table___timers = 52
    constant integer si__Table___triggers = 53
    constant integer si__Table___triggerconditions = 54
    constant integer si__Table___triggeractions = 55
    constant integer si__Table___events = 56
    constant integer si__Table___forces = 57
    constant integer si__Table___groups = 58
    constant integer si__Table___locations = 59
    constant integer si__Table___rects = 60
    constant integer si__Table___boolexprs = 61
    constant integer si__Table___sounds = 62
    constant integer si__Table___effects = 63
    constant integer si__Table___unitpools = 64
    constant integer si__Table___itempools = 65
    constant integer si__Table___quests = 66
    constant integer si__Table___questitems = 67
    constant integer si__Table___defeatconditions = 68
    constant integer si__Table___timerdialogs = 69
    constant integer si__Table___leaderboards = 70
    constant integer si__Table___multiboards = 71
    constant integer si__Table___multiboarditems = 72
    constant integer si__Table___trackables = 73
    constant integer si__Table___dialogs = 74
    constant integer si__Table___buttons = 75
    constant integer si__Table___texttags = 76
    constant integer si__Table___lightnings = 77
    constant integer si__Table___images = 78
    constant integer si__Table___ubersplats = 79
    constant integer si__Table___regions = 80
    constant integer si__Table___fogstates = 81
    constant integer si__Table___fogmodifiers = 82
    constant integer si__Table___hashtables = 83
    constant integer si__Table = 84
    constant integer si__TableArray = 85
    integer s__TableArray_tempTable
    integer s__TableArray_tempEnd
    constant integer si__HashTable = 86
    constant integer si__TimeStamp = 87
    integer si__TimeStamp_F = 0
    integer si__TimeStamp_I = 0
    integer array si__TimeStamp_V
    integer array s__TimeStamp_MonthInt
    string array s__TimeStamp_WeekStr
    integer s__TimeStamp_Stamp
    boolean s__TimeStamp_Bool
    integer s__TimeStamp_year
    integer s__TimeStamp_mon
    integer s__TimeStamp_day
    integer s__TimeStamp_hour
    integer s__TimeStamp_min
    integer s__TimeStamp_sec
    integer s__TimeStamp_week
    constant integer si__Timer = 88
    integer si__Timer_F = 0
    integer si__Timer_I = 0
    integer array si__Timer_V
    trigger array s__Timer_trig
    real array s__Timer_elapsed
    real array s__Timer_cycle
    real array s__Timer_suspendTime
    boolean array s__Timer_perio
    boolean array s__Timer_pause
    integer array s__Timer_dataInt
    timer s__Timer_tm = CreateTimer()
    integer s__Timer_gameTimer = 0
    integer array s__Timer_Structs
    integer s__Timer_size = 0
    integer s__Timer_name = 0
    constant integer si__Gamer = 89
    integer si__Gamer_F = 0
    integer si__Gamer_I = 0
    integer array si__Gamer_V
    integer array s__Gamer_user
    integer s__Gamer_NEUTRAL_AGGRESSIVE
    integer s__Gamer_NEUTRAL_VICTIM
    integer s__Gamer_NEUTRAL_EXTRA
    integer s__Gamer_NEUTRAL_PASSIVE
    integer array s__Gamer_ht
    integer array s__Gamer_hero
    integer array s__Gamer_pets
    integer array s__Gamer_pid
    player array s__Gamer_p
    integer array s__Gamer_team
    integer array s__Gamer_gamerEx
    constant integer si__Item = 90
    integer si__Item_F = 0
    integer si__Item_I = 0
    integer array si__Item_V
    item array s__Item_it
    integer array s__Item_handleId
    integer s__Item_thisSize = 0
    constant integer si__StringPara = 91
    integer si__StringPara_F = 0
    integer si__StringPara_I = 0
    integer array si__StringPara_V
    string array s__StringPara_str
    integer array s__StringPara_un
    real array s__StringPara_x
    real array s__StringPara_y
    real array s__StringPara_z
    integer array s__StringPara_id
    real array s__StringPara_size
    integer array s__StringPara_r
    integer array s__StringPara_g
    integer array s__StringPara_b
    real array s__StringPara_speedX
    real array s__StringPara_speedY
    constant integer si__String = 92
    integer si__String_F = 0
    integer si__String_I = 0
    integer array si__String_V
    texttag array s__String_s
    boolean array s__String_timedBool
    boolean array s__String_permanent
    constant integer si__Turn = 93
    integer si__Turn_F = 0
    integer si__Turn_I = 0
    integer array si__Turn_V
    constant integer si__Unit = 94
    integer si__Unit_F = 0
    integer si__Unit_I = 0
    integer array si__Unit_V
    unit array s__Unit_u
    integer array s__Unit_handleId
    integer array s__Unit_GamerId
    boolean array s__Unit_heroBool
    boolean array s__Unit_NullBool
    integer s__Unit_thisSize = 0
    constant integer si__ButtonPara = 95
    integer si__ButtonPara_F = 0
    integer si__ButtonPara_I = 0
    integer array si__ButtonPara_V
    integer array s__ButtonPara_pt
    string array s__ButtonPara_name
    string array s__ButtonPara_temp
    string array s__ButtonPara_text
    string array s__ButtonPara_blp
    string array s__ButtonPara_dis
    string array s__ButtonPara_hig
    integer array s__ButtonPara_mode
    constant integer si__Button = 96
    integer si__Button_F = 0
    integer si__Button_I = 0
    integer array si__Button_V
    integer array s__Button_text
    integer array s__Button_callBack
    integer array s__Button_para
    integer array s__Button_buId
    real array s__Button_textSize
    integer array s__Button_textLen
    boolean array s__Button_textFlag
    integer s__Button_table = 0
    integer array s__Button_id
    constant integer si__Damage = 97
    integer si__Damage_F = 0
    integer si__Damage_I = 0
    integer array si__Damage_V
    real array s__Damage_dataValue
    integer array s__Damage_du
    integer array s__Damage_tu
    integer array s__Damage_dp
    integer array s__Damage_tp
    integer array s__Damage_duId
    integer array s__Damage_tuId
    boolean array s__Damage_eventBool
    integer array s__Damage_ht
    integer s__Damage_table = 0
    constant integer si__MotionPara = 98
    integer si__MotionPara_F = 0
    integer si__MotionPara_I = 0
    integer array si__MotionPara_V
    integer array s__MotionPara_mover
    real array s__MotionPara_x
    real array s__MotionPara_y
    real array s__MotionPara_angle
    real array s__MotionPara_dist
    real array s__MotionPara_height
    real array s__MotionPara_dur
    real array s__MotionPara_time
    real array s__MotionPara_range
    boolean array s__MotionPara_flag
    boolean array s__MotionPara_vest
    boolean array s__MotionPara_eventMover
    boolean array s__MotionPara_eventColli
    boolean array s__MotionPara_eventEnd
    constant integer si__Motion = 99
    integer si__Motion_F = 0
    integer si__Motion_I = 0
    integer array si__Motion_V
    integer s__Motion_ht = 0
    integer array s__Motion_mover
    integer array s__Motion_collisionUnit
    real array s__Motion_x
    real array s__Motion_y
    real array s__Motion_dx
    real array s__Motion_dy
    real array s__Motion_z
    integer array s__Motion_count
    integer array s__Motion_number
    real array s__Motion_dist
    real array s__Motion_dheig
    real array s__Motion_height
    real array s__Motion_angle
    boolean array s__Motion_flag
    real array s__Motion_range
    integer array s__Motion_time
    string array s__Motion_name
    integer array s__Motion_para
    integer array s__Motion_screen
    constant integer si__HurtEffect__HurtEffect = 100
    integer si__HurtEffect__HurtEffect_F = 0
    integer si__HurtEffect__HurtEffect_I = 0
    integer array si__HurtEffect__HurtEffect_V
    integer array s__HurtEffect__HurtEffect_damage
    integer array s__HurtEffect__HurtEffect_du
    integer array s__HurtEffect__HurtEffect_tu
    string array s__HurtEffect__HurtEffect_EffectStr
    constant integer si__HurtEffect__FightDeath = 101
    integer si__HurtEffect__FightDeath_F = 0
    integer si__HurtEffect__FightDeath_I = 0
    integer array si__HurtEffect__FightDeath_V
    constant integer si__RefreshAttribute__RefreshAttribute = 102
    integer si__RefreshAttribute__RefreshAttribute_F = 0
    integer si__RefreshAttribute__RefreshAttribute_I = 0
    integer array si__RefreshAttribute__RefreshAttribute_V
    integer array si__Event___InitEvent_type
    trigger array st__Event___InitEvent_onDestroy
    integer array si__SpecialOrders_type
    trigger array st__SpecialOrders_onDestroy
    trigger st__Backdrop_setText
    trigger st__Border_setStyle
    trigger st__Effect_Handle
    trigger st__Effect_setSize
    trigger st__Event_onDiy
    trigger st__Event_executeDiy
    trigger st__Event_executeDiyInt
    trigger st__Event_onSync
    trigger st__Frame_createTag
    trigger st__Frame_destroy
    trigger st__Frame_Handle
    trigger st__Frame_name
    trigger st__Frame_getGameUI
    trigger st__Frame_setTextUre
    trigger st__Group_Handle
    trigger st__math_randomReal
    trigger st__math_sin
    trigger st__math_cos
    trigger st__math_pow
    trigger st__math_squareRoot
    trigger st__math_sinBJ
    trigger st__math_cosBJ
    trigger st__Point_Handle
    trigger st__Table_create
    trigger st__Timer_destroy
    trigger st__Timer_create
    trigger st__Timer_thisTimer
    trigger st__Timer_thisData
    trigger st__Timer_setData
    trigger st__Timer_delete
    trigger st__Gamer_Handle
    trigger st__Gamer_id
    trigger st__Gamer_IsPlayer
    trigger st__Gamer_echo
    trigger st__Item_byHandle
    trigger st__Item_Null
    trigger st__Item_delete
    trigger st__Item_Handle
    trigger st__Item_life
    trigger st__Item_setLife
    trigger st__Item_flush
    trigger st__Item_enumInRect
    trigger st__Item_enumItem
    trigger st__String_setPermanent
    trigger st__String_setLife
    trigger st__Turn_item
    trigger st__Unit_byHandle
    trigger st__Unit_Null
    trigger st__Unit_Handle
    trigger st__Unit_HandleId
    trigger st__Unit_x
    trigger st__Unit_y
    trigger st__Unit_addInt
    trigger st__Unit_addStateString
    trigger st__Unit_subStateString
    trigger st__Unit_flush
    trigger st__Unit_manipulatingUnit
    trigger st__Button_setText
    trigger st__Button_textShow
    trigger array st___prototype6
    integer f__result_integer
    string f__arg_string1
    string f__arg_string2
    string f__arg_string3
    real f__arg_real1
    real f__arg_real2
    code f__arg_code1
    integer f__arg_integer1
    integer f__arg_integer2
    boolean f__arg_boolean1
    item f__arg_item1
    rect f__arg_rect1
    unit f__arg_unit1
    integer f__arg_this
    effect f__result_effect
    string f__result_string
    group f__result_group
    real f__result_real
    location f__result_location
    player f__result_player
    boolean f__result_boolean
    item f__result_item
    unit f__result_unit

endglobals
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
native DzTriggerRegisterSyncData takes trigger trig, string prefix, boolean server returns nothing
native DzSyncData takes string prefix, string data returns nothing
native DzGetTriggerSyncData takes nothing returns string
native DzGetTriggerSyncPlayer takes nothing returns player
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
native UnitAlive takes unit u returns boolean
native EXSetUnitFacing takes unit u, real angle returns nothing
native EXPauseUnit takes unit u, boolean flag returns nothing
native EXSetUnitCollisionType takes boolean enable, unit u, integer t returns nothing
native EXSetUnitMoveType takes unit u, integer t returns nothing
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
native EXGetItemDataString takes integer itemcode, integer data_type returns string
native EXSetItemDataString takes integer itemcode, integer data_type, string value returns boolean
native EXGetEventDamageData takes integer edd_type returns integer
native EXSetEventDamage takes real amount returns boolean
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
native EXDisplayChat takes player p, integer chat_recipient, string message returns nothing
native EXExecuteScript takes string script returns string
native EXBlendButtonIcon takes string a, string b, string c returns boolean


//Generated allocator of Attribute__DefineItem
function s__Attribute__DefineItem__allocate takes nothing returns integer
 local integer this = si__Attribute__DefineItem_F
    if (this!=0) then
        set si__Attribute__DefineItem_F = si__Attribute__DefineItem_V[this]
    else
        set si__Attribute__DefineItem_I = si__Attribute__DefineItem_I + 1
        set this = si__Attribute__DefineItem_I
    endif
    if (this > 8190) then
        call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Unable to allocate id for an object of type: Attribute__DefineItem")
        return 0
    endif

    set si__Attribute__DefineItem_V[this]=- 1
 return this
endfunction

//Generated destructor of Attribute__DefineItem
function s__Attribute__DefineItem_deallocate takes integer this returns nothing
    if this==null then
        call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Attempt to destroy a null struct of type: Attribute__DefineItem")
        return
    elseif (si__Attribute__DefineItem_V[this]!=- 1) then
        call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Double free of type: Attribute__DefineItem")
        return
    endif
    set si__Attribute__DefineItem_V[this]= si__Attribute__DefineItem_F
    set si__Attribute__DefineItem_F = this
endfunction

//Generated allocator of RefreshAttribute__RefreshAttribute
function s__RefreshAttribute__RefreshAttribute__allocate takes nothing returns integer
 local integer this = si__RefreshAttribute__RefreshAttribute_F
    if (this!=0) then
        set si__RefreshAttribute__RefreshAttribute_F = si__RefreshAttribute__RefreshAttribute_V[this]
    else
        set si__RefreshAttribute__RefreshAttribute_I = si__RefreshAttribute__RefreshAttribute_I + 1
        set this = si__RefreshAttribute__RefreshAttribute_I
    endif
    if (this > 8190) then
        call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Unable to allocate id for an object of type: RefreshAttribute__RefreshAttribute")
        return 0
    endif

    set si__RefreshAttribute__RefreshAttribute_V[this]=- 1
 return this
endfunction

//Generated destructor of RefreshAttribute__RefreshAttribute
function s__RefreshAttribute__RefreshAttribute_deallocate takes integer this returns nothing
    if this==null then
        call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Attempt to destroy a null struct of type: RefreshAttribute__RefreshAttribute")
        return
    elseif (si__RefreshAttribute__RefreshAttribute_V[this]!=- 1) then
        call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Double free of type: RefreshAttribute__RefreshAttribute")
        return
    endif
    set si__RefreshAttribute__RefreshAttribute_V[this]= si__RefreshAttribute__RefreshAttribute_F
    set si__RefreshAttribute__RefreshAttribute_F = this
endfunction

//Generated allocator of HurtEffect__FightDeath
function s__HurtEffect__FightDeath__allocate takes nothing returns integer
 local integer this = si__HurtEffect__FightDeath_F
    if (this!=0) then
        set si__HurtEffect__FightDeath_F = si__HurtEffect__FightDeath_V[this]
    else
        set si__HurtEffect__FightDeath_I = si__HurtEffect__FightDeath_I + 1
        set this = si__HurtEffect__FightDeath_I
    endif
    if (this > 8190) then
        call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Unable to allocate id for an object of type: HurtEffect__FightDeath")
        return 0
    endif

    set si__HurtEffect__FightDeath_V[this]=- 1
 return this
endfunction

//Generated destructor of HurtEffect__FightDeath
function s__HurtEffect__FightDeath_deallocate takes integer this returns nothing
    if this==null then
        call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Attempt to destroy a null struct of type: HurtEffect__FightDeath")
        return
    elseif (si__HurtEffect__FightDeath_V[this]!=- 1) then
        call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Double free of type: HurtEffect__FightDeath")
        return
    endif
    set si__HurtEffect__FightDeath_V[this]= si__HurtEffect__FightDeath_F
    set si__HurtEffect__FightDeath_F = this
endfunction

//Generated allocator of HurtEffect__HurtEffect
function s__HurtEffect__HurtEffect__allocate takes nothing returns integer
 local integer this = si__HurtEffect__HurtEffect_F
    if (this!=0) then
        set si__HurtEffect__HurtEffect_F = si__HurtEffect__HurtEffect_V[this]
    else
        set si__HurtEffect__HurtEffect_I = si__HurtEffect__HurtEffect_I + 1
        set this = si__HurtEffect__HurtEffect_I
    endif
    if (this > 8190) then
        call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Unable to allocate id for an object of type: HurtEffect__HurtEffect")
        return 0
    endif

    set si__HurtEffect__HurtEffect_V[this]=- 1
 return this
endfunction

//Generated destructor of HurtEffect__HurtEffect
function s__HurtEffect__HurtEffect_deallocate takes integer this returns nothing
    if this==null then
        call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Attempt to destroy a null struct of type: HurtEffect__HurtEffect")
        return
    elseif (si__HurtEffect__HurtEffect_V[this]!=- 1) then
        call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Double free of type: HurtEffect__HurtEffect")
        return
    endif
    set si__HurtEffect__HurtEffect_V[this]= si__HurtEffect__HurtEffect_F
    set si__HurtEffect__HurtEffect_F = this
endfunction

//Generated allocator of Motion
function s__Motion__allocate takes nothing returns integer
 local integer this = si__Motion_F
    if (this!=0) then
        set si__Motion_F = si__Motion_V[this]
    else
        set si__Motion_I = si__Motion_I + 1
        set this = si__Motion_I
    endif
    if (this > 8190) then
        call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Unable to allocate id for an object of type: Motion")
        return 0
    endif

    set si__Motion_V[this]=- 1
 return this
endfunction

//Generated destructor of Motion
function s__Motion_deallocate takes integer this returns nothing
    if this==null then
        call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Attempt to destroy a null struct of type: Motion")
        return
    elseif (si__Motion_V[this]!=- 1) then
        call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Double free of type: Motion")
        return
    endif
    set si__Motion_V[this]= si__Motion_F
    set si__Motion_F = this
endfunction

//Generated allocator of MotionPara
function s__MotionPara__allocate takes nothing returns integer
 local integer this = si__MotionPara_F
    if (this!=0) then
        set si__MotionPara_F = si__MotionPara_V[this]
    else
        set si__MotionPara_I = si__MotionPara_I + 1
        set this = si__MotionPara_I
    endif
    if (this > 8190) then
        call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Unable to allocate id for an object of type: MotionPara")
        return 0
    endif

    set s__MotionPara_mover[this]= 0 // 运动单位 默认为 无单位 
    set s__MotionPara_x[this]= 0.0
    set s__MotionPara_y[this]= 0.0
    set s__MotionPara_angle[this]= 270.0
    set s__MotionPara_dist[this]= 800.0
    set s__MotionPara_height[this]= 0.0
    set s__MotionPara_dur[this]= 0.8
    set s__MotionPara_time[this]= 0.03
    set s__MotionPara_range[this]= 325.0
    set s__MotionPara_flag[this]= true
    set s__MotionPara_vest[this]= false
    set s__MotionPara_eventMover[this]= false
    set s__MotionPara_eventColli[this]= true
    set s__MotionPara_eventEnd[this]= false
    set si__MotionPara_V[this]=- 1
 return this
endfunction

//Generated destructor of MotionPara
function s__MotionPara_deallocate takes integer this returns nothing
    if this==null then
        call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Attempt to destroy a null struct of type: MotionPara")
        return
    elseif (si__MotionPara_V[this]!=- 1) then
        call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Double free of type: MotionPara")
        return
    endif
    set si__MotionPara_V[this]= si__MotionPara_F
    set si__MotionPara_F = this
endfunction

//Generated allocator of Damage
function s__Damage__allocate takes nothing returns integer
 local integer this = si__Damage_F
    if (this!=0) then
        set si__Damage_F = si__Damage_V[this]
    else
        set si__Damage_I = si__Damage_I + 1
        set this = si__Damage_I
    endif
    if (this > 8190) then
        call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Unable to allocate id for an object of type: Damage")
        return 0
    endif

    set si__Damage_V[this]=- 1
 return this
endfunction

//Generated destructor of Damage
function s__Damage_deallocate takes integer this returns nothing
    if this==null then
        call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Attempt to destroy a null struct of type: Damage")
        return
    elseif (si__Damage_V[this]!=- 1) then
        call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Double free of type: Damage")
        return
    endif
    set si__Damage_V[this]= si__Damage_F
    set si__Damage_F = this
endfunction

//Generated method caller for Button.setText
function sc__Button_setText takes integer this,string char returns nothing
    set f__arg_this = this
    set f__arg_string1 = char
    call TriggerEvaluate(st__Button_setText)
endfunction

//Generated method caller for Button.textShow
function sc__Button_textShow takes integer this,boolean flag returns nothing
    set s__Button_textFlag[this]= flag
    call DzFrameShow(s__Button_text[this], flag)
endfunction

//Generated allocator of Button
function s__Button__allocate takes nothing returns integer
 local integer this = si__Button_F
    if (this!=0) then
        set si__Button_F = si__Button_V[this]
    else
        set si__Button_I = si__Button_I + 1
        set this = si__Button_I
    endif
    if (this > 8190) then
        call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Unable to allocate id for an object of type: Button")
        return 0
    endif

    set si__Button_V[this]=- 1
 return this
endfunction

//Generated destructor of Button
function s__Button_deallocate takes integer this returns nothing
    if this==null then
        call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Attempt to destroy a null struct of type: Button")
        return
    elseif (si__Button_V[this]!=- 1) then
        call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Double free of type: Button")
        return
    endif
    set si__Button_V[this]= si__Button_F
    set si__Button_F = this
endfunction

//Generated allocator of ButtonPara
function s__ButtonPara__allocate takes nothing returns integer
 local integer this = si__ButtonPara_F
    if (this!=0) then
        set si__ButtonPara_F = si__ButtonPara_V[this]
    else
        set si__ButtonPara_I = si__ButtonPara_I + 1
        set this = si__ButtonPara_I
    endif
    if (this > 8190) then
        call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Unable to allocate id for an object of type: ButtonPara")
        return 0
    endif

    set s__ButtonPara_name[this]= "but"
    set s__ButtonPara_temp[this]= ""
    set s__ButtonPara_text[this]= ""
    set s__ButtonPara_blp[this]= "ReplaceableTextures\\TeamColor\\TeamColor02.blp"
    set s__ButtonPara_dis[this]= "ReplaceableTextures\\TeamColor\\TeamColor08.blp"
    set s__ButtonPara_hig[this]= "ReplaceableTextures\\TeamColor\\TeamColor00.blp"
    set s__ButtonPara_mode[this]= 1
    set si__ButtonPara_V[this]=- 1
 return this
endfunction

//Generated destructor of ButtonPara
function s__ButtonPara_deallocate takes integer this returns nothing
    if this==null then
        call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Attempt to destroy a null struct of type: ButtonPara")
        return
    elseif (si__ButtonPara_V[this]!=- 1) then
        call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Double free of type: ButtonPara")
        return
    endif
    set si__ButtonPara_V[this]= si__ButtonPara_F
    set si__ButtonPara_F = this
endfunction

//Generated method caller for Unit.byHandle
function sc__Unit_byHandle takes unit u returns integer
    set f__arg_unit1 = u
    call TriggerEvaluate(st__Unit_byHandle)
 return f__result_integer
endfunction

//Generated method caller for Unit.Null
function sc__Unit_Null takes integer this returns nothing
    set f__arg_this = this
    call TriggerEvaluate(st__Unit_Null)
endfunction

//Generated method caller for Unit.Handle
function sc__Unit_Handle takes integer this returns unit
    return s__Unit_u[this]
endfunction

//Generated method caller for Unit.HandleId
function sc__Unit_HandleId takes integer this returns integer
    return s__Unit_handleId[this]
endfunction

//Generated method caller for Unit.x
function sc__Unit_x takes integer this returns real
    return GetUnitX(s__Unit_u[this])
endfunction

//Generated method caller for Unit.y
function sc__Unit_y takes integer this returns real
    return GetUnitY(s__Unit_u[this])
endfunction

//Generated method caller for Unit.addInt
function sc__Unit_addInt takes integer this,integer value returns nothing
    set f__arg_this = this
    set f__arg_integer1 = value
    call TriggerEvaluate(st__Unit_addInt)
endfunction

//Generated method caller for Unit.addStateString
function sc__Unit_addStateString takes integer this,string index,real value returns nothing
    set f__arg_this = this
    set f__arg_string1 = index
    set f__arg_real1 = value
    call TriggerEvaluate(st__Unit_addStateString)
endfunction

//Generated method caller for Unit.subStateString
function sc__Unit_subStateString takes integer this,string index,real value returns nothing
    set f__arg_this = this
    set f__arg_string1 = index
    set f__arg_real1 = value
    call TriggerEvaluate(st__Unit_subStateString)
endfunction

//Generated method caller for Unit.flush
function sc__Unit_flush takes integer this returns nothing
    call FlushChildHashtable(XZHT, s__Unit_handleId[this])
    call FlushChildHashtable(XWHT, s__Unit_handleId[this])
endfunction

//Generated method caller for Unit.manipulatingUnit
function sc__Unit_manipulatingUnit takes nothing returns integer
    call TriggerEvaluate(st__Unit_manipulatingUnit)
 return f__result_integer
endfunction

//Generated allocator of Unit
function s__Unit__allocate takes nothing returns integer
 local integer this = si__Unit_F
    if (this!=0) then
        set si__Unit_F = si__Unit_V[this]
    else
        set si__Unit_I = si__Unit_I + 1
        set this = si__Unit_I
    endif
    if (this > 8190) then
        call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Unable to allocate id for an object of type: Unit")
        return 0
    endif

    set si__Unit_V[this]=- 1
 return this
endfunction

//Generated destructor of Unit
function s__Unit_deallocate takes integer this returns nothing
    if this==null then
        call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Attempt to destroy a null struct of type: Unit")
        return
    elseif (si__Unit_V[this]!=- 1) then
        call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Double free of type: Unit")
        return
    endif
    set si__Unit_V[this]= si__Unit_F
    set si__Unit_F = this
endfunction

//Generated method caller for Turn.item
function sc__Turn_item takes integer id returns item
    call SaveFogStateHandle(XZHT, 0x08C2BCB3, 0, ConvertFogState(id))
    return LoadItemHandle(XZHT, 0x08C2BCB3, 0)
endfunction

//Generated allocator of Turn
function s__Turn__allocate takes nothing returns integer
 local integer this = si__Turn_F
    if (this!=0) then
        set si__Turn_F = si__Turn_V[this]
    else
        set si__Turn_I = si__Turn_I + 1
        set this = si__Turn_I
    endif
    if (this > 8190) then
        call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Unable to allocate id for an object of type: Turn")
        return 0
    endif

    set si__Turn_V[this]=- 1
 return this
endfunction

//Generated destructor of Turn
function s__Turn_deallocate takes integer this returns nothing
    if this==null then
        call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Attempt to destroy a null struct of type: Turn")
        return
    elseif (si__Turn_V[this]!=- 1) then
        call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Double free of type: Turn")
        return
    endif
    set si__Turn_V[this]= si__Turn_F
    set si__Turn_F = this
endfunction

//Generated method caller for String.setPermanent
function sc__String_setPermanent takes integer this,boolean flag returns nothing
    set s__String_permanent[this]= flag
    call SetTextTagPermanent(s__String_s[this], flag)
endfunction

//Generated method caller for String.setLife
function sc__String_setLife takes integer this,real life returns nothing
    call SetTextTagLifespan(s__String_s[this], life)
endfunction

//Generated allocator of String
function s__String__allocate takes nothing returns integer
 local integer this = si__String_F
    if (this!=0) then
        set si__String_F = si__String_V[this]
    else
        set si__String_I = si__String_I + 1
        set this = si__String_I
    endif
    if (this > 8190) then
        call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Unable to allocate id for an object of type: String")
        return 0
    endif

    set s__String_timedBool[this]= false
    set s__String_permanent[this]= false
    set si__String_V[this]=- 1
 return this
endfunction

//Generated destructor of String
function s__String_deallocate takes integer this returns nothing
    if this==null then
        call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Attempt to destroy a null struct of type: String")
        return
    elseif (si__String_V[this]!=- 1) then
        call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Double free of type: String")
        return
    endif
    set si__String_V[this]= si__String_F
    set si__String_F = this
endfunction

//Generated allocator of StringPara
function s__StringPara__allocate takes nothing returns integer
 local integer this = si__StringPara_F
    if (this!=0) then
        set si__StringPara_F = si__StringPara_V[this]
    else
        set si__StringPara_I = si__StringPara_I + 1
        set this = si__StringPara_I
    endif
    if (this > 8190) then
        call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Unable to allocate id for an object of type: StringPara")
        return 0
    endif

    set s__StringPara_str[this]= "" // 显示内容 
    set s__StringPara_un[this]= 0
    set s__StringPara_x[this]= 0.0
    set s__StringPara_y[this]= 0.0
    set s__StringPara_z[this]= 0.0
    set s__StringPara_id[this]=- 1
    set s__StringPara_size[this]= 0.02
    set s__StringPara_r[this]= 255
    set s__StringPara_g[this]= 165
    set s__StringPara_b[this]= 0
    set s__StringPara_speedX[this]= 0.0
    set s__StringPara_speedY[this]= 0.05
    set si__StringPara_V[this]=- 1
 return this
endfunction

//Generated destructor of StringPara
function s__StringPara_deallocate takes integer this returns nothing
    if this==null then
        call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Attempt to destroy a null struct of type: StringPara")
        return
    elseif (si__StringPara_V[this]!=- 1) then
        call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Double free of type: StringPara")
        return
    endif
    set si__StringPara_V[this]= si__StringPara_F
    set si__StringPara_F = this
endfunction

//Generated method caller for Item.byHandle
function sc__Item_byHandle takes item it returns integer
    set f__arg_item1 = it
    call TriggerEvaluate(st__Item_byHandle)
 return f__result_integer
endfunction

//Generated method caller for Item.Null
function sc__Item_Null takes integer this returns nothing
    set f__arg_this = this
    call TriggerEvaluate(st__Item_Null)
endfunction

//Generated method caller for Item.delete
function sc__Item_delete takes integer this returns nothing
    set f__arg_this = this
    call TriggerEvaluate(st__Item_delete)
endfunction

//Generated method caller for Item.Handle
function sc__Item_Handle takes integer this returns item
    return s__Item_it[this]
endfunction

//Generated method caller for Item.life
function sc__Item_life takes integer this returns real
    return GetWidgetLife(s__Item_it[this])
endfunction

//Generated method caller for Item.setLife
function sc__Item_setLife takes integer this,real value returns nothing
    call SetWidgetLife(s__Item_it[this], value)
endfunction

//Generated method caller for Item.flush
function sc__Item_flush takes integer this returns nothing
    call FlushChildHashtable(XZHT, s__Item_handleId[this])
endfunction

//Generated method caller for Item.enumInRect
function sc__Item_enumInRect takes rect rct,code action returns nothing
    call EnumItemsInRect(rct, null, action)
endfunction

//Generated method caller for Item.enumItem
function sc__Item_enumItem takes nothing returns integer
    call TriggerEvaluate(st__Item_enumItem)
 return f__result_integer
endfunction

//Generated allocator of Item
function s__Item__allocate takes nothing returns integer
 local integer this = si__Item_F
    if (this!=0) then
        set si__Item_F = si__Item_V[this]
    else
        set si__Item_I = si__Item_I + 1
        set this = si__Item_I
    endif
    if (this > 8190) then
        call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Unable to allocate id for an object of type: Item")
        return 0
    endif

    set si__Item_V[this]=- 1
 return this
endfunction

//Generated destructor of Item
function s__Item_deallocate takes integer this returns nothing
    if this==null then
        call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Attempt to destroy a null struct of type: Item")
        return
    elseif (si__Item_V[this]!=- 1) then
        call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Double free of type: Item")
        return
    endif
    set si__Item_V[this]= si__Item_F
    set si__Item_F = this
endfunction

//Generated method caller for Gamer.Handle
function sc__Gamer_Handle takes integer this returns player
    return s__Gamer_p[this]
endfunction

//Generated method caller for Gamer.id
function sc__Gamer_id takes integer this returns integer
    return s__Gamer_pid[this]
endfunction

//Generated method caller for Gamer.IsPlayer
function sc__Gamer_IsPlayer takes integer this returns boolean
    set f__arg_this = this
    call TriggerEvaluate(st__Gamer_IsPlayer)
 return f__result_boolean
endfunction

//Generated method caller for Gamer.echo
function sc__Gamer_echo takes integer index,real dur,string msg returns nothing
    set f__arg_integer1 = index
    set f__arg_real1 = dur
    set f__arg_string1 = msg
    call TriggerEvaluate(st__Gamer_echo)
endfunction

//Generated allocator of Gamer
function s__Gamer__allocate takes nothing returns integer
 local integer this = si__Gamer_F
    if (this!=0) then
        set si__Gamer_F = si__Gamer_V[this]
    else
        set si__Gamer_I = si__Gamer_I + 1
        set this = si__Gamer_I
    endif
    if (this > 8190) then
        call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Unable to allocate id for an object of type: Gamer")
        return 0
    endif

    set si__Gamer_V[this]=- 1
 return this
endfunction

//Generated destructor of Gamer
function s__Gamer_deallocate takes integer this returns nothing
    if this==null then
        call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Attempt to destroy a null struct of type: Gamer")
        return
    elseif (si__Gamer_V[this]!=- 1) then
        call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Double free of type: Gamer")
        return
    endif
    set si__Gamer_V[this]= si__Gamer_F
    set si__Gamer_F = this
endfunction

//Generated method caller for Timer.destroy
function sc__Timer_destroy takes integer this returns nothing
    set f__arg_this = this
    call TriggerEvaluate(st__Timer_destroy)
endfunction

//Generated method caller for Timer.create
function sc__Timer_create takes real time,boolean flag,code action returns integer
    set f__arg_real1 = time
    set f__arg_boolean1 = flag
    set f__arg_code1 = action
    call TriggerEvaluate(st__Timer_create)
 return f__result_integer
endfunction

//Generated method caller for Timer.thisTimer
function sc__Timer_thisTimer takes nothing returns integer
    return s__Timer_name
endfunction

//Generated method caller for Timer.thisData
function sc__Timer_thisData takes nothing returns integer
    call TriggerEvaluate(st__Timer_thisData)
 return f__result_integer
endfunction

//Generated method caller for Timer.setData
function sc__Timer_setData takes integer this,integer dataInt returns nothing
    set s__Timer_dataInt[this]= dataInt
endfunction

//Generated method caller for Timer.delete
function sc__Timer_delete takes integer this returns nothing
    set s__Timer_perio[this]= false
    set s__Timer_pause[this]= false
endfunction

//Generated allocator of Timer
function s__Timer__allocate takes nothing returns integer
 local integer this = si__Timer_F
    if (this!=0) then
        set si__Timer_F = si__Timer_V[this]
    else
        set si__Timer_I = si__Timer_I + 1
        set this = si__Timer_I
    endif
    if (this > 8190) then
        call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Unable to allocate id for an object of type: Timer")
        return 0
    endif

    set si__Timer_V[this]=- 1
 return this
endfunction

//Generated destructor of Timer
function s__Timer_deallocate takes integer this returns nothing
    if this==null then
        call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Attempt to destroy a null struct of type: Timer")
        return
    elseif (si__Timer_V[this]!=- 1) then
        call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Double free of type: Timer")
        return
    endif
    set si__Timer_V[this]= si__Timer_F
    set si__Timer_F = this
endfunction

//Generated allocator of TimeStamp
function s__TimeStamp__allocate takes nothing returns integer
 local integer this = si__TimeStamp_F
    if (this!=0) then
        set si__TimeStamp_F = si__TimeStamp_V[this]
    else
        set si__TimeStamp_I = si__TimeStamp_I + 1
        set this = si__TimeStamp_I
    endif
    if (this > 8190) then
        call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Unable to allocate id for an object of type: TimeStamp")
        return 0
    endif

    set si__TimeStamp_V[this]=- 1
 return this
endfunction

//Generated destructor of TimeStamp
function s__TimeStamp_deallocate takes integer this returns nothing
    if this==null then
        call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Attempt to destroy a null struct of type: TimeStamp")
        return
    elseif (si__TimeStamp_V[this]!=- 1) then
        call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Double free of type: TimeStamp")
        return
    endif
    set si__TimeStamp_V[this]= si__TimeStamp_F
    set si__TimeStamp_F = this
endfunction

//Generated method caller for Table.create
function sc__Table_create takes nothing returns integer
    call TriggerEvaluate(st__Table_create)
 return f__result_integer
endfunction

//Generated method caller for Point.Handle
function sc__Point_Handle takes integer this returns location
    return s__Point_p[this]
endfunction

//Generated allocator of Point
function s__Point__allocate takes nothing returns integer
 local integer this = si__Point_F
    if (this!=0) then
        set si__Point_F = si__Point_V[this]
    else
        set si__Point_I = si__Point_I + 1
        set this = si__Point_I
    endif
    if (this > 8190) then
        call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Unable to allocate id for an object of type: Point")
        return 0
    endif

    set si__Point_V[this]=- 1
 return this
endfunction

//Generated destructor of Point
function s__Point_deallocate takes integer this returns nothing
    if this==null then
        call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Attempt to destroy a null struct of type: Point")
        return
    elseif (si__Point_V[this]!=- 1) then
        call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Double free of type: Point")
        return
    endif
    set si__Point_V[this]= si__Point_F
    set si__Point_F = this
endfunction

//Generated allocator of Panle
function s__Panle__allocate takes nothing returns integer
 local integer this = si__Panle_F
    if (this!=0) then
        set si__Panle_F = si__Panle_V[this]
    else
        set si__Panle_I = si__Panle_I + 1
        set this = si__Panle_I
    endif
    if (this > 8190) then
        call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Unable to allocate id for an object of type: Panle")
        return 0
    endif

    set si__Panle_V[this]=- 1
 return this
endfunction

//Generated destructor of Panle
function s__Panle_deallocate takes integer this returns nothing
    if this==null then
        call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Attempt to destroy a null struct of type: Panle")
        return
    elseif (si__Panle_V[this]!=- 1) then
        call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Double free of type: Panle")
        return
    endif
    set si__Panle_V[this]= si__Panle_F
    set si__Panle_F = this
endfunction

//Generated allocator of Attribute__ItemAttribute
function s__Attribute__ItemAttribute__allocate takes nothing returns integer
 local integer this = si__Attribute__ItemAttribute_F
    if (this!=0) then
        set si__Attribute__ItemAttribute_F = si__Attribute__ItemAttribute_V[this]
    else
        set si__Attribute__ItemAttribute_I = si__Attribute__ItemAttribute_I + 1
        set this = si__Attribute__ItemAttribute_I
    endif
    if (this > 8190) then
        call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Unable to allocate id for an object of type: Attribute__ItemAttribute")
        return 0
    endif

    set si__Attribute__ItemAttribute_V[this]=- 1
 return this
endfunction

//Generated destructor of Attribute__ItemAttribute
function s__Attribute__ItemAttribute_deallocate takes integer this returns nothing
    if this==null then
        call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Attempt to destroy a null struct of type: Attribute__ItemAttribute")
        return
    elseif (si__Attribute__ItemAttribute_V[this]!=- 1) then
        call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Double free of type: Attribute__ItemAttribute")
        return
    endif
    set si__Attribute__ItemAttribute_V[this]= si__Attribute__ItemAttribute_F
    set si__Attribute__ItemAttribute_F = this
endfunction

//Generated allocator of BackdropPara
function s__BackdropPara__allocate takes nothing returns integer
 local integer this = si__BackdropPara_F
    if (this!=0) then
        set si__BackdropPara_F = si__BackdropPara_V[this]
    else
        set si__BackdropPara_I = si__BackdropPara_I + 1
        set this = si__BackdropPara_I
    endif
    if (this > 8190) then
        call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Unable to allocate id for an object of type: BackdropPara")
        return 0
    endif

    set s__BackdropPara_name[this]= "Backdrop"
    set s__BackdropPara_mode[this]= 0
    set s__BackdropPara_text[this]= ""
    set s__BackdropPara_temp[this]= ""
    set s__BackdropPara_blp[this]= "ReplaceableTextures\\TeamColor\\TeamColor02.blp"
    set si__BackdropPara_V[this]=- 1
 return this
endfunction

//Generated destructor of BackdropPara
function s__BackdropPara_deallocate takes integer this returns nothing
    if this==null then
        call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Attempt to destroy a null struct of type: BackdropPara")
        return
    elseif (si__BackdropPara_V[this]!=- 1) then
        call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Double free of type: BackdropPara")
        return
    endif
    set si__BackdropPara_V[this]= si__BackdropPara_F
    set si__BackdropPara_F = this
endfunction

//Generated allocator of SpecialOrders
function s__SpecialOrders__allocate takes nothing returns integer
 local integer this = si__SpecialOrders_F
    if (this!=0) then
        set si__SpecialOrders_F = si__SpecialOrders_V[this]
    else
        set si__SpecialOrders_I = si__SpecialOrders_I + 1
        set this = si__SpecialOrders_I
    endif
    if (this > 8190) then
        call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Unable to allocate id for an object of type: SpecialOrders")
        return 0
    endif

    set si__SpecialOrders_type[this]= 34
    set si__SpecialOrders_V[this]=- 1
 return this
endfunction

//Generated destructor of SpecialOrders
function sc__SpecialOrders_deallocate takes integer this returns nothing
    if this==null then
        call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Attempt to destroy a null struct of type: SpecialOrders")
        return
    elseif (si__SpecialOrders_V[this]!=- 1) then
        call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Double free of type: SpecialOrders")
        return
    endif
    set f__arg_this = this
    call TriggerEvaluate(st__SpecialOrders_onDestroy[si__SpecialOrders_type[this]])
    set si__SpecialOrders_V[this]= si__SpecialOrders_F
    set si__SpecialOrders_F = this
endfunction

//Generated allocator of Object
function s__Object__allocate takes nothing returns integer
 local integer this = si__Object_F
    if (this!=0) then
        set si__Object_F = si__Object_V[this]
    else
        set si__Object_I = si__Object_I + 1
        set this = si__Object_I
    endif
    if (this > 8190) then
        call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Unable to allocate id for an object of type: Object")
        return 0
    endif

    set si__Object_V[this]=- 1
 return this
endfunction

//Generated destructor of Object
function s__Object_deallocate takes integer this returns nothing
    if this==null then
        call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Attempt to destroy a null struct of type: Object")
        return
    elseif (si__Object_V[this]!=- 1) then
        call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Double free of type: Object")
        return
    endif
    set si__Object_V[this]= si__Object_F
    set si__Object_F = this
endfunction

//Generated allocator of Object___DoodadType
function s__Object___DoodadType__allocate takes nothing returns integer
 local integer this = si__Object___DoodadType_F
    if (this!=0) then
        set si__Object___DoodadType_F = si__Object___DoodadType_V[this]
    else
        set si__Object___DoodadType_I = si__Object___DoodadType_I + 1
        set this = si__Object___DoodadType_I
    endif
    if (this > 8190) then
        call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Unable to allocate id for an object of type: Object___DoodadType")
        return 0
    endif

    set si__Object___DoodadType_V[this]=- 1
 return this
endfunction

//Generated destructor of Object___DoodadType
function s__Object___DoodadType_deallocate takes integer this returns nothing
    if this==null then
        call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Attempt to destroy a null struct of type: Object___DoodadType")
        return
    elseif (si__Object___DoodadType_V[this]!=- 1) then
        call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Double free of type: Object___DoodadType")
        return
    endif
    set si__Object___DoodadType_V[this]= si__Object___DoodadType_F
    set si__Object___DoodadType_F = this
endfunction

//Generated allocator of Object___DestructableType
function s__Object___DestructableType__allocate takes nothing returns integer
 local integer this = si__Object___DestructableType_F
    if (this!=0) then
        set si__Object___DestructableType_F = si__Object___DestructableType_V[this]
    else
        set si__Object___DestructableType_I = si__Object___DestructableType_I + 1
        set this = si__Object___DestructableType_I
    endif
    if (this > 8190) then
        call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Unable to allocate id for an object of type: Object___DestructableType")
        return 0
    endif

    set si__Object___DestructableType_V[this]=- 1
 return this
endfunction

//Generated destructor of Object___DestructableType
function s__Object___DestructableType_deallocate takes integer this returns nothing
    if this==null then
        call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Attempt to destroy a null struct of type: Object___DestructableType")
        return
    elseif (si__Object___DestructableType_V[this]!=- 1) then
        call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Double free of type: Object___DestructableType")
        return
    endif
    set si__Object___DestructableType_V[this]= si__Object___DestructableType_F
    set si__Object___DestructableType_F = this
endfunction

//Generated allocator of Object___TechType
function s__Object___TechType__allocate takes nothing returns integer
 local integer this = si__Object___TechType_F
    if (this!=0) then
        set si__Object___TechType_F = si__Object___TechType_V[this]
    else
        set si__Object___TechType_I = si__Object___TechType_I + 1
        set this = si__Object___TechType_I
    endif
    if (this > 8190) then
        call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Unable to allocate id for an object of type: Object___TechType")
        return 0
    endif

    set si__Object___TechType_V[this]=- 1
 return this
endfunction

//Generated destructor of Object___TechType
function s__Object___TechType_deallocate takes integer this returns nothing
    if this==null then
        call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Attempt to destroy a null struct of type: Object___TechType")
        return
    elseif (si__Object___TechType_V[this]!=- 1) then
        call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Double free of type: Object___TechType")
        return
    endif
    set si__Object___TechType_V[this]= si__Object___TechType_F
    set si__Object___TechType_F = this
endfunction

//Generated allocator of Object___BuffType
function s__Object___BuffType__allocate takes nothing returns integer
 local integer this = si__Object___BuffType_F
    if (this!=0) then
        set si__Object___BuffType_F = si__Object___BuffType_V[this]
    else
        set si__Object___BuffType_I = si__Object___BuffType_I + 1
        set this = si__Object___BuffType_I
    endif
    if (this > 8190) then
        call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Unable to allocate id for an object of type: Object___BuffType")
        return 0
    endif

    set si__Object___BuffType_V[this]=- 1
 return this
endfunction

//Generated destructor of Object___BuffType
function s__Object___BuffType_deallocate takes integer this returns nothing
    if this==null then
        call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Attempt to destroy a null struct of type: Object___BuffType")
        return
    elseif (si__Object___BuffType_V[this]!=- 1) then
        call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Double free of type: Object___BuffType")
        return
    endif
    set si__Object___BuffType_V[this]= si__Object___BuffType_F
    set si__Object___BuffType_F = this
endfunction

//Generated allocator of Object___AbilityType
function s__Object___AbilityType__allocate takes nothing returns integer
 local integer this = si__Object___AbilityType_F
    if (this!=0) then
        set si__Object___AbilityType_F = si__Object___AbilityType_V[this]
    else
        set si__Object___AbilityType_I = si__Object___AbilityType_I + 1
        set this = si__Object___AbilityType_I
    endif
    if (this > 8190) then
        call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Unable to allocate id for an object of type: Object___AbilityType")
        return 0
    endif

    set si__Object___AbilityType_V[this]=- 1
 return this
endfunction

//Generated destructor of Object___AbilityType
function s__Object___AbilityType_deallocate takes integer this returns nothing
    if this==null then
        call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Attempt to destroy a null struct of type: Object___AbilityType")
        return
    elseif (si__Object___AbilityType_V[this]!=- 1) then
        call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Double free of type: Object___AbilityType")
        return
    endif
    set si__Object___AbilityType_V[this]= si__Object___AbilityType_F
    set si__Object___AbilityType_F = this
endfunction

//Generated allocator of Object___ItemType
function s__Object___ItemType__allocate takes nothing returns integer
 local integer this = si__Object___ItemType_F
    if (this!=0) then
        set si__Object___ItemType_F = si__Object___ItemType_V[this]
    else
        set si__Object___ItemType_I = si__Object___ItemType_I + 1
        set this = si__Object___ItemType_I
    endif
    if (this > 8190) then
        call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Unable to allocate id for an object of type: Object___ItemType")
        return 0
    endif

    set si__Object___ItemType_V[this]=- 1
 return this
endfunction

//Generated destructor of Object___ItemType
function s__Object___ItemType_deallocate takes integer this returns nothing
    if this==null then
        call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Attempt to destroy a null struct of type: Object___ItemType")
        return
    elseif (si__Object___ItemType_V[this]!=- 1) then
        call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Double free of type: Object___ItemType")
        return
    endif
    set si__Object___ItemType_V[this]= si__Object___ItemType_F
    set si__Object___ItemType_F = this
endfunction

//Generated allocator of Object___UnitType
function s__Object___UnitType__allocate takes nothing returns integer
 local integer this = si__Object___UnitType_F
    if (this!=0) then
        set si__Object___UnitType_F = si__Object___UnitType_V[this]
    else
        set si__Object___UnitType_I = si__Object___UnitType_I + 1
        set this = si__Object___UnitType_I
    endif
    if (this > 8190) then
        call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Unable to allocate id for an object of type: Object___UnitType")
        return 0
    endif

    set si__Object___UnitType_V[this]=- 1
 return this
endfunction

//Generated destructor of Object___UnitType
function s__Object___UnitType_deallocate takes integer this returns nothing
    if this==null then
        call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Attempt to destroy a null struct of type: Object___UnitType")
        return
    elseif (si__Object___UnitType_V[this]!=- 1) then
        call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Double free of type: Object___UnitType")
        return
    endif
    set si__Object___UnitType_V[this]= si__Object___UnitType_F
    set si__Object___UnitType_F = this
endfunction

//Generated allocator of RandomInt
function s__RandomInt__allocate takes nothing returns integer
 local integer this = si__RandomInt_F
    if (this!=0) then
        set si__RandomInt_F = si__RandomInt_V[this]
    else
        set si__RandomInt_I = si__RandomInt_I + 1
        set this = si__RandomInt_I
    endif
    if (this > 8190) then
        call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Unable to allocate id for an object of type: RandomInt")
        return 0
    endif

    set si__RandomInt_V[this]=- 1
 return this
endfunction

//Generated destructor of RandomInt
function s__RandomInt_deallocate takes integer this returns nothing
    if this==null then
        call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Attempt to destroy a null struct of type: RandomInt")
        return
    elseif (si__RandomInt_V[this]!=- 1) then
        call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Double free of type: RandomInt")
        return
    endif
    set si__RandomInt_V[this]= si__RandomInt_F
    set si__RandomInt_F = this
endfunction

//Generated method caller for math.randomReal
function sc__math_randomReal takes real low,real high returns real
    return GetRandomReal(low, high)
endfunction

//Generated method caller for math.sin
function sc__math_sin takes real r returns real
    return Sin(r)
endfunction

//Generated method caller for math.cos
function sc__math_cos takes real r returns real
    return Cos(r)
endfunction

//Generated method caller for math.pow
function sc__math_pow takes real x,real power returns real
    return Pow(x, power)
endfunction

//Generated method caller for math.squareRoot
function sc__math_squareRoot takes real x returns real
    return SquareRoot(x)
endfunction

//Generated method caller for math.sinBJ
function sc__math_sinBJ takes real degrees returns real
    return Sin(degrees * bj_DEGTORAD)
endfunction

//Generated method caller for math.cosBJ
function sc__math_cosBJ takes real degrees returns real
    return Cos(degrees * bj_DEGTORAD)
endfunction

//Generated allocator of math
function s__math__allocate takes nothing returns integer
 local integer this = si__math_F
    if (this!=0) then
        set si__math_F = si__math_V[this]
    else
        set si__math_I = si__math_I + 1
        set this = si__math_I
    endif
    if (this > 8190) then
        call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Unable to allocate id for an object of type: math")
        return 0
    endif

    set si__math_V[this]=- 1
 return this
endfunction

//Generated destructor of math
function s__math_deallocate takes integer this returns nothing
    if this==null then
        call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Attempt to destroy a null struct of type: math")
        return
    elseif (si__math_V[this]!=- 1) then
        call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Double free of type: math")
        return
    endif
    set si__math_V[this]= si__math_F
    set si__math_F = this
endfunction

//Generated allocator of Input
function s__Input__allocate takes nothing returns integer
 local integer this = si__Input_F
    if (this!=0) then
        set si__Input_F = si__Input_V[this]
    else
        set si__Input_I = si__Input_I + 1
        set this = si__Input_I
    endif
    if (this > 8190) then
        call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Unable to allocate id for an object of type: Input")
        return 0
    endif

    set si__Input_V[this]=- 1
 return this
endfunction

//Generated destructor of Input
function s__Input_deallocate takes integer this returns nothing
    if this==null then
        call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Attempt to destroy a null struct of type: Input")
        return
    elseif (si__Input_V[this]!=- 1) then
        call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Double free of type: Input")
        return
    endif
    set si__Input_V[this]= si__Input_F
    set si__Input_F = this
endfunction

//Generated allocator of Hard
function s__Hard__allocate takes nothing returns integer
 local integer this = si__Hard_F
    if (this!=0) then
        set si__Hard_F = si__Hard_V[this]
    else
        set si__Hard_I = si__Hard_I + 1
        set this = si__Hard_I
    endif
    if (this > 8190) then
        call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Unable to allocate id for an object of type: Hard")
        return 0
    endif

    set si__Hard_V[this]=- 1
 return this
endfunction

//Generated destructor of Hard
function s__Hard_deallocate takes integer this returns nothing
    if this==null then
        call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Attempt to destroy a null struct of type: Hard")
        return
    elseif (si__Hard_V[this]!=- 1) then
        call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Double free of type: Hard")
        return
    endif
    set si__Hard_V[this]= si__Hard_F
    set si__Hard_F = this
endfunction

//Generated method caller for Group.Handle
function sc__Group_Handle takes integer this returns group
    return s__Group_g[this]
endfunction

//Generated allocator of Group
function s__Group__allocate takes nothing returns integer
 local integer this = si__Group_F
    if (this!=0) then
        set si__Group_F = si__Group_V[this]
    else
        set si__Group_I = si__Group_I + 1
        set this = si__Group_I
    endif
    if (this > 8190) then
        call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Unable to allocate id for an object of type: Group")
        return 0
    endif

    set si__Group_V[this]=- 1
 return this
endfunction

//Generated destructor of Group
function s__Group_deallocate takes integer this returns nothing
    if this==null then
        call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Attempt to destroy a null struct of type: Group")
        return
    elseif (si__Group_V[this]!=- 1) then
        call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Double free of type: Group")
        return
    endif
    set si__Group_V[this]= si__Group_F
    set si__Group_F = this
endfunction

//Generated allocator of Game
function s__Game__allocate takes nothing returns integer
 local integer this = si__Game_F
    if (this!=0) then
        set si__Game_F = si__Game_V[this]
    else
        set si__Game_I = si__Game_I + 1
        set this = si__Game_I
    endif
    if (this > 8190) then
        call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Unable to allocate id for an object of type: Game")
        return 0
    endif

    set si__Game_V[this]=- 1
 return this
endfunction

//Generated destructor of Game
function s__Game_deallocate takes integer this returns nothing
    if this==null then
        call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Attempt to destroy a null struct of type: Game")
        return
    elseif (si__Game_V[this]!=- 1) then
        call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Double free of type: Game")
        return
    endif
    set si__Game_V[this]= si__Game_F
    set si__Game_F = this
endfunction

//Generated method caller for Frame.createTag
function sc__Frame_createTag takes string Type,string name,integer p,string template,integer id returns integer
    set f__arg_string1 = Type
    set f__arg_string2 = name
    set f__arg_integer1 = p
    set f__arg_string3 = template
    set f__arg_integer2 = id
    call TriggerEvaluate(st__Frame_createTag)
 return f__result_integer
endfunction

//Generated method caller for Frame.destroy
function sc__Frame_destroy takes integer this returns nothing
    set f__arg_this = this
    call TriggerEvaluate(st__Frame_destroy)
endfunction

//Generated method caller for Frame.Handle
function sc__Frame_Handle takes integer this returns integer
    return s__Frame_f[this]
endfunction

//Generated method caller for Frame.name
function sc__Frame_name takes integer this returns string
    return s__Frame_FrameName[this]
endfunction

//Generated method caller for Frame.getGameUI
function sc__Frame_getGameUI takes nothing returns integer
    call TriggerEvaluate(st__Frame_getGameUI)
 return f__result_integer
endfunction

//Generated method caller for Frame.setTextUre
function sc__Frame_setTextUre takes integer this,string ure,integer flag returns nothing
    call DzFrameSetTexture(s__Frame_f[this], ure, flag)
endfunction

//Generated allocator of Frame
function s__Frame__allocate takes nothing returns integer
 local integer this = si__Frame_F
    if (this!=0) then
        set si__Frame_F = si__Frame_V[this]
    else
        set si__Frame_I = si__Frame_I + 1
        set this = si__Frame_I
    endif
    if (this > 8190) then
        call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Unable to allocate id for an object of type: Frame")
        return 0
    endif

    set si__Frame_V[this]=- 1
 return this
endfunction

//Generated destructor of Frame
function s__Frame_deallocate takes integer this returns nothing
    if this==null then
        call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Attempt to destroy a null struct of type: Frame")
        return
    elseif (si__Frame_V[this]!=- 1) then
        call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Double free of type: Frame")
        return
    endif
    set si__Frame_V[this]= si__Frame_F
    set si__Frame_F = this
endfunction

//Generated allocator of Excretion__deathItem
function s__Excretion__deathItem__allocate takes nothing returns integer
 local integer this = si__Excretion__deathItem_F
    if (this!=0) then
        set si__Excretion__deathItem_F = si__Excretion__deathItem_V[this]
    else
        set si__Excretion__deathItem_I = si__Excretion__deathItem_I + 1
        set this = si__Excretion__deathItem_I
    endif
    if (this > 8190) then
        call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Unable to allocate id for an object of type: Excretion__deathItem")
        return 0
    endif

    set si__Excretion__deathItem_V[this]=- 1
 return this
endfunction

//Generated destructor of Excretion__deathItem
function s__Excretion__deathItem_deallocate takes integer this returns nothing
    if this==null then
        call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Attempt to destroy a null struct of type: Excretion__deathItem")
        return
    elseif (si__Excretion__deathItem_V[this]!=- 1) then
        call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Double free of type: Excretion__deathItem")
        return
    endif
    set si__Excretion__deathItem_V[this]= si__Excretion__deathItem_F
    set si__Excretion__deathItem_F = this
endfunction

//Generated allocator of Excretion__deathUnit
function s__Excretion__deathUnit__allocate takes nothing returns integer
 local integer this = si__Excretion__deathUnit_F
    if (this!=0) then
        set si__Excretion__deathUnit_F = si__Excretion__deathUnit_V[this]
    else
        set si__Excretion__deathUnit_I = si__Excretion__deathUnit_I + 1
        set this = si__Excretion__deathUnit_I
    endif
    if (this > 8190) then
        call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Unable to allocate id for an object of type: Excretion__deathUnit")
        return 0
    endif

    set si__Excretion__deathUnit_V[this]=- 1
 return this
endfunction

//Generated destructor of Excretion__deathUnit
function s__Excretion__deathUnit_deallocate takes integer this returns nothing
    if this==null then
        call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Attempt to destroy a null struct of type: Excretion__deathUnit")
        return
    elseif (si__Excretion__deathUnit_V[this]!=- 1) then
        call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Double free of type: Excretion__deathUnit")
        return
    endif
    set si__Excretion__deathUnit_V[this]= si__Excretion__deathUnit_F
    set si__Excretion__deathUnit_F = this
endfunction

//Generated allocator of Event___DamageEvent
function s__Event___DamageEvent__allocate takes nothing returns integer
 local integer this = si__Event___DamageEvent_F
    if (this!=0) then
        set si__Event___DamageEvent_F = si__Event___DamageEvent_V[this]
    else
        set si__Event___DamageEvent_I = si__Event___DamageEvent_I + 1
        set this = si__Event___DamageEvent_I
    endif
    if (this > 8190) then
        call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Unable to allocate id for an object of type: Event___DamageEvent")
        return 0
    endif

    set si__Event___DamageEvent_V[this]=- 1
 return this
endfunction

//Generated destructor of Event___DamageEvent
function s__Event___DamageEvent_deallocate takes integer this returns nothing
    if this==null then
        call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Attempt to destroy a null struct of type: Event___DamageEvent")
        return
    elseif (si__Event___DamageEvent_V[this]!=- 1) then
        call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Double free of type: Event___DamageEvent")
        return
    endif
    set si__Event___DamageEvent_V[this]= si__Event___DamageEvent_F
    set si__Event___DamageEvent_F = this
endfunction

//Generated method caller for Backdrop.setText
function sc__Backdrop_setText takes integer this,string char returns nothing
    set f__arg_this = this
    set f__arg_string1 = char
    call TriggerEvaluate(st__Backdrop_setText)
endfunction

//Generated allocator of Backdrop
function s__Backdrop__allocate takes nothing returns integer
 local integer this = si__Backdrop_F
    if (this!=0) then
        set si__Backdrop_F = si__Backdrop_V[this]
    else
        set si__Backdrop_I = si__Backdrop_I + 1
        set this = si__Backdrop_I
    endif
    if (this > 8190) then
        call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Unable to allocate id for an object of type: Backdrop")
        return 0
    endif

    set si__Backdrop_V[this]=- 1
 return this
endfunction

//Generated destructor of Backdrop
function s__Backdrop_deallocate takes integer this returns nothing
    if this==null then
        call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Attempt to destroy a null struct of type: Backdrop")
        return
    elseif (si__Backdrop_V[this]!=- 1) then
        call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Double free of type: Backdrop")
        return
    endif
    set si__Backdrop_V[this]= si__Backdrop_F
    set si__Backdrop_F = this
endfunction

//Generated allocator of Event___InitEvent
function s__Event___InitEvent__allocate takes nothing returns integer
 local integer this = si__Event___InitEvent_F
    if (this!=0) then
        set si__Event___InitEvent_F = si__Event___InitEvent_V[this]
    else
        set si__Event___InitEvent_I = si__Event___InitEvent_I + 1
        set this = si__Event___InitEvent_I
    endif
    if (this > 8190) then
        call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Unable to allocate id for an object of type: Event___InitEvent")
        return 0
    endif

    set si__Event___InitEvent_type[this]= 14
    set si__Event___InitEvent_V[this]=- 1
 return this
endfunction

//Generated destructor of Event___InitEvent
function sc__Event___InitEvent_deallocate takes integer this returns nothing
    if this==null then
        call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Attempt to destroy a null struct of type: Event___InitEvent")
        return
    elseif (si__Event___InitEvent_V[this]!=- 1) then
        call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Double free of type: Event___InitEvent")
        return
    endif
    set f__arg_this = this
    call TriggerEvaluate(st__Event___InitEvent_onDestroy[si__Event___InitEvent_type[this]])
    set si__Event___InitEvent_V[this]= si__Event___InitEvent_F
    set si__Event___InitEvent_F = this
endfunction

//Generated method caller for Effect.Handle
function sc__Effect_Handle takes integer this returns effect
    return s__Effect_e[this]
endfunction

//Generated method caller for Effect.setSize
function sc__Effect_setSize takes integer this,real size returns nothing
    call EXSetEffectSize(s__Effect_e[this], size)
endfunction

//Generated allocator of Effect
function s__Effect__allocate takes nothing returns integer
 local integer this = si__Effect_F
    if (this!=0) then
        set si__Effect_F = si__Effect_V[this]
    else
        set si__Effect_I = si__Effect_I + 1
        set this = si__Effect_I
    endif
    if (this > 8190) then
        call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Unable to allocate id for an object of type: Effect")
        return 0
    endif

    set si__Effect_V[this]=- 1
 return this
endfunction

//Generated destructor of Effect
function s__Effect_deallocate takes integer this returns nothing
    if this==null then
        call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Attempt to destroy a null struct of type: Effect")
        return
    elseif (si__Effect_V[this]!=- 1) then
        call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Double free of type: Effect")
        return
    endif
    set si__Effect_V[this]= si__Effect_F
    set si__Effect_F = this
endfunction

//Generated allocator of Ease
function s__Ease__allocate takes nothing returns integer
 local integer this = si__Ease_F
    if (this!=0) then
        set si__Ease_F = si__Ease_V[this]
    else
        set si__Ease_I = si__Ease_I + 1
        set this = si__Ease_I
    endif
    if (this > 8190) then
        call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Unable to allocate id for an object of type: Ease")
        return 0
    endif

    set si__Ease_V[this]=- 1
 return this
endfunction

//Generated destructor of Ease
function s__Ease_deallocate takes integer this returns nothing
    if this==null then
        call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Attempt to destroy a null struct of type: Ease")
        return
    elseif (si__Ease_V[this]!=- 1) then
        call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Double free of type: Ease")
        return
    endif
    set si__Ease_V[this]= si__Ease_F
    set si__Ease_F = this
endfunction

//Generated allocator of Dialog
function s__Dialog__allocate takes nothing returns integer
 local integer this = si__Dialog_F
    if (this!=0) then
        set si__Dialog_F = si__Dialog_V[this]
    else
        set si__Dialog_I = si__Dialog_I + 1
        set this = si__Dialog_I
    endif
    if (this > 8190) then
        call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Unable to allocate id for an object of type: Dialog")
        return 0
    endif

    set s__Dialog_click[this]= null
    set s__Dialog_msg[this]= null
    set si__Dialog_V[this]=- 1
 return this
endfunction

//Generated destructor of Dialog
function s__Dialog_deallocate takes integer this returns nothing
    if this==null then
        call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Attempt to destroy a null struct of type: Dialog")
        return
    elseif (si__Dialog_V[this]!=- 1) then
        call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Double free of type: Dialog")
        return
    endif
    set si__Dialog_V[this]= si__Dialog_F
    set si__Dialog_F = this
endfunction

//Generated allocator of Buff
function s__Buff__allocate takes nothing returns integer
 local integer this = si__Buff_F
    if (this!=0) then
        set si__Buff_F = si__Buff_V[this]
    else
        set si__Buff_I = si__Buff_I + 1
        set this = si__Buff_I
    endif
    if (this > 8190) then
        call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Unable to allocate id for an object of type: Buff")
        return 0
    endif

    set si__Buff_V[this]=- 1
 return this
endfunction

//Generated destructor of Buff
function s__Buff_deallocate takes integer this returns nothing
    if this==null then
        call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Attempt to destroy a null struct of type: Buff")
        return
    elseif (si__Buff_V[this]!=- 1) then
        call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Double free of type: Buff")
        return
    endif
    set si__Buff_V[this]= si__Buff_F
    set si__Buff_F = this
endfunction

//Generated allocator of BuffType
function s__BuffType__allocate takes nothing returns integer
 local integer this = si__BuffType_F
    if (this!=0) then
        set si__BuffType_F = si__BuffType_V[this]
    else
        set si__BuffType_I = si__BuffType_I + 1
        set this = si__BuffType_I
    endif
    if (this > 8190) then
        call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Unable to allocate id for an object of type: BuffType")
        return 0
    endif

    set si__BuffType_V[this]=- 1
 return this
endfunction

//Generated destructor of BuffType
function s__BuffType_deallocate takes integer this returns nothing
    if this==null then
        call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Attempt to destroy a null struct of type: BuffType")
        return
    elseif (si__BuffType_V[this]!=- 1) then
        call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Double free of type: BuffType")
        return
    endif
    set si__BuffType_V[this]= si__BuffType_F
    set si__BuffType_F = this
endfunction

//Generated method caller for Border.setStyle
function sc__Border_setStyle takes integer this,string style returns nothing
    set f__arg_this = this
    set f__arg_string1 = style
    call TriggerEvaluate(st__Border_setStyle)
endfunction

//Generated allocator of Border
function s__Border__allocate takes nothing returns integer
 local integer this = si__Border_F
    if (this!=0) then
        set si__Border_F = si__Border_V[this]
    else
        set si__Border_I = si__Border_I + 1
        set this = si__Border_I
    endif
    if (this > 8190) then
        call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Unable to allocate id for an object of type: Border")
        return 0
    endif

    set si__Border_V[this]=- 1
 return this
endfunction

//Generated destructor of Border
function s__Border_deallocate takes integer this returns nothing
    if this==null then
        call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Attempt to destroy a null struct of type: Border")
        return
    elseif (si__Border_V[this]!=- 1) then
        call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Double free of type: Border")
        return
    endif
    set si__Border_V[this]= si__Border_F
    set si__Border_F = this
endfunction

//Generated allocator of BorderPara
function s__BorderPara__allocate takes nothing returns integer
 local integer this = si__BorderPara_F
    if (this!=0) then
        set si__BorderPara_F = si__BorderPara_V[this]
    else
        set si__BorderPara_I = si__BorderPara_I + 1
        set this = si__BorderPara_I
    endif
    if (this > 8190) then
        call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Unable to allocate id for an object of type: BorderPara")
        return 0
    endif

    set s__BorderPara_name[this]= "border"
    set s__BorderPara_height[this]= 0.0005
    set s__BorderPara_style[this]= "default"
    set s__BorderPara_blp[this]= "ReplaceableTextures\\TeamColor\\TeamColor08.blp"
    set s__BorderPara_mode[this]= 1
    set si__BorderPara_V[this]=- 1
 return this
endfunction

//Generated destructor of BorderPara
function s__BorderPara_deallocate takes integer this returns nothing
    if this==null then
        call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Attempt to destroy a null struct of type: BorderPara")
        return
    elseif (si__BorderPara_V[this]!=- 1) then
        call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Double free of type: BorderPara")
        return
    endif
    set si__BorderPara_V[this]= si__BorderPara_F
    set si__BorderPara_F = this
endfunction

//Generated allocator of Majia
function s__Majia__allocate takes nothing returns integer
 local integer this = si__Majia_F
    if (this!=0) then
        set si__Majia_F = si__Majia_V[this]
    else
        set si__Majia_I = si__Majia_I + 1
        set this = si__Majia_I
    endif
    if (this > 8190) then
        call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Unable to allocate id for an object of type: Majia")
        return 0
    endif

    set si__Majia_V[this]=- 1
 return this
endfunction

//Generated destructor of Majia
function s__Majia_deallocate takes integer this returns nothing
    if this==null then
        call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Attempt to destroy a null struct of type: Majia")
        return
    elseif (si__Majia_V[this]!=- 1) then
        call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Double free of type: Majia")
        return
    endif
    set si__Majia_V[this]= si__Majia_F
    set si__Majia_F = this
endfunction

//Generated allocator of position
function s__position__allocate takes nothing returns integer
 local integer this = si__position_F
    if (this!=0) then
        set si__position_F = si__position_V[this]
    else
        set si__position_I = si__position_I + 1
        set this = si__position_I
    endif
    if (this > 8190) then
        call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Unable to allocate id for an object of type: position")
        return 0
    endif

    set s__position_x[this]= 0.0
    set s__position_y[this]= 0.0
    set si__position_V[this]=- 1
 return this
endfunction

//Generated destructor of position
function s__position_deallocate takes integer this returns nothing
    if this==null then
        call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Attempt to destroy a null struct of type: position")
        return
    elseif (si__position_V[this]!=- 1) then
        call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Double free of type: position")
        return
    endif
    set si__position_V[this]= si__position_F
    set si__position_F = this
endfunction

//Generated allocator of OrderIds
function s__OrderIds__allocate takes nothing returns integer
 local integer this = s__SpecialOrders__allocate()
 local integer kthis
    if(this==0) then
        return 0
    endif
    set si__SpecialOrders_type[this]= 35
    set kthis = this

 return this
endfunction


//Generated method caller for Event.onDiy
function sc__Event_onDiy takes string name,code action returns integer
    set f__arg_string1 = name
    set f__arg_code1 = action
    call TriggerEvaluate(st__Event_onDiy)
 return f__result_integer
endfunction

//Generated method caller for Event.executeDiy
function sc__Event_executeDiy takes string name returns nothing
    set f__arg_string1 = name
    call TriggerEvaluate(st__Event_executeDiy)
endfunction

//Generated method caller for Event.executeDiyInt
function sc__Event_executeDiyInt takes integer index returns nothing
    set f__arg_integer1 = index
    call TriggerEvaluate(st__Event_executeDiyInt)
endfunction

//Generated method caller for Event.onSync
function sc__Event_onSync takes string name,code action returns integer
    set f__arg_string1 = name
    set f__arg_code1 = action
    call TriggerEvaluate(st__Event_onSync)
 return f__result_integer
endfunction

//Generated allocator of Event
function s__Event__allocate takes nothing returns integer
 local integer this = s__Event___InitEvent__allocate()
 local integer kthis
    if(this==0) then
        return 0
    endif
    set si__Event___InitEvent_type[this]= 15
    set kthis = this

 return this
endfunction


//Generated allocator of Order
function s__Order__allocate takes nothing returns integer
 local integer this = s__OrderIds__allocate()
 local integer kthis
    if(this==0) then
        return 0
    endif
    set si__SpecialOrders_type[this]= 36
    set kthis = this

 return this
endfunction

function sc___prototype6_execute takes integer i,integer a1 returns nothing
    set f__arg_integer1 = a1

    call TriggerExecute(st___prototype6[i])
endfunction
function sc___prototype6_evaluate takes integer i,integer a1 returns integer
    set f__arg_integer1 = a1

    call TriggerEvaluate(st___prototype6[i])
 return f__result_integer
endfunction

//library Attribute:
function s__Attribute__DefineItem_anon__0 takes nothing returns nothing
    call SaveInteger(XZHT, 'I000', 0x7C3DAE41, 3)
endfunction  // 注册属性值
function s__Attribute__DefineItem_anon__1 takes nothing returns nothing
    call SaveReal(XZHT, 'I000', 0x301CC1D8, 1000000.0)
    call SaveReal(XZHT, 'I000', 0x40536706, 2000)
    call SaveReal(XZHT, 'I000', 0x30FA192C, 50000.0)
endfunction  // 注册属性名索引映射
function s__Attribute__DefineItem_anon__2 takes nothing returns nothing
    call SaveStr(XZHT, 'I000', 1, "攻击力")
    call SaveStr(XZHT, 'I000', 2, "护甲")
    call SaveStr(XZHT, 'I000', 3, "力量")
endfunction  // 执行
function s__Attribute__DefineItem_onInit takes nothing returns nothing
    local trigger trig = CreateTrigger()
    call TriggerAddAction(trig, function s__Attribute__DefineItem_anon__0)
    call TriggerAddAction(trig, function s__Attribute__DefineItem_anon__1)
    call TriggerAddAction(trig, function s__Attribute__DefineItem_anon__2)
    call TriggerExecute(trig)
    set trig = null
endfunction
function s__Attribute__ItemAttribute_anon__3 takes nothing returns nothing
    local integer u = 0
    local integer itemId = GetItemTypeId(GetManipulatedItem())
    local integer level = GetItemLevel(GetManipulatedItem())
    local integer index
    local integer number
    local string KeyName
    local real value
    if ( level != 45 ) then
        set u = sc__Unit_manipulatingUnit()
        set number = LoadInteger(XZHT, itemId, 0x7C3DAE41)
        if ( number > 0 ) then
            set index = 1
            loop
                exitwhen ( index > number )
                set KeyName = LoadStr(XZHT, itemId, index)
                set value = LoadReal(XZHT, itemId, StringHash(KeyName))
                call sc__Unit_addStateString(u,KeyName , value)
                set index = index + 1
            endloop
        endif
        call sc__Unit_Null(u)
    endif
endfunction  // 丢弃减少属性
function s__Attribute__ItemAttribute_anon__4 takes nothing returns nothing
    local integer u = 0
    local integer itemId = GetItemTypeId(GetManipulatedItem())
    local integer level = GetItemLevel(GetManipulatedItem())
    local integer index
    local integer number
    local string KeyName
    local real value
    if ( level != 45 ) then
        set u = sc__Unit_manipulatingUnit()
        set number = LoadInteger(XZHT, itemId, 0x7C3DAE41)
        if ( number > 0 ) then
            set index = 1
            loop
                exitwhen ( index > number )
                set KeyName = LoadStr(XZHT, itemId, index)
                set value = LoadReal(XZHT, itemId, StringHash(KeyName))
                call sc__Unit_subStateString(u,KeyName , value)
                set index = index + 1
            endloop
        endif
        call sc__Unit_Null(u)
    endif
endfunction
function s__Attribute__ItemAttribute_onInit takes nothing returns nothing
    local trigger pick = CreateTrigger()
    local trigger discard = CreateTrigger()
    local integer index
    set index = 0
    loop
        exitwhen ( index > 15 )
        call TriggerRegisterPlayerUnitEvent(pick, Player(index), EVENT_PLAYER_UNIT_PICKUP_ITEM, null)
        call TriggerRegisterPlayerUnitEvent(discard, Player(index), EVENT_PLAYER_UNIT_DROP_ITEM, null)
        set index = index + 1
    endloop
    call TriggerAddAction(pick, function s__Attribute__ItemAttribute_anon__3)
    call TriggerAddAction(discard, function s__Attribute__ItemAttribute_anon__4)
    set pick = null
    set discard = null
endfunction

//library Attribute ends
//library Backdrop:
function s__BackdropPara_create takes nothing returns integer
    local integer this = s__BackdropPara__allocate()
    set s__BackdropPara_pt[this]= sc__Frame_getGameUI()
    return this
endfunction
function s__BackdropPara_new takes integer Pt returns integer
    local integer this = s__BackdropPara__allocate()
    set s__BackdropPara_name[this]= sc__Frame_name(Pt) + s__BackdropPara_name[this]
    set s__BackdropPara_pt[this]= Pt
    return this
endfunction
//private:
//public:
//public:
function s__Backdrop_create takes integer Para returns integer
    local integer this = s__Backdrop__allocate()
    set s__Backdrop_para[this]= Para // 背景
    set s__Backdrop_id[this]= sc__Frame_createTag("BACKDROP" , s__BackdropPara_name[Para] , s__BackdropPara_pt[Para] , "" , 0) // 默认背景
    call sc__Frame_setTextUre(s__Backdrop_id[this],s__BackdropPara_blp[Para] , s__BackdropPara_mode[Para])
    set s__Backdrop_buId[this]= sc__Frame_Handle(s__Backdrop_id[this])
    if ( s__BackdropPara_text[Para] != "" ) then
        call sc__Backdrop_setText(this,s__BackdropPara_text[Para])
    endif
    return this
endfunction  // 析构函数 注意 一担析构之后就无法再重新赋值记录 只能重新构造
function s__Backdrop_destroy takes integer this returns nothing
    call sc__Frame_destroy(s__Backdrop_id[this])
    set s__Backdrop_textLen[this]= 0
    call s__BackdropPara_deallocate(s__Backdrop_para[this])
    call s__Backdrop_deallocate(this)
endfunction
function s__Backdrop_setText takes integer this,string char returns nothing
    if ( s__Backdrop_text[this] == 0 ) then
        set s__Backdrop_text[this]= DzCreateFrameByTagName("TEXT", s__BackdropPara_name[s__Backdrop_para[this]] + "_text", s__Backdrop_buId[this], s__BackdropPara_temp[s__Backdrop_para[this]], 0)
        call DzFrameSetPoint(s__Backdrop_text[this], 4, s__Backdrop_buId[this], 4, 0.0, 0.0) //this.textShow(true);
    endif
    call DzFrameSetText(s__Backdrop_text[this], char)
    set s__BackdropPara_text[s__Backdrop_para[this]]= char
    set s__Backdrop_textLen[this]= StringLength(char)
endfunction

//library Backdrop ends
//library Base:

//public:
//public:
function orInteger takes integer value,integer Expect returns integer
    if ( value < 0 ) then
        return Expect
    endif
    return value
endfunction  // or value < 0. return Expect else return value
function orReal takes real value,real Expect returns real
    if ( value < 0. ) then
        return Expect
    endif
    return value
endfunction
//private:
function s__position_onInit takes nothing returns nothing
    set s__position_MapMinX = GetCameraBoundMinX() - GetCameraMargin(CAMERA_MARGIN_LEFT)
    set s__position_MapMinY = GetCameraBoundMinY() - GetCameraMargin(CAMERA_MARGIN_BOTTOM)
    set s__position_MapMaxX = GetCameraBoundMaxX() + GetCameraMargin(CAMERA_MARGIN_RIGHT)
    set s__position_MapMaxY = GetCameraBoundMaxY() + GetCameraMargin(CAMERA_MARGIN_TOP)
endfunction
//public:
function s__position_correctX takes real x returns real
    return RMinBJ(RMaxBJ(x, s__position_MapMinX), s__position_MapMaxX)
endfunction
function s__position_correctY takes real y returns real
    return RMinBJ(RMaxBJ(y, s__position_MapMinY), s__position_MapMaxY)
endfunction
//public:
//private:
function s__Majia_onInit takes nothing returns nothing
    set s__Majia_Id = 'e000'
endfunction
//public:  // 生成区域 以X,Y为中心 创建一个长度为long 宽度为wide
function createRect takes real x,real y,real long,real wide returns rect
    return Rect(x - long * 0.5, y - wide * 0.5, x + long * 0.5, y + wide * 0.5)
endfunction
function Base___onInit takes nothing returns nothing
endfunction

//library Base ends
//library Border:
function s__BorderPara_new takes integer Pt returns integer
    local integer this = s__BorderPara__allocate()
    set s__BorderPara_name[this]= sc__Frame_name(Pt) + s__BorderPara_name[this]
    set s__BorderPara_pt[this]= Pt
    return this
endfunction
//private:
//public:
function s__Border_create takes integer Para returns integer
    local integer this = s__Border__allocate()
    set s__Border_para[this]= Para
    set s__Border_top[this]= DzCreateFrameByTagName("BACKDROP", s__BorderPara_name[s__Border_para[this]] + "_top", sc__Frame_Handle(s__BorderPara_pt[s__Border_para[this]]), "", 0)
    set s__Border_topleft[this]= DzCreateFrameByTagName("BACKDROP", s__BorderPara_name[s__Border_para[this]] + "_topleft", sc__Frame_Handle(s__BorderPara_pt[s__Border_para[this]]), "", 0)
    set s__Border_topright[this]= DzCreateFrameByTagName("BACKDROP", s__BorderPara_name[s__Border_para[this]] + "_topright", sc__Frame_Handle(s__BorderPara_pt[s__Border_para[this]]), "", 0)
    set s__Border_bottom[this]= DzCreateFrameByTagName("BACKDROP", s__BorderPara_name[s__Border_para[this]] + "_bottom", sc__Frame_Handle(s__BorderPara_pt[s__Border_para[this]]), "", 0)
    set s__Border_bottomleft[this]= DzCreateFrameByTagName("BACKDROP", s__BorderPara_name[s__Border_para[this]] + "_bottomleft", sc__Frame_Handle(s__BorderPara_pt[s__Border_para[this]]), "", 0)
    set s__Border_bottomright[this]= DzCreateFrameByTagName("BACKDROP", s__BorderPara_name[s__Border_para[this]] + "_bottomright", sc__Frame_Handle(s__BorderPara_pt[s__Border_para[this]]), "", 0)
    set s__Border_left[this]= DzCreateFrameByTagName("BACKDROP", s__BorderPara_name[s__Border_para[this]] + "_left", sc__Frame_Handle(s__BorderPara_pt[s__Border_para[this]]), "", 0)
    set s__Border_right[this]= DzCreateFrameByTagName("BACKDROP", s__BorderPara_name[s__Border_para[this]] + "_right", sc__Frame_Handle(s__BorderPara_pt[s__Border_para[this]]), "", 0) //上
    call DzFrameSetPoint(s__Border_top[this], 0, sc__Frame_Handle(s__BorderPara_pt[s__Border_para[this]]), 0, 0, s__BorderPara_height[s__Border_para[this]])
    call DzFrameSetPoint(s__Border_top[this], 2, sc__Frame_Handle(s__BorderPara_pt[s__Border_para[this]]), 2, 0, s__BorderPara_height[s__Border_para[this]])
    call DzFrameSetPoint(s__Border_top[this], 6, sc__Frame_Handle(s__BorderPara_pt[s__Border_para[this]]), 0, 0, 0)
    call DzFrameSetPoint(s__Border_top[this], 8, sc__Frame_Handle(s__BorderPara_pt[s__Border_para[this]]), 2, 0, 0) //左上
    call DzFrameSetPoint(s__Border_topleft[this], 2, s__Border_top[this], 0, 0, 0)
    call DzFrameSetPoint(s__Border_topleft[this], 0, s__Border_top[this], 0, 0 - s__BorderPara_height[s__Border_para[this]], 0)
    call DzFrameSetPoint(s__Border_topleft[this], 8, s__Border_top[this], 6, 0, 0)
    call DzFrameSetPoint(s__Border_topleft[this], 6, s__Border_top[this], 6, 0 - s__BorderPara_height[s__Border_para[this]], 0) //右上
    call DzFrameSetPoint(s__Border_topright[this], 0, s__Border_top[this], 2, 0, 0)
    call DzFrameSetPoint(s__Border_topright[this], 2, s__Border_top[this], 2, s__BorderPara_height[s__Border_para[this]], 0)
    call DzFrameSetPoint(s__Border_topright[this], 6, s__Border_top[this], 8, 0, 0)
    call DzFrameSetPoint(s__Border_topright[this], 8, s__Border_top[this], 8, s__BorderPara_height[s__Border_para[this]], 0) //下
    call DzFrameSetPoint(s__Border_bottom[this], 0, sc__Frame_Handle(s__BorderPara_pt[s__Border_para[this]]), 6, 0, 0)
    call DzFrameSetPoint(s__Border_bottom[this], 2, sc__Frame_Handle(s__BorderPara_pt[s__Border_para[this]]), 8, 0, 0)
    call DzFrameSetPoint(s__Border_bottom[this], 6, sc__Frame_Handle(s__BorderPara_pt[s__Border_para[this]]), 6, 0, 0 - s__BorderPara_height[s__Border_para[this]])
    call DzFrameSetPoint(s__Border_bottom[this], 8, sc__Frame_Handle(s__BorderPara_pt[s__Border_para[this]]), 8, 0, 0 - s__BorderPara_height[s__Border_para[this]]) //左下
    call DzFrameSetPoint(s__Border_bottomleft[this], 2, s__Border_bottom[this], 0, 0, 0)
    call DzFrameSetPoint(s__Border_bottomleft[this], 0, s__Border_bottom[this], 0, 0 - s__BorderPara_height[s__Border_para[this]], 0)
    call DzFrameSetPoint(s__Border_bottomleft[this], 8, s__Border_bottom[this], 6, 0, 0)
    call DzFrameSetPoint(s__Border_bottomleft[this], 6, s__Border_bottom[this], 6, 0 - s__BorderPara_height[s__Border_para[this]], 0) //右下
    call DzFrameSetPoint(s__Border_bottomright[this], 0, s__Border_bottom[this], 2, 0, 0)
    call DzFrameSetPoint(s__Border_bottomright[this], 2, s__Border_bottom[this], 2, s__BorderPara_height[s__Border_para[this]], 0)
    call DzFrameSetPoint(s__Border_bottomright[this], 6, s__Border_bottom[this], 8, 0, 0)
    call DzFrameSetPoint(s__Border_bottomright[this], 8, s__Border_bottom[this], 8, s__BorderPara_height[s__Border_para[this]], 0) //左
    call DzFrameSetPoint(s__Border_left[this], 0, s__Border_topleft[this], 6, 0, 0)
    call DzFrameSetPoint(s__Border_left[this], 2, s__Border_topleft[this], 8, 0, 0)
    call DzFrameSetPoint(s__Border_left[this], 6, s__Border_bottomleft[this], 0, 0, 0)
    call DzFrameSetPoint(s__Border_left[this], 8, s__Border_bottomleft[this], 2, 0, 0) //右
    call DzFrameSetPoint(s__Border_right[this], 0, s__Border_topright[this], 6, 0, 0)
    call DzFrameSetPoint(s__Border_right[this], 2, s__Border_topright[this], 8, 0, 0)
    call DzFrameSetPoint(s__Border_right[this], 6, s__Border_bottomright[this], 0, 0, 0)
    call DzFrameSetPoint(s__Border_right[this], 8, s__Border_bottomright[this], 2, 0, 0) //设置边框贴图
    call sc__Border_setStyle(this,s__BorderPara_style[s__Border_para[this]])
    return this
endfunction  // 析构函数 
function s__Border_destroy takes integer this returns nothing
    call s__BorderPara_deallocate(s__Border_para[this])
    call s__Border_deallocate(this)
endfunction
function s__Border_setTextUre takes integer this,integer point,string blp,integer mode returns nothing
    set s__BorderPara_blp[s__Border_para[this]]= blp //设置参数
    set s__BorderPara_mode[s__Border_para[this]]= mode
    if ( point == - 1 ) then
        call DzFrameSetTexture(s__Border_top[this], blp, mode)
        call DzFrameSetTexture(s__Border_topleft[this], blp, mode)
        call DzFrameSetTexture(s__Border_topright[this], blp, mode)
        call DzFrameSetTexture(s__Border_bottom[this], blp, mode)
        call DzFrameSetTexture(s__Border_bottomleft[this], blp, mode)
        call DzFrameSetTexture(s__Border_bottomright[this], blp, mode)
        call DzFrameSetTexture(s__Border_right[this], blp, mode)
        call DzFrameSetTexture(s__Border_left[this], blp, mode) //左上
    elseif ( point == 0 ) then
        call DzFrameSetTexture(s__Border_topleft[this], blp, mode) //上
    elseif ( point == 1 ) then
        call DzFrameSetTexture(s__Border_top[this], blp, mode) //右上
    elseif ( point == 2 ) then
        call DzFrameSetTexture(s__Border_topright[this], blp, mode) //左
    elseif ( point == 3 ) then
        call DzFrameSetTexture(s__Border_left[this], blp, mode) //右
    elseif ( point == 5 ) then
        call DzFrameSetTexture(s__Border_right[this], blp, mode) //下
    elseif ( point == 7 ) then
        call DzFrameSetTexture(s__Border_bottom[this], blp, mode) //左下
    elseif ( point == 6 ) then
        call DzFrameSetTexture(s__Border_bottomleft[this], blp, mode) //右下
    elseif ( point == 8 ) then
        call DzFrameSetTexture(s__Border_bottomright[this], blp, mode)
    else
        //Debug:
        call BJDebugMsg("输入错误")
    endif
endfunction
function s__Border_setSize takes integer this,real height returns nothing
    set s__BorderPara_height[s__Border_para[this]]= height //上
    call DzFrameSetPoint(s__Border_top[this], 0, sc__Frame_Handle(s__BorderPara_pt[s__Border_para[this]]), 0, 0, height)
    call DzFrameSetPoint(s__Border_top[this], 2, sc__Frame_Handle(s__BorderPara_pt[s__Border_para[this]]), 2, 0, height)
    call DzFrameSetPoint(s__Border_top[this], 6, sc__Frame_Handle(s__BorderPara_pt[s__Border_para[this]]), 0, 0, 0)
    call DzFrameSetPoint(s__Border_top[this], 8, sc__Frame_Handle(s__BorderPara_pt[s__Border_para[this]]), 2, 0, 0) //左上
    call DzFrameSetPoint(s__Border_topleft[this], 2, s__Border_top[this], 0, 0, 0)
    call DzFrameSetPoint(s__Border_topleft[this], 0, s__Border_top[this], 0, 0 - height, 0)
    call DzFrameSetPoint(s__Border_topleft[this], 8, s__Border_top[this], 6, 0, 0)
    call DzFrameSetPoint(s__Border_topleft[this], 6, s__Border_top[this], 6, 0 - height, 0) //右上
    call DzFrameSetPoint(s__Border_topright[this], 0, s__Border_top[this], 2, 0, 0)
    call DzFrameSetPoint(s__Border_topright[this], 2, s__Border_top[this], 2, height, 0)
    call DzFrameSetPoint(s__Border_topright[this], 6, s__Border_top[this], 8, 0, 0)
    call DzFrameSetPoint(s__Border_topright[this], 8, s__Border_top[this], 8, height, 0) //下
    call DzFrameSetPoint(s__Border_bottom[this], 0, sc__Frame_Handle(s__BorderPara_pt[s__Border_para[this]]), 6, 0, 0)
    call DzFrameSetPoint(s__Border_bottom[this], 2, sc__Frame_Handle(s__BorderPara_pt[s__Border_para[this]]), 8, 0, 0)
    call DzFrameSetPoint(s__Border_bottom[this], 6, sc__Frame_Handle(s__BorderPara_pt[s__Border_para[this]]), 6, 0, 0 - height)
    call DzFrameSetPoint(s__Border_bottom[this], 8, sc__Frame_Handle(s__BorderPara_pt[s__Border_para[this]]), 8, 0, 0 - height) //左下
    call DzFrameSetPoint(s__Border_bottomleft[this], 2, s__Border_bottom[this], 0, 0, 0)
    call DzFrameSetPoint(s__Border_bottomleft[this], 0, s__Border_bottom[this], 0, 0 - height, 0)
    call DzFrameSetPoint(s__Border_bottomleft[this], 8, s__Border_bottom[this], 6, 0, 0)
    call DzFrameSetPoint(s__Border_bottomleft[this], 6, s__Border_bottom[this], 6, 0 - height, 0) //右下
    call DzFrameSetPoint(s__Border_bottomright[this], 0, s__Border_bottom[this], 2, 0, 0)
    call DzFrameSetPoint(s__Border_bottomright[this], 2, s__Border_bottom[this], 2, height, 0)
    call DzFrameSetPoint(s__Border_bottomright[this], 6, s__Border_bottom[this], 8, 0, 0)
    call DzFrameSetPoint(s__Border_bottomright[this], 8, s__Border_bottom[this], 8, height, 0) //左
    call DzFrameSetPoint(s__Border_left[this], 0, s__Border_topleft[this], 6, 0, 0)
    call DzFrameSetPoint(s__Border_left[this], 2, s__Border_topleft[this], 8, 0, 0)
    call DzFrameSetPoint(s__Border_left[this], 6, s__Border_bottomleft[this], 0, 0, 0)
    call DzFrameSetPoint(s__Border_left[this], 8, s__Border_bottomleft[this], 2, 0, 0) //右
    call DzFrameSetPoint(s__Border_right[this], 0, s__Border_topright[this], 6, 0, 0)
    call DzFrameSetPoint(s__Border_right[this], 2, s__Border_topright[this], 8, 0, 0)
    call DzFrameSetPoint(s__Border_right[this], 6, s__Border_bottomright[this], 0, 0, 0)
    call DzFrameSetPoint(s__Border_right[this], 8, s__Border_bottomright[this], 2, 0, 0)
endfunction
function s__Border_setStyle takes integer this,string style returns nothing
    if ( style == "default" ) then
        call s__Border_setTextUre(this,- 1 , s__BorderPara_blp[s__Border_para[this]] , s__BorderPara_mode[s__Border_para[this]])
    elseif ( style == "custom" ) then
        call s__Border_setTextUre(this,1 , s__BorderPara_blp[s__Border_para[this]] + "top.blp" , s__BorderPara_mode[s__Border_para[this]])
        call s__Border_setTextUre(this,0 , s__BorderPara_blp[s__Border_para[this]] + "topleft.blp" , s__BorderPara_mode[s__Border_para[this]])
        call s__Border_setTextUre(this,2 , s__BorderPara_blp[s__Border_para[this]] + "topright.blp" , s__BorderPara_mode[s__Border_para[this]])
        call s__Border_setTextUre(this,3 , s__BorderPara_blp[s__Border_para[this]] + "left.blp" , s__BorderPara_mode[s__Border_para[this]])
        call s__Border_setTextUre(this,5 , s__BorderPara_blp[s__Border_para[this]] + "right.blp" , s__BorderPara_mode[s__Border_para[this]])
        call s__Border_setTextUre(this,7 , s__BorderPara_blp[s__Border_para[this]] + "bottom.blp" , s__BorderPara_mode[s__Border_para[this]])
        call s__Border_setTextUre(this,6 , s__BorderPara_blp[s__Border_para[this]] + "bottomleft.blp" , s__BorderPara_mode[s__Border_para[this]])
        call s__Border_setTextUre(this,8 , s__BorderPara_blp[s__Border_para[this]] + "bottomright.blp" , s__BorderPara_mode[s__Border_para[this]])
    else
        //Debug:
        call BJDebugMsg("输入[样式类型]错误!")
    endif
endfunction
function s__Border_show takes integer this,integer point,boolean flag returns nothing
    if ( point == - 1 ) then
        call DzFrameShow(s__Border_top[this], flag)
        call DzFrameShow(s__Border_topleft[this], flag)
        call DzFrameShow(s__Border_topright[this], flag)
        call DzFrameShow(s__Border_left[this], flag)
        call DzFrameShow(s__Border_right[this], flag)
        call DzFrameShow(s__Border_bottom[this], flag)
        call DzFrameShow(s__Border_bottomleft[this], flag)
        call DzFrameShow(s__Border_bottomright[this], flag) //左上
    elseif ( point == 0 ) then
        call DzFrameShow(s__Border_topleft[this], flag) //上
    elseif ( point == 1 ) then
        call DzFrameShow(s__Border_top[this], flag) //右上
    elseif ( point == 2 ) then
        call DzFrameShow(s__Border_topright[this], flag) //左
    elseif ( point == 3 ) then
        call DzFrameShow(s__Border_left[this], flag) //右
    elseif ( point == 5 ) then
        call DzFrameShow(s__Border_right[this], flag) //下
    elseif ( point == 7 ) then
        call DzFrameShow(s__Border_bottom[this], flag) //左下
    elseif ( point == 6 ) then
        call DzFrameShow(s__Border_bottomleft[this], flag) //右下
    elseif ( point == 8 ) then
        call DzFrameShow(s__Border_bottomright[this], flag)
    else
        //Debug:
        call BJDebugMsg("输入错误")
    endif
endfunction

//library Border ends
//library Buff:
//private:
//public:
//public:
function s__BuffType_create takes string name,boolean isFlag returns integer
    local integer this = s__BuffType__allocate()
    set s__BuffType_name[this]= name
    set s__BuffType_flag[this]= isFlag // 映射关系和ID定义
    set s__BuffType_id[this]= CreateTrigger()
    set s__BuffType_handleId[this]= GetHandleId(s__BuffType_id[this])
    call SaveInteger(XZHT, 0xD63F5E6B, StringHash(name), (this)) // Event回调参数定义
    set s__BuffType_addEventId[this]= 0
    set s__BuffType_removeEvnetId[this]= 0
    set s__BuffType_updateEventId[this]= 0
    set s__BuffType_addEventIdName[this]= StringHash("添加" + s__BuffType_name[this])
    set s__BuffType_removeEvnetIdName[this]= StringHash("移除" + s__BuffType_name[this])
    set s__BuffType_updateEventIdName[this]= StringHash("刷新" + s__BuffType_name[this])
    return this
endfunction  // 注册回调
function s__BuffType_onAdd takes integer this,code action returns nothing
    set s__BuffType_addEventId[this]= sc__Event_onDiy("添加" + s__BuffType_name[this] , action)
endfunction
function s__BuffType_onRemove takes integer this,code action returns nothing
    set s__BuffType_removeEvnetId[this]= sc__Event_onDiy("移除" + s__BuffType_name[this] , action)
endfunction
function s__BuffType_onUpdate takes integer this,code action returns nothing
    set s__BuffType_updateEventId[this]= sc__Event_onDiy("刷新" + s__BuffType_name[this] , action)
endfunction  // 执行回调
function s__BuffType_callBackAddEvent takes integer this,integer bf returns nothing
    set s__BuffType_triggerBuff = bf
    call sc__Event_executeDiyInt(s__BuffType_addEventIdName[this])
endfunction
function s__BuffType_callBackSubEvent takes integer this,integer bf returns nothing
    set s__BuffType_triggerBuff = bf
    call sc__Event_executeDiyInt(s__BuffType_removeEvnetIdName[this])
endfunction
function s__BuffType_callBackUpdateEvent takes integer this,integer bf returns nothing
    set s__BuffType_triggerBuff = bf
    call sc__Event_executeDiyInt(s__BuffType_updateEventIdName[this])
endfunction  // Get
function s__BuffType_HandleId takes integer this returns integer
    return s__BuffType_handleId[this]
endfunction
function s__BuffType_getBuff takes nothing returns integer
    return s__BuffType_triggerBuff
endfunction
//private:
//public:
//private:
function s__Buff_destroy takes integer this returns nothing
    call sc__Timer_delete(s__Buff_time[this])
    call RemoveSavedInteger(XZHT, GetHandleId(s__Buff_tu[this]), s__BuffType_HandleId(s__Buff_buffType[this]))
    call FlushChildHashtable(USDT, s__Buff_handleId[this])
    call DestroyTrigger(s__Buff_id[this])
    call s__Buff_deallocate(this)
endfunction
function s__Buff_anon__0 takes nothing returns nothing
    local integer this = sc__Timer_thisData()
    set s__Buff_dur[this]= s__Buff_dur[this] - 0.02 // 执行周期回调
    if ( s__BuffType_updateEventId[s__Buff_buffType[this]] != 0 ) then // 判断是否到期并给出移除
        call s__BuffType_callBackUpdateEvent(s__Buff_buffType[this],this)
    endif
    if ( s__Buff_dur[this] <= 0.0 ) then
        call s__BuffType_callBackSubEvent(s__Buff_buffType[this],this)
        call s__Buff_destroy(this)
    endif
endfunction
function s__Buff_onTimer takes integer this returns nothing
    set s__Buff_time[this]= sc__Timer_create(0.02 , true , function s__Buff_anon__0)
    call sc__Timer_setData(s__Buff_time[this],(this))
endfunction
//public:
function s__Buff_create takes integer whichDu,integer whichTu,integer whichType,real whichDur returns integer
    local integer this = 0
    if ( HaveSavedInteger(XZHT, sc__Unit_HandleId(whichTu), s__BuffType_HandleId(whichType)) ) then // 获取添加前实例
        set this = LoadInteger(XZHT, sc__Unit_HandleId(whichTu), s__BuffType_HandleId(whichType)) // 记录重复信息
        set s__Buff_repeat[this]= true
        set s__Buff_repeatTime[this]= whichDur // 执行添加Buff回调
        call s__BuffType_callBackAddEvent(s__Buff_buffType[this],this)
        return this
    endif // 参数处理
    set this = s__Buff__allocate()
    set s__Buff_du[this]= sc__Unit_Handle(whichDu)
    set s__Buff_tu[this]= sc__Unit_Handle(whichTu)
    set s__Buff_buffType[this]= whichType
    set s__Buff_dur[this]= whichDur // 唯一性ID
    set s__Buff_id[this]= CreateTrigger()
    set s__Buff_handleId[this]= GetHandleId(s__Buff_id[this]) // 重置残留数据
    set s__Buff_time[this]= 0
    set s__Buff_repeat[this]= false
    set s__Buff_repeatTime[this]= 0.0 // 绑定Buff实例
    call SaveInteger(XZHT, sc__Unit_HandleId(whichTu), s__BuffType_HandleId(whichType), (this)) // 判断是否为永久Buff效果
    if ( s__Buff_dur[this] > 0.0 ) then // 执行添加Buff回调
        call s__Buff_onTimer(this)
    endif
    call s__BuffType_callBackAddEvent(s__Buff_buffType[this],this)
    return this
endfunction
function s__Buff_new takes integer whichDu,integer whichTu,string whichType,real whichDur returns integer
    local integer this = 0
    local integer Type = LoadInteger(XZHT, 0xD63F5E6B, StringHash(whichType))
    if ( HaveSavedInteger(XZHT, sc__Unit_HandleId(whichTu), s__BuffType_HandleId(Type)) ) then // 获取添加前实例
        set this = LoadInteger(XZHT, sc__Unit_HandleId(whichTu), s__BuffType_HandleId(Type)) // 记录重复信息
        set s__Buff_repeat[this]= true
        set s__Buff_repeatTime[this]= whichDur // 执行添加Buff回调
        call s__BuffType_callBackAddEvent(s__Buff_buffType[this],this)
        return this
    endif // 参数处理
    set this = s__Buff__allocate()
    set s__Buff_du[this]= sc__Unit_Handle(whichDu)
    set s__Buff_tu[this]= sc__Unit_Handle(whichTu)
    set s__Buff_buffType[this]= Type
    set s__Buff_dur[this]= whichDur // 唯一性ID
    set s__Buff_id[this]= CreateTrigger()
    set s__Buff_handleId[this]= GetHandleId(s__Buff_id[this]) // 重置残留数据
    set s__Buff_time[this]= 0
    set s__Buff_repeat[this]= false
    set s__Buff_repeatTime[this]= 0.0 // 绑定Buff实例
    call SaveInteger(XZHT, sc__Unit_HandleId(whichTu), s__BuffType_HandleId(Type), (this)) // 判断是否为永久Buff效果
    if ( s__Buff_dur[this] > 0.0 ) then // 执行添加Buff回调
        call s__Buff_onTimer(this)
    endif
    call s__BuffType_callBackAddEvent(s__Buff_buffType[this],this)
    return this
endfunction  // 获取唯一ID
function s__Buff_HandleId takes integer this returns integer
    return s__Buff_handleId[this]
endfunction  // 获取事件参数
function s__Buff_getSource takes integer this returns integer
    return sc__Unit_byHandle(s__Buff_du[this])
endfunction
function s__Buff_getTarget takes integer this returns integer
    return sc__Unit_byHandle(s__Buff_tu[this])
endfunction  // 持续时间相关
function s__Buff_getTime takes integer this returns real
    return s__Buff_dur[this]
endfunction
function s__Buff_setTime takes integer this,real value returns nothing
    set s__Buff_dur[this]= value
endfunction
function s__Buff_addTime takes integer this,real value returns nothing
    set s__Buff_dur[this]= s__Buff_dur[this] + value
endfunction
function s__Buff_subTime takes integer this,real value returns nothing
    set s__Buff_dur[this]= s__Buff_dur[this] - value
endfunction
function s__Buff_endTime takes integer this returns nothing
    set s__Buff_dur[this]= 0.0
endfunction  // 判断是否为可叠加
function s__Buff_IsFlag takes integer this returns boolean
    return s__BuffType_flag[s__Buff_buffType[this]]
endfunction  // 处理重复相关
function s__Buff_IsRepeat takes integer this returns boolean
    return s__Buff_repeat[this]
endfunction
function s__Buff_getRepeatTime takes integer this returns real
    return s__Buff_repeatTime[this]
endfunction

//library Buff ends
//library Dialog:
//private:
//public:
function s__Dialog_create takes nothing returns integer
    local integer this = s__Dialog__allocate()
    set s__Dialog_dg[this]= DialogCreate()
    set s__Dialog_handleId[this]= GetHandleId(s__Dialog_dg[this])
    call SaveInteger(XZHT, 0x484BCB31, s__Dialog_handleId[this], (this))
    return this
endfunction
function s__Dialog_byHandle takes dialog d returns integer
    local integer this = 0
    if ( LoadInteger(XZHT, 0x484BCB31, GetHandleId(d)) > 0 ) then
        return LoadInteger(XZHT, 0x484BCB31, GetHandleId(d))
    endif
    set this = s__Dialog__allocate()
    set s__Dialog_dg[this]= DialogCreate()
    set s__Dialog_handleId[this]= GetHandleId(s__Dialog_dg[this])
    call SaveInteger(XZHT, 0x484BCB31, s__Dialog_handleId[this], (this))
    return this
endfunction  // 析构函数
function s__Dialog_destroy takes integer this returns nothing
    set s__Dialog_dg[this]= null
    call RemoveSavedInteger(XZHT, 0x484BCB31, s__Dialog_handleId[this])
    call s__Dialog_deallocate(this)
endfunction
function s__Dialog_delete takes integer this returns nothing
    call DialogClear(s__Dialog_dg[this])
    call DialogDestroy(s__Dialog_dg[this])
    if ( s__Dialog_click[this] != null ) then
        call DestroyTrigger(s__Dialog_click[this])
        set s__Dialog_click[this]= null
    endif
    call s__Dialog_destroy(this)
endfunction
function s__Dialog_clear takes integer this returns nothing
    call DialogClear(s__Dialog_dg[this])
    set s__Dialog_msg[this]= null
endfunction  // Get
function s__Dialog_Handle takes integer this returns dialog
    return s__Dialog_dg[this]
endfunction
function s__Dialog_HandleId takes integer this returns integer
    return s__Dialog_handleId[this]
endfunction
function s__Dialog_getTitle takes integer this returns string
    return s__Dialog_msg[this]
endfunction
function s__Dialog_triggerDialog takes nothing returns integer
    return s__Dialog_byHandle(GetClickedDialog())
endfunction
function s__Dialog_triggerButton takes nothing returns button
    return GetClickedButton()
endfunction
function s__Dialog__set_title takes integer this,string text returns nothing
    call DialogSetMessage(s__Dialog_dg[this], text)
    set s__Dialog_msg[this]= text
endfunction  // 添加对话框按钮
function s__Dialog_addButton takes integer this,string text,integer Key returns button
    return DialogAddButton(s__Dialog_dg[this], text, Key)
endfunction
function s__Dialog_addOutButton takes integer this,boolean flag,string text,integer Key returns button
    return DialogAddQuitButton(s__Dialog_dg[this], flag, text, Key)
endfunction
function s__Dialog_show takes integer this,integer gm,boolean flag returns nothing
    call DialogDisplay(sc__Gamer_Handle(gm), s__Dialog_dg[this], flag)
    call DialogSetMessage(s__Dialog_dg[this], s__Dialog_msg[this])
endfunction  // 显示/隐藏 对话框 所有玩家
function s__Dialog_showAll takes integer this,boolean flag returns nothing
    call DialogDisplay(GetLocalPlayer(), s__Dialog_dg[this], flag)
    call DialogSetMessage(s__Dialog_dg[this], s__Dialog_msg[this])
endfunction  // Event
function s__Dialog_onClickEvent takes integer this,code action returns nothing
    if ( s__Dialog_click[this] == null ) then
        set s__Dialog_click[this]= CreateTrigger()
        call TriggerRegisterDialogEvent(s__Dialog_click[this], s__Dialog_dg[this])
    endif
    call TriggerAddCondition(s__Dialog_click[this], Filter(action))
endfunction

//library Dialog ends
//library DzAPI:
// Platform

































// Hardware




























// Plus











// Sync




// Gui









































































//library DzAPI ends
//library Ease:
//private:
function s__Ease_onDzGlobalChangeMsg takes nothing returns nothing
    call sc__Event_executeDiy("全局存档变化")
endfunction
function s__Ease_onInit takes nothing returns nothing
    local trigger trig = CreateTrigger()
    call DzTriggerRegisterSyncData(trig, "DZGAU", true)
    call TriggerAddAction(trig, function s__Ease_onDzGlobalChangeMsg)
    set trig = null
endfunction
//public:
function s__Ease_getMatchType takes nothing returns integer
    return DzAPI_Map_GetMatchType()
endfunction
function s__Ease_getGameTime takes nothing returns integer
    return DzAPI_Map_GetGameStartTime()
endfunction
function s__Ease_getLevel takes integer gm returns integer
    return DzAPI_Map_GetMapLevel(sc__Gamer_Handle(gm))
endfunction
function s__Ease_getLevelRanking takes integer gm returns integer
    return DzAPI_Map_GetMapLevelRank(sc__Gamer_Handle(gm))
endfunction
function s__Ease_getMapData takes string Key returns string
    return DzAPI_Map_GetMapConfig(Key)
endfunction
function s__Ease_getGuildName takes integer gm returns string
    return DzAPI_Map_GetGuildName(sc__Gamer_Handle(gm))
endfunction
function s__Ease_getGuildRole takes integer gm returns integer
    return DzAPI_Map_GetGuildRole(sc__Gamer_Handle(gm))
endfunction
function s__Ease_getGamerNumber takes integer gm returns integer
    return RequestExtraIntegerData(45, sc__Gamer_Handle(gm), null, null, false, 0, 0, 0)
endfunction  // 获取评论次数
function s__Ease_getCommentCount takes integer gm returns integer
    return RequestExtraIntegerData(46, sc__Gamer_Handle(gm), null, null, false, 0, 0, 0)
endfunction  // 获取好友数量
function s__Ease_getFriendCount takes integer gm returns integer
    return RequestExtraIntegerData(47, sc__Gamer_Handle(gm), null, null, false, 0, 0, 0)
endfunction  // 获取自定义排行榜玩家排名 [100名以外玩家排名为0]
function s__Ease_getRanking takes integer gm,integer Key returns integer
    return RequestExtraIntegerData(52, sc__Gamer_Handle(gm), null, null, false, Key, 0, 0)
endfunction  // 获取地图评论总次数
function s__Ease_getCommentTotalCount takes nothing returns integer
    return RequestExtraIntegerData(51, null, null, null, false, 0, 0, 0)
endfunction  // 读取只读全局存档
function s__Ease_getPublicArchive takes integer gm,string Key returns string
    return DzAPI_Map_GetPublicArchive(sc__Gamer_Handle(gm), Key)
endfunction  // 读取全局存档 可读可写
function s__Ease_getStore takes string Key returns string
    return RequestExtraStringData(36, GetLocalPlayer(), Key, null, false, 0, 0, 0)
endfunction  // 获取服务器储存数据 不区分大小写
function s__Ease_getGameData takes integer gm,string Key returns string
    return DzAPI_Map_GetServerValue(sc__Gamer_Handle(gm), Key)
endfunction  // 获取服务器储存数据 区分大小写
function s__Ease_getGameDataEX takes integer gm,string Key returns string
    return RequestExtraStringData(38, sc__Gamer_Handle(gm), Key, null, false, 0, 0, 0)
endfunction  // 读取服务器内BOSS掉落装备类型
function s__Ease_getServerArchiveDrop takes integer gm,string Key returns string
    return DzAPI_Map_GetServerArchiveDrop(sc__Gamer_Handle(gm), Key)
endfunction  // 获取商城道具剩余的库存次数
function s__Ease_getMallItemCount takes integer gm,string Key returns integer
    return RequestExtraIntegerData(41, sc__Gamer_Handle(gm), Key, null, false, 0, 0, 0)
endfunction  // Set
function s__Ease_useConsumablesItem takes integer gm,string Key returns nothing
    call DzAPI_Map_UseConsumablesItem(sc__Gamer_Handle(gm), Key)
endfunction
function s__Ease_setStat takes integer gm,string Key,string value returns nothing
    call DzAPI_Map_Stat_SetStat(sc__Gamer_Handle(gm), Key, value)
endfunction  // 服务器储存数据 不区分大小写
function s__Ease_saveGameData takes integer gm,string Key,string value returns boolean
    return DzAPI_Map_SaveServerValue(sc__Gamer_Handle(gm), Key, value)
endfunction  // 服务器储存数据 区分大小写
function s__Ease_saveGameDataEX takes integer gm,string Key,string value returns nothing
    call RequestExtraBooleanData(39, sc__Gamer_Handle(gm), Key, value, false, 0, 0, 0)
endfunction  // 保存全局存档 可读可写
function s__Ease_saveStore takes string Key,string value returns nothing
    call RequestExtraStringData(37, GetLocalPlayer(), Key, value, false, 0, 0, 0)
endfunction  // 使用商城道具 次数型 仅对次数消耗型商品有效，只能使用不能恢复
function s__Ease_setConsumeMallItem takes integer gm,string Key,integer count returns boolean
    return RequestExtraBooleanData(42, sc__Gamer_Handle(gm), Key, null, false, count, 0, 0)
endfunction  // Flush
function s__Ease_flushDameData takes integer gm,string Key returns boolean
    return s__Ease_saveGameData(gm , Key , null)
endfunction
function s__Ease_IsRedVIP takes integer gm returns boolean
    return DzAPI_Map_IsRedVIP(sc__Gamer_Handle(gm))
endfunction
function s__Ease_IsBlueVIP takes integer gm returns boolean
    return DzAPI_Map_IsBlueVIP(sc__Gamer_Handle(gm))
endfunction
function s__Ease_IsVIP takes integer gm returns boolean
    return DzAPI_Map_GetPlatformVIP(sc__Gamer_Handle(gm)) > 0
endfunction
function s__Ease_IsRPG takes nothing returns boolean
    return DzAPI_Map_IsRPGLobby()
endfunction
function s__Ease_IsRPGLadder takes nothing returns boolean
    return DzAPI_Map_IsRPGLadder()
endfunction
function s__Ease_IsMallItem takes integer gm,string Key returns boolean
    return DzAPI_Map_HasMallItem(sc__Gamer_Handle(gm), Key)
endfunction
function s__Ease_IsGamerValue takes integer gm returns boolean
    if ( DzAPI_Map_GetServerValueErrorCode(sc__Gamer_Handle(gm)) == 0 ) then
        return true
    endif
    return false
endfunction  // 判断是否为鉴赏家
function s__Ease_IsConnoisseur takes integer gm returns boolean
    return RequestExtraBooleanData(48, sc__Gamer_Handle(gm), null, null, false, 0, 0, 0)
endfunction  // 判断是否为战网帐号
function s__Ease_IsBattleNetAccount takes integer gm returns boolean
    return RequestExtraBooleanData(49, sc__Gamer_Handle(gm), null, null, false, 0, 0, 0)
endfunction  // 判断是否为作者
function s__Ease_IsAuthor takes integer gm returns boolean
    return RequestExtraBooleanData(50, sc__Gamer_Handle(gm), null, null, false, 0, 0, 0)
endfunction  // 判断是否为匹配模式 匹配的模式通过获取匹配模式来获取模式
function s__Ease_IsRPGQuickMatch takes nothing returns boolean
    return RequestExtraBooleanData(40, null, null, null, false, 0, 0, 0)
endfunction  // 是否购买了重制版
function s__Ease_IsBuyReforged takes integer gm returns boolean
    return RequestExtraBooleanData(44, sc__Gamer_Handle(gm), null, null, false, 0, 0, 0)
endfunction  // 其他
function s__Ease_orpgBoss takes integer gm,string Key returns nothing
    call DzAPI_Map_OrpgTrigger(sc__Gamer_Handle(gm), Key)
endfunction
function s__Ease_missionComplete takes integer gm,string Key,string value returns nothing
    call DzAPI_Map_MissionComplete(sc__Gamer_Handle(gm), Key, value)
endfunction  // 修改平台功能设置 1=锁定视距 2=显血/显蓝 3=智能施法 true为打开 false为关闭
function s__Ease_enablePlatformSettings takes integer gm,integer option,boolean enable returns boolean
    return RequestExtraBooleanData(43, sc__Gamer_Handle(gm), null, null, enable, option, 0, 0)
endfunction

//library Ease ends
//library Effect:
//private:
//private:
//public:
function s__Effect_create takes string name,real x,real y returns integer
    local integer this = s__Effect__allocate()
    local boolean switch = LoadBoolean(XZHT, GetHandleId(GetLocalPlayer()), 0xF5D496B8)
    if ( switch ) then
        set name = ""
    endif
    set s__Effect_e[this]= AddSpecialEffect(name, x, y)
    set s__Effect_timedBool[this]= false
    set s__Effect_handleId[this]= GetHandleId(s__Effect_e[this])
    set s__Effect_thisSize = s__Effect_thisSize + 1
    call SaveInteger(XZHT, 0xAC33CB10, s__Effect_handleId[this], (this))
    return this
endfunction
function s__Effect_createUnit takes string name,integer u,string attachPointName returns integer
    local integer this = s__Effect__allocate()
    local boolean switch = LoadBoolean(XZHT, GetHandleId(GetLocalPlayer()), 0xF5D496B8)
    if ( switch ) then
        set name = ""
    endif
    set s__Effect_e[this]= AddSpecialEffectTarget(name, sc__Unit_Handle(u), attachPointName)
    set s__Effect_timedBool[this]= false
    set s__Effect_handleId[this]= GetHandleId(s__Effect_e[this])
    set s__Effect_thisSize = s__Effect_thisSize + 1
    call SaveInteger(XZHT, 0xAC33CB10, s__Effect_handleId[this], (this))
    return this
endfunction
function s__Effect_byHandle takes effect e returns integer
    local integer this = 0
    if ( LoadInteger(XZHT, 0xAC33CB10, GetHandleId(e)) > 0 ) then
        return LoadInteger(XZHT, 0xAC33CB10, GetHandleId(e))
    endif
    set this = s__Effect__allocate()
    set s__Effect_e[this]= e
    set s__Effect_timedBool[this]= false
    set s__Effect_handleId[this]= GetHandleId(s__Effect_e[this])
    set s__Effect_thisSize = s__Effect_thisSize + 1
    call SaveInteger(XZHT, 0xAC33CB10, s__Effect_handleId[this], (this))
    return this
endfunction  // 析构函数
function s__Effect_destroy takes integer this returns nothing
    if ( (this) < 1 ) then
        return
    endif
    call RemoveSavedInteger(XZHT, 0xAC33CB10, s__Effect_handleId[this])
    set s__Effect_e[this]= null
    set s__Effect_handleId[this]= 0
    set s__Effect_thisSize = s__Effect_thisSize - 1
    call s__Effect_deallocate(this)
endfunction
function s__Effect_Null takes integer this returns nothing
    if ( not ( s__Effect_timedBool[this] ) ) then
        call s__Effect_destroy(this)
    endif
endfunction
function s__Effect_delete takes integer this returns nothing
    call DestroyEffect(s__Effect_e[this])
    call s__Effect_destroy(this)
endfunction
function s__Effect_clear takes integer this returns nothing
    call sc__Effect_setSize(this,0)
    call DestroyEffect(s__Effect_e[this])
    call s__Effect_destroy(this)
endfunction
function s__Effect_anon__0 takes nothing returns nothing
    local integer this = sc__Timer_thisData()
    set s__Effect_timedBool[this]= false
    call s__Effect_clear(this)
endfunction
function s__Effect_timed takes integer this,real dur returns nothing
    if ( dur > 0 ) then
        set s__Effect_timedBool[this]= true
        call sc__Timer_setData(sc__Timer_create(dur , false , function s__Effect_anon__0),(this))
    else
        call s__Effect_clear(this)
    endif
endfunction  // 重载 ==
function s__Effect__equalto takes integer this,integer c returns boolean
    return s__Effect_e[this] == sc__Effect_Handle(c)
endfunction
function s__Effect_Handle takes integer this returns effect
    return s__Effect_e[this]
endfunction
function s__Effect_HandleId takes integer this returns integer
    return s__Effect_handleId[this]
endfunction
function s__Effect_x takes integer this returns real
    return EXGetEffectX(s__Effect_e[this])
endfunction
function s__Effect_y takes integer this returns real
    return EXGetEffectY(s__Effect_e[this])
endfunction
function s__Effect_z takes integer this returns real
    return EXGetEffectZ(s__Effect_e[this])
endfunction
function s__Effect_size takes integer this returns real
    return EXGetEffectSize(s__Effect_e[this])
endfunction
function s__Effect_move takes integer this,real x,real y returns nothing
    call EXSetEffectXY(s__Effect_e[this], x, y)
endfunction
function s__Effect_setZ takes integer this,real z returns nothing
    call EXSetEffectZ(s__Effect_e[this], z)
endfunction
function s__Effect_setSize takes integer this,real size returns nothing
    call EXSetEffectSize(s__Effect_e[this], size)
endfunction
function s__Effect_setScale takes integer this,real x,real y,real z returns nothing
    call EXEffectMatScale(s__Effect_e[this], x, y, z)
endfunction
function s__Effect_setSpeed takes integer this,real speed returns nothing
    call EXSetEffectSpeed(s__Effect_e[this], speed)
endfunction
function s__Effect_rotateX takes integer this,real angle returns nothing
    call EXEffectMatRotateX(s__Effect_e[this], angle)
endfunction
function s__Effect_rotateY takes integer this,real angle returns nothing
    call EXEffectMatRotateY(s__Effect_e[this], angle)
endfunction
function s__Effect_rotateZ takes integer this,real angle returns nothing
    call EXEffectMatRotateZ(s__Effect_e[this], angle)
endfunction
function s__Effect_reset takes integer this returns nothing
    call EXEffectMatReset(s__Effect_e[this])
endfunction
function s__Effect_anon__1 takes nothing returns nothing
    local integer forIndex
    local integer index =(sc__Timer_thisTimer())
    if ( Effect___Count[index] > 0 ) then
        set forIndex = 1
        loop
            exitwhen ( forIndex > Effect___number[index] )
            call s__Effect_delete(s__Effect_create(Effect___Name[index] , Effect___X[index] + sc__math_cos(sc__math_randomReal(0.0 , 6.28)) * sc__math_randomReal(0.0 , Effect___Range[index]) , Effect___Y[index] + sc__math_sin(sc__math_randomReal(0.0 , 6.28)) * sc__math_randomReal(0.0 , Effect___Range[index])))
            set forIndex = forIndex + 1
        endloop
        set Effect___Count[index]= Effect___Count[index] - 1
    else
        call sc__Timer_delete((index))
    endif
endfunction
function s__Effect_addSpecial takes integer count,real dur,real x,real y,real range,integer n,string name returns nothing
    local integer index
    local integer t = sc__Timer_create(dur , true , function s__Effect_anon__1)
    set index =(t)
    set Effect___number[index]= n
    set Effect___Count[index]= count
    set Effect___X[index]= x
    set Effect___Y[index]= y
    set Effect___Range[index]= range
    set Effect___Name[index]= name
endfunction

//library Effect ends
//library Event:
//private:
//public:
function s__Event___InitEvent_onInit takes nothing returns nothing
    local integer index = 0x557F46F1
    call SaveInteger(XZHT, index, 0xE29775EE, 18)
    call SaveInteger(XZHT, index, 0x83E1315A, 19)
    call SaveInteger(XZHT, index, 0xC84476ED, 20)
    call SaveInteger(XZHT, index, 0x1F3CC196, 21)
    call SaveInteger(XZHT, index, 0xE95736C5, 22)
    call SaveInteger(XZHT, index, 0xC2149095, 23)
    call SaveInteger(XZHT, index, 0x19FA079D, 24)
    call SaveInteger(XZHT, index, 0x75D65DB0, 25)
    call SaveInteger(XZHT, index, 0xF5E124C8, 26)
    call SaveInteger(XZHT, index, 0x9FFFDFF0, 27)
    call SaveInteger(XZHT, index, 0x18D8E573, 28)
    call SaveInteger(XZHT, index, 0xF0675286, 29)
    call SaveInteger(XZHT, index, 0x68137406, 30)
    call SaveInteger(XZHT, index, 0x33B372CA, 31)
    call SaveInteger(XZHT, index, 0x1F861956, 32)
    call SaveInteger(XZHT, index, 0x1F98B59C, 33)
    call SaveInteger(XZHT, index, 0xBFF864BA, 34)
    call SaveInteger(XZHT, index, 0x035484E1, 35)
    call SaveInteger(XZHT, index, 0x5809E2A2, 36)
    call SaveInteger(XZHT, index, 0xEA910E61, 37)
    call SaveInteger(XZHT, index, 0x0469F9AD, 38)
    call SaveInteger(XZHT, index, 0xC8F12353, 39)
    call SaveInteger(XZHT, index, 0x15259E7B, 40)
    call SaveInteger(XZHT, index, 0x09B543A8, 41)
    call SaveInteger(XZHT, index, 0x76CADDC3, 42)
    call SaveInteger(XZHT, index, 0xA52227B8, 43)
    call SaveInteger(XZHT, index, 0x2C70FC36, 44)
    call SaveInteger(XZHT, index, 0x22B6DBFE, 45)
    call SaveInteger(XZHT, index, 0x1D4B2B59, 46)
    call SaveInteger(XZHT, index, 0xDC7209DD, 47)
    call SaveInteger(XZHT, index, 0xD695E7C9, 48)
    call SaveInteger(XZHT, index, 0x9CAB4368, 49)
    call SaveInteger(XZHT, index, 0x73D37628, 50)
    call SaveInteger(XZHT, index, 0xC4B37510, 51)
    call SaveInteger(XZHT, index, 0x5EF57735, 269)
    call SaveInteger(XZHT, index, 0xE91350B9, 270)
    call SaveInteger(XZHT, index, 0x83BFEB86, 271)
    call SaveInteger(XZHT, index, 0xFFC6DA41, 272)
    call SaveInteger(XZHT, index, 0x75878535, 273)
    call SaveInteger(XZHT, index, 0x9F609CA4, 274)
    call SaveInteger(XZHT, index, 0xEF6CF1C5, 275)
    call SaveInteger(XZHT, index, 0xB1D59616, 276)
    call SaveInteger(XZHT, index, 0x4CD525EB, 277) // 玩家属性事件
    call SaveInteger(XZHT, index, 0xED889750, 1)
    call SaveInteger(XZHT, index, 0xD8C6CCA2, 2)
    call SaveInteger(XZHT, index, 0xA5243824, 5)
    call SaveInteger(XZHT, index, 0x7126B262, 4)
    call SaveInteger(XZHT, index, 0x494B3BF6, 6) // 玩家属性判断
    call SaveInteger(XZHT, index, 0x8B2DF96C, 0)
    call SaveInteger(XZHT, index, 0x15285401, 1)
    call SaveInteger(XZHT, index, 0x158D0FAF, 2)
    call SaveInteger(XZHT, index, 0x4D07B33F, 3)
    call SaveInteger(XZHT, index, 0x8CAECE26, 4)
    call SaveInteger(XZHT, index, 0x0FB9AE83, 5)
endfunction
//private:
function s__Event_onOrder takes nothing returns nothing
    call TriggerEvaluate(LoadTriggerHandle(XZHT, 0x750FCCA3, GetIssuedOrderId()))
endfunction
function s__Event_onCast takes nothing returns nothing
    call TriggerEvaluate(LoadTriggerHandle(XZHT, 0x18E41EBE, GetSpellAbilityId()))
endfunction
function s__Event_anon__0 takes nothing returns nothing
    local string data = DzGetTriggerSyncData()
    call sc__Event_executeDiy(data)
    if ( DzGetTriggerSyncPlayer() == GetLocalPlayer() ) then
        set Event_syncEventBool = false
    endif
endfunction
function s__Event_onInit takes nothing returns nothing
    call sc__Event_onSync("KeyDataEvent" , function s__Event_anon__0)
endfunction
//public:
function s__Event_onUnit takes string name,code action returns integer
    local integer i = LoadInteger(XZHT, 0x557F46F1, StringHash(name))
    local integer index = 0
    local triggercondition condition = null
    if ( s__Event_t[i] == null ) then
        set s__Event_t[i]= CreateTrigger()
        set index = 0
        loop
            exitwhen ( index > 15 )
            call TriggerRegisterPlayerUnitEvent(s__Event_t[i], Player(index), ConvertPlayerUnitEvent(i), null)
            set index = index + 1
        endloop
    endif
    set condition = TriggerAddCondition(s__Event_t[i], Filter(action))
    set index = GetHandleId(condition)
    call SaveInteger(XZHT, 0x3617AEA5, index, i)
    call SaveTriggerConditionHandle(XZHT, 0x3617AEA5, index, condition)
    set condition = null
    return index
endfunction  // 玩家单位事件 Example : Event.onUnitForGamer("单位死亡", gamer[0], function action);
function s__Event_onUnitForGamer takes string name,integer gm,code action returns nothing
    local integer i = 16 * LoadInteger(XZHT, 0x557F46F1, StringHash(name)) + sc__Gamer_id(gm)
    if ( s__Event_t[i] == null ) then
        set s__Event_t[i]= CreateTrigger()
        call TriggerRegisterPlayerUnitEvent(s__Event_t[i], sc__Gamer_Handle(gm), ConvertPlayerUnitEvent(i), null)
    endif
    call TriggerAddCondition(s__Event_t[i], Filter(action))
endfunction  // 任意单位发布指定命令事件 Example : Event.onUnitOrder(Order.attack, function action);
function s__Event_onUnitOrder takes integer orderId,code action returns nothing
    if ( not ( s__Event_orderBool ) ) then
        call s__Event_onUnit("发布无目标" , function s__Event_onOrder)
        call s__Event_onUnit("发布指定点" , function s__Event_onOrder)
        call s__Event_onUnit("发布指定目标" , function s__Event_onOrder)
        set s__Event_orderBool = true
    endif
    if ( not ( HaveSavedHandle(XZHT, 0x750FCCA3, orderId) ) ) then
        call SaveTriggerHandle(XZHT, 0x750FCCA3, orderId, CreateTrigger())
    endif
    call TriggerAddCondition(LoadTriggerHandle(XZHT, 0x750FCCA3, orderId), Filter(action))
endfunction  // 任意单位发动指定技能效果 Example : Event.onUnitAbility('A000', function action);
function s__Event_onUnitAbility takes integer abId,code action returns nothing
    if ( not ( s__Event_abilityBool ) ) then
        call s__Event_onUnit("发动技能效果" , function s__Event_onCast)
        set s__Event_abilityBool = true
    endif
    if ( not ( HaveSavedHandle(XZHT, 0x18E41EBE, abId) ) ) then
        call SaveTriggerHandle(XZHT, 0x18E41EBE, abId, CreateTrigger())
    endif
    call TriggerAddCondition(LoadTriggerHandle(XZHT, 0x18E41EBE, abId), Filter(action))
endfunction  // 获取任意单位事件绑定的触发器
function s__Event_getTrigger takes string name returns trigger
    return s__Event_t[LoadInteger(XZHT, 0x557F46F1, StringHash(name))]
endfunction  // 删除任意单位事件回调函数
function s__Event_removeAction takes integer index returns nothing
    if ( HaveSavedInteger(XZHT, 0x3617AEA5, index) ) then
        call TriggerRemoveCondition(s__Event_t[LoadInteger(XZHT, 0x3617AEA5, index)], LoadTriggerConditionHandle(XZHT, 0x3617AEA5, index))
        call RemoveSavedInteger(XZHT, 0x3617AEA5, index)
        call RemoveSavedHandle(XZHT, 0x3617AEA5, index)
    endif
endfunction
//public:
function s__Event_onGamerChat takes code action returns nothing
    local integer index = 0
    if ( not ( HaveSavedHandle(XZHT, 0x0D5CFB99, 0xE8D3D544) ) ) then
        call SaveTriggerHandle(XZHT, 0x0D5CFB99, 0xE8D3D544, CreateTrigger())
        set index = 0
        loop
            exitwhen ( index > 15 )
            call TriggerRegisterPlayerChatEvent(LoadTriggerHandle(XZHT, 0x0D5CFB99, 0xE8D3D544), Player(index), "", true)
            set index = index + 1
        endloop
    endif
    call TriggerAddCondition(LoadTriggerHandle(XZHT, 0x0D5CFB99, 0xE8D3D544), Filter(action))
endfunction  // 任意玩家事件 Example : Event.onGamer(EVENT_PLAYER_END_CINEMATIC, function action); <- ESC事件
function s__Event_onGamer takes playerevent pe,code action returns nothing
    local integer index = 0
    local integer eventId = GetHandleId(pe)
    if ( not ( HaveSavedHandle(XZHT, 0x0D5CFB99, eventId) ) ) then
        call SaveTriggerHandle(XZHT, 0x0D5CFB99, eventId, CreateTrigger())
        set index = 0
        loop
            exitwhen ( index > 15 )
            call TriggerRegisterPlayerEvent(LoadTriggerHandle(XZHT, 0x0D5CFB99, eventId), Player(index), pe)
            set index = index + 1
        endloop
    endif
    call TriggerAddCondition(LoadTriggerHandle(XZHT, 0x0D5CFB99, eventId), Filter(action))
endfunction  // 任意玩家属性事件 Example : Event.onGamerData("金币", ">=", 800000); 金币 or 木材 or 使用人口 or 可用人口 or 人口上限
function s__Event_onGamerData takes string name,string contrast,integer data,code action returns nothing
    local integer index = 0
    local integer nameId = LoadInteger(XZHT, 0x557F46F1, StringHash(name))
    local integer contrastId = LoadInteger(XZHT, 0x557F46F1, StringHash(contrast))
    local integer eventId = nameId + contrastId + data
    if ( not ( HaveSavedHandle(XZHT, 0x0D5CFB99, eventId) ) ) then
        call SaveTriggerHandle(XZHT, 0x0D5CFB99, eventId, CreateTrigger())
        set index = 0
        loop
            exitwhen ( index > 15 )
            call TriggerRegisterPlayerStateEvent(LoadTriggerHandle(XZHT, 0x0D5CFB99, eventId), Player(index), ConvertPlayerState(nameId), ConvertLimitOp(contrastId), I2R(data))
            set index = index + 1
        endloop
    endif
    call TriggerAddCondition(LoadTriggerHandle(XZHT, 0x0D5CFB99, eventId), Filter(action))
endfunction
//public:
function s__Event_onEnter takes rect r,code action returns nothing
    local integer handleId = GetHandleId(r)
    local region rn = null
    local trigger trig = null
    if ( HaveSavedHandle(XZHT, handleId, 0xE97EA516) ) then
        set rn = LoadRegionHandle(XZHT, handleId, 0xE97EA516)
    else
        set rn = CreateRegion()
        call RegionAddRect(rn, r)
        call SaveRegionHandle(XZHT, handleId, 0xE97EA516, rn)
        call SaveRectHandle(XZHT, GetHandleId(rn), 0x5842F644, r)
    endif
    if ( HaveSavedHandle(XZHT, handleId, 0xD456C941) ) then
        set trig = LoadTriggerHandle(XZHT, handleId, 0xD456C941)
    else
        set trig = CreateTrigger()
        call TriggerRegisterEnterRegion(trig, rn, null)
        call SaveTriggerHandle(XZHT, handleId, 0xD456C941, trig)
    endif
    call TriggerAddCondition(trig, Filter(action))
    set rn = null
    set trig = null
endfunction  // 任意单位离开区域事件 Example : Event.onLeave(r, function action);
function s__Event_onLeave takes rect r,code action returns nothing
    local integer handleId = GetHandleId(r)
    local region rn = null
    local trigger trig = null
    if ( HaveSavedHandle(XZHT, handleId, 0xE97EA516) ) then
        set rn = LoadRegionHandle(XZHT, handleId, 0xE97EA516)
    else
        set rn = CreateRegion()
        call RegionAddRect(rn, r)
        call SaveRegionHandle(XZHT, handleId, 0xE97EA516, rn)
        call SaveRectHandle(XZHT, GetHandleId(rn), 0x5842F644, r)
    endif
    if ( HaveSavedHandle(XZHT, handleId, 0x990964E7) ) then
        set trig = LoadTriggerHandle(XZHT, handleId, 0x990964E7)
    else
        set trig = CreateTrigger()
        call TriggerRegisterLeaveRegion(trig, rn, null)
        call SaveTriggerHandle(XZHT, handleId, 0x990964E7, trig)
    endif
    call TriggerAddCondition(trig, Filter(action))
    set rn = null
    set trig = null
endfunction  // 删除规则矩形 Example : Event.removeRect(r);
function s__Event_removeRect takes rect r returns nothing
    local integer handleId = GetHandleId(r)
    if ( HaveSavedHandle(XZHT, handleId, 0xE97EA516) ) then
        call RemoveSavedHandle(XZHT, GetHandleId(LoadRegionHandle(XZHT, handleId, 0xE97EA516)), 0x5842F644)
        call RemoveRegion(LoadRegionHandle(XZHT, handleId, 0xE97EA516))
        call DestroyTrigger(LoadTriggerHandle(XZHT, handleId, 0xD456C941))
        call DestroyTrigger(LoadTriggerHandle(XZHT, handleId, 0x990964E7))
        call FlushChildHashtable(XZHT, handleId)
    endif
    call RemoveRect(r)
endfunction  // 获取触发的规则矩形
function s__Event_triggerRect takes nothing returns rect
    return LoadRectHandle(XZHT, GetHandleId(GetTriggeringRegion()), 0x5842F644)
endfunction
//public:
function s__Event_onDiy takes string name,code action returns integer
    local integer index
    local integer nameId
    local triggercondition condition
    set nameId = StringHash(name)
    if ( not ( HaveSavedHandle(XZHT, 0xB4AF6F97, nameId) ) ) then
        call SaveTriggerHandle(XZHT, 0xB4AF6F97, nameId, CreateTrigger())
        call SaveStr(XZHT, 0xB4AF6F97, GetHandleId(LoadTriggerHandle(XZHT, 0xB4AF6F97, nameId)), name)
        call SaveInteger(XZHT, 0xB4AF6F97, GetHandleId(LoadTriggerHandle(XZHT, 0xB4AF6F97, nameId)), nameId)
    endif
    set condition = TriggerAddCondition(LoadTriggerHandle(XZHT, 0xB4AF6F97, nameId), Filter(action))
    set index = GetHandleId(condition)
    call SaveInteger(XZHT, 0xB4AF6F97, index, nameId)
    call SaveTriggerConditionHandle(XZHT, 0xB4AF6F97, index, condition)
    set condition = null
    return index
endfunction  // 响应自定义事件 Example : Event.executeDiy("自定义事件名"); or Event.executeDiyInt(strHash("自定义事件名"));
function s__Event_executeDiy takes string name returns nothing
    local integer index = StringHash(name)
    if ( HaveSavedHandle(XZHT, 0xB4AF6F97, index) ) then
        call TriggerEvaluate(LoadTriggerHandle(XZHT, 0xB4AF6F97, index))
    endif
endfunction
function s__Event_executeDiyInt takes integer index returns nothing
    if ( HaveSavedHandle(XZHT, 0xB4AF6F97, index) ) then
        call TriggerEvaluate(LoadTriggerHandle(XZHT, 0xB4AF6F97, index))
    endif
endfunction  // 删除函数
function s__Event_destroyDiy takes integer index returns nothing
    if ( HaveSavedInteger(XZHT, 0xB4AF6F97, index) ) then
        call TriggerRemoveCondition(LoadTriggerHandle(XZHT, 0xB4AF6F97, LoadInteger(XZHT, 0xB4AF6F97, index)), LoadTriggerConditionHandle(XWHT, 0xB4AF6F97, index))
        call RemoveSavedInteger(XZHT, 0xB4AF6F97, index)
        call RemoveSavedHandle(XZHT, 0xB4AF6F97, index)
    endif
endfunction  // 获取当前触发事件名
function s__Event_getEventName takes nothing returns string
    return LoadStr(XZHT, 0xB4AF6F97, GetHandleId(GetTriggeringTrigger()))
endfunction  // 获取当前触发的事件名哈希值
function s__Event_getEventIndex takes nothing returns integer
    return LoadInteger(XZHT, 0xB4AF6F97, GetHandleId(GetTriggeringTrigger()))
endfunction  // 绑定数据
function s__Event_setEventData takes string name,integer data returns nothing
    call SaveInteger(XZHT, 0xADD6A331, StringHash(name), data)
endfunction
function s__Event_setEventDataInt takes integer index,integer data returns nothing
    call SaveInteger(XZHT, 0xADD6A331, index, data)
endfunction  // 获取数据
function s__Event_getEventData takes string name returns integer
    return LoadInteger(XZHT, 0xADD6A331, StringHash(name))
endfunction
function s__Event_getEventDataInt takes integer index returns integer
    return LoadInteger(XZHT, 0xADD6A331, index)
endfunction  // 获取绑定当前事件的数据
function s__Event_getTriggerEventData takes nothing returns integer
    return LoadInteger(XZHT, 0xADD6A331, LoadInteger(XZHT, 0xB4AF6F97, GetHandleId(GetTriggeringTrigger())))
endfunction  // 绑定表数据
function s__Event_setEventStr takes integer name,integer index,string data returns nothing
    call SaveStr(Event___DIYHT, name, index, data)
endfunction
function s__Event_setEventInteger takes integer name,integer index,integer data returns nothing
    call SaveInteger(Event___DIYHT, name, index, data)
endfunction
function s__Event_setEventReal takes integer name,integer index,real data returns nothing
    call SaveReal(Event___DIYHT, name, index, data)
endfunction  // 获取表数据
function s__Event_getEventStr takes integer name,integer index returns string
    return LoadStr(Event___DIYHT, name, index)
endfunction
function s__Event_getEventInteger takes integer name,integer index returns integer
    return LoadInteger(Event___DIYHT, name, index)
endfunction
function s__Event_getEventReal takes integer name,integer index returns real
    return LoadReal(Event___DIYHT, name, index)
endfunction
//public:
function s__Event_onSync takes string name,code action returns integer
    local integer index
    local integer nameId
    local triggercondition condition
    set nameId = StringHash(name)
    if ( not ( HaveSavedHandle(XZHT, 0xFD004243, nameId) ) ) then
        call SaveTriggerHandle(XZHT, 0xFD004243, nameId, CreateTrigger())
        call DzTriggerRegisterSyncData(LoadTriggerHandle(XZHT, 0xFD004243, nameId), name, false)
    endif
    set condition = TriggerAddCondition(LoadTriggerHandle(XZHT, 0xFD004243, nameId), Filter(action))
    set index = GetHandleId(condition)
    call SaveInteger(XZHT, 0xFD004243, index, nameId)
    call SaveTriggerConditionHandle(XZHT, 0xFD004243, index, condition)
    set condition = null
    return index
endfunction  // 同步数据
function s__Event_syncData takes string name,string value returns nothing
    call DzSyncData(name, value)
endfunction
function s__Event_destroySync takes integer index returns nothing
    if ( HaveSavedInteger(XZHT, 0xFD004243, index) ) then
        call TriggerRemoveCondition(LoadTriggerHandle(XZHT, 0xFD004243, LoadInteger(XZHT, 0xFD004243, index)), LoadTriggerConditionHandle(XWHT, 0xFD004243, index))
        call RemoveSavedInteger(XZHT, 0xFD004243, index)
        call RemoveSavedHandle(XZHT, 0xFD004243, index)
    endif
endfunction
//public:
function s__Event_callFunc takes string name returns nothing
    call ExecuteFunc(name)
endfunction
function s__Event_callFuncLocal takes string name returns nothing
    call DzExecuteFunc(name)
endfunction
//private:
function s__Event___DamageEvent_AnyUnitDamagedTriggerAction takes nothing returns nothing
    call s__Event_executeDiyInt(0x98724F02)
endfunction  // 蝗虫和非蝗虫单位过滤器
function s__Event___DamageEvent_AnyUnitDamagedFilter takes nothing returns boolean
    if ( GetUnitAbilityLevel(GetFilterUnit(), 'Aloc') <= 0 ) then
        call TriggerRegisterUnitEvent(s__Event___DamageEvent_Trigger, GetFilterUnit(), EVENT_UNIT_DAMAGED)
    endif
    return false
endfunction  // 枚举所有玩家非蝗虫单位并过滤蝗虫单位
function s__Event___DamageEvent_AnyUnitDamagedEnumUnit takes nothing returns nothing
    local integer index
    local group g = CreateGroup()
    set index = 0
    loop
        exitwhen ( index > 15 )
        call GroupEnumUnitsOfPlayer(g, Player(index), s__Event___DamageEvent_filter)
        set index = index + 1
    endloop
    call GroupClear(g)
    call DestroyGroup(g)
    set g = null
endfunction  // 捕获任意单位进入区域并过滤蝗虫单位
function s__Event___DamageEvent_AnyUnitDamagedRegistTriggerUnitEnter takes nothing returns nothing
    local region r = CreateRegion()
    local rect world = GetWorldBounds()
    local trigger trig = CreateTrigger()
    call RegionAddRect(r, world)
    call TriggerRegisterEnterRegion(trig, r, s__Event___DamageEvent_filter)
    call RemoveRect(world)
    set r = null
    set trig = null
    set world = null
endfunction  // 根据 DAMAGE_SWAP_TIMEOUT 时间来定期将 eventTrigger 移入销毁队列,从而排泄触发器事件
function s__Event___DamageEvent_SyStemAnyUnitDamagedSwap takes nothing returns nothing
    local boolean isEnabled = IsTriggerEnabled(s__Event___DamageEvent_Trigger)
    call DisableTrigger(s__Event___DamageEvent_Trigger)
    if ( s__Event___DamageEvent_TriggerToDestory != null ) then
        call DestroyTrigger(s__Event___DamageEvent_TriggerToDestory)
    endif
    set s__Event___DamageEvent_TriggerToDestory = s__Event___DamageEvent_Trigger
    set s__Event___DamageEvent_Trigger = CreateTrigger()
    if ( not isEnabled ) then
        call DisableTrigger(s__Event___DamageEvent_Trigger)
    endif
    call TriggerAddAction(s__Event___DamageEvent_Trigger, function s__Event___DamageEvent_AnyUnitDamagedTriggerAction)
    call s__Event___DamageEvent_AnyUnitDamagedEnumUnit()
endfunction
function s__Event___DamageEvent_onInit takes nothing returns nothing
    if ( true ) then
        set s__Event___DamageEvent_filter = Condition(function s__Event___DamageEvent_AnyUnitDamagedFilter)
        set s__Event___DamageEvent_Trigger = CreateTrigger()
        call TriggerAddAction(s__Event___DamageEvent_Trigger, function s__Event___DamageEvent_AnyUnitDamagedTriggerAction)
        call s__Event___DamageEvent_AnyUnitDamagedEnumUnit()
        call s__Event___DamageEvent_AnyUnitDamagedRegistTriggerUnitEnter()
        if ( true ) then // 每隔 DAMAGE_EVENT_SWAP_TIMEOUT 秒, 将正在使用的 DamageEventTrigger 移入销毁队列
            call TimerStart(CreateTimer(), 600, true, function s__Event___DamageEvent_SyStemAnyUnitDamagedSwap)
        endif
    endif
endfunction

//library Event ends
//library Excretion:
function s__Excretion__deathUnit_action takes nothing returns nothing
    local integer unId = GetHandleId(GetDyingUnit())
    call RemoveSavedReal(XZHT, unId, 0x167A46B9)
    call RemoveSavedReal(XZHT, unId, 0xF8724D8B)
    call RemoveSavedReal(XZHT, unId, 0x12FE7A20)
    call RemoveSavedBoolean(XZHT, unId, 0xE36835B0)
    if ( not ( LoadBoolean(XZHT, unId, 0x50B3D311) ) ) then
        call FlushChildHashtable(XZHT, unId)
    endif
endfunction
function s__Excretion__deathUnit_onInit takes nothing returns nothing
    local integer index
    local trigger trig = CreateTrigger()
    set index = 0
    loop
        exitwhen ( index > 15 )
        call TriggerRegisterPlayerUnitEvent(trig, Player(index), EVENT_PLAYER_UNIT_DEATH, null)
        set index = index + 1
    endloop
    call TriggerAddAction(trig, function s__Excretion__deathUnit_action)
    set trig = null
endfunction
function s__Excretion__deathItem_action takes nothing returns nothing
    local integer itId = GetHandleId(GetSoldItem())
    call FlushChildHashtable(XZHT, itId)
endfunction
function s__Excretion__deathItem_anon__1 takes nothing returns nothing
    local integer it = sc__Item_enumItem()
    if ( sc__Item_life(it) <= 0.0 ) then
        call sc__Item_setLife(it,1.0)
        call sc__Item_delete(it)
    else
        call sc__Item_Null(it)
    endif
endfunction
function s__Excretion__deathItem_anon__0 takes nothing returns nothing
    call sc__Item_enumInRect(bj_mapInitialPlayableArea , function s__Excretion__deathItem_anon__1)
endfunction
function s__Excretion__deathItem_onInit takes nothing returns nothing
    local trigger trig = CreateTrigger()
    local integer index
    set index = 0
    loop
        exitwhen ( index > 15 )
        call TriggerRegisterPlayerUnitEvent(trig, Player(0), EVENT_PLAYER_UNIT_PAWN_ITEM, null)
        set index = index + 1
    endloop
    call TriggerAddAction(trig, function s__Excretion__deathItem_action)
    call sc__Timer_create(180 , true , function s__Excretion__deathItem_anon__0)
    set trig = null
endfunction

//library Excretion ends
//library Frame:
//private:
function s__Frame_onInit takes nothing returns nothing
    local integer index = 0x8FD97086
    call SaveInteger(XZHT, index, 0x7018374A, 0)
    call SaveInteger(XZHT, index, 0x7C8B0583, 1)
    call SaveInteger(XZHT, index, 0xC8594DEF, 2)
    call SaveInteger(XZHT, index, 0xB4AFB9B4, 3)
    call SaveInteger(XZHT, index, 0x683AE6CA, 4) //1.27测试貌似无用
    call SaveInteger(XZHT, index, 0x1E056714, 5)
    call SaveInteger(XZHT, index, 0x4DE275F6, 6) //支持复选框
    call SaveInteger(XZHT, index, 0xA76A8749, 7) //支持复选框
    call SaveInteger(XZHT, index, 0xE8C3472A, 8) //支持类型EDITBOX
    call SaveInteger(XZHT, index, 0x9AA8F69E, 9)
    call SaveInteger(XZHT, index, 0x708631A2, 10)
    call SaveInteger(XZHT, index, 0x46D69794, 11)
    call SaveInteger(XZHT, index, 0xB07625DA, 12) //1.27测试貌似无用
    call SaveInteger(XZHT, index, 0x4BBB89E8, 13)
endfunction
//public:
function s__Frame_createTag takes string Type,string name,integer p,string template,integer id returns integer
    local integer this = s__Frame__allocate()
    set s__Frame_FrameName[this]= name
    set s__Frame_f[this]= DzCreateFrameByTagName(Type, name, sc__Frame_Handle(p), template, id)
    call SaveInteger(XZHT, 0xD86C0ECF, s__Frame_f[this], (this))
    return this
endfunction
function s__Frame_create takes string name,integer p,integer id returns integer
    local integer this = s__Frame__allocate()
    set s__Frame_f[this]= DzCreateFrame(name, sc__Frame_Handle(p), id)
    set s__Frame_FrameName[this]= name
    call SaveInteger(XZHT, 0xD86C0ECF, s__Frame_f[this], (this))
    return this
endfunction
function s__Frame_byHandle takes integer frame returns integer
    local integer this = 0
    if ( LoadInteger(XZHT, 0xD86C0ECF, frame) > 0 ) then
        return LoadInteger(XZHT, 0xD86C0ECF, frame)
    endif
    set this = s__Frame__allocate()
    set s__Frame_f[this]= frame
    call SaveInteger(XZHT, 0xD86C0ECF, s__Frame_f[this], (this))
    return this
endfunction  // 析构函数
function s__Frame_destroy takes integer this returns nothing
    call RemoveSavedInteger(XZHT, 0xD86C0ECF, s__Frame_f[this])
    call s__Frame_deallocate(this)
endfunction
function s__Frame_delete takes integer this returns nothing
    call DzDestroyFrame(s__Frame_f[this])
    call s__Frame_destroy(this)
endfunction  // Event
function s__Frame_scriptEvent takes integer this,string eventId,code action returns nothing
    local integer index = LoadInteger(XZHT, 0x8FD97086, StringHash(eventId))
    call DzFrameSetScriptByCode(s__Frame_f[this], index, action, false)
endfunction  // 注册同步UI事件回调 action为同步执行 已经自动同步
function s__Frame_scriptEventSync takes integer this,string eventId,code action returns nothing
    local integer index = LoadInteger(XZHT, 0x8FD97086, StringHash(eventId))
    call DzFrameSetScriptByCode(s__Frame_f[this], index, action, true)
endfunction  // Get
function s__Frame_Handle takes integer this returns integer
    return s__Frame_f[this]
endfunction
function s__Frame_value takes integer this returns real
    return DzFrameGetValue(s__Frame_f[this])
endfunction
function s__Frame_color takes integer this,integer r,integer g,integer b,integer a returns integer
    return DzGetColor(r, g, b, a)
endfunction
function s__Frame_getTextSize takes integer this returns integer
    return DzFrameGetTextSizeLimit(s__Frame_f[this])
endfunction
function s__Frame_getHeight takes integer this returns real
    return DzFrameGetHeight(s__Frame_f[this])
endfunction
function s__Frame_getWidth takes integer this returns real
    return s__Frame_width[this]
endfunction
function s__Frame_name takes integer this returns string
    return s__Frame_FrameName[this]
endfunction
function s__Frame_getParent takes integer this returns integer
    return s__Frame_byHandle(DzFrameGetParent(s__Frame_f[this]))
endfunction
function s__Frame_sonFind takes string name,integer id returns integer
    return s__Frame_byHandle(DzFrameFindByName(name, id))
endfunction
function s__Frame_sonSimple takes string name,integer id returns integer
    return s__Frame_byHandle(DzSimpleFrameFindByName(name, id))
endfunction
function s__Frame_sonSimpleFontString takes string name,integer id returns integer
    return s__Frame_byHandle(DzSimpleFontStringFindByName(name, id))
endfunction
function s__Frame_sonSimpleTexture takes string name,integer id returns integer
    return s__Frame_byHandle(DzSimpleTextureFindByName(name, id))
endfunction
function s__Frame_triggerFrame takes nothing returns integer
    return s__Frame_byHandle(DzGetTriggerUIEventFrame())
endfunction
function s__Frame_mouseFrame takes nothing returns integer
    return s__Frame_byHandle(DzGetMouseFocus())
endfunction
function s__Frame_getPortrait takes nothing returns integer
    return s__Frame_byHandle(DzFrameGetPortrait())
endfunction
function s__Frame_getMinimap takes nothing returns integer
    return s__Frame_byHandle(DzFrameGetMinimap())
endfunction
function s__Frame_getCommandBarButton takes integer row,integer calumn returns integer
    return s__Frame_byHandle(DzFrameGetCommandBarButton(row, calumn))
endfunction
function s__Frame_getHeroBarButton takes integer index returns integer
    return s__Frame_byHandle(DzFrameGetHeroBarButton(index))
endfunction
function s__Frame_getHeroHPBar takes integer index returns integer
    return s__Frame_byHandle(DzFrameGetHeroHPBar(index))
endfunction
function s__Frame_getHeroManaBar takes integer index returns integer
    return s__Frame_byHandle(DzFrameGetHeroManaBar(index))
endfunction
function s__Frame_getItemBarButton takes integer index returns integer
    return s__Frame_byHandle(DzFrameGetItemBarButton(index))
endfunction
function s__Frame_getMinimapButton takes integer index returns integer
    return s__Frame_byHandle(DzFrameGetMinimapButton(index))
endfunction
function s__Frame_getUpperButtonBarButton takes integer index returns integer
    return s__Frame_byHandle(DzFrameGetUpperButtonBarButton(index))
endfunction
function s__Frame_getTooltip takes nothing returns integer
    return s__Frame_byHandle(DzFrameGetTooltip())
endfunction
function s__Frame_getChatMessage takes nothing returns integer
    return s__Frame_byHandle(DzFrameGetChatMessage())
endfunction
function s__Frame_getUnitMessage takes nothing returns integer
    return s__Frame_byHandle(DzFrameGetUnitMessage())
endfunction
function s__Frame_getTopMessage takes nothing returns integer
    return s__Frame_byHandle(DzFrameGetTopMessage())
endfunction
function s__Frame_getGameUI takes nothing returns integer
    return s__Frame_byHandle(DzGetGameUI())
endfunction
function s__Frame_setPointPs takes integer this,integer p,real x,real y returns nothing
    call DzFrameSetPoint(s__Frame_f[this], 0, s__Frame_Handle(p), 0, x / 16.0 * 0.01, - y / 16.0 * 0.01)
endfunction  // Set
function s__Frame_setPoint takes integer this,integer point,integer p,integer relativePoint,real x,real y returns nothing
    call DzFrameSetPoint(s__Frame_f[this], point, s__Frame_Handle(p), relativePoint, x, y)
endfunction
function s__Frame_setAbsolutePoint takes integer this,integer point,real x,real y returns nothing
    call DzFrameSetAbsolutePoint(s__Frame_f[this], point, x, y)
endfunction
function s__Frame_movePoint takes integer this,integer p returns nothing
    call DzFrameSetAllPoints(s__Frame_f[this], s__Frame_Handle(p))
endfunction
function s__Frame_setScale takes integer this,real scale returns nothing
    call DzFrameSetScale(s__Frame_f[this], scale)
endfunction
function s__Frame_setSize takes integer this,real w,real h returns nothing
    set s__Frame_width[this]= w
    call DzFrameSetSize(s__Frame_f[this], w / 16 * 0.01, h / 16 * 0.01)
endfunction
function s__Frame_setFocus takes integer this,boolean flag returns nothing
    call DzFrameSetFocus(s__Frame_f[this], flag)
endfunction
function s__Frame_setText takes integer this,string text returns nothing
    call DzFrameSetText(s__Frame_f[this], text)
endfunction
function s__Frame_setTextUre takes integer this,string ure,integer flag returns nothing
    call DzFrameSetTexture(s__Frame_f[this], ure, flag)
endfunction
function s__Frame_setAlpha takes integer this,integer alpha returns nothing
    call DzFrameSetAlpha(s__Frame_f[this], alpha)
endfunction
function s__Frame_setColor takes integer this,integer r,integer g,integer b,integer a returns nothing
    call DzFrameSetVertexColor(s__Frame_f[this], DzGetColor(r, g, b, a))
endfunction
function s__Frame_setTextSize takes integer this,integer size returns nothing
    call DzFrameSetTextSizeLimit(s__Frame_f[this], size)
endfunction
function s__Frame_setTooltip takes integer this,integer tooltip returns nothing
    call DzFrameSetTooltip(s__Frame_f[this], tooltip)
endfunction
function s__Frame_cageMouse takes integer this,boolean flag returns nothing
    call DzFrameCageMouse(s__Frame_f[this], flag)
endfunction
function s__Frame_setModel takes integer this,string name,integer modelType,integer flag returns nothing
    call DzFrameSetModel(s__Frame_f[this], name, modelType, flag)
endfunction
function s__Frame_setAnimate takes integer this,integer alpha,boolean flag returns nothing
    call DzFrameSetAnimate(s__Frame_f[this], alpha, flag)
endfunction
function s__Frame_setAnimateOffset takes integer this,real offset returns nothing
    call DzFrameSetAnimateOffset(s__Frame_f[this], offset)
endfunction
function s__Frame_click takes integer this returns nothing
    call DzClickFrame(s__Frame_f[this])
endfunction
function s__Frame_flushPoint takes integer this returns nothing
    call DzFrameClearAllPoints(s__Frame_f[this])
endfunction
function s__Frame_setMixMax takes integer this,real min,real max returns nothing
    call DzFrameSetMinMaxValue(s__Frame_f[this], min, max)
endfunction
function s__Frame_setStep takes integer this,real step returns nothing
    call DzFrameSetStepValue(s__Frame_f[this], step)
endfunction
function s__Frame_setValue takes integer this,real value returns nothing
    call DzFrameSetValue(s__Frame_f[this], value)
endfunction
function s__Frame_enable takes integer this,boolean flag returns nothing
    call DzFrameSetEnable(s__Frame_f[this], flag)
endfunction
function s__Frame_show takes integer this,boolean flag returns nothing
    set s__Frame_showBool[this]= flag
    call DzFrameShow(s__Frame_f[this], flag)
endfunction
function s__Frame_setPriority takes integer this,integer level returns nothing
    call DzFrameSetPriority(s__Frame_f[this], level)
endfunction
function s__Frame_setParent takes integer this,integer p returns nothing
    call DzFrameSetParent(s__Frame_f[this], s__Frame_Handle(p))
endfunction
function s__Frame_setFont takes integer this,string name,real height,integer flag returns nothing
    call DzFrameSetFont(s__Frame_f[this], name, height, flag)
endfunction
function s__Frame_setTextAlignment takes integer this,integer aligh returns nothing
    call DzFrameSetTextAlignment(s__Frame_f[this], aligh)
endfunction
function s__Frame_IsEnable takes integer this returns boolean
    return DzFrameGetEnable(s__Frame_f[this])
endfunction
function s__Frame_IsShow takes integer this returns boolean
    return s__Frame_showBool[this]
endfunction
function s__Frame_loadToc takes string name returns nothing
    call DzLoadToc(name)
endfunction
function s__Frame_hideInterface takes nothing returns nothing
    call DzFrameHideInterface()
endfunction
function s__Frame_enableWideScreen takes boolean flag returns nothing
    call DzEnableWideScreen(flag)
endfunction
function s__Frame_setCustomFovFix takes real value returns nothing
    call DzSetCustomFovFix(value)
endfunction
function s__Frame_editBlackBorders takes real upper,real bottom returns nothing
    call DzFrameEditBlackBorders(upper, bottom)
endfunction
function s__Frame_setWar3MapMap takes string name returns nothing
    call DzSetWar3MapMap(name)
endfunction

//library Frame ends
//library Game:
//private:
function s__Game_onInit takes nothing returns nothing
    set s__Game_ht = sc__Table_create()
endfunction
//public:
//public:
function s__Game_create takes integer gm,fogstate state,real x,real y,real radius,boolean flag returns integer
    local integer this = s__Game__allocate()
    set s__Game_f[this]= CreateFogModifierRadius(sc__Gamer_Handle(gm), state, x, y, radius, true, false)
    set s__Game_handleId[this]= GetHandleId(s__Game_f[this])
    if ( flag ) then
        call FogModifierStart(s__Game_f[this])
    endif
    call SaveInteger(XZHT, 0x4E4211AF, s__Game_handleId[this], (this))
    return this
endfunction  // 规则矩形 创建以where矩形的可见度修正器给玩家 flag = 是否为启用
function s__Game_createRect takes integer gm,fogstate state,rect where,boolean flag returns integer
    local integer this = s__Game__allocate()
    set s__Game_f[this]= CreateFogModifierRect(sc__Gamer_Handle(gm), state, where, true, false)
    set s__Game_handleId[this]= GetHandleId(s__Game_f[this])
    if ( flag ) then
        call FogModifierStart(s__Game_f[this])
    endif
    call SaveInteger(XZHT, 0x4E4211AF, s__Game_handleId[this], (this))
    return this
endfunction
function s__Game_byHandle takes fogmodifier fog returns integer
    local integer this = 0
    if ( LoadInteger(XZHT, 0x4E4211AF, GetHandleId(fog)) > 0 ) then
        return LoadInteger(XZHT, 0x4E4211AF, GetHandleId(fog))
    endif
    set this = s__Game__allocate()
    set s__Game_f[this]= fog
    set s__Game_handleId[this]= GetHandleId(s__Game_f[this])
    call SaveInteger(XZHT, 0x4E4211AF, s__Game_handleId[this], (this))
    return this
endfunction  // 析构函数
function s__Game_destroy takes integer this returns nothing
    call RemoveSavedInteger(XZHT, 0x4E4211AF, s__Game_handleId[this])
    set s__Game_f[this]= null
    call s__Game_deallocate(this)
endfunction
function s__Game_delete takes integer this returns nothing
    call DestroyFogModifier(s__Game_f[this])
    call s__Game_destroy(this)
endfunction  // Get
function s__Game_Handle takes integer this returns fogmodifier
    return s__Game_f[this]
endfunction
function s__Game_HandleId takes integer this returns integer
    return s__Game_handleId[this]
endfunction
function s__Game_open takes integer this returns nothing
    call FogModifierStart(s__Game_f[this])
endfunction
function s__Game_close takes integer this returns nothing
    call FogModifierStop(s__Game_f[this])
endfunction
function s__Game_shadow takes boolean flag returns nothing
    call FogMaskEnable(flag)
endfunction
function s__Game_denseFog takes boolean flag returns nothing
    call FogEnable(flag)
endfunction
function s__Game_IsShadow takes nothing returns boolean
    return IsFogMaskEnabled()
endfunction
function s__Game_IsDenseFog takes nothing returns boolean
    return IsFogEnabled()
endfunction
function s__Game_setFogStateRect takes integer gm,fogstate state,rect where,boolean flag returns nothing
    call SetFogStateRect(sc__Gamer_Handle(gm), state, where, flag)
endfunction
function s__Game_setFogStateRadius takes integer gm,fogstate state,real x,real y,real radius,boolean flag returns nothing
    call SetFogStateRadius(sc__Gamer_Handle(gm), state, x, y, radius, flag)
endfunction
//public:
function s__Game_pause takes boolean flag returns nothing
    call PauseGame(flag)
endfunction
function s__Game_setSpeed takes gamespeed gs returns nothing
    call SetGameSpeed(gs)
endfunction
function s__Game_lockSpeed takes boolean flag returns nothing
    call SetMapFlag(MAP_LOCK_SPEED, flag)
endfunction
function s__Game_lockTrading takes boolean flag returns nothing
    call SetMapFlag(MAP_LOCK_RESOURCE_TRADING, flag)
endfunction
function s__Game_setTime takes real time returns nothing
    call SetFloatGameState(GAME_STATE_TIME_OF_DAY, time)
endfunction
function s__Game_setTimeOfDayScale takes real scalePercent returns nothing
    call SetTimeOfDayScale(scalePercent * 0.01)
endfunction
function s__Game_suspendTimeOfDay takes boolean flag returns nothing
    call SuspendTimeOfDay(flag)
endfunction
function s__Game_doNotSaveReplay takes nothing returns nothing
    call DoNotSaveReplay()
endfunction
function s__Game_setItemSlots takes integer u,integer count returns nothing
    call SetItemTypeSlots(sc__Unit_Handle(u), count)
endfunction
function s__Game_setItemSlotsAll takes integer count returns nothing
    call SetAllItemTypeSlots(count)
endfunction
function s__Game_setUnitSlots takes integer u,integer count returns nothing
    call SetUnitTypeSlots(sc__Unit_Handle(u), count)
endfunction
function s__Game_setUnitSlotsAll takes integer count returns nothing
    call SetAllUnitTypeSlots(count)
endfunction
function s__Game_addItemToStock takes integer itemId,integer u,integer count,integer mdx returns nothing
    call AddItemToStock(sc__Unit_Handle(u), itemId, count, mdx)
endfunction
function s__Game_addItemTostockAll takes integer itemId,integer count,integer mdx returns nothing
    call AddItemToAllStock(itemId, count, mdx)
endfunction
function s__Game_addUnitTostock takes integer unitId,integer u,integer count,integer mdx returns nothing
    call AddUnitToStock(sc__Unit_Handle(u), unitId, count, mdx)
endfunction
function s__Game_addUnitTostockAll takes integer unieId,integer count,integer mdx returns nothing
    call AddUnitToAllStock(unieId, count, mdx)
endfunction
function s__Game_removeItemTostock takes integer itemId,integer u returns nothing
    call RemoveItemFromStock(sc__Unit_Handle(u), itemId)
endfunction
function s__Game_removeItemTostockAll takes integer itemId returns nothing
    call RemoveItemFromAllStock(itemId)
endfunction
function s__Game_removeUnitTostock takes integer unitId,integer u returns nothing
    call RemoveUnitFromStock(sc__Unit_Handle(u), unitId)
endfunction
function s__Game_removeUnitTostockAll takes integer unitId returns nothing
    call RemoveUnitFromAllStock(unitId)
endfunction

//library Game ends
//library Group:
//private:
function s__Group_InCount takes nothing returns nothing
    set s__Group_size = s__Group_size + 1
endfunction
function s__Group_Filter takes nothing returns boolean
    return IsUnitInRangeXY(GetFilterUnit(), s__Group_X, s__Group_Y, s__Group_R)
endfunction
//public:
function s__Group_create takes nothing returns integer
    local integer this = s__Group__allocate()
    set s__Group_g[this]= CreateGroup()
    set s__Group_handleId[this]= GetHandleId(s__Group_g[this])
    set s__Group_thisSize = s__Group_thisSize + 1
    call SaveInteger(XZHT, 0x4944C0AF, s__Group_handleId[this], (this))
    return this
endfunction
function s__Group_byHandle takes group g returns integer
    local integer this = 0
    if ( LoadInteger(XZHT, 0x4944C0AF, GetHandleId(g)) > 0 ) then
        return LoadInteger(XZHT, 0x4944C0AF, GetHandleId(g))
    endif
    set this = s__Group__allocate()
    set s__Group_g[this]= g
    set s__Group_handleId[this]= GetHandleId(s__Group_g[this])
    set s__Group_thisSize = s__Group_thisSize + 1
    call SaveInteger(XZHT, 0x4944C0AF, s__Group_handleId[this], (this))
    return this
endfunction  // 析构函数
function s__Group_destroy takes integer this returns nothing
    if ( (this) < 1 ) then
        return
    endif
    call GroupClear(s__Group_g[this])
    call DestroyGroup(s__Group_g[this])
    call RemoveSavedInteger(XZHT, 0x4944C0AF, s__Group_handleId[this])
    set s__Group_g[this]= null
    set s__Group_handleId[this]= 0
    set s__Group_thisSize = s__Group_thisSize - 1
    call s__Group_deallocate(this)
endfunction
function s__Group_clear takes integer this returns nothing
    call GroupClear(s__Group_g[this])
endfunction  // 重载 ==
function s__Group__equalto takes integer this,integer p returns boolean
    return s__Group_g[this] == sc__Group_Handle(p)
endfunction
function s__Group_Handle takes integer this returns group
    return s__Group_g[this]
endfunction
function s__Group_HandleId takes integer this returns integer
    return s__Group_handleId[this]
endfunction
function s__Group_getUnit takes integer this returns integer
    return sc__Unit_byHandle(FirstOfGroup(s__Group_g[this]))
endfunction
function s__Group_count takes integer this returns integer
    set s__Group_size = 0
    call ForGroup(s__Group_g[this], function s__Group_InCount)
    return s__Group_size
endfunction  // Set
function s__Group_add takes integer this,integer u returns nothing
    call GroupAddUnit(s__Group_g[this], sc__Unit_Handle(u))
endfunction
function s__Group_remove takes integer this,integer u returns nothing
    call GroupRemoveUnit(s__Group_g[this], sc__Unit_Handle(u))
endfunction
function s__Group_enumUnitsInRect takes integer this,rect r,boolexpr filter returns nothing
    call GroupEnumUnitsInRect(s__Group_g[this], r, filter)
endfunction  // 选取矩形内指定玩家的单位添加到单位组
function s__Group_unitsInRectPlayer takes integer this,rect r,integer gm returns nothing
    set bj_groupEnumOwningPlayer = sc__Gamer_Handle(gm)
    call GroupEnumUnitsInRect(s__Group_g[this], r, filterGetUnitsInRectOfPlayer)
endfunction  // 选取X,Y为圆心，radius为半径，满足filter的单位添加到单位组
function s__Group_enumUnitsInArea takes integer this,real x,real y,real radius,boolexpr filter returns nothing
    local integer bId = 0
    set s__Group_X = x
    set s__Group_Y = y
    set s__Group_R = radius
    if ( filter == null ) then
        set filter = Condition(function s__Group_Filter)
    else
        set bId = GetHandleId(filter)
        if ( HaveSavedHandle(XZHT, 0x4944C0AF, bId) ) then
            set filter = LoadBooleanExprHandle(XZHT, 0x4944C0AF, bId)
        else
            set filter = And(Condition(function s__Group_Filter), filter)
            call SaveBooleanExprHandle(XZHT, 0x4944C0AF, bId, filter)
        endif
    endif
    call GroupEnumUnitsInRange(s__Group_g[this], x, y, radius + 197.0, filter)
    set s__Group_X = 0.0
    set s__Group_Y = 0.0
    set s__Group_R = 0.0
endfunction  // 选取X,Y为圆心，radius为半径的单位添加到单位组
function s__Group_unitsInArea takes integer this,real x,real y,real radius returns nothing
    set s__Group_X = x
    set s__Group_Y = y
    set s__Group_R = radius
    call GroupEnumUnitsInRange(s__Group_g[this], x, y, radius + 197.0, Condition(function s__Group_Filter))
    set s__Group_X = 0.0
    set s__Group_Y = 0.0
    set s__Group_R = 0.0
endfunction  // 选取X,Y为起始坐标，指定角度和指定长度及宽度的直线范围单位到单位组
function s__Group_finLine takes integer this,real x,real y,real angle,real len,real width returns nothing
    local unit u = null
    local real dx = x + len * sc__math_cosBJ(angle)
    local real dy = y + len * sc__math_sinBJ(angle)
    local real a = y - dy
    local real b = dx - x
    local real c =- a * x - b * y
    local real l = sc__math_pow(a * a + b * b , 0.5)
    local group gp = CreateGroup()
    set width = width / 2
    set len = len / 2
    set x =( x + dx ) / 2
    set y =( y + dy ) / 2
    call GroupEnumUnitsInRange(gp, x, y, len, null)
    set u = FirstOfGroup(gp)
    loop
        exitwhen ( u == null )
        call GroupRemoveUnit(gp, u)
        if ( sc__math_squareRoot(sc__math_pow(GetUnitX(u) - x , 2) + sc__math_pow(GetUnitY(u) - y , 2)) < len ) then
            if ( width >= RAbsBJ(a * GetUnitX(u) + b * GetUnitY(u) + c) / l ) then
                call GroupAddUnit(s__Group_g[this], u)
            endif
        endif
    endloop
    call GroupClear(gp)
    call DestroyGroup(gp)
    set u = null
    set gp = null
endfunction  // Boolean
function s__Group_IsInUnit takes integer this,integer u returns boolean
    return IsUnitInGroup(sc__Unit_Handle(u), s__Group_g[this])
endfunction
function s__Group_IsUnitGroup takes integer g,integer u returns boolean
    return IsUnitInGroup(sc__Unit_Handle(u), s__Group_Handle(g))
endfunction
function s__Group_action takes integer this,code Action returns nothing
    call ForGroup(s__Group_g[this], Action)
endfunction

//library Group ends
//library Hard:
//private:
//public:
function s__Hard_mouseGameX takes nothing returns real
    return DzGetMouseTerrainX()
endfunction
function s__Hard_mouseGameY takes nothing returns real
    return DzGetMouseTerrainY()
endfunction
function s__Hard_mouseGameZ takes nothing returns real
    return DzGetMouseTerrainZ()
endfunction
function s__Hard_mouseX takes nothing returns integer
    return DzGetMouseX()
endfunction
function s__Hard_mouseY takes nothing returns integer
    return DzGetMouseY()
endfunction
function s__Hard_mouseXRelative takes nothing returns integer
    return DzGetMouseXRelative()
endfunction
function s__Hard_mouseYRelative takes nothing returns integer
    return DzGetMouseYRelative()
endfunction
function s__Hard_windowWidth takes nothing returns integer
    return DzGetWindowWidth()
endfunction
function s__Hard_windowHeight takes nothing returns integer
    return DzGetWindowWidth()
endfunction
function s__Hard_windowX takes nothing returns integer
    return DzGetWindowX()
endfunction
function s__Hard_windowY takes nothing returns integer
    return DzGetWindowY()
endfunction
function s__Hard_getKey takes nothing returns integer
    return DzGetTriggerKey()
endfunction
function s__Hard_getWheelValue takes nothing returns integer
    return DzGetWheelDelta()
endfunction
function s__Hard_mouseUnit takes nothing returns integer
    return sc__Unit_byHandle(DzGetUnitUnderMouse())
endfunction
function s__Hard_mouseItem takes nothing returns integer
    return sc__Item_byHandle(sc__Turn_item(GetHandleId(DzGetUnitUnderMouse())))
endfunction
function s__Hard_setMousePos takes integer x,integer y returns nothing
    call DzSetMousePos(x, y)
endfunction
function s__Hard_setMemory takes integer address,real value returns nothing
    call DzSetMemory(address, value)
endfunction
function s__Hard_IsKeyDown takes integer Key returns boolean
    return DzIsKeyDown(Key)
endfunction
function s__Hard_IsMouseGame takes nothing returns boolean
    return DzIsMouseOverUI()
endfunction
function s__Hard_IsWindowActive takes nothing returns boolean
    return DzIsWindowActive()
endfunction
function s__Hard_mouseEvent takes integer btn,integer status,code action returns nothing
    if ( s__Hard_keyBool[btn + status + 1] ) then
        return
    endif
    set s__Hard_keyBool[btn + status + 1]= true
    call DzTriggerRegisterMouseEventByCode(null, btn, status, false, action)
endfunction  // 注册异步按键事件，无法在本地环境内执行触发器 status = 触发方式，0为松开 1为按下
function s__Hard_keyEvent takes integer keyData,integer status,code action returns nothing
    if ( s__Hard_keyBool[keyData + status + 1] ) then
        return
    endif
    set s__Hard_keyBool[keyData + status + 1]= true
    call DzTriggerRegisterKeyEventByCode(null, keyData, status, false, action)
endfunction  // 注册异步鼠标滚轮事件，无法在本地环境内执行触发器
function s__Hard_mouseWheelEvent takes code action returns nothing
    if ( s__Hard_mouseWheelBool ) then
        return
    endif
    set s__Hard_mouseWheelBool = true
    call DzTriggerRegisterMouseWheelEventByCode(null, false, action)
endfunction  // 注册异步鼠标移动事件，无法在本地环境内执行触发器
function s__Hard_mouseMoveEvent takes code action returns nothing
    if ( s__Hard_mouseMoveBool ) then
        return
    endif
    set s__Hard_mouseMoveBool = true
    call DzTriggerRegisterMouseMoveEventByCode(null, false, action)
endfunction  // 注册异步窗口大小变化事件，无法在本地环境内执行触发器
function s__Hard_windowResizeEvent takes code action returns nothing
    if ( s__Hard_windowResizeBool ) then
        return
    endif
    set s__Hard_windowResizeBool = true
    call DzTriggerRegisterWindowResizeEventByCode(null, false, action)
endfunction  // 注册异步界面更新绘制事件，无法在本地环境内执行触发器
function s__Hard_updateCallEvent takes code action returns nothing
    if ( s__Hard_updateCallBool ) then
        return
    endif
    set s__Hard_updateCallBool = true
    call DzFrameSetUpdateCallbackByCode(action)
endfunction

//library Hard ends
//library Input:
//public:
//public:
function s__Input_triggerKey takes nothing returns integer
    return DzGetTriggerKey()
endfunction

//library Input ends
//library JAPI:
// AI

// Unit




// Ability












// Item


// Buff
// native EXGetBuffDataString     takes integer buffcode, integer data_type returns string
// native EXSetBuffDataString     takes integer buffcode, integer data_type, string value returns boolean
// Damage


// Effect













// Other




//library JAPI ends
//library Math:
//public:
function s__math_randomReal takes real low,real high returns real
    return GetRandomReal(low, high)
endfunction
function s__math_randomInt takes integer low,integer high returns integer
    return GetRandomInt(low, high)
endfunction
function s__math_random takes nothing returns real
    return GetRandomReal(0.01, 1.0)
endfunction
function s__math_IsRandomInt takes integer value returns boolean
    return s__math_randomInt(1 , 100) <= value
endfunction
function s__math_randomRectX takes rect r returns real
    return GetRandomReal(GetRectMinX(r), GetRectMaxX(r))
endfunction
function s__math_randomRectY takes rect r returns real
    return GetRandomReal(GetRectMinY(r), GetRectMaxY(r))
endfunction
function s__math_sin takes real r returns real
    return Sin(r)
endfunction
function s__math_cos takes real r returns real
    return Cos(r)
endfunction
function s__math_tan takes real r returns real
    return Tan(r)
endfunction
function s__math_asin takes real r returns real
    return Asin(r)
endfunction
function s__math_acos takes real r returns real
    return Acos(r)
endfunction
function s__math_atan takes real r returns real
    return Atan(r)
endfunction
function s__math_atan2 takes real y,real x returns real
    return Atan2(y, x)
endfunction
function s__math_pow takes real x,real power returns real
    return Pow(x, power)
endfunction
function s__math_squareRoot takes real x returns real
    return SquareRoot(x)
endfunction
function s__math_sinBJ takes real degrees returns real
    return Sin(degrees * bj_DEGTORAD)
endfunction
function s__math_cosBJ takes real degrees returns real
    return Cos(degrees * bj_DEGTORAD)
endfunction
function s__math_tanBJ takes real degrees returns real
    return Tan(degrees * bj_DEGTORAD)
endfunction
function s__math_asinBJ takes real degrees returns real
    return Asin(degrees) * bj_DEGTORAD
endfunction
function s__math_acosBJ takes real degrees returns real
    return Acos(degrees) * bj_DEGTORAD
endfunction
function s__math_atanBJ takes real degrees returns real
    return Atan(degrees) * bj_DEGTORAD
endfunction
function s__math_atan2BJ takes real x,real y returns real
    return Atan2(y, x) * bj_DEGTORAD
endfunction
function s__math_miR2I takes real r returns integer
    return R2I(r * 100 + 0.5) / 100
endfunction
function s__math_miR2S takes real r returns string
    return I2S(s__math_miR2I(r))
endfunction
function s__math_miR2R takes real r returns real
    return I2R(s__math_miR2I(r))
endfunction
function s__math_miR2SP takes real r returns string
    return I2S(R2I(r * 100 + 0.5))
endfunction
function s__math_deg2Rad takes real degrees returns real
    return Deg2Rad(degrees)
endfunction
function s__math_rad2Deg takes real radians returns real
    return Rad2Deg(radians)
endfunction
function s__math_includAngle takes real a,real b returns real
    local real c
    if ( a < 0 ) then
        set a = a + 360
    endif
    if ( b < 0 ) then
        set b = b + 360
    endif
    set c = a - b
    if ( c < 0 ) then
        set c =- c
    endif
    if ( c > 180 ) then
        set c = 360 - c
    endif
    return c
endfunction  // 两个单位的反正切
function s__math_unitAtan2 takes integer u,integer em returns real
    return s__math_atan2(sc__Unit_y(em) - sc__Unit_y(u) , sc__Unit_x(em) - sc__Unit_x(u))
endfunction
function s__math_lineUnitX takes integer u,real dist,real angle returns real
    return sc__Unit_x(u) + dist * s__math_cos(angle * bj_DEGTORAD)
endfunction
function s__math_lineUnitY takes integer u,real dist,real angle returns real
    return sc__Unit_y(u) + dist * s__math_sin(angle * bj_DEGTORAD)
endfunction
function s__math_unitAngleX takes integer u,integer em returns real
    return s__math_cos(( bj_RADTODEG * s__math_unitAtan2(u , em) ) * bj_DEGTORAD)
endfunction
function s__math_unitAngleY takes integer u,integer em returns real
    return s__math_sin(( bj_RADTODEG * s__math_unitAtan2(u , em) ) * bj_DEGTORAD)
endfunction
function s__math_unitAngle takes integer u,integer em returns real
    local real angle = s__math_rad2Deg(s__math_unitAtan2(u , em))
    if ( angle < 0 ) then
        set angle = angle + 360
    endif
    return angle
endfunction  // 两个坐标的角度 [角度制]
function s__math_xyAngle takes real x1,real y1,real x2,real y2 returns real
    local real angle = s__math_rad2Deg(s__math_atan2(y2 - y1 , x2 - x1))
    if ( angle < 0 ) then
        set angle = angle + 360
    endif
    return angle
endfunction  // 两个坐标的距离
function s__math_xyDistance takes real x1,real y1,real x2,real y2 returns real
    local real dx = x2 - x1
    local real dy = y2 - y1
    return s__math_squareRoot(dx * dx + dy * dy)
endfunction  // 两个单位的距离
function s__math_unitDistance takes integer u,integer em returns real
    local real dx = sc__Unit_x(em) - sc__Unit_x(u)
    local real dy = sc__Unit_y(em) - sc__Unit_y(u)
    return s__math_squareRoot(dx * dx + dy * dy)
endfunction  // 单位到坐标的距离
function s__math_unitDistanceXY takes integer u,real x,real y returns real
    local real dx = x - sc__Unit_x(u)
    local real dy = y - sc__Unit_y(u)
    return s__math_squareRoot(dx * dx + dy * dy)
endfunction
function s__RandomInt_destroy takes integer this returns nothing
    call FlushChildHashtable(s__RandomInt_ht, (this))
    call s__RandomInt_deallocate(this)
endfunction  // 重置当前随机池的随机数 参数为下标和上标,下标不可以<=0
function s__RandomInt_reset takes integer this,integer min,integer max returns nothing
    local integer index
    if ( min > max ) then
        //Debug:
        call BJDebugMsg("RandomInt:reset 随机池范围出错,参数max不能小于min.")
        return
    endif
    call FlushChildHashtable(s__RandomInt_ht, (this))
    if ( min <= 0 ) then
        set min = 1
    endif
    set s__RandomInt_min[this]= min
    set s__RandomInt_max[this]= max
    set index = s__RandomInt_min[this]
    loop
        exitwhen ( index > s__RandomInt_max[this] )
        call SaveInteger(s__RandomInt_ht, (this), index, index)
        set index = index + 1
    endloop
endfunction  // 从当前随机池子剩余的数中抽出随机数.如果随机池子为空,返回0
function s__RandomInt_getInt takes integer this returns integer
    local integer Int = 0
    local integer N
    if ( s__RandomInt_max[this] > 0 ) then
        set N = GetRandomInt(s__RandomInt_min[this], s__RandomInt_max[this])
        set Int = LoadInteger(s__RandomInt_ht, (this), N)
        call SaveInteger(s__RandomInt_ht, (this), N, LoadInteger(s__RandomInt_ht, (this), s__RandomInt_max[this]))
        set s__RandomInt_max[this]= s__RandomInt_max[this] - 1
    else
        //Debug:
        call BJDebugMsg("随机池子当中所有随机数已经随出完毕")
    endif
    return Int
endfunction  // 声明随机类实例 参数为下标和上标,下标不可以<=0
function s__RandomInt_create takes integer min,integer max returns integer
    local integer this = s__RandomInt__allocate()
    local integer index
    if ( min > max ) then
        //Debug:
        call BJDebugMsg("RandomInt:new 随机池范围出错,参数max不能小于min.")
        call s__RandomInt_destroy(this)
        return 0
    endif
    if ( min <= 0 ) then
        set min = 1
    endif
    set s__RandomInt_min[this]= min
    set s__RandomInt_max[this]= max
    set index = s__RandomInt_min[this]
    loop
        exitwhen ( index > s__RandomInt_max[this] )
        call SaveInteger(s__RandomInt_ht, (this), index, index)
        set index = index + 1
    endloop
    return this
endfunction
function s__RandomInt_onInit takes nothing returns nothing
    set s__RandomInt_ht = InitHashtable()
endfunction

//library Math ends
//library Object:
//private:
//public:
function s__Object___UnitType_data takes integer id,string data returns string
    return EXExecuteScript("(require'jass.slk').unit[" + I2S(id) + "]." + data)
endfunction
function s__Object___UnitType_IsHero takes integer id returns boolean
    return IsHeroUnitId(id)
endfunction
function s__Object___UnitType_IsType takes integer id,unittype tp returns boolean
    return IsUnitIdType(id, tp)
endfunction
function s__Object___UnitType_made takes integer id returns integer
    return GetFoodMade(id)
endfunction
function s__Object___UnitType_used takes integer id returns integer
    return GetFoodUsed(id)
endfunction
function s__Object___UnitType_value takes integer id returns integer
    return GetUnitPointValueByType(id)
endfunction
//public:
function s__Object___ItemType_data takes integer id,string data returns string
    return EXExecuteScript("(require'jass.slk').item[" + I2S(id) + "]." + data)
endfunction
function s__Object___ItemType_icon takes integer id returns string
    return EXGetItemDataString(id, 1)
endfunction
function s__Object___ItemType_name takes integer id returns string
    return EXGetItemDataString(id, 4)
endfunction
function s__Object___ItemType_tip takes integer id returns string
    return EXGetItemDataString(id, 3)
endfunction
function s__Object___ItemType_setIcon takes integer id,string value returns boolean
    return EXSetItemDataString(id, 1, value)
endfunction
function s__Object___ItemType_setName takes integer id,string value returns boolean
    return EXSetItemDataString(id, 4, value)
endfunction
function s__Object___ItemType_setTip takes integer id,string value returns boolean
    return EXSetItemDataString(id, 3, value)
endfunction
function s__Object___ItemType_IsPawnable takes integer id returns boolean
    return IsItemIdPawnable(id)
endfunction
function s__Object___ItemType_IsPowerup takes integer id returns boolean
    return IsItemIdPowerup(id)
endfunction
function s__Object___ItemType_IsSellable takes integer id returns boolean
    return IsItemIdSellable(id)
endfunction
//public:
function s__Object___AbilityType_data takes integer id,string data returns string
    return EXExecuteScript("(require'jass.slk').ability[" + I2S(id) + "]." + data)
endfunction
//public:
function s__Object___BuffType_data takes integer id,string data returns string
    return EXExecuteScript("(require'jass.slk').buff[" + I2S(id) + "]." + data)
endfunction
//public:
function s__Object___TechType_data takes integer id,string data returns string
    return EXExecuteScript("(require'jass.slk').upgrade[" + I2S(id) + "]." + data)
endfunction
//public:
function s__Object___DestructableType_data takes integer id,string data returns string
    return EXExecuteScript("(require'jass.slk').destructable[" + I2S(id) + "]." + data)
endfunction
//public:
function s__Object___DoodadType_data takes integer id,string data returns string
    return EXExecuteScript("(require'jass.slk').doodad[" + I2S(id) + "]." + data)
endfunction
//private:
function s__Object_onInit takes nothing returns nothing
    set s__Object_Unit = s__Object___UnitType__allocate()
    set s__Object_Item = s__Object___ItemType__allocate()
    set s__Object_Ability = s__Object___AbilityType__allocate()
    set s__Object_Buff = s__Object___BuffType__allocate()
    set s__Object_Tech = s__Object___TechType__allocate()
    set s__Object_Destructable = s__Object___DestructableType__allocate()
    set s__Object_Doodad = s__Object___DoodadType__allocate()
endfunction
//public:
function s__Object_name takes integer id returns string
    return GetObjectName(id)
endfunction

//library Object ends
//library Order:
//public:  // This is an order with no target that opens up the build menu of a unit that can build structures.
//public:

//library Order ends
//library Panel:
//private:
//public:
function s__Panle_create takes integer row,integer column,string label returns integer
    local integer this = s__Panle__allocate()
    set s__Panle_b[this]= CreateMultiboard()
    set s__Panle_handleId[this]= GetHandleId(s__Panle_b[this])
    call MultiboardSetRowCount(s__Panle_b[this], row)
    call MultiboardSetColumnCount(s__Panle_b[this], column)
    call MultiboardSetTitleText(s__Panle_b[this], label)
    call SaveInteger(XZHT, 0x85459DCA, s__Panle_handleId[this], (this))
    return this
endfunction
function s__Panle_byHandle takes multiboard m returns integer
    local integer this = 0
    if ( LoadInteger(XZHT, 0x85459DCA, GetHandleId(m)) > 0 ) then
        return LoadInteger(XZHT, 0x85459DCA, GetHandleId(m))
    endif
    set this = s__Panle__allocate()
    set s__Panle_b[this]= m
    set s__Panle_handleId[this]= GetHandleId(s__Panle_b[this])
    call SaveInteger(XZHT, 0x85459DCA, s__Panle_handleId[this], (this))
    return this
endfunction  // 析构函数
function s__Panle_destroy takes integer this returns nothing
    set s__Panle_b[this]= null
    call RemoveSavedInteger(XZHT, 0x85459DCA, s__Panle_handleId[this])
    call s__Panle_deallocate(this)
endfunction
function s__Panle_delete takes integer this returns nothing
    call MultiboardClear(s__Panle_b[this])
    call DestroyMultiboard(s__Panle_b[this])
    call s__Panle_destroy(this)
endfunction  // 清空多面板所有行和列
function s__Panle_clear takes integer this returns nothing
    call MultiboardClear(s__Panle_b[this])
endfunction  // Get
function s__Panle_Handle takes integer this returns multiboard
    return s__Panle_b[this]
endfunction
function s__Panle_HandleId takes integer this returns integer
    return s__Panle_handleId[this]
endfunction
function s__Panle_Title takes integer this returns string
    return MultiboardGetTitleText(s__Panle_b[this])
endfunction
function s__Panle_row takes integer this returns integer
    return MultiboardGetRowCount(s__Panle_b[this])
endfunction
function s__Panle_column takes integer this returns integer
    return MultiboardGetColumnCount(s__Panle_b[this])
endfunction
function s__Panle_show takes integer this,boolean flag returns nothing
    call MultiboardDisplay(s__Panle_b[this], flag)
endfunction
function s__Panle_minimize takes integer this,boolean flag returns nothing
    call MultiboardMinimize(s__Panle_b[this], not flag)
endfunction
function s__Panle_setTitle takes integer this,string text returns nothing
    call MultiboardSetTitleText(s__Panle_b[this], text)
endfunction
function s__Panle_setRow takes integer this,integer row returns nothing
    call MultiboardSetRowCount(s__Panle_b[this], row)
endfunction
function s__Panle_setColumn takes integer this,integer column returns nothing
    call MultiboardSetColumnCount(s__Panle_b[this], column)
endfunction
function s__Panle_setTitleColor takes integer this,integer r,integer g,integer b,integer a returns nothing
    call MultiboardSetTitleTextColor(s__Panle_b[this], r, g, b, a)
endfunction
function s__Panle_setStyle takes integer this,boolean txet,boolean icons returns nothing
    call MultiboardSetItemsStyle(s__Panle_b[this], txet, icons)
endfunction
function s__Panle_setTxet takes integer this,string txet returns nothing
    call MultiboardSetItemsValue(s__Panle_b[this], txet)
endfunction
function s__Panle_setTxerColor takes integer this,integer r,integer g,integer b,integer a returns nothing
    call MultiboardSetItemsValueColor(s__Panle_b[this], r, g, b, a)
endfunction
function s__Panle_setWidth takes integer this,real width returns nothing
    call MultiboardSetItemsWidth(s__Panle_b[this], width / 100.0)
endfunction
function s__Panle_setIcons takes integer this,string route returns nothing
    call MultiboardSetItemsIcon(s__Panle_b[this], route)
endfunction
function s__Panle_setShowRule takes boolean flag returns nothing
    call MultiboardSuppressDisplay(flag)
endfunction
function s__Panle_setDitemStyle takes integer this,integer row,integer column,boolean txet,boolean icons returns nothing
    if ( row < 1 ) then
        set row = 1
    endif
    if ( column < 1 ) then
        set column = 1
    endif
    set s__Panle_d = MultiboardGetItem(s__Panle_b[this], row - 1, column - 1)
    call MultiboardSetItemStyle(s__Panle_d, txet, icons)
    call MultiboardReleaseItem(s__Panle_d)
endfunction  // 设置指定项目文本
function s__Panle_setDitemTxet takes integer this,integer row,integer column,string txet returns nothing
    if ( row < 1 ) then
        set row = 1
    endif
    if ( column < 1 ) then
        set column = 1
    endif
    set s__Panle_d = MultiboardGetItem(s__Panle_b[this], row - 1, column - 1)
    call MultiboardSetItemValue(s__Panle_d, txet)
    call MultiboardReleaseItem(s__Panle_d)
endfunction  // 设置指定项目文本颜色 红绿蓝 透明 0-255
function s__Panle_setDitemTxetColor takes integer this,integer row,integer column,integer r,integer g,integer b,integer a returns nothing
    if ( row < 1 ) then
        set row = 1
    endif
    if ( column < 1 ) then
        set column = 1
    endif
    set s__Panle_d = MultiboardGetItem(s__Panle_b[this], row - 1, column - 1)
    call MultiboardSetItemValueColor(s__Panle_d, r, g, b, a)
    call MultiboardReleaseItem(s__Panle_d)
endfunction  // 设置指定项目宽度 宽度为百分比
function s__Panle_setDitemWidth takes integer this,integer row,integer column,real width returns nothing
    if ( row < 1 ) then
        set row = 1
    endif
    if ( column < 1 ) then
        set column = 1
    endif
    set s__Panle_d = MultiboardGetItem(s__Panle_b[this], row - 1, column - 1)
    call MultiboardSetItemWidth(s__Panle_d, width / 100.0)
    call MultiboardReleaseItem(s__Panle_d)
endfunction  // 设置指定项目图标
function s__Panle_setDitemIcons takes integer this,integer row,integer column,string route returns nothing
    if ( row < 1 ) then
        set row = 1
    endif
    if ( column < 1 ) then
        set column = 1
    endif
    set s__Panle_d = MultiboardGetItem(s__Panle_b[this], row - 1, column - 1)
    call MultiboardSetItemIcon(s__Panle_d, route)
    call MultiboardReleaseItem(s__Panle_d)
endfunction  // Boolean
function s__Panle_IsDisplayed takes integer this returns boolean
    return IsMultiboardDisplayed(s__Panle_b[this])
endfunction
function s__Panle_IsMinimized takes integer this returns boolean
    return not ( IsMultiboardMinimized(s__Panle_b[this]) )
endfunction

//library Panel ends
//library Point:
//private:
//private:
//private:
function s__Point_onInit takes nothing returns nothing
    set s__Point_point = Location(0.0, 0.0)
    set s__Point_pFind = Rect(0., 0., 128., 128.)
    set s__Point_pItem = CreateItem('wolg', 0, 0)
    call SetItemVisible(s__Point_pItem, false)
endfunction
//public:
function s__Point_create takes real x,real y returns integer
    local integer this = s__Point__allocate()
    set s__Point_p[this]= Location(x, y)
    set s__Point_thisSize = s__Point_thisSize + 1
    return this
endfunction
function s__Point_byHandle takes location p returns integer
    local integer this = s__Point__allocate()
    set s__Point_p[this]= p
    set s__Point_thisSize = s__Point_thisSize + 1
    return this
endfunction  // 析构函数
function s__Point_Null takes integer this returns nothing
    if ( (this) < 1 ) then
        return
    endif
    set s__Point_p[this]= null
    set s__Point_thisSize = s__Point_thisSize - 1
    call s__Point_deallocate(this)
endfunction
function s__Point_delete takes integer this returns nothing
    call RemoveLocation(s__Point_p[this])
    call s__Point_Null(this)
endfunction  // 重载 ==
function s__Point__equalto takes integer this,integer d returns boolean
    return s__Point_p[this] == sc__Point_Handle(d)
endfunction
function s__Point_Handle takes integer this returns location
    return s__Point_p[this]
endfunction
function s__Point_HandleId takes integer this returns integer
    return GetHandleId(s__Point_p[this])
endfunction
function s__Point_x takes integer this returns real
    return GetLocationX(s__Point_p[this])
endfunction
function s__Point_y takes integer this returns real
    return GetLocationY(s__Point_p[this])
endfunction
function s__Point_z takes integer this returns real
    return GetLocationZ(s__Point_p[this])
endfunction
function s__Point_getFloorZ takes real x,real y returns real
    call MoveLocation(s__Point_point, x, y)
    return GetLocationZ(s__Point_point)
endfunction  // 获取悬崖层面
function s__Point_getCliffLevel takes real x,real y returns integer
    return GetTerrainCliffLevel(x, y)
endfunction
function s__Point_move takes integer this,real x,real y returns nothing
    call MoveLocation(s__Point_p[this], x, y)
endfunction
function s__Point_IsRect takes rect r,real x,real y returns boolean
    return x <= GetRectMaxX(r) and y <= GetRectMaxY(r) and x >= GetRectMinX(r) and y >= GetRectMinY(r)
endfunction  // 是否为深水地形
function s__Point_IsDeepWater takes real x,real y returns boolean
    return not ( IsTerrainPathable(x, y, PATHING_TYPE_FLOATABILITY) ) and IsTerrainPathable(x, y, PATHING_TYPE_WALKABILITY)
endfunction  // 是否为浅水地形
function s__Point_IsShallowWater takes real x,real y returns boolean
    return not ( IsTerrainPathable(x, y, PATHING_TYPE_FLOATABILITY) ) and not ( IsTerrainPathable(x, y, PATHING_TYPE_WALKABILITY) ) and IsTerrainPathable(x, y, PATHING_TYPE_BUILDABILITY)
endfunction  // 是否为陆地地形
function s__Point_IsLand takes real x,real y returns boolean
    return IsTerrainPathable(x, y, PATHING_TYPE_FLOATABILITY)
endfunction  // 是否为平台
function s__Point_IsPlatform takes real x,real y returns boolean
    return not ( IsTerrainPathable(x, y, PATHING_TYPE_FLOATABILITY) ) and not ( IsTerrainPathable(x, y, PATHING_TYPE_WALKABILITY) ) and not ( IsTerrainPathable(x, y, PATHING_TYPE_BUILDABILITY) )
endfunction  // 是否可行走
function s__Point_anon__0 takes nothing returns nothing
    if ( IsItemVisible(GetEnumItem()) ) then
        set s__Point_pHid[s__Point_HidMax]= GetEnumItem()
        call SetItemVisible(s__Point_pHid[s__Point_HidMax], false)
        set s__Point_HidMax = s__Point_HidMax + 1
    endif
endfunction  // 尝试移动测试项并获取其坐标
function s__Point_IsWalkable takes real x,real y returns boolean
    call MoveRectTo(s__Point_pFind, x, y)
    call EnumItemsInRect(s__Point_pFind, null, function s__Point_anon__0)
    call SetItemPosition(s__Point_pItem, x, y)
    set s__Point_X = GetItemX(s__Point_pItem)
    set s__Point_Y = GetItemY(s__Point_pItem) // 再藏起来
    call SetItemVisible(s__Point_pItem, false) // 取消隐藏开始时隐藏的任何项目
    loop
        exitwhen ( s__Point_HidMax <= 0 )
        set s__Point_HidMax = s__Point_HidMax - 1
        call SetItemVisible(s__Point_pHid[s__Point_HidMax], true)
        set s__Point_pHid[s__Point_HidMax]= null
    endloop // 返回可行走性
    return ( s__Point_X - x ) * ( s__Point_X - x ) + ( s__Point_Y - y ) * ( s__Point_Y - y ) <= 10.0 * 10.0 and not ( IsTerrainPathable(x, y, PATHING_TYPE_WALKABILITY) )
endfunction

//library Point ends
//library Table:
    
    
function s__Table___dex__get_size takes nothing returns integer
    return Table___sizeK
endfunction
function s__Table___dex__get_list takes nothing returns integer
    return Table___listK
endfunction
    
function s__Table___handles_has takes integer this,integer key returns boolean
    return HaveSavedHandle(Table___ht, this, key)
endfunction
function s__Table___handles_remove takes integer this,integer key returns nothing
    call RemoveSavedHandle(Table___ht, this, key)
endfunction
    
function s__Table___agents__setindex takes integer this,integer key,agent value returns nothing
    call SaveAgentHandle(Table___ht, this, key, value)
endfunction
    
    
    
//Run these textmacros to include the entire hashtable API as wrappers.
//Don't be intimidated by the number of macros - Vexorian's map optimizer is
//supposed to kill functions which inline (all of these functions inline).
//textmacro instance: NEW_ARRAY_BASIC("Real", "Real", "real")
function s__Table___reals__getindex takes integer this,integer key returns real
    return LoadReal(Table___ht, this, key)
endfunction
function s__Table___reals__setindex takes integer this,integer key,real value returns nothing
    call SaveReal(Table___ht, this, key, value)
endfunction
function s__Table___reals_has takes integer this,integer key returns boolean
    return HaveSavedReal(Table___ht, this, key)
endfunction
function s__Table___reals_remove takes integer this,integer key returns nothing
    call RemoveSavedReal(Table___ht, this, key)
endfunction
//end of: NEW_ARRAY_BASIC("Real", "Real", "real")
//textmacro instance: NEW_ARRAY_BASIC("Boolean", "Boolean", "boolean")
function s__Table___booleans__getindex takes integer this,integer key returns boolean
    return LoadBoolean(Table___ht, this, key)
endfunction
function s__Table___booleans__setindex takes integer this,integer key,boolean value returns nothing
    call SaveBoolean(Table___ht, this, key, value)
endfunction
function s__Table___booleans_has takes integer this,integer key returns boolean
    return HaveSavedBoolean(Table___ht, this, key)
endfunction
function s__Table___booleans_remove takes integer this,integer key returns nothing
    call RemoveSavedBoolean(Table___ht, this, key)
endfunction
//end of: NEW_ARRAY_BASIC("Boolean", "Boolean", "boolean")
//textmacro instance: NEW_ARRAY_BASIC("String", "Str", "string")
function s__Table___strings__getindex takes integer this,integer key returns string
    return LoadStr(Table___ht, this, key)
endfunction
function s__Table___strings__setindex takes integer this,integer key,string value returns nothing
    call SaveStr(Table___ht, this, key, value)
endfunction
function s__Table___strings_has takes integer this,integer key returns boolean
    return HaveSavedString(Table___ht, this, key)
endfunction
function s__Table___strings_remove takes integer this,integer key returns nothing
    call RemoveSavedString(Table___ht, this, key)
endfunction
//end of: NEW_ARRAY_BASIC("String", "Str", "string")
//New textmacro to allow table.integer[] syntax for compatibility with textmacros that might desire it.
//textmacro instance: NEW_ARRAY_BASIC("Integer", "Integer", "integer")
function s__Table___integers__getindex takes integer this,integer key returns integer
    return LoadInteger(Table___ht, this, key)
endfunction
function s__Table___integers__setindex takes integer this,integer key,integer value returns nothing
    call SaveInteger(Table___ht, this, key, value)
endfunction
function s__Table___integers_has takes integer this,integer key returns boolean
    return HaveSavedInteger(Table___ht, this, key)
endfunction
function s__Table___integers_remove takes integer this,integer key returns nothing
    call RemoveSavedInteger(Table___ht, this, key)
endfunction
//end of: NEW_ARRAY_BASIC("Integer", "Integer", "integer")
    
//textmacro instance: NEW_ARRAY("Player", "player")
function s__Table___players__getindex takes integer this,integer key returns player
    return LoadPlayerHandle(Table___ht, this, key)
endfunction
function s__Table___players__setindex takes integer this,integer key,player value returns nothing
    call SavePlayerHandle(Table___ht, this, key, value)
endfunction
function s__Table___players_has takes integer this,integer key returns boolean
    return HaveSavedHandle(Table___ht, this, key)
endfunction
function s__Table___players_remove takes integer this,integer key returns nothing
    call RemoveSavedHandle(Table___ht, this, key)
endfunction
//end of: NEW_ARRAY("Player", "player")
//textmacro instance: NEW_ARRAY("Widget", "widget")
function s__Table___widgets__getindex takes integer this,integer key returns widget
    return LoadWidgetHandle(Table___ht, this, key)
endfunction
function s__Table___widgets__setindex takes integer this,integer key,widget value returns nothing
    call SaveWidgetHandle(Table___ht, this, key, value)
endfunction
function s__Table___widgets_has takes integer this,integer key returns boolean
    return HaveSavedHandle(Table___ht, this, key)
endfunction
function s__Table___widgets_remove takes integer this,integer key returns nothing
    call RemoveSavedHandle(Table___ht, this, key)
endfunction
//end of: NEW_ARRAY("Widget", "widget")
//textmacro instance: NEW_ARRAY("Destructable", "destructable")
function s__Table___destructables__getindex takes integer this,integer key returns destructable
    return LoadDestructableHandle(Table___ht, this, key)
endfunction
function s__Table___destructables__setindex takes integer this,integer key,destructable value returns nothing
    call SaveDestructableHandle(Table___ht, this, key, value)
endfunction
function s__Table___destructables_has takes integer this,integer key returns boolean
    return HaveSavedHandle(Table___ht, this, key)
endfunction
function s__Table___destructables_remove takes integer this,integer key returns nothing
    call RemoveSavedHandle(Table___ht, this, key)
endfunction
//end of: NEW_ARRAY("Destructable", "destructable")
//textmacro instance: NEW_ARRAY("Item", "item")
function s__Table___items__getindex takes integer this,integer key returns item
    return LoadItemHandle(Table___ht, this, key)
endfunction
function s__Table___items__setindex takes integer this,integer key,item value returns nothing
    call SaveItemHandle(Table___ht, this, key, value)
endfunction
function s__Table___items_has takes integer this,integer key returns boolean
    return HaveSavedHandle(Table___ht, this, key)
endfunction
function s__Table___items_remove takes integer this,integer key returns nothing
    call RemoveSavedHandle(Table___ht, this, key)
endfunction
//end of: NEW_ARRAY("Item", "item")
//textmacro instance: NEW_ARRAY("Unit", "unit")
function s__Table___units__getindex takes integer this,integer key returns unit
    return LoadUnitHandle(Table___ht, this, key)
endfunction
function s__Table___units__setindex takes integer this,integer key,unit value returns nothing
    call SaveUnitHandle(Table___ht, this, key, value)
endfunction
function s__Table___units_has takes integer this,integer key returns boolean
    return HaveSavedHandle(Table___ht, this, key)
endfunction
function s__Table___units_remove takes integer this,integer key returns nothing
    call RemoveSavedHandle(Table___ht, this, key)
endfunction
//end of: NEW_ARRAY("Unit", "unit")
//textmacro instance: NEW_ARRAY("Ability", "ability")
function s__Table___abilitys__getindex takes integer this,integer key returns ability
    return LoadAbilityHandle(Table___ht, this, key)
endfunction
function s__Table___abilitys__setindex takes integer this,integer key,ability value returns nothing
    call SaveAbilityHandle(Table___ht, this, key, value)
endfunction
function s__Table___abilitys_has takes integer this,integer key returns boolean
    return HaveSavedHandle(Table___ht, this, key)
endfunction
function s__Table___abilitys_remove takes integer this,integer key returns nothing
    call RemoveSavedHandle(Table___ht, this, key)
endfunction
//end of: NEW_ARRAY("Ability", "ability")
//textmacro instance: NEW_ARRAY("Timer", "timer")
function s__Table___timers__getindex takes integer this,integer key returns timer
    return LoadTimerHandle(Table___ht, this, key)
endfunction
function s__Table___timers__setindex takes integer this,integer key,timer value returns nothing
    call SaveTimerHandle(Table___ht, this, key, value)
endfunction
function s__Table___timers_has takes integer this,integer key returns boolean
    return HaveSavedHandle(Table___ht, this, key)
endfunction
function s__Table___timers_remove takes integer this,integer key returns nothing
    call RemoveSavedHandle(Table___ht, this, key)
endfunction
//end of: NEW_ARRAY("Timer", "timer")
//textmacro instance: NEW_ARRAY("Trigger", "trigger")
function s__Table___triggers__getindex takes integer this,integer key returns trigger
    return LoadTriggerHandle(Table___ht, this, key)
endfunction
function s__Table___triggers__setindex takes integer this,integer key,trigger value returns nothing
    call SaveTriggerHandle(Table___ht, this, key, value)
endfunction
function s__Table___triggers_has takes integer this,integer key returns boolean
    return HaveSavedHandle(Table___ht, this, key)
endfunction
function s__Table___triggers_remove takes integer this,integer key returns nothing
    call RemoveSavedHandle(Table___ht, this, key)
endfunction
//end of: NEW_ARRAY("Trigger", "trigger")
//textmacro instance: NEW_ARRAY("TriggerCondition", "triggercondition")
function s__Table___triggerconditions__getindex takes integer this,integer key returns triggercondition
    return LoadTriggerConditionHandle(Table___ht, this, key)
endfunction
function s__Table___triggerconditions__setindex takes integer this,integer key,triggercondition value returns nothing
    call SaveTriggerConditionHandle(Table___ht, this, key, value)
endfunction
function s__Table___triggerconditions_has takes integer this,integer key returns boolean
    return HaveSavedHandle(Table___ht, this, key)
endfunction
function s__Table___triggerconditions_remove takes integer this,integer key returns nothing
    call RemoveSavedHandle(Table___ht, this, key)
endfunction
//end of: NEW_ARRAY("TriggerCondition", "triggercondition")
//textmacro instance: NEW_ARRAY("TriggerAction", "triggeraction")
function s__Table___triggeractions__getindex takes integer this,integer key returns triggeraction
    return LoadTriggerActionHandle(Table___ht, this, key)
endfunction
function s__Table___triggeractions__setindex takes integer this,integer key,triggeraction value returns nothing
    call SaveTriggerActionHandle(Table___ht, this, key, value)
endfunction
function s__Table___triggeractions_has takes integer this,integer key returns boolean
    return HaveSavedHandle(Table___ht, this, key)
endfunction
function s__Table___triggeractions_remove takes integer this,integer key returns nothing
    call RemoveSavedHandle(Table___ht, this, key)
endfunction
//end of: NEW_ARRAY("TriggerAction", "triggeraction")
//textmacro instance: NEW_ARRAY("TriggerEvent", "event")
function s__Table___events__getindex takes integer this,integer key returns event
    return LoadTriggerEventHandle(Table___ht, this, key)
endfunction
function s__Table___events__setindex takes integer this,integer key,event value returns nothing
    call SaveTriggerEventHandle(Table___ht, this, key, value)
endfunction
function s__Table___events_has takes integer this,integer key returns boolean
    return HaveSavedHandle(Table___ht, this, key)
endfunction
function s__Table___events_remove takes integer this,integer key returns nothing
    call RemoveSavedHandle(Table___ht, this, key)
endfunction
//end of: NEW_ARRAY("TriggerEvent", "event")
//textmacro instance: NEW_ARRAY("Force", "force")
function s__Table___forces__getindex takes integer this,integer key returns force
    return LoadForceHandle(Table___ht, this, key)
endfunction
function s__Table___forces__setindex takes integer this,integer key,force value returns nothing
    call SaveForceHandle(Table___ht, this, key, value)
endfunction
function s__Table___forces_has takes integer this,integer key returns boolean
    return HaveSavedHandle(Table___ht, this, key)
endfunction
function s__Table___forces_remove takes integer this,integer key returns nothing
    call RemoveSavedHandle(Table___ht, this, key)
endfunction
//end of: NEW_ARRAY("Force", "force")
//textmacro instance: NEW_ARRAY("Group", "group")
function s__Table___groups__getindex takes integer this,integer key returns group
    return LoadGroupHandle(Table___ht, this, key)
endfunction
function s__Table___groups__setindex takes integer this,integer key,group value returns nothing
    call SaveGroupHandle(Table___ht, this, key, value)
endfunction
function s__Table___groups_has takes integer this,integer key returns boolean
    return HaveSavedHandle(Table___ht, this, key)
endfunction
function s__Table___groups_remove takes integer this,integer key returns nothing
    call RemoveSavedHandle(Table___ht, this, key)
endfunction
//end of: NEW_ARRAY("Group", "group")
//textmacro instance: NEW_ARRAY("Location", "location")
function s__Table___locations__getindex takes integer this,integer key returns location
    return LoadLocationHandle(Table___ht, this, key)
endfunction
function s__Table___locations__setindex takes integer this,integer key,location value returns nothing
    call SaveLocationHandle(Table___ht, this, key, value)
endfunction
function s__Table___locations_has takes integer this,integer key returns boolean
    return HaveSavedHandle(Table___ht, this, key)
endfunction
function s__Table___locations_remove takes integer this,integer key returns nothing
    call RemoveSavedHandle(Table___ht, this, key)
endfunction
//end of: NEW_ARRAY("Location", "location")
//textmacro instance: NEW_ARRAY("Rect", "rect")
function s__Table___rects__getindex takes integer this,integer key returns rect
    return LoadRectHandle(Table___ht, this, key)
endfunction
function s__Table___rects__setindex takes integer this,integer key,rect value returns nothing
    call SaveRectHandle(Table___ht, this, key, value)
endfunction
function s__Table___rects_has takes integer this,integer key returns boolean
    return HaveSavedHandle(Table___ht, this, key)
endfunction
function s__Table___rects_remove takes integer this,integer key returns nothing
    call RemoveSavedHandle(Table___ht, this, key)
endfunction
//end of: NEW_ARRAY("Rect", "rect")
//textmacro instance: NEW_ARRAY("BooleanExpr", "boolexpr")
function s__Table___boolexprs__getindex takes integer this,integer key returns boolexpr
    return LoadBooleanExprHandle(Table___ht, this, key)
endfunction
function s__Table___boolexprs__setindex takes integer this,integer key,boolexpr value returns nothing
    call SaveBooleanExprHandle(Table___ht, this, key, value)
endfunction
function s__Table___boolexprs_has takes integer this,integer key returns boolean
    return HaveSavedHandle(Table___ht, this, key)
endfunction
function s__Table___boolexprs_remove takes integer this,integer key returns nothing
    call RemoveSavedHandle(Table___ht, this, key)
endfunction
//end of: NEW_ARRAY("BooleanExpr", "boolexpr")
//textmacro instance: NEW_ARRAY("Sound", "sound")
function s__Table___sounds__getindex takes integer this,integer key returns sound
    return LoadSoundHandle(Table___ht, this, key)
endfunction
function s__Table___sounds__setindex takes integer this,integer key,sound value returns nothing
    call SaveSoundHandle(Table___ht, this, key, value)
endfunction
function s__Table___sounds_has takes integer this,integer key returns boolean
    return HaveSavedHandle(Table___ht, this, key)
endfunction
function s__Table___sounds_remove takes integer this,integer key returns nothing
    call RemoveSavedHandle(Table___ht, this, key)
endfunction
//end of: NEW_ARRAY("Sound", "sound")
//textmacro instance: NEW_ARRAY("Effect", "effect")
function s__Table___effects__getindex takes integer this,integer key returns effect
    return LoadEffectHandle(Table___ht, this, key)
endfunction
function s__Table___effects__setindex takes integer this,integer key,effect value returns nothing
    call SaveEffectHandle(Table___ht, this, key, value)
endfunction
function s__Table___effects_has takes integer this,integer key returns boolean
    return HaveSavedHandle(Table___ht, this, key)
endfunction
function s__Table___effects_remove takes integer this,integer key returns nothing
    call RemoveSavedHandle(Table___ht, this, key)
endfunction
//end of: NEW_ARRAY("Effect", "effect")
//textmacro instance: NEW_ARRAY("UnitPool", "unitpool")
function s__Table___unitpools__getindex takes integer this,integer key returns unitpool
    return LoadUnitPoolHandle(Table___ht, this, key)
endfunction
function s__Table___unitpools__setindex takes integer this,integer key,unitpool value returns nothing
    call SaveUnitPoolHandle(Table___ht, this, key, value)
endfunction
function s__Table___unitpools_has takes integer this,integer key returns boolean
    return HaveSavedHandle(Table___ht, this, key)
endfunction
function s__Table___unitpools_remove takes integer this,integer key returns nothing
    call RemoveSavedHandle(Table___ht, this, key)
endfunction
//end of: NEW_ARRAY("UnitPool", "unitpool")
//textmacro instance: NEW_ARRAY("ItemPool", "itempool")
function s__Table___itempools__getindex takes integer this,integer key returns itempool
    return LoadItemPoolHandle(Table___ht, this, key)
endfunction
function s__Table___itempools__setindex takes integer this,integer key,itempool value returns nothing
    call SaveItemPoolHandle(Table___ht, this, key, value)
endfunction
function s__Table___itempools_has takes integer this,integer key returns boolean
    return HaveSavedHandle(Table___ht, this, key)
endfunction
function s__Table___itempools_remove takes integer this,integer key returns nothing
    call RemoveSavedHandle(Table___ht, this, key)
endfunction
//end of: NEW_ARRAY("ItemPool", "itempool")
//textmacro instance: NEW_ARRAY("Quest", "quest")
function s__Table___quests__getindex takes integer this,integer key returns quest
    return LoadQuestHandle(Table___ht, this, key)
endfunction
function s__Table___quests__setindex takes integer this,integer key,quest value returns nothing
    call SaveQuestHandle(Table___ht, this, key, value)
endfunction
function s__Table___quests_has takes integer this,integer key returns boolean
    return HaveSavedHandle(Table___ht, this, key)
endfunction
function s__Table___quests_remove takes integer this,integer key returns nothing
    call RemoveSavedHandle(Table___ht, this, key)
endfunction
//end of: NEW_ARRAY("Quest", "quest")
//textmacro instance: NEW_ARRAY("QuestItem", "questitem")
function s__Table___questitems__getindex takes integer this,integer key returns questitem
    return LoadQuestItemHandle(Table___ht, this, key)
endfunction
function s__Table___questitems__setindex takes integer this,integer key,questitem value returns nothing
    call SaveQuestItemHandle(Table___ht, this, key, value)
endfunction
function s__Table___questitems_has takes integer this,integer key returns boolean
    return HaveSavedHandle(Table___ht, this, key)
endfunction
function s__Table___questitems_remove takes integer this,integer key returns nothing
    call RemoveSavedHandle(Table___ht, this, key)
endfunction
//end of: NEW_ARRAY("QuestItem", "questitem")
//textmacro instance: NEW_ARRAY("DefeatCondition", "defeatcondition")
function s__Table___defeatconditions__getindex takes integer this,integer key returns defeatcondition
    return LoadDefeatConditionHandle(Table___ht, this, key)
endfunction
function s__Table___defeatconditions__setindex takes integer this,integer key,defeatcondition value returns nothing
    call SaveDefeatConditionHandle(Table___ht, this, key, value)
endfunction
function s__Table___defeatconditions_has takes integer this,integer key returns boolean
    return HaveSavedHandle(Table___ht, this, key)
endfunction
function s__Table___defeatconditions_remove takes integer this,integer key returns nothing
    call RemoveSavedHandle(Table___ht, this, key)
endfunction
//end of: NEW_ARRAY("DefeatCondition", "defeatcondition")
//textmacro instance: NEW_ARRAY("TimerDialog", "timerdialog")
function s__Table___timerdialogs__getindex takes integer this,integer key returns timerdialog
    return LoadTimerDialogHandle(Table___ht, this, key)
endfunction
function s__Table___timerdialogs__setindex takes integer this,integer key,timerdialog value returns nothing
    call SaveTimerDialogHandle(Table___ht, this, key, value)
endfunction
function s__Table___timerdialogs_has takes integer this,integer key returns boolean
    return HaveSavedHandle(Table___ht, this, key)
endfunction
function s__Table___timerdialogs_remove takes integer this,integer key returns nothing
    call RemoveSavedHandle(Table___ht, this, key)
endfunction
//end of: NEW_ARRAY("TimerDialog", "timerdialog")
//textmacro instance: NEW_ARRAY("Leaderboard", "leaderboard")
function s__Table___leaderboards__getindex takes integer this,integer key returns leaderboard
    return LoadLeaderboardHandle(Table___ht, this, key)
endfunction
function s__Table___leaderboards__setindex takes integer this,integer key,leaderboard value returns nothing
    call SaveLeaderboardHandle(Table___ht, this, key, value)
endfunction
function s__Table___leaderboards_has takes integer this,integer key returns boolean
    return HaveSavedHandle(Table___ht, this, key)
endfunction
function s__Table___leaderboards_remove takes integer this,integer key returns nothing
    call RemoveSavedHandle(Table___ht, this, key)
endfunction
//end of: NEW_ARRAY("Leaderboard", "leaderboard")
//textmacro instance: NEW_ARRAY("Multiboard", "multiboard")
function s__Table___multiboards__getindex takes integer this,integer key returns multiboard
    return LoadMultiboardHandle(Table___ht, this, key)
endfunction
function s__Table___multiboards__setindex takes integer this,integer key,multiboard value returns nothing
    call SaveMultiboardHandle(Table___ht, this, key, value)
endfunction
function s__Table___multiboards_has takes integer this,integer key returns boolean
    return HaveSavedHandle(Table___ht, this, key)
endfunction
function s__Table___multiboards_remove takes integer this,integer key returns nothing
    call RemoveSavedHandle(Table___ht, this, key)
endfunction
//end of: NEW_ARRAY("Multiboard", "multiboard")
//textmacro instance: NEW_ARRAY("MultiboardItem", "multiboarditem")
function s__Table___multiboarditems__getindex takes integer this,integer key returns multiboarditem
    return LoadMultiboardItemHandle(Table___ht, this, key)
endfunction
function s__Table___multiboarditems__setindex takes integer this,integer key,multiboarditem value returns nothing
    call SaveMultiboardItemHandle(Table___ht, this, key, value)
endfunction
function s__Table___multiboarditems_has takes integer this,integer key returns boolean
    return HaveSavedHandle(Table___ht, this, key)
endfunction
function s__Table___multiboarditems_remove takes integer this,integer key returns nothing
    call RemoveSavedHandle(Table___ht, this, key)
endfunction
//end of: NEW_ARRAY("MultiboardItem", "multiboarditem")
//textmacro instance: NEW_ARRAY("Trackable", "trackable")
function s__Table___trackables__getindex takes integer this,integer key returns trackable
    return LoadTrackableHandle(Table___ht, this, key)
endfunction
function s__Table___trackables__setindex takes integer this,integer key,trackable value returns nothing
    call SaveTrackableHandle(Table___ht, this, key, value)
endfunction
function s__Table___trackables_has takes integer this,integer key returns boolean
    return HaveSavedHandle(Table___ht, this, key)
endfunction
function s__Table___trackables_remove takes integer this,integer key returns nothing
    call RemoveSavedHandle(Table___ht, this, key)
endfunction
//end of: NEW_ARRAY("Trackable", "trackable")
//textmacro instance: NEW_ARRAY("Dialog", "dialog")
function s__Table___dialogs__getindex takes integer this,integer key returns dialog
    return LoadDialogHandle(Table___ht, this, key)
endfunction
function s__Table___dialogs__setindex takes integer this,integer key,dialog value returns nothing
    call SaveDialogHandle(Table___ht, this, key, value)
endfunction
function s__Table___dialogs_has takes integer this,integer key returns boolean
    return HaveSavedHandle(Table___ht, this, key)
endfunction
function s__Table___dialogs_remove takes integer this,integer key returns nothing
    call RemoveSavedHandle(Table___ht, this, key)
endfunction
//end of: NEW_ARRAY("Dialog", "dialog")
//textmacro instance: NEW_ARRAY("Button", "button")
function s__Table___buttons__getindex takes integer this,integer key returns button
    return LoadButtonHandle(Table___ht, this, key)
endfunction
function s__Table___buttons__setindex takes integer this,integer key,button value returns nothing
    call SaveButtonHandle(Table___ht, this, key, value)
endfunction
function s__Table___buttons_has takes integer this,integer key returns boolean
    return HaveSavedHandle(Table___ht, this, key)
endfunction
function s__Table___buttons_remove takes integer this,integer key returns nothing
    call RemoveSavedHandle(Table___ht, this, key)
endfunction
//end of: NEW_ARRAY("Button", "button")
//textmacro instance: NEW_ARRAY("TextTag", "texttag")
function s__Table___texttags__getindex takes integer this,integer key returns texttag
    return LoadTextTagHandle(Table___ht, this, key)
endfunction
function s__Table___texttags__setindex takes integer this,integer key,texttag value returns nothing
    call SaveTextTagHandle(Table___ht, this, key, value)
endfunction
function s__Table___texttags_has takes integer this,integer key returns boolean
    return HaveSavedHandle(Table___ht, this, key)
endfunction
function s__Table___texttags_remove takes integer this,integer key returns nothing
    call RemoveSavedHandle(Table___ht, this, key)
endfunction
//end of: NEW_ARRAY("TextTag", "texttag")
//textmacro instance: NEW_ARRAY("Lightning", "lightning")
function s__Table___lightnings__getindex takes integer this,integer key returns lightning
    return LoadLightningHandle(Table___ht, this, key)
endfunction
function s__Table___lightnings__setindex takes integer this,integer key,lightning value returns nothing
    call SaveLightningHandle(Table___ht, this, key, value)
endfunction
function s__Table___lightnings_has takes integer this,integer key returns boolean
    return HaveSavedHandle(Table___ht, this, key)
endfunction
function s__Table___lightnings_remove takes integer this,integer key returns nothing
    call RemoveSavedHandle(Table___ht, this, key)
endfunction
//end of: NEW_ARRAY("Lightning", "lightning")
//textmacro instance: NEW_ARRAY("Image", "image")
function s__Table___images__getindex takes integer this,integer key returns image
    return LoadImageHandle(Table___ht, this, key)
endfunction
function s__Table___images__setindex takes integer this,integer key,image value returns nothing
    call SaveImageHandle(Table___ht, this, key, value)
endfunction
function s__Table___images_has takes integer this,integer key returns boolean
    return HaveSavedHandle(Table___ht, this, key)
endfunction
function s__Table___images_remove takes integer this,integer key returns nothing
    call RemoveSavedHandle(Table___ht, this, key)
endfunction
//end of: NEW_ARRAY("Image", "image")
//textmacro instance: NEW_ARRAY("Ubersplat", "ubersplat")
function s__Table___ubersplats__getindex takes integer this,integer key returns ubersplat
    return LoadUbersplatHandle(Table___ht, this, key)
endfunction
function s__Table___ubersplats__setindex takes integer this,integer key,ubersplat value returns nothing
    call SaveUbersplatHandle(Table___ht, this, key, value)
endfunction
function s__Table___ubersplats_has takes integer this,integer key returns boolean
    return HaveSavedHandle(Table___ht, this, key)
endfunction
function s__Table___ubersplats_remove takes integer this,integer key returns nothing
    call RemoveSavedHandle(Table___ht, this, key)
endfunction
//end of: NEW_ARRAY("Ubersplat", "ubersplat")
//textmacro instance: NEW_ARRAY("Region", "region")
function s__Table___regions__getindex takes integer this,integer key returns region
    return LoadRegionHandle(Table___ht, this, key)
endfunction
function s__Table___regions__setindex takes integer this,integer key,region value returns nothing
    call SaveRegionHandle(Table___ht, this, key, value)
endfunction
function s__Table___regions_has takes integer this,integer key returns boolean
    return HaveSavedHandle(Table___ht, this, key)
endfunction
function s__Table___regions_remove takes integer this,integer key returns nothing
    call RemoveSavedHandle(Table___ht, this, key)
endfunction
//end of: NEW_ARRAY("Region", "region")
//textmacro instance: NEW_ARRAY("FogState", "fogstate")
function s__Table___fogstates__getindex takes integer this,integer key returns fogstate
    return LoadFogStateHandle(Table___ht, this, key)
endfunction
function s__Table___fogstates__setindex takes integer this,integer key,fogstate value returns nothing
    call SaveFogStateHandle(Table___ht, this, key, value)
endfunction
function s__Table___fogstates_has takes integer this,integer key returns boolean
    return HaveSavedHandle(Table___ht, this, key)
endfunction
function s__Table___fogstates_remove takes integer this,integer key returns nothing
    call RemoveSavedHandle(Table___ht, this, key)
endfunction
//end of: NEW_ARRAY("FogState", "fogstate")
//textmacro instance: NEW_ARRAY("FogModifier", "fogmodifier")
function s__Table___fogmodifiers__getindex takes integer this,integer key returns fogmodifier
    return LoadFogModifierHandle(Table___ht, this, key)
endfunction
function s__Table___fogmodifiers__setindex takes integer this,integer key,fogmodifier value returns nothing
    call SaveFogModifierHandle(Table___ht, this, key, value)
endfunction
function s__Table___fogmodifiers_has takes integer this,integer key returns boolean
    return HaveSavedHandle(Table___ht, this, key)
endfunction
function s__Table___fogmodifiers_remove takes integer this,integer key returns nothing
    call RemoveSavedHandle(Table___ht, this, key)
endfunction
//end of: NEW_ARRAY("FogModifier", "fogmodifier")
//textmacro instance: NEW_ARRAY("Hashtable", "hashtable")
function s__Table___hashtables__getindex takes integer this,integer key returns hashtable
    return LoadHashtableHandle(Table___ht, this, key)
endfunction
function s__Table___hashtables__setindex takes integer this,integer key,hashtable value returns nothing
    call SaveHashtableHandle(Table___ht, this, key, value)
endfunction
function s__Table___hashtables_has takes integer this,integer key returns boolean
    return HaveSavedHandle(Table___ht, this, key)
endfunction
function s__Table___hashtables_remove takes integer this,integer key returns nothing
    call RemoveSavedHandle(Table___ht, this, key)
endfunction
//end of: NEW_ARRAY("Hashtable", "hashtable")
    
    
// Implement modules for intuitive syntax (tb.handle; tb.unit; etc.)
//Implemented from module Table___realm:
function s__Table__get_real takes integer this returns integer
    return this
endfunction
//Implemented from module Table___integerm:
function s__Table__get_integer takes integer this returns integer
    return this
endfunction
//Implemented from module Table___booleanm:
function s__Table__get_boolean takes integer this returns integer
    return this
endfunction
//Implemented from module Table___stringm:
function s__Table__get_string takes integer this returns integer
    return this
endfunction
//Implemented from module Table___playerm:
function s__Table__get_player takes integer this returns integer
    return this
endfunction
//Implemented from module Table___widgetm:
function s__Table__get_widget takes integer this returns integer
    return this
endfunction
//Implemented from module Table___destructablem:
function s__Table__get_destructable takes integer this returns integer
    return this
endfunction
//Implemented from module Table___itemm:
function s__Table__get_item takes integer this returns integer
    return this
endfunction
//Implemented from module Table___unitm:
function s__Table__get_unit takes integer this returns integer
    return this
endfunction
//Implemented from module Table___abilitym:
function s__Table__get_ability takes integer this returns integer
    return this
endfunction
//Implemented from module Table___timerm:
function s__Table__get_timer takes integer this returns integer
    return this
endfunction
//Implemented from module Table___triggerm:
function s__Table__get_trigger takes integer this returns integer
    return this
endfunction
//Implemented from module Table___triggerconditionm:
function s__Table__get_triggercondition takes integer this returns integer
    return this
endfunction
//Implemented from module Table___triggeractionm:
function s__Table__get_triggeraction takes integer this returns integer
    return this
endfunction
//Implemented from module Table___eventm:
function s__Table__get_event takes integer this returns integer
    return this
endfunction
//Implemented from module Table___forcem:
function s__Table__get_force takes integer this returns integer
    return this
endfunction
//Implemented from module Table___groupm:
function s__Table__get_group takes integer this returns integer
    return this
endfunction
//Implemented from module Table___locationm:
function s__Table__get_location takes integer this returns integer
    return this
endfunction
//Implemented from module Table___rectm:
function s__Table__get_rect takes integer this returns integer
    return this
endfunction
//Implemented from module Table___boolexprm:
function s__Table__get_boolexpr takes integer this returns integer
    return this
endfunction
//Implemented from module Table___soundm:
function s__Table__get_sound takes integer this returns integer
    return this
endfunction
//Implemented from module Table___effectm:
function s__Table__get_effect takes integer this returns integer
    return this
endfunction
//Implemented from module Table___unitpoolm:
function s__Table__get_unitpool takes integer this returns integer
    return this
endfunction
//Implemented from module Table___itempoolm:
function s__Table__get_itempool takes integer this returns integer
    return this
endfunction
//Implemented from module Table___questm:
function s__Table__get_quest takes integer this returns integer
    return this
endfunction
//Implemented from module Table___questitemm:
function s__Table__get_questitem takes integer this returns integer
    return this
endfunction
//Implemented from module Table___defeatconditionm:
function s__Table__get_defeatcondition takes integer this returns integer
    return this
endfunction
//Implemented from module Table___timerdialogm:
function s__Table__get_timerdialog takes integer this returns integer
    return this
endfunction
//Implemented from module Table___leaderboardm:
function s__Table__get_leaderboard takes integer this returns integer
    return this
endfunction
//Implemented from module Table___multiboardm:
function s__Table__get_multiboard takes integer this returns integer
    return this
endfunction
//Implemented from module Table___multiboarditemm:
function s__Table__get_multiboarditem takes integer this returns integer
    return this
endfunction
//Implemented from module Table___trackablem:
function s__Table__get_trackable takes integer this returns integer
    return this
endfunction
//Implemented from module Table___dialogm:
function s__Table__get_dialog takes integer this returns integer
    return this
endfunction
//Implemented from module Table___buttonm:
function s__Table__get_button takes integer this returns integer
    return this
endfunction
//Implemented from module Table___texttagm:
function s__Table__get_texttag takes integer this returns integer
    return this
endfunction
//Implemented from module Table___lightningm:
function s__Table__get_lightning takes integer this returns integer
    return this
endfunction
//Implemented from module Table___imagem:
function s__Table__get_image takes integer this returns integer
    return this
endfunction
//Implemented from module Table___ubersplatm:
function s__Table__get_ubersplat takes integer this returns integer
    return this
endfunction
//Implemented from module Table___regionm:
function s__Table__get_region takes integer this returns integer
    return this
endfunction
//Implemented from module Table___fogstatem:
function s__Table__get_fogstate takes integer this returns integer
    return this
endfunction
//Implemented from module Table___fogmodifierm:
function s__Table__get_fogmodifier takes integer this returns integer
    return this
endfunction
//Implemented from module Table___hashtablem:
function s__Table__get_hashtable takes integer this returns integer
    return this
endfunction
    
function s__Table__get_handle takes integer this returns integer
    return this
endfunction
    
function s__Table__get_agent takes integer this returns integer
    return this
endfunction
    
//set this = tb[GetSpellAbilityId()]
function s__Table__getindex takes integer this,integer key returns integer
    return LoadInteger(Table___ht, this, key) //return this.integer[key]
endfunction
    
//set tb[389034] = 8192
function s__Table__setindex takes integer this,integer key,integer tb returns nothing
    call SaveInteger(Table___ht, this, key, tb) //set this.integer[key] = tb
endfunction
    
//set b = tb.has(2493223)
function s__Table_has takes integer this,integer key returns boolean
    return HaveSavedInteger(Table___ht, this, key) //return this.integer.has(key)
endfunction
    
//call tb.remove(294080)
function s__Table_remove takes integer this,integer key returns nothing
    call RemoveSavedInteger(Table___ht, this, key) //call this.integer.remove(key)
endfunction
    
//Remove all data from a Table instance
function s__Table_flush takes integer this returns nothing
    call FlushChildHashtable(Table___ht, this)
endfunction
    
//local Table tb = Table.create()
function s__Table_create takes nothing returns integer
    local integer this = s__Table__getindex(s__Table___dex__get_list(),0)
        
    if this == 0 then
        set this = Table___more + 1
        set Table___more = this
    else
        call s__Table__setindex(s__Table___dex__get_list(),0, s__Table__getindex(s__Table___dex__get_list(),this))
        call s__Table_remove(s__Table___dex__get_list(),this) //Clear hashed memory
    endif
        
    call s__Table__setindex(s__Table___dex__get_list(),this, - 1)
    return this
endfunction
    
// Removes all data from a Table instance and recycles its index.
//
// call tb.destroy()
//
function s__Table_destroy takes integer this returns nothing
    if s__Table__getindex(s__Table___dex__get_list(),this) != - 1 then
        call BJDebugMsg("Table Error: Tried to double-free instance: " + I2S(this))
        return
    endif
        
    call s__Table_flush(this)
        
    call s__Table__setindex(s__Table___dex__get_list(),this, s__Table__getindex(s__Table___dex__get_list(),0))
    call s__Table__setindex(s__Table___dex__get_list(),0, this)
endfunction
    
//ignored textmacro command: TABLE_BC_METHODS()
    
//ignored textmacro command: TABLE_BC_STRUCTS()
    
    
//Returns a new TableArray to do your bidding. Simply use:
//
// local TableArray ta = TableArray[array_size]
//
function s__TableArray__staticgetindex takes integer array_size returns integer
    local integer tb = s__Table__getindex(s__Table___dex__get_size(),array_size)
    local integer this = s__Table__getindex(tb,0)

    if array_size <= 0 then
        call BJDebugMsg("TypeError: Invalid specified TableArray size: " + I2S(array_size))
        return 0
    endif
        
    if this == 0 then
        set this = Table___less - array_size
        set Table___less = this
    else
        call s__Table__setindex(tb,0, s__Table__getindex(tb,this)) //Set the last destroyed to the last-last destroyed
        call s__Table_remove(tb,this) //Clear hashed memory
    endif
        
    call s__Table__setindex(s__Table___dex__get_size(),this, array_size) //This remembers the array size
    return this
endfunction
    
//Returns the size of the TableArray
function s__TableArray__get_size takes integer this returns integer
    return s__Table__getindex(s__Table___dex__get_size(),this)
endfunction
    
//This magic method enables two-dimensional[array][syntax] for Tables,
//similar to the two-dimensional utility provided by hashtables them-
//selves.
//
//ta[integer a].unit[integer b] = unit u
//ta[integer a][integer c] = integer d
//
//Inline-friendly when not running in debug mode
//
function s__TableArray__getindex takes integer this,integer key returns integer
    //#         static if true then
    local integer i = s__TableArray__get_size(this)
    if i == 0 then
        call BJDebugMsg("IndexError: Tried to get key from invalid TableArray instance: " + I2S(this))
        return 0
    elseif key < 0 or key >= i then
        call BJDebugMsg("IndexError: Tried to get key [" + I2S(key) + "] from outside TableArray bounds: " + I2S(i))
        return 0
    endif
    //#         endif
    return this + key
endfunction
    
//Destroys a TableArray without flushing it; I assume you call .flush()
//if you want it flushed too. This is a public method so that you don't
//have to loop through all TableArray indices to flush them if you don't
//need to (ie. if you were flushing all child-keys as you used them).
//
function s__TableArray_destroy takes integer this returns nothing
    local integer tb = s__Table__getindex(s__Table___dex__get_size(),s__TableArray__get_size(this))
        
    if s__TableArray__get_size(this) == 0 then
        call BJDebugMsg("TypeError: Tried to destroy an invalid TableArray: " + I2S(this))
        return
    endif
        
    if tb == 0 then
        //Create a Table to index recycled instances with their array size
        set tb = s__Table_create()
        call s__Table__setindex(s__Table___dex__get_size(),s__TableArray__get_size(this), tb)
    endif
        
    call s__Table_remove(s__Table___dex__get_size(),this) //Clear the array size from hash memory

    call s__Table__setindex(tb,this, s__Table__getindex(tb,0))
    call s__Table__setindex(tb,0, this)
endfunction
    
    
//Avoids hitting the op limit
function s__TableArray_clean takes nothing returns nothing
    local integer tb = s__TableArray_tempTable
    local integer end = tb + 0x1000
    if end < s__TableArray_tempEnd then
        set s__TableArray_tempTable = end
        call ForForce(bj_FORCE_PLAYER[0], function s__TableArray_clean)
    else
        set end = s__TableArray_tempEnd
    endif
    loop
        call s__Table_flush(tb)
        set tb = tb + 1
        exitwhen tb == end
    endloop
endfunction
    
//Flushes the TableArray and also destroys it. Doesn't get any more
//similar to the FlushParentHashtable native than this.
//
function s__TableArray_flush takes integer this returns nothing
    if s__TableArray__get_size(this) == 0 then
        call BJDebugMsg("TypeError: Tried to flush an invalid TableArray instance: " + I2S(this))
        return
    endif
    set s__TableArray_tempTable = this
    set s__TableArray_tempEnd = this + s__TableArray__get_size(this)
    call ForForce(bj_FORCE_PLAYER[0], function s__TableArray_clean)
    call s__TableArray_destroy(this)
endfunction
    
    
//NEW: Added in Table 4.0. A fairly simple struct but allows you to do more
//than that which was previously possible.
//Enables myHash[parentKey][childKey] syntax.
//Basically, it creates a Table in the place of the parent key if
//it didn't already get created earlier.
function s__HashTable__getindex takes integer this,integer index returns integer
    local integer t = s__Table__getindex((this),index)
    if t == 0 then
        set t = s__Table_create()
        call s__Table__setindex((this),index, t) //whoops! Forgot that line. I'm out of practice!
    endif
    return t
endfunction
//You need to call this on each parent key that you used if you
//intend to destroy the HashTable or simply no longer need that key.
function s__HashTable_remove takes integer this,integer index returns nothing
    local integer t = s__Table__getindex((this),index)
    if t != 0 then
        call s__Table_destroy(t)
        call s__Table_remove((this),index)
    endif
endfunction
    
//Added in version 4.1
function s__HashTable_has takes integer this,integer index returns boolean
    return s__Table_has((this),index)
endfunction
    
//HashTables are just fancy Table indices.
function s__HashTable_destroy takes integer this returns nothing
    call s__Table_destroy((this))
endfunction
    
//Like I said above...
function s__HashTable_create takes nothing returns integer
    return s__Table_create()
endfunction

//library Table ends
//library TimeStamp:
//private:
//public:
//private:
function s__TimeStamp_MathMod takes integer dividend,integer divisor returns integer
    local integer modulus = dividend - ( dividend / divisor ) * divisor
    if ( modulus < 0 ) then
        set modulus = modulus + divisor
    endif
    return modulus
endfunction
function s__TimeStamp_IsLeapYear takes integer y returns boolean
    if ( s__TimeStamp_MathMod(y , 4) == 0 ) then
        if ( s__TimeStamp_MathMod(y , 100) == 0 ) then
            if ( s__TimeStamp_MathMod(y , 400) == 0 ) then
                return true
            else
                return false
            endif
        endif
        return true
    endif
    return false
endfunction
function s__TimeStamp_UpdateDate takes integer y,integer remainSec,integer dayBy2015 returns nothing
    local boolean bIsLeap = s__TimeStamp_IsLeapYear(y)
    local real dayNum = I2R(remainSec) / ( 24 * 60 * 60 )
    local integer totalDay = R2I(dayNum)
    local integer totalDayBase
    local integer totalMonDay
    local integer curMonDay
    local integer m
    set totalDayBase = 0
    set totalMonDay = 0
    set curMonDay = 0
    set m = 1
    if ( ( dayNum - I2R(totalDay) ) > 0 ) then
        set totalDay = totalDay + 1
    endif
    if ( totalDay == 0 ) then
        set totalDay = 1
    endif
    set dayBy2015 = dayBy2015 + totalDay
    loop
        exitwhen ( m > 12 )
        if ( bIsLeap and m == 2 ) then
            set curMonDay = s__TimeStamp_MonthInt[m] + 1
        else
            set curMonDay = s__TimeStamp_MonthInt[m]
        endif
        if ( totalDay <= curMonDay ) then
            set s__TimeStamp_year = y
            set s__TimeStamp_mon = m
            set s__TimeStamp_day = totalDay
            set s__TimeStamp_hour = s__TimeStamp_MathMod(R2I(remainSec / ( 60 * 60 )) , 24)
            set s__TimeStamp_min = s__TimeStamp_MathMod(R2I(remainSec / 60) , 60)
            set s__TimeStamp_sec = s__TimeStamp_MathMod(remainSec , 60)
            set m = 100
        endif
        set m = m + 1
        set totalDay = totalDay - curMonDay
    endloop
    set s__TimeStamp_week = s__TimeStamp_MathMod(s__TimeStamp_MathMod(dayBy2015 , 7) + 4 , 7)
endfunction
function s__TimeStamp_GetDate takes integer now returns nothing
    local integer remain = now - 1451606400 + 28800
    local integer y
    local integer baseRemain
    local integer dayBy2015
    local integer baseDayBy2015
    set y = 2016
    set baseRemain = 0
    set dayBy2015 = 0
    set baseDayBy2015 = 0
    loop
        exitwhen ( y > 3000 )
        set baseRemain = remain
        set baseDayBy2015 = dayBy2015
        if ( s__TimeStamp_IsLeapYear(y) ) then
            set remain = remain - 31622400
            set dayBy2015 = dayBy2015 + 366
        else
            set remain = remain - 31536000
            set dayBy2015 = dayBy2015 + 365
        endif
        if ( remain < 0 ) then
            call s__TimeStamp_UpdateDate(y , baseRemain , baseDayBy2015)
            set y = 10000
        endif
        set y = y + 1
    endloop
endfunction
function s__TimeStamp_anon__1 takes nothing returns nothing
    set s__TimeStamp_Stamp = s__TimeStamp_Stamp + 1
    call s__TimeStamp_GetDate(s__TimeStamp_Stamp)
endfunction
function s__TimeStamp_anon__0 takes nothing returns nothing
    set s__TimeStamp_Stamp = DzAPI_Map_GetGameStartTime()
    call s__TimeStamp_GetDate(s__TimeStamp_Stamp)
    call sc__Timer_create(1.0 , true , function s__TimeStamp_anon__1)
endfunction
function s__TimeStamp_onInit takes nothing returns nothing
    call sc__Timer_create(0.0 , false , function s__TimeStamp_anon__0)
endfunction
//public:
function s__TimeStamp_showTime takes integer gamerId,real dur returns nothing
    local string data = "[|Cffff9100系统|r] - 现在北京时间为：" + I2S(s__TimeStamp_year) + "年" + I2S(s__TimeStamp_mon) + "月" + I2S(s__TimeStamp_day) + "日" + I2S(s__TimeStamp_hour) + "时" + I2S(s__TimeStamp_min) + "分" + I2S(s__TimeStamp_sec) + "秒   ,星期" + s__TimeStamp_WeekStr[s__TimeStamp_week]
    call sc__Gamer_echo(gamerId , dur , data)
endfunction  // 获取当前星期字符串
function s__TimeStamp_getWeek takes nothing returns string
    return "星期" + s__TimeStamp_WeekStr[s__TimeStamp_week]
endfunction  // 对比两个月份天数，参数二段比参数一段更推后，那么就返回真，否则返回假
function s__TimeStamp_IsTime takes integer upperMon,integer upperDay,integer lowerMon,integer lowerDay returns boolean
    if ( lowerMon > upperMon ) then
        return true
    endif
    if ( lowerMon == upperMon and lowerDay > upperDay ) then
        return true
    endif
    return false
endfunction

//library TimeStamp ends
//library Timer:
//private:
function s__Timer_Spin takes nothing returns nothing
    local integer this = 0
    local integer index = 0
    set s__Timer_gameTimer = s__Timer_gameTimer + 1
    if ( s__Timer_size > 0 ) then
        loop
            exitwhen ( index == s__Timer_size )
            set this = s__Timer_Structs[index]
            set s__Timer_elapsed[this]= s__Timer_elapsed[this] + 0.01
            if ( s__Timer_elapsed[this] >= s__Timer_cycle[this] ) then
                set s__Timer_name = this
                if ( s__Timer_pause[this] ) then
                    call TriggerExecute(s__Timer_trig[this])
                endif
                if ( s__Timer_perio[this] ) then
                    set s__Timer_elapsed[this]= 0.0
                else
                    call sc__Timer_destroy(this)
                    set s__Timer_size = s__Timer_size - 1
                    set s__Timer_Structs[index]= s__Timer_Structs[s__Timer_size]
                    set index = index - 1
                endif
                set s__Timer_name = 0
            endif
            set index = index + 1
        endloop
    endif
endfunction  // 初始化
function s__Timer_onInit takes nothing returns nothing
    call TimerStart(s__Timer_tm, 0.01, true, function s__Timer_Spin)
endfunction  // 析构函数
function s__Timer_destroy takes integer this returns nothing
    call DestroyTrigger(s__Timer_trig[this])
    set s__Timer_trig[this]= null
    call s__Timer_deallocate(this)
endfunction
//public:
function s__Timer_create takes real time,boolean flag,code action returns integer
    local integer this = s__Timer__allocate()
    set s__Timer_trig[this]= CreateTrigger()
    set s__Timer_cycle[this]= time
    set s__Timer_perio[this]= flag
    set s__Timer_pause[this]= true
    set s__Timer_elapsed[this]= 0.0
    set s__Timer_dataInt[this]= 0
    set s__Timer_suspendTime[this]= 0.0
    call TriggerAddAction(s__Timer_trig[this], action)
    set s__Timer_Structs[s__Timer_size]= this
    set s__Timer_size = s__Timer_size + 1
    return this
endfunction  // Get
function s__Timer_HandleId takes integer this returns integer
    return GetHandleId(s__Timer_trig[this])
endfunction
function s__Timer_elapsedTime takes integer this returns real
    return s__Timer_elapsed[this]
endfunction
function s__Timer_cycleTime takes integer this returns real
    return s__Timer_cycle[this]
endfunction
function s__Timer_data takes integer this returns integer
    return s__Timer_dataInt[this]
endfunction
function s__Timer_thisTimer takes nothing returns integer
    return s__Timer_name
endfunction
function s__Timer_thisData takes nothing returns integer
    return s__Timer_data(s__Timer_name)
endfunction
function s__Timer_gameTime takes nothing returns real
    return I2R(s__Timer_gameTimer) / 100.0
endfunction
function s__Timer_setData takes integer this,integer dataInt returns nothing
    set s__Timer_dataInt[this]= dataInt
endfunction
function s__Timer_suspend takes integer this returns nothing
    set s__Timer_pause[this]= false
    set s__Timer_suspendTime[this]= s__Timer_elapsed[this]
endfunction  // 启动计时器实例
function s__Timer_start takes integer this returns nothing
    set s__Timer_pause[this]= true
    set s__Timer_elapsed[this]= s__Timer_suspendTime[this]
endfunction  // 终止计时器实例
function s__Timer_delete takes integer this returns nothing
    set s__Timer_perio[this]= false
    set s__Timer_pause[this]= false
endfunction  // 修改计时器实例周期间隔
function s__Timer_setCycle takes integer this,real time returns nothing
    set s__Timer_cycle[this]= time
endfunction

//library Timer ends
//library Gamer:

//private:
//public:
//private:
function s__Gamer_onInit takes nothing returns nothing
    local integer index
    set index = 0
    loop
        exitwhen ( index > 15 )
        set s__Gamer_user[index]= s__Gamer__allocate()
        set s__Gamer_pid[s__Gamer_user[index]]= index
        set s__Gamer_p[s__Gamer_user[index]]= Player(index)
        set s__Gamer_team[s__Gamer_user[index]]= 0
        set s__Gamer_ht[s__Gamer_user[index]]= s__Table_create()
        set s__Gamer_hero[s__Gamer_user[index]]= 0
        set s__Gamer_pets[s__Gamer_user[index]]= 0
        set s__Gamer_gamerEx[index]= s__Gamer_user[index]
        if ( sc__Gamer_IsPlayer(s__Gamer_user[index]) ) then
            set Gamer___Count = Gamer___Count + 1
        endif
        set index = index + 1
    endloop
endfunction
//public:
function s__Gamer__equalto takes integer this,integer gm returns boolean
    return s__Gamer_p[this] == sc__Gamer_Handle(gm)
endfunction
function s__Gamer_Gamer takes integer id returns integer
    if ( id > 15 ) then
        //Debug:
        call BJDebugMsg("Gamer-id >15!")
        return 0
    endif
    return s__Gamer_gamerEx[id]
endfunction  // 获取玩家
function s__Gamer_Handle takes integer this returns player
    return s__Gamer_p[this]
endfunction
function s__Gamer_HandleId takes integer this returns integer
    return GetHandleId(s__Gamer_p[this])
endfunction
function s__Gamer_id takes integer this returns integer
    return s__Gamer_pid[this]
endfunction
function s__Gamer_name takes integer this returns string
    return GetPlayerName(s__Gamer_p[this])
endfunction
function s__Gamer_expRate takes integer this returns real
    return GetPlayerHandicapXP(s__Gamer_p[this])
endfunction
function s__Gamer_gamerState takes integer this,playerstate ps returns integer
    return GetPlayerState(s__Gamer_p[this], ps)
endfunction
function s__Gamer_gold takes integer this returns integer
    return GetPlayerState(s__Gamer_p[this], PLAYER_STATE_RESOURCE_GOLD)
endfunction
function s__Gamer_wood takes integer this returns integer
    return GetPlayerState(s__Gamer_p[this], PLAYER_STATE_RESOURCE_LUMBER)
endfunction
function s__Gamer_usedFood takes integer this returns integer
    return GetPlayerState(s__Gamer_p[this], PLAYER_STATE_RESOURCE_FOOD_USED)
endfunction
function s__Gamer_maxFood takes integer this returns integer
    return GetPlayerState(s__Gamer_p[this], PLAYER_STATE_FOOD_CAP_CEILING)
endfunction
function s__Gamer_techLevel takes integer this,integer techId returns integer
    return GetPlayerTechCount(s__Gamer_p[this], techId, true)
endfunction
function s__Gamer_maxTechLevel takes integer this,integer techId returns integer
    return GetPlayerTechMaxAllowed(s__Gamer_p[this], techId)
endfunction
function s__Gamer_color takes integer this returns playercolor
    return GetPlayerColor(s__Gamer_p[this])
endfunction
function s__Gamer_HPRate takes integer this returns real
    return GetPlayerHandicap(s__Gamer_p[this])
endfunction
function s__Gamer_controller takes integer this returns mapcontrol
    return GetPlayerController(s__Gamer_p[this])
endfunction
function s__Gamer_taxRate takes integer this,integer tar,playerstate ps returns integer
    return GetPlayerTaxRate(s__Gamer_p[this], s__Gamer_Handle(tar), ps)
endfunction
function s__Gamer_startPointIndex takes integer this returns integer
    return GetPlayerStartLocation(s__Gamer_p[this])
endfunction
function s__Gamer_Race takes integer this returns race
    return GetPlayerRace(s__Gamer_p[this])
endfunction
function s__Gamer_selectable takes integer this returns boolean
    return GetPlayerSelectable(s__Gamer_p[this])
endfunction
function s__Gamer_slotState takes integer this returns playerslotstate
    return GetPlayerSlotState(s__Gamer_p[this])
endfunction
function s__Gamer_unitCount takes integer this,boolean flag returns integer
    return GetPlayerUnitCount(s__Gamer_p[this], flag)
endfunction
function s__Gamer_structureCount takes integer this,boolean flag returns integer
    return GetPlayerStructureCount(s__Gamer_p[this], flag)
endfunction
function s__Gamer_gamerNumber takes integer this returns integer
    return GetPlayers()
endfunction
function s__Gamer_teamId takes integer this returns integer
    if ( s__Gamer_team[this] >= 0 ) then
        set s__Gamer_team[this]= GetPlayerTeam(s__Gamer_p[this]) + 1
    endif
    return s__Gamer_team[this]
endfunction  // 获取在线人数
function s__Gamer_countAlive takes nothing returns integer
    local integer index
    set index = 0
    loop
        exitwhen ( index > 15 )
        if ( sc__Gamer_IsPlayer(s__Gamer_gamerEx[index]) ) then
            //Debug:
            call BJDebugMsg(I2S(index))
            set index = index + 1
        endif
        set index = index + 1
    endloop
    return index
endfunction  // 获取游戏玩家数
function s__Gamer_getNumber takes nothing returns integer
    return Gamer___Count
endfunction
function s__Gamer_setName takes integer this,string name returns nothing
    call SetPlayerName(s__Gamer_p[this], name)
endfunction
function s__Gamer_setEXPRate takes integer this,real rate returns nothing
    call SetPlayerHandicapXP(s__Gamer_p[this], rate)
endfunction
function s__Gamer_setGamerState takes integer this,playerstate ps,integer value returns nothing
    call SetPlayerState(s__Gamer_p[this], ps, value)
endfunction
function s__Gamer_setGold takes integer this,integer value returns nothing
    call SetPlayerState(s__Gamer_p[this], PLAYER_STATE_RESOURCE_GOLD, value)
endfunction
function s__Gamer_setWood takes integer this,integer value returns nothing
    call SetPlayerState(s__Gamer_p[this], PLAYER_STATE_RESOURCE_LUMBER, value)
endfunction
function s__Gamer_setUsedFood takes integer this,integer value returns nothing
    call SetPlayerState(s__Gamer_p[this], PLAYER_STATE_RESOURCE_FOOD_USED, value)
endfunction
function s__Gamer_setMaxFood takes integer this,integer value returns nothing
    call SetPlayerState(s__Gamer_p[this], PLAYER_STATE_FOOD_CAP_CEILING, value)
endfunction
function s__Gamer_setAlliance takes integer this,integer dest,integer alliance,boolean flag returns nothing
    call SetPlayerAlliance(s__Gamer_p[this], s__Gamer_Handle(dest), ConvertAllianceType(alliance), flag)
endfunction  // 简单结盟
function s__Gamer_setAllianceSimple takes integer this,integer dest,boolean flag returns nothing
    call SetPlayerAlliance(s__Gamer_p[this], s__Gamer_Handle(dest), ConvertAllianceType(0), flag) // 救援请求
    call SetPlayerAlliance(s__Gamer_p[this], s__Gamer_Handle(dest), ConvertAllianceType(1), false) // 救援回应
    call SetPlayerAlliance(s__Gamer_p[this], s__Gamer_Handle(dest), ConvertAllianceType(2), false) // 共享经验
    call SetPlayerAlliance(s__Gamer_p[this], s__Gamer_Handle(dest), ConvertAllianceType(3), flag) // 魔法锁定
    call SetPlayerAlliance(s__Gamer_p[this], s__Gamer_Handle(dest), ConvertAllianceType(4), false) // 共享视野
    call SetPlayerAlliance(s__Gamer_p[this], s__Gamer_Handle(dest), ConvertAllianceType(5), flag)
endfunction  // 允许控制 flag参数为是否显示头像
function s__Gamer_enableControl takes integer this,integer dest,boolean flag returns nothing
    call SetPlayerAlliance(s__Gamer_p[this], s__Gamer_Handle(dest), ConvertAllianceType(6), true)
    if ( flag ) then
        call SetPlayerAlliance(s__Gamer_p[this], s__Gamer_Handle(dest), ConvertAllianceType(7), true)
    endif
endfunction  // 设置玩家队伍编号 1开始
function s__Gamer_setTeamId takes integer this,integer teamId returns nothing
    set s__Gamer_team[this]= teamId
    call SetPlayerTeam(s__Gamer_p[this], teamId - 1)
endfunction  // 是否禁用技能 true 禁用
function s__Gamer_setAbilityEnable takes integer this,integer abId,boolean flag returns nothing
    call SetPlayerAbilityAvailable(s__Gamer_p[this], abId, flag)
endfunction
function s__Gamer_setTechLevel takes integer this,integer techId,integer level returns nothing
    call SetPlayerTechResearched(s__Gamer_p[this], techId, level)
endfunction
function s__Gamer_setMaxTechLevel takes integer this,integer techId,integer level returns nothing
    call SetPlayerTechMaxAllowed(s__Gamer_p[this], techId, level)
endfunction
function s__Gamer_setColor takes integer this,playercolor color returns nothing
    call SetPlayerColor(s__Gamer_p[this], color)
endfunction
function s__Gamer_setHPRate takes integer this,real value returns nothing
    call SetPlayerHandicap(s__Gamer_p[this], value)
endfunction
function s__Gamer_setStartPointIndex takes integer this,integer index returns nothing
    call SetPlayerStartLocation(s__Gamer_p[this], index)
endfunction
function s__Gamer_setTaxRate takes integer this,integer tar,playerstate ps,integer value returns nothing
    call SetPlayerTaxRate(s__Gamer_p[this], s__Gamer_Handle(tar), ps, value)
endfunction
function s__Gamer_setGamerNumber takes integer size returns nothing
    call SetPlayers(size)
endfunction
function s__Gamer_subGold takes integer this,integer value returns nothing
    call s__Gamer_setGold(this,s__Gamer_gold(this) - value)
endfunction
function s__Gamer_subWood takes integer this,integer value returns nothing
    call s__Gamer_setWood(this,s__Gamer_wood(this) - value)
endfunction
function s__Gamer_subUsedFood takes integer this,integer value returns nothing
    call s__Gamer_setUsedFood(this,s__Gamer_usedFood(this) - value)
endfunction
function s__Gamer_subMaxFood takes integer this,integer value returns nothing
    call s__Gamer_setMaxFood(this,s__Gamer_maxFood(this) - value)
endfunction
function s__Gamer_addGamerState takes integer this,playerstate ps,integer value returns nothing
    call s__Gamer_setGamerState(this,ps , s__Gamer_gamerState(this,ps) + value)
endfunction
function s__Gamer_addGold takes integer this,integer value returns nothing
    call s__Gamer_setGold(this,s__Gamer_gold(this) + value)
endfunction
function s__Gamer_addWood takes integer this,integer value returns nothing
    call s__Gamer_setWood(this,s__Gamer_wood(this) + value)
endfunction
function s__Gamer_addUsedFood takes integer this,integer value returns nothing
    call s__Gamer_setUsedFood(this,s__Gamer_usedFood(this) + value)
endfunction
function s__Gamer_addMaxFood takes integer this,integer value returns nothing
    call s__Gamer_setMaxFood(this,s__Gamer_maxFood(this) + value)
endfunction
function s__Gamer_addTechLevel takes integer this,integer techId,integer value returns nothing
    call AddPlayerTechResearched(s__Gamer_p[this], techId, value)
endfunction
function s__Gamer_IsObserver takes integer this returns boolean
    return IsPlayerObserver(s__Gamer_p[this])
endfunction
function s__Gamer_IsLocal takes integer this returns boolean
    return s__Gamer_p[this] == GetLocalPlayer()
endfunction
function s__Gamer_IsPlayer takes integer this returns boolean
    return s__Gamer_controller(this) == MAP_CONTROL_USER and s__Gamer_slotState(this) == PLAYER_SLOT_STATE_PLAYING
endfunction  // 是否为敌人
function s__Gamer_IsEnemy takes integer this,integer dest returns boolean
    return IsPlayerEnemy(s__Gamer_p[this], s__Gamer_Handle(dest))
endfunction
function s__Gamer_IsAlly takes integer this,integer dest returns boolean
    return IsPlayerAlly(s__Gamer_p[this], s__Gamer_Handle(dest))
endfunction
function s__Gamer_IsRacePrefSet takes integer this,racepreference rp returns boolean
    return IsPlayerRacePrefSet(s__Gamer_p[this], rp)
endfunction
function s__Gamer_IsXYFogged takes integer this,real x,real y returns boolean
    return IsFoggedToPlayer(x, y, s__Gamer_p[this])
endfunction
function s__Gamer_IsXYMasked takes integer this,real x,real y returns boolean
    return IsMaskedToPlayer(x, y, s__Gamer_p[this])
endfunction
function s__Gamer_IsXYVisible takes integer this,real x,real y returns boolean
    return IsVisibleToPlayer(x, y, s__Gamer_p[this])
endfunction
function s__Gamer_IsPointFogged takes integer this,integer p returns boolean
    return IsLocationFoggedToPlayer(s__Point_Handle(p), s__Gamer_p[this])
endfunction
function s__Gamer_IsPointMasked takes integer this,integer p returns boolean
    return IsLocationMaskedToPlayer(s__Point_Handle(p), s__Gamer_p[this])
endfunction
function s__Gamer_IsPointVisible takes integer this,integer p returns boolean
    return IsLocationVisibleToPlayer(s__Point_Handle(p), s__Gamer_p[this])
endfunction
function s__Gamer_IsEffect takes integer this returns boolean
    return LoadBoolean(XZHT, s__Gamer_HandleId(this), 0xF5D496B8)
endfunction
function s__Gamer_triggerGamer takes nothing returns integer
    return s__Gamer_Gamer(GetPlayerId(GetTriggerPlayer()))
endfunction
function s__Gamer_keyGamer takes nothing returns integer
    return s__Gamer_Gamer(GetPlayerId(DzGetTriggerKeyPlayer()))
endfunction
function s__Gamer_UIGamer takes nothing returns integer
    return s__Gamer_Gamer(GetPlayerId(DzGetTriggerUIEventPlayer()))
endfunction
function s__Gamer_syncGamer takes nothing returns integer
    return s__Gamer_Gamer(GetPlayerId(DzGetTriggerSyncPlayer()))
endfunction
function s__Gamer_enumGamer takes nothing returns integer
    return s__Gamer_Gamer(GetPlayerId(GetEnumPlayer()))
endfunction
function s__Gamer_filterGamer takes nothing returns integer
    return s__Gamer_Gamer(GetPlayerId(GetFilterPlayer()))
endfunction
function s__Gamer_localGamer takes nothing returns integer
    return s__Gamer_Gamer(GetPlayerId(GetLocalPlayer()))
endfunction
function s__Gamer_owningGamer takes integer u returns integer
    return s__Gamer_Gamer(GetPlayerId(GetOwningPlayer(sc__Unit_Handle(u))))
endfunction
function s__Gamer_owningGamerEX takes unit u returns integer
    return s__Gamer_Gamer(GetPlayerId(GetOwningPlayer(u)))
endfunction
function s__Gamer_switchEffect takes integer this,boolean flag returns nothing
    call SaveBoolean(XZHT, s__Gamer_HandleId(this), 0xF5D496B8, flag)
endfunction
function s__Gamer_victory takes integer this returns nothing
    call CustomVictoryBJ(s__Gamer_p[this], true, true)
endfunction
function s__Gamer_defeat takes integer this,string name returns nothing
    call CustomDefeatBJ(s__Gamer_p[this], name)
endfunction
function s__Gamer_remove takes integer this,playergameresult pr returns nothing
    call RemovePlayer(s__Gamer_p[this], pr)
endfunction
function s__Gamer_chat takes integer this,integer channel,string msg returns nothing
    call EXDisplayChat(s__Gamer_p[this], channel, msg)
endfunction
function s__Gamer_clearAllSelection takes integer this returns nothing
    call ClearSelectionForPlayer(s__Gamer_p[this])
endfunction
function s__Gamer_addSelection takes integer this,integer u returns nothing
    call SelectUnitAddForPlayer(sc__Unit_Handle(u), s__Gamer_p[this])
endfunction
function s__Gamer_removeSelection takes integer this,integer u returns nothing
    call SelectUnitRemoveForPlayer(sc__Unit_Handle(u), s__Gamer_p[this])
endfunction
function s__Gamer_selectSingleUnit takes integer this,integer u returns nothing
    call s__Gamer_clearAllSelection(this)
    call s__Gamer_addSelection(this,u)
endfunction  // 清空所有玩家选择
function s__Gamer_allGamersClearAllSelection takes nothing returns nothing
    call ClearSelection()
endfunction
function s__Gamer_allGamersAddSelection takes integer u returns nothing
    call SelectUnit(sc__Unit_Handle(u), true)
endfunction
function s__Gamer_allGamersRemoveSelection takes integer u returns nothing
    call SelectUnit(sc__Unit_Handle(u), false)
endfunction
function s__Gamer_allGamersSelectSingleUnit takes integer u returns nothing
    call ClearSelection()
    call SelectUnit(sc__Unit_Handle(u), true)
endfunction  // 强制按键 ESC == "ESC" A == "A"
function s__Gamer_forceKey takes integer this,string Key returns nothing
    if ( s__Gamer_IsLocal(this) ) then
        if ( Key == "ESC" ) then
            call ForceUICancel()
        else
            call ForceUIKey(Key)
        endif
    endif
endfunction  // 设置镜头位置
function s__Gamer_setCamera takes integer this,real x,real y,real time returns nothing
    if ( s__Gamer_IsLocal(this) ) then
        call PanCameraToTimed(x, y, time)
    endif
endfunction  // 增加镜头高度
function s__Gamer_addCameraHeight takes integer this,real height returns nothing
    if ( s__Gamer_IsLocal(this) ) then
        call SetCameraField(CAMERA_FIELD_TARGET_DISTANCE, GetCameraField(CAMERA_FIELD_TARGET_DISTANCE) + height, 0.0)
    endif
endfunction  // 降低镜头高度
function s__Gamer_subCameraHeight takes integer this,real height returns nothing
    if ( s__Gamer_IsLocal(this) ) then
        call SetCameraField(CAMERA_FIELD_TARGET_DISTANCE, GetCameraField(CAMERA_FIELD_TARGET_DISTANCE) - height, 0.0)
    endif
endfunction  // 小地图信号 位置X 位置Y 显示时间 红色 绿色 蓝色[颜色<0为填预设默认值] 类型[true/惊叹号 false/普通]
function s__Gamer_pingMinimap takes integer this,real x,real y,real time,integer Red,integer Green,integer Blue,boolean flag returns nothing
    if ( s__Gamer_IsLocal(this) ) then
        call PingMinimapEx(x, y, time, orInteger(Red , 0), orInteger(Green , 255), orInteger(Blue , 0), flag)
    endif
endfunction  // 清空个人信息
function s__Gamer_clearMsg takes integer this returns nothing
    if ( s__Gamer_IsLocal(this) ) then
        call ClearTextMessages()
    endif
endfunction  // 清空所有信息
function s__Gamer_clearAllMsg takes nothing returns nothing
    call ClearTextMessages()
endfunction
function s__Gamer_echo takes integer index,real dur,string msg returns nothing
    if ( index >= 0 and index <= 15 ) then
        call DisplayTimedTextToPlayer(Player(index), 0, 0, dur, msg)
    elseif ( index == - 1 ) then
        call DisplayTimedTextToPlayer(GetLocalPlayer(), 0, 0, dur, msg)
    else
        //Debug:
        call BJDebugMsg("echo错误提示:玩家索引参数超出预设范围,原定需要显示的内容为 - [" + msg + "]")
    endif
endfunction
function Gamer___onInit takes nothing returns nothing
    set s__Gamer_NEUTRAL_AGGRESSIVE = s__Gamer_user[12]
    set s__Gamer_NEUTRAL_VICTIM = s__Gamer_user[13]
    set s__Gamer_NEUTRAL_EXTRA = s__Gamer_user[14]
    set s__Gamer_NEUTRAL_PASSIVE = s__Gamer_user[15]
endfunction

//library Gamer ends
//library Item:
//private:
//public:
function s__Item_create takes integer itemId,real x,real y returns integer
    local integer this = s__Item__allocate()
    set s__Item_it[this]= CreateItem(itemId, x, y)
    set s__Item_handleId[this]= GetHandleId(s__Item_it[this])
    set s__Item_thisSize = s__Item_thisSize + 1
    return this
endfunction
function s__Item_byHandle takes item it returns integer
    local integer this = s__Item__allocate()
    set s__Item_it[this]= it
    set s__Item_handleId[this]= GetHandleId(s__Item_it[this])
    set s__Item_thisSize = s__Item_thisSize + 1
    return this
endfunction  // 析构函数
function s__Item_Null takes integer this returns nothing
    if ( (this) < 1 ) then
        return
    endif
    set s__Item_it[this]= null
    set s__Item_handleId[this]= 0
    set s__Item_thisSize = s__Item_thisSize - 1
    call s__Item_deallocate(this)
endfunction
function s__Item_delete takes integer this returns nothing
    call RemoveItem(s__Item_it[this])
    call sc__Item_flush(this)
    call s__Item_Null(this)
endfunction  // 重载 ==
function s__Item__equalto takes integer this,integer it returns boolean
    return s__Item_it[this] == sc__Item_Handle(it)
endfunction
function s__Item_Handle takes integer this returns item
    return s__Item_it[this]
endfunction
function s__Item_HandleId takes integer this returns integer
    return s__Item_handleId[this]
endfunction
function s__Item_id takes integer this returns integer
    return GetItemTypeId(s__Item_it[this])
endfunction
function s__Item_name takes integer this returns string
    return GetItemName(s__Item_it[this])
endfunction
function s__Item_itenType takes integer this returns itemtype
    return GetItemType(s__Item_it[this])
endfunction
function s__Item_x takes integer this returns real
    return GetWidgetX(s__Item_it[this])
endfunction
function s__Item_y takes integer this returns real
    return GetWidgetY(s__Item_it[this])
endfunction
function s__Item_life takes integer this returns real
    return GetWidgetLife(s__Item_it[this])
endfunction
function s__Item_level takes integer this returns integer
    return GetItemLevel(s__Item_it[this])
endfunction
function s__Item_charges takes integer this returns integer
    return GetItemCharges(s__Item_it[this])
endfunction
function s__Item_owner takes integer this returns integer
    return s__Gamer_Gamer(GetPlayerId(GetItemPlayer(s__Item_it[this])))
endfunction
function s__Item_userData takes integer this returns integer
    return GetItemUserData(s__Item_it[this])
endfunction
function s__Item_data takes integer this,string index returns real
    return LoadReal(XZHT, s__Item_handleId[this], StringHash(index))
endfunction
function s__Item_dataId takes integer itemId,string index returns real
    return LoadReal(XZHT, itemId, StringHash(index))
endfunction
function s__Item_dataInt takes integer itemId,string index returns integer
    return LoadInteger(XZHT, itemId, StringHash(index))
endfunction
function s__Item_move takes integer this,real x,real y returns nothing
    call SetItemPosition(s__Item_it[this], x, y)
endfunction
function s__Item_setCharges takes integer this,integer number returns nothing
    call SetItemCharges(s__Item_it[this], number)
endfunction
function s__Item_setOwner takes integer this,integer gm,boolean flag returns nothing
    call SetItemPlayer(s__Item_it[this], s__Gamer_Handle(gm), flag)
endfunction
function s__Item_setUserData takes integer this,integer data returns nothing
    call SetItemUserData(s__Item_it[this], data)
endfunction
function s__Item_setCreateUnitId takes integer this,integer unitId returns nothing
    call SetItemDropID(s__Item_it[this], unitId)
endfunction
function s__Item_setLife takes integer this,real value returns nothing
    call SetWidgetLife(s__Item_it[this], value)
endfunction
function s__Item_setInvulnerable takes integer this,boolean flag returns nothing
    call SetItemInvulnerable(s__Item_it[this], flag)
endfunction
function s__Item_setPawnable takes integer this,boolean flag returns nothing
    call SetItemPawnable(s__Item_it[this], flag)
endfunction
function s__Item_setDroppable takes integer this,boolean flag returns nothing
    call SetItemDroppable(s__Item_it[this], flag)
endfunction
function s__Item_setDropOnDeath takes integer this,boolean flag returns nothing
    call SetItemDropOnDeath(s__Item_it[this], flag)
endfunction
function s__Item_setShow takes integer this,boolean flag returns nothing
    call SetItemVisible(s__Item_it[this], flag)
endfunction
function s__Item_setData takes integer this,string index,real value returns nothing
    call SaveReal(XZHT, s__Item_handleId[this], StringHash(index), value)
endfunction
function s__Item_setPermanentData takes integer this,boolean flag returns nothing
    call SaveBoolean(XZHT, s__Item_handleId[this], 0xACB8C6C3, flag)
endfunction
function s__Item_setDataId takes integer itemId,string index,real value returns nothing
    call SaveReal(XZHT, itemId, StringHash(index), value)
endfunction
function s__Item_setDataInt takes integer itemId,string index,integer value returns nothing
    call SaveInteger(XZHT, itemId, StringHash(index), value)
endfunction
function s__Item_addData takes integer this,string index,real value returns nothing
    call s__Item_setData(this,index , s__Item_data(this,index) + value)
endfunction
function s__Item_addCharges takes integer this,integer number returns nothing
    call s__Item_setCharges(this,s__Item_charges(this) + number)
endfunction
function s__Item_addDataId takes integer itemId,string index,real value returns nothing
    call s__Item_setDataId(itemId , index , s__Item_dataId(itemId , index) + value)
endfunction  // 增加物品类型自定义属性值 整数
function s__Item_addDataInt takes integer itemId,string index,integer value returns nothing
    call s__Item_setDataInt(itemId , index , s__Item_dataInt(itemId , index) + value)
endfunction  // Sub
function s__Item_subData takes integer this,string index,real value returns nothing
    call s__Item_setData(this,index , s__Item_data(this,index) - value)
endfunction
function s__Item_subCharges takes integer this,integer number returns nothing
    call s__Item_setCharges(this,s__Item_charges(this) - number)
endfunction
function s__Item_subDataId takes integer itemId,string index,real value returns nothing
    call s__Item_setDataId(itemId , index , s__Item_dataId(itemId , index) - value)
endfunction  // 减少物品类型自定义属性值 整数
function s__Item_subDataInt takes integer itemId,string index,integer value returns nothing
    call s__Item_setDataInt(itemId , index , s__Item_dataInt(itemId , index) - value)
endfunction  // Flush
function s__Item_remove takes integer this,string index returns nothing
    call RemoveSavedReal(XZHT, s__Item_handleId[this], StringHash(index))
endfunction
function s__Item_removeInt takes integer this,string index returns nothing
    call RemoveSavedInteger(XZHT, s__Item_handleId[this], StringHash(index))
endfunction
function s__Item_removeTypeId takes integer itemId,string index returns nothing
    call RemoveSavedReal(XZHT, itemId, StringHash(index))
endfunction
function s__Item_removeTypeInt takes integer itemId,string index returns nothing
    call RemoveSavedInteger(XZHT, itemId, StringHash(index))
endfunction
function s__Item_flush takes integer this returns nothing
    call FlushChildHashtable(XZHT, s__Item_handleId[this])
endfunction
function s__Item_flushId takes integer itemId returns nothing
    call FlushChildHashtable(XZHT, itemId)
endfunction
function s__Item_IsSellable takes integer this returns boolean
    return IsItemSellable(s__Item_it[this])
endfunction
function s__Item_IsInvulnerable takes integer this returns boolean
    return IsItemInvulnerable(s__Item_it[this])
endfunction
function s__Item_IsOwned takes integer this returns boolean
    return IsItemOwned(s__Item_it[this])
endfunction
function s__Item_IsPawnable takes integer this returns boolean
    return IsItemPawnable(s__Item_it[this])
endfunction
function s__Item_IsPowerup takes integer this returns boolean
    return IsItemPowerup(s__Item_it[this])
endfunction
function s__Item_IsShow takes integer this returns boolean
    return IsItemVisible(s__Item_it[this])
endfunction
function s__Item_IsData takes integer this,string index returns boolean
    return HaveSavedReal(XZHT, s__Item_handleId[this], StringHash(index))
endfunction
function s__Item_IsPermanentData takes integer this returns boolean
    return LoadBoolean(XZHT, s__Item_handleId[this], 0xACB8C6C3)
endfunction
function s__Item_IsDataId takes integer itemId,string index returns boolean
    return HaveSavedReal(XZHT, itemId, StringHash(index))
endfunction
function s__Item_IsDataInt takes integer itemId,string index returns boolean
    return HaveSavedInteger(XZHT, itemId, StringHash(index))
endfunction
function s__Item_showSelectionCircle takes integer this,integer r,integer g,integer b,integer t returns nothing
    call AddIndicator(s__Item_it[this], r, g, b, t)
endfunction
function s__Item_enumInRect takes rect rct,code action returns nothing
    call EnumItemsInRect(rct, null, action)
endfunction
function s__Item_enumItem takes nothing returns integer
    return s__Item_byHandle(GetEnumItem())
endfunction  //end of: ItemEvent("enumItem", "GetEnumItem", "选取物品")
function s__Item_soldItem takes nothing returns integer
    return s__Item_byHandle(GetSoldItem())
endfunction  //end of: ItemEvent("soldItem", "GetSoldItem", "被售出的物品")
function s__Item_filterItem takes nothing returns integer
    return s__Item_byHandle(GetFilterItem())
endfunction  //end of: ItemEvent("filterItem", "GetFilterItem", "匹配物品")
function s__Item_manipulatedItem takes nothing returns integer
    return s__Item_byHandle(GetManipulatedItem())
endfunction  //end of: ItemEvent("manipulatedItem", "GetManipulatedItem", "被操作的物品")
function s__Item_orderTargetItem takes nothing returns integer
    return s__Item_byHandle(GetOrderTargetItem())
endfunction  //end of: ItemEvent("orderTargetItem", "GetOrderTargetItem", "命令发布目标")
function s__Item_spellTargetItem takes nothing returns integer
    return s__Item_byHandle(GetSpellTargetItem())
endfunction  //end of: ItemEvent("spellTargetItem", "GetSpellTargetItem", "技能释放目标")

//library Item ends
//library String:
function s__StringPara_new takes string Str,integer whichUnit,integer gId returns integer
    local integer this = s__StringPara__allocate()
    set s__StringPara_str[this]= Str
    set s__StringPara_un[this]= whichUnit
    set s__StringPara_id[this]= gId
    return this
endfunction  // 创建到坐标
function s__StringPara_create takes string Str,real X,real Y,real Z,integer gId returns integer
    local integer this = s__StringPara__allocate()
    set s__StringPara_str[this]= Str
    set s__StringPara_x[this]= X
    set s__StringPara_y[this]= Y
    set s__StringPara_z[this]= Z
    set s__StringPara_id[this]= gId
    return this
endfunction
//private:
//public:
function s__String_create takes nothing returns integer
    local integer this = s__String__allocate()
    set s__String_s[this]= CreateTextTag()
    return this
endfunction
function s__String_byHandle takes texttag t returns integer
    local integer this = s__String__allocate()
    set s__String_s[this]= t
    return this
endfunction  // 创建漂浮文字到单位头上 文字内容 绑定单位 异步显示玩家ID[-1为同步显示] 文字大小 红色 绿色 蓝色 X速率 Y速率 <0时为默认值 , 如果是限时删除 必须记得用timed方法
function s__String_newUnit takes integer para returns integer
    local integer this = s__String__allocate()
    set s__String_s[this]= CreateTextTag()
    call SetTextTagVisibility(s__String_s[this], false)
    call SetTextTagText(s__String_s[this], s__StringPara_str[para], s__StringPara_size[para])
    call SetTextTagColor(s__String_s[this], s__StringPara_r[para], s__StringPara_g[para], s__StringPara_b[para], 255)
    call SetTextTagPosUnit(s__String_s[this], sc__Unit_Handle(s__StringPara_un[para]), 90.0)
    call SetTextTagVelocity(s__String_s[this], s__StringPara_speedX[para], s__StringPara_speedY[para])
    if ( s__StringPara_id[para] == - 1 ) then
        call SetTextTagVisibility(s__String_s[this], true)
    elseif ( Player(s__StringPara_id[para]) == GetLocalPlayer() ) then
        call SetTextTagVisibility(s__String_s[this], true)
    endif
    call s__StringPara_deallocate(para)
    return this
endfunction  // 创建漂浮文字在指定坐标 文字内容 坐标位置 高度 异步显示玩家ID[-1为同步显示] 文字大小 红色 绿色 蓝色 X速率 Y速率 <0时为默认值 , 如果是限时删除 必须记得用timed方法
function s__String_newPoint takes integer para returns integer
    local integer this = s__String__allocate()
    set s__String_s[this]= CreateTextTag()
    call SetTextTagVisibility(s__String_s[this], false)
    call SetTextTagText(s__String_s[this], s__StringPara_str[para], s__StringPara_size[para])
    call SetTextTagColor(s__String_s[this], s__StringPara_r[para], s__StringPara_g[para], s__StringPara_b[para], 255)
    call SetTextTagPos(s__String_s[this], s__StringPara_x[para], s__StringPara_y[para], s__StringPara_z[para])
    call SetTextTagVelocity(s__String_s[this], s__StringPara_speedX[para], s__StringPara_speedY[para])
    if ( s__StringPara_id[para] == - 1 ) then
        call SetTextTagVisibility(s__String_s[this], true)
    elseif ( Player(s__StringPara_id[para]) == GetLocalPlayer() ) then
        call SetTextTagVisibility(s__String_s[this], true)
    endif
    call s__StringPara_deallocate(para)
    return this
endfunction  // 析构函数
function s__String_Null takes integer this returns nothing
    if ( not ( s__String_timedBool[this] ) ) then
        set s__String_s[this]= null
        call s__String_deallocate(this)
    endif
endfunction
function s__String_delete takes integer this returns nothing
    call DestroyTextTag(s__String_s[this])
    call s__String_Null(this)
endfunction
function s__String_anon__0 takes nothing returns nothing
    local integer this = s__Timer_thisData()
    set s__String_timedBool[this]= false
    call s__String_delete(this)
endfunction
function s__String_timed takes integer this,real dur returns nothing
    if ( s__String_permanent[this] ) then
        set s__String_timedBool[this]= true
        call s__Timer_setData(s__Timer_create(dur , false , function s__String_anon__0),(this))
    else
        call sc__String_setPermanent(this,false)
        call sc__String_setLife(this,dur)
        call s__String_Null(this)
    endif
endfunction  // Set
function s__String_setText takes integer this,string text,real size returns nothing
    call SetTextTagText(s__String_s[this], text, size)
endfunction
function s__String_setPoint takes integer this,real x,real y,real z returns nothing
    call SetTextTagPos(s__String_s[this], x, y, z)
endfunction
function s__String_setUnit takes integer this,integer u,real z returns nothing
    call SetTextTagPosUnit(s__String_s[this], sc__Unit_Handle(u), z)
endfunction
function s__String_SetColor takes integer this,integer r,integer g,integer b,integer a returns nothing
    call SetTextTagColor(s__String_s[this], r, g, b, a)
endfunction
function s__String_SetVelocity takes integer this,real speedX,real speedY returns nothing
    call SetTextTagVelocity(s__String_s[this], speedX, speedY)
endfunction
function s__String_show takes integer this,boolean flag returns nothing
    call SetTextTagVisibility(s__String_s[this], flag)
endfunction
function s__String_suspend takes integer this,boolean flag returns nothing
    call SetTextTagSuspended(s__String_s[this], flag)
endfunction
function s__String_setPermanent takes integer this,boolean flag returns nothing
    set s__String_permanent[this]= flag
    call SetTextTagPermanent(s__String_s[this], flag)
endfunction
function s__String_tagAge takes integer this,real age returns nothing
    call SetTextTagAge(s__String_s[this], age)
endfunction
function s__String_setLife takes integer this,real life returns nothing
    call SetTextTagLifespan(s__String_s[this], life)
endfunction
function s__String_setFadepoint takes integer this,real time returns nothing
    call SetTextTagFadepoint(s__String_s[this], time)
endfunction
function s__String_IsPermanent takes integer this returns boolean
    return s__String_permanent[this]
endfunction
//public:
function s__String_ID2S takes integer id returns string
    return EXExecuteScript("string.pack('>I4'," + I2S(id) + ") ")
endfunction
function s__String_S2ID takes string id returns integer
    return S2I(EXExecuteScript("string.unpack('>I4', '" + id + "')"))
endfunction
function s__String_len takes string str returns integer
    return StringLength(str)
endfunction
function s__String_O2S takes integer orderId returns string
    return OrderId2String(orderId)
endfunction
function s__String_S2O takes string str returns integer
    return OrderId(str)
endfunction
function s__String_U2S takes integer unitId returns string
    return UnitId2String(unitId)
endfunction
function s__String_S2U takes string str returns integer
    return UnitId(str)
endfunction
function s__String_toUpper takes string str returns string
    return StringCase(str, true)
endfunction
function s__String_toLower takes string str returns string
    return StringCase(str, false)
endfunction
function s__String_localString takes string str returns string
    return GetLocalizedString(str)
endfunction
function s__String_reverse takes string str returns string
    return EXExecuteScript("string.reverse('" + str + "')")
endfunction
function s__String_find takes string str,string pattern,integer init,string Bool returns integer
    local string Code
    set Code = EXExecuteScript("string.find('" + str + "', '" + pattern + "', " + I2S(init) + ", " + Bool + ")")
    if ( Code == null ) then
        return - 1
    endif
    return S2I(Code)
endfunction  // 替换字符串，替换str里面的pattern内容为value，count为替换次数，少于1则是代表替换所有
function s__String_gsub takes string str,string pattern,string value,integer count returns string
    local string Code = ""
    if ( count < 1 ) then
        set Code = EXExecuteScript("string.gsub('" + str + "', '" + pattern + "', '" + value + "')")
    else
        set Code = EXExecuteScript("string.gsub('" + str + "', '" + pattern + "', '" + value + "', " + I2S(count) + ")")
    endif
    return Code
endfunction  // 寻找字符串，从str里面寻找pattern，起始寻找位置init，找到返回位置，失败返回-1，起始位置可以是负数，负数则是从结尾开始倒序寻找
function s__String_seek takes string str,string pattern,integer init returns integer
    local integer value =- 1
    if ( init < 0 ) then
        set init = init * - 1
        set value = s__String_find(s__String_reverse(str) , s__String_reverse(pattern) , init , "true")
        if ( value == - 1 ) then
            return value
        endif
        set value = s__String_len(str) - value
    else
        set value = s__String_find(str , pattern , init , "true")
    endif
    return value
endfunction  // 匹配字符串，从str里面根据pattern去匹配字符串，匹配成功返回匹配内容，失败返回null，起始匹配位置init，可以是负数，pattern类型为匹配模式
function s__String_match takes string str,string pattern,integer init returns string
    return EXExecuteScript("string.match('" + str + "', '" + pattern + "', " + I2S(init) + ")")
endfunction  // 截取字符串，截取str内容，从Start位置截取到End位置，Start和End位置都可以为负数，-1则为字符串长度
function s__String_sub takes string str,integer start,integer end returns string
    return EXExecuteScript("string.sub('" + str + "', " + I2S(start) + ", " + I2S(end) + ")")
endfunction  // 事件响应
function s__String_chat takes nothing returns string
    return GetEventPlayerChatString()
endfunction
function s__String_matched takes nothing returns string
    return GetEventPlayerChatStringMatched()
endfunction
function s__String_syncData takes nothing returns string
    return DzGetTriggerSyncData()
endfunction

//library String ends
//library Turn:
//public:
function s__Turn_handleId takes handle han returns integer
    return GetHandleId(han)
endfunction
function s__Turn_item takes integer id returns item
    call SaveFogStateHandle(XZHT, 0x08C2BCB3, 0, ConvertFogState(id))
    return LoadItemHandle(XZHT, 0x08C2BCB3, 0)
endfunction  // 句柄转换单位
function s__Turn_unit takes integer id returns unit
    call SaveFogStateHandle(XZHT, 0x08C2BCB3, 0, ConvertFogState(id))
    return LoadUnitHandle(XZHT, 0x08C2BCB3, 0)
endfunction  // 句柄转换可破坏物
function s__Turn_dest takes integer id returns destructable
    call SaveFogStateHandle(XZHT, 0x08C2BCB3, 0, ConvertFogState(id))
    return LoadDestructableHandle(XZHT, 0x08C2BCB3, 0)
endfunction  // 是否为物品
function s__Turn_isItem takes integer id returns boolean
    return s__Turn_item(id) != null
endfunction
function s__Turn_isUnit takes integer id returns boolean
    return s__Turn_unit(id) != null
endfunction
function s__Turn_isDest takes integer id returns boolean
    return s__Turn_dest(id) != null
endfunction
function s__Turn_typeId takes integer id returns integer
    if ( s__Turn_isItem(id) ) then
        return GetItemTypeId(s__Turn_item(id))
    endif
    if ( s__Turn_isUnit(id) ) then
        return GetUnitTypeId(s__Turn_unit(id))
    endif
    if ( s__Turn_isDest(id) ) then
        return GetDestructableTypeId(s__Turn_dest(id))
    endif
    return 0
endfunction

//library Turn ends
//library Unit:
//private:
function Unit___getStateIndex takes string index returns integer
    local integer state =- 1
    if ( index == "攻击力" or index == "基础攻击" ) then
        set state = 0x12
    elseif ( index == "护甲" or index == "防御力" ) then
        set state = 0x20
    elseif ( index == "攻击距离" or index == "攻击范围" ) then
        set state = 0x16
    elseif ( index == "攻击间隔" ) then
        set state = 0x25
    elseif ( index == "攻击速度" ) then
        set state = 0x51
    elseif ( index == "生命值" ) then
        set state = 0
    elseif ( index == "魔法值" ) then
        set state = 2
    elseif ( index == "最大生命值" or index == "生命上限" ) then
        set state = 1
    elseif ( index == "最大魔法值" or index == "魔法上限" ) then
        set state = 3
    endif
    return state
endfunction
//private:
//private:
function s__Unit_countStr takes integer this,integer value returns integer
    local integer data = s__math_miR2I(I2R(value) * LoadReal(XZHT, s__Unit_handleId[this], 0x6E19C831)) + value
    call SaveInteger(XZHT, s__Unit_handleId[this], 0x82D03257, value)
    call SaveInteger(XZHT, s__Unit_handleId[this], 0x487A86F0, data)
    return data
endfunction  // 计算敏捷
function s__Unit_countAgi takes integer this,integer value returns integer
    local integer data = s__math_miR2I(I2R(value) * LoadReal(XZHT, s__Unit_handleId[this], 0xE301BF2A)) + value
    call SaveInteger(XZHT, s__Unit_handleId[this], 0x5D6F2440, value)
    call SaveInteger(XZHT, s__Unit_handleId[this], 0x491B9ED5, data)
    return data
endfunction  // 计算智力
function s__Unit_countInt takes integer this,integer value returns integer
    local integer data = s__math_miR2I(I2R(value) * LoadReal(XZHT, s__Unit_handleId[this], 0xF986EF97)) + value
    call SaveInteger(XZHT, s__Unit_handleId[this], 0x3664103B, value)
    call SaveInteger(XZHT, s__Unit_handleId[this], 0x0EE86CCF, data)
    return data
endfunction
//public:
function s__Unit_create takes integer p,integer unitId,real x,real y,real angle returns integer
    local integer this = s__Unit__allocate()
    set s__Unit_u[this]= CreateUnit(s__Gamer_Handle(p), unitId, x, y, angle)
    set s__Unit_GamerId[this]= s__Gamer_id(p)
    set s__Unit_handleId[this]= GetHandleId(s__Unit_u[this])
    set s__Unit_heroBool[this]= IsUnitType(s__Unit_u[this], UNIT_TYPE_HERO)
    set s__Unit_NullBool[this]= true
    if ( s__Unit_heroBool[this] ) then
        call SaveInteger(XZHT, s__Unit_handleId[this], 0x82D03257, GetHeroStr(s__Unit_u[this], true))
        call SaveInteger(XZHT, s__Unit_handleId[this], 0x5D6F2440, GetHeroAgi(s__Unit_u[this], true))
        call SaveInteger(XZHT, s__Unit_handleId[this], 0x3664103B, GetHeroInt(s__Unit_u[this], true))
    endif
    set s__Unit_thisSize = s__Unit_thisSize + 1
    return this
endfunction
function s__Unit_byHandle takes unit u returns integer
    local integer this = 0
    if ( u == null ) then
        return 0
    endif
    set this = s__Unit__allocate()
    set s__Unit_u[this]= u
    set s__Unit_GamerId[this]= GetPlayerId(GetOwningPlayer(s__Unit_u[this]))
    set s__Unit_handleId[this]= GetHandleId(s__Unit_u[this])
    set s__Unit_heroBool[this]= IsUnitType(s__Unit_u[this], UNIT_TYPE_HERO)
    set s__Unit_NullBool[this]= true
    if ( s__Unit_heroBool[this] and LoadInteger(XZHT, s__Unit_handleId[this], 0x82D03257) > 0 ) then
        call SaveInteger(XZHT, s__Unit_handleId[this], 0x82D03257, GetHeroStr(s__Unit_u[this], true))
        call SaveInteger(XZHT, s__Unit_handleId[this], 0x5D6F2440, GetHeroAgi(s__Unit_u[this], true))
        call SaveInteger(XZHT, s__Unit_handleId[this], 0x3664103B, GetHeroInt(s__Unit_u[this], true))
    endif
    set s__Unit_thisSize = s__Unit_thisSize + 1
    return this
endfunction  // 析构函数
function s__Unit_Null takes integer this returns nothing
    if ( not ( s__Unit_NullBool[this] ) or (this) < 1 ) then
        return
    endif
    set s__Unit_u[this]= null
    set s__Unit_GamerId[this]= 0
    set s__Unit_handleId[this]= 0
    set s__Unit_heroBool[this]= false
    set s__Unit_NullBool[this]= false
    set s__Unit_thisSize = s__Unit_thisSize - 1
    call s__Unit_deallocate(this)
endfunction
function s__Unit_delete takes integer this returns nothing
    call RemoveUnit(s__Unit_u[this])
    call sc__Unit_flush(this)
    call s__Unit_Null(this)
endfunction  // 重载 ==
function s__Unit__equalto takes integer this,integer u returns boolean
    return s__Unit_u[this] == sc__Unit_Handle(u)
endfunction
function s__Unit_causeUnit takes integer this,integer target,real amount,boolean attack,boolean ranged,attacktype attackType,damagetype damageType,weapontype weaponType returns boolean
    return UnitDamageTarget(s__Unit_u[this], sc__Unit_Handle(target), amount, attack, ranged, attackType, damageType, weaponType)
endfunction  // Get
function s__Unit_Handle takes integer this returns unit
    return s__Unit_u[this]
endfunction
function s__Unit_HandleId takes integer this returns integer
    return s__Unit_handleId[this]
endfunction
function s__Unit_gamerId takes integer this returns integer
    return s__Unit_GamerId[this]
endfunction
function s__Unit_id takes integer this returns integer
    return GetUnitTypeId(s__Unit_u[this])
endfunction
function s__Unit_name takes integer this returns string
    return GetUnitName(s__Unit_u[this])
endfunction
function s__Unit_x takes integer this returns real
    return GetUnitX(s__Unit_u[this])
endfunction
function s__Unit_y takes integer this returns real
    return GetUnitY(s__Unit_u[this])
endfunction
function s__Unit_z takes integer this returns real
    return GetUnitFlyHeight(s__Unit_u[this])
endfunction
function s__Unit_defaultZ takes integer this returns real
    return GetUnitDefaultFlyHeight(s__Unit_u[this])
endfunction
function s__Unit_data takes integer this,string index returns real
    return LoadReal(XZHT, s__Unit_handleId[this], StringHash(index))
endfunction
function s__Unit_owner takes integer this returns integer
    return s__Gamer_Gamer(s__Unit_GamerId[this])
endfunction
function s__Unit_facing takes integer this returns real
    return GetUnitFacing(s__Unit_u[this])
endfunction
function s__Unit_userData takes integer this returns integer
    return GetUnitUserData(s__Unit_u[this])
endfunction
function s__Unit_abilityLevel takes integer this,integer abId returns integer
    return GetUnitAbilityLevel(s__Unit_u[this], abId)
endfunction
function s__Unit_currentOrder takes integer this returns integer
    return GetUnitCurrentOrder(s__Unit_u[this])
endfunction
function s__Unit_acquireRange takes integer this returns real
    return GetUnitAcquireRange(s__Unit_u[this])
endfunction
function s__Unit_defaultAcquireRange takes integer this returns real
    return GetUnitDefaultAcquireRange(s__Unit_u[this])
endfunction
function s__Unit_moveSpeed takes integer this returns real
    return GetUnitMoveSpeed(s__Unit_u[this])
endfunction
function s__Unit_defaultMoveSpeed takes integer this returns real
    return GetUnitDefaultMoveSpeed(s__Unit_u[this])
endfunction
function s__Unit_value takes integer this returns integer
    return GetUnitPointValue(s__Unit_u[this])
endfunction
function s__Unit_Race takes integer this returns race
    return GetUnitRace(s__Unit_u[this])
endfunction
function s__Unit_turnAngle takes integer this returns real
    return GetUnitPropWindow(s__Unit_u[this])
endfunction
function s__Unit_defaultTurnAngle takes integer this returns real
    return GetUnitDefaultPropWindow(s__Unit_u[this])
endfunction
function s__Unit_turnSpeed takes integer this returns real
    return GetUnitTurnSpeed(s__Unit_u[this])
endfunction
function s__Unit_defaultTurnSpeed takes integer this returns real
    return GetUnitDefaultTurnSpeed(s__Unit_u[this])
endfunction
function s__Unit_madeFood takes integer this returns integer
    return GetUnitFoodMade(s__Unit_u[this])
endfunction
function s__Unit_usedFood takes integer this returns integer
    return GetUnitFoodUsed(s__Unit_u[this])
endfunction
function s__Unit_level takes integer this returns integer
    return GetUnitLevel(s__Unit_u[this])
endfunction
function s__Unit_state takes integer this,integer index returns real
    return GetUnitState(s__Unit_u[this], ConvertUnitState(index))
endfunction
function s__Unit_Life takes integer this returns real
    return GetUnitStatePercent(s__Unit_u[this], UNIT_STATE_LIFE, UNIT_STATE_MAX_LIFE)
endfunction
function s__Unit_Magic takes integer this returns real
    return GetUnitStatePercent(s__Unit_u[this], UNIT_STATE_MANA, UNIT_STATE_MAX_MANA)
endfunction
function s__Unit_abilityId takes integer this,integer abId returns ability
    return EXGetUnitAbility(s__Unit_u[this], abId)
endfunction
function s__Unit_abilityIndex takes integer this,integer index returns ability
    return EXGetUnitAbilityByIndex(s__Unit_u[this], index)
endfunction
function s__Unit_abilityCD takes integer this,integer abId returns real
    return EXGetAbilityState(EXGetUnitAbility(s__Unit_u[this], abId), 1)
endfunction
function s__Unit_itemInslot takes integer this,integer index returns integer
    return s__Item_byHandle(UnitItemInSlot(s__Unit_u[this], index))
endfunction
function s__Unit_abilityDataInt takes integer this,integer abId,integer level,integer dataId returns integer
    return EXGetAbilityDataInteger(EXGetUnitAbility(s__Unit_u[this], abId), level, dataId)
endfunction  // 单位技能实数数据
function s__Unit_abilityDataReal takes integer this,integer abId,integer level,integer dataId returns real
    return EXGetAbilityDataReal(EXGetUnitAbility(s__Unit_u[this], abId), level, dataId)
endfunction  // 单位技能字符串数据
function s__Unit_abilityDataString takes integer this,integer abId,integer level,integer dataId returns string
    return EXGetAbilityDataString(EXGetUnitAbility(s__Unit_u[this], abId), level, dataId)
endfunction  // 获取力量
function s__Unit_str takes integer this returns integer
    if ( s__Unit_heroBool[this] ) then
        return LoadInteger(XZHT, s__Unit_handleId[this], 0x82D03257)
    endif
    return 0
endfunction  // 获取敏捷
function s__Unit_agi takes integer this returns integer
    if ( s__Unit_heroBool[this] ) then
        return LoadInteger(XZHT, s__Unit_handleId[this], 0x5D6F2440)
    endif
    return 0
endfunction  // 获取智力
function s__Unit_int takes integer this returns integer
    if ( s__Unit_heroBool[this] ) then
        return LoadInteger(XZHT, s__Unit_handleId[this], 0x3664103B)
    endif
    return 0
endfunction  // 获取全属性
function s__Unit_saiState takes integer this returns integer
    return s__Unit_str(this) + s__Unit_agi(this) + s__Unit_int(this)
endfunction
function s__Unit_heroLevel takes integer this returns integer
    if ( s__Unit_heroBool[this] ) then
        return GetHeroLevel(s__Unit_u[this])
    endif
    return 0
endfunction
function s__Unit_exp takes integer this returns integer
    if ( s__Unit_heroBool[this] ) then
        return GetHeroXP(s__Unit_u[this])
    endif
    return 0
endfunction
function s__Unit_stateType takes integer this returns string
    local string Code = ""
    set Code = "(require'jass.slk').unit"
    set Code = Code + "[" + I2S(s__Unit_id(this)) + "]."
    set Code = Code + "Primary"
    set Code = EXExecuteScript(Code)
    if ( Code == "STR" ) then
        return "力量"
    elseif ( Code == "AGI" ) then
        return "敏捷"
    elseif ( Code == "INT" ) then
        return "智力"
    endif
    return null
endfunction  // 万能属性获取
function s__Unit_stateString takes integer this,string index returns real
    local integer state = Unit___getStateIndex(index)
    local real value = 0.0
    if ( state != - 1 ) then
        set value = s__Unit_state(this,state)
    elseif ( index == "力量" or index == "力量值" ) then
        set value = I2R(s__Unit_str(this))
    elseif ( index == "敏捷" or index == "敏捷值" ) then
        set value = I2R(s__Unit_agi(this))
    elseif ( index == "智力" or index == "智力值" ) then
        set value = I2R(s__Unit_int(this))
    elseif ( index == "全属性" or index == "三围属性" ) then
        set value = I2R(s__Unit_saiState(this))
    else
        set value = s__Unit_data(this,index)
    endif
    return value
endfunction  // 获取绑定在单位类型的附加值
function s__Unit_added takes integer unId returns real
    return LoadReal(XZHT, 0xD8937420, unId)
endfunction
function s__Unit_setPermanentData takes integer this,boolean flag returns nothing
    call SaveBoolean(XZHT, s__Unit_handleId[this], 0x50B3D311, flag)
endfunction
function s__Unit_setX takes integer this,real x returns nothing
    call SetUnitX(s__Unit_u[this], s__position_correctX(x))
endfunction
function s__Unit_setY takes integer this,real y returns nothing
    call SetUnitY(s__Unit_u[this], s__position_correctY(y))
endfunction
function s__Unit_setZ takes integer this,real z,real time returns nothing
    call SetUnitFlyHeight(s__Unit_u[this], z, time)
endfunction
function s__Unit_setXY takes integer this,real x,real y returns nothing
    call s__Unit_setX(this,x)
    call s__Unit_setY(this,y)
endfunction
function s__Unit_move takes integer this,real x,real y returns nothing
    call SetUnitPosition(s__Unit_u[this], x, y)
endfunction
function s__Unit_flyEnable takes integer this returns nothing
    call UnitAddAbility(s__Unit_u[this], 'Amrf')
    call UnitRemoveAbility(s__Unit_u[this], 'Amrf')
endfunction
function s__Unit_setOwner takes integer this,integer gm,boolean flag returns nothing
    call SetUnitOwner(s__Unit_u[this], s__Gamer_Handle(gm), flag)
endfunction
function s__Unit_setuserData takes integer this,integer value returns nothing
    call SetUnitUserData(s__Unit_u[this], value)
endfunction
function s__Unit_setData takes integer this,string index,real value returns nothing
    call SaveReal(XZHT, s__Unit_handleId[this], StringHash(index), value)
endfunction
function s__Unit_setAbilityLevel takes integer this,integer abId,integer level returns integer
    return SetUnitAbilityLevel(s__Unit_u[this], abId, level)
endfunction
function s__Unit_setAbilityPermanent takes integer this,integer abId,boolean flag returns boolean
    return UnitMakeAbilityPermanent(s__Unit_u[this], flag, abId)
endfunction
function s__Unit_setAcquireRange takes integer this,real range returns nothing
    call SetUnitAcquireRange(s__Unit_u[this], range)
endfunction
function s__Unit_setSize takes integer this,real size returns nothing
    call SetUnitScale(s__Unit_u[this], size, size, size)
endfunction
function s__Unit_setColor takes integer this,integer r,integer g,integer b,integer t returns nothing
    call SetUnitVertexColor(s__Unit_u[this], r, g, b, t)
endfunction
function s__Unit_setAnimation takes integer this,string name returns nothing
    call SetUnitAnimation(s__Unit_u[this], name)
endfunction
function s__Unit_setAnimationByIndex takes integer this,integer index returns nothing
    call SetUnitAnimationByIndex(s__Unit_u[this], index)
endfunction
function s__Unit_setAnimationRate takes integer this,real value returns nothing
    call SetUnitTimeScale(s__Unit_u[this], value)
endfunction
function s__Unit_setTexture takes integer this,string path,integer index returns nothing
    call DzSetUnitTexture(s__Unit_u[this], path, index)
endfunction
function s__Unit_setModel takes integer this,string path returns nothing
    call DzSetUnitModel(s__Unit_u[this], path)
endfunction
function s__Unit_setId takes integer this,integer unitId returns nothing
    call DzSetUnitID(s__Unit_u[this], unitId)
endfunction
function s__Unit_setAbilityCD takes integer this,integer abId,real time returns nothing
    call EXSetAbilityState(EXGetUnitAbility(s__Unit_u[this], abId), 1, time)
endfunction
function s__Unit_setMoveType takes integer this,integer moveType returns nothing
    call EXSetUnitMoveType(s__Unit_u[this], moveType)
endfunction
function s__Unit_setTurnAngle takes integer this,real angle returns nothing
    call SetUnitPropWindow(s__Unit_u[this], angle)
endfunction
function s__Unit_setTurnSpeed takes integer this,real speed returns nothing
    call SetUnitTurnSpeed(s__Unit_u[this], speed)
endfunction
function s__Unit_setExploded takes integer this,boolean isExploded returns nothing
    call SetUnitExploded(s__Unit_u[this], isExploded)
endfunction
function s__Unit_setFacingTime takes integer this,real angle,real time returns nothing
    call SetUnitFacingTimed(s__Unit_u[this], angle, time)
endfunction
function s__Unit_setSpeed takes integer this,real value returns nothing
    call SetUnitMoveSpeed(s__Unit_u[this], value)
endfunction
function s__Unit_setFacing takes integer this,real angle,boolean isTurn returns nothing
    call SetUnitFacing(s__Unit_u[this], angle)
    if ( isTurn ) then
        call EXSetUnitFacing(s__Unit_u[this], angle)
    endif
endfunction  // 修改单位技能整数数据
function s__Unit_setAbilityDataInt takes integer this,integer abId,integer level,integer dataId,integer value returns boolean
    return EXSetAbilityDataInteger(EXGetUnitAbility(s__Unit_u[this], abId), level, dataId, value)
endfunction  // 修改单位技能实数数据
function s__Unit_setAbilityDataReal takes integer this,integer abId,integer level,integer dataId,real value returns boolean
    return EXSetAbilityDataReal(EXGetUnitAbility(s__Unit_u[this], abId), level, dataId, value)
endfunction  // 修改单位技能字符串数据
function s__Unit_setAbilityDataString takes integer this,integer abId,integer level,integer dataId,string value returns boolean
    return EXSetAbilityDataString(EXGetUnitAbility(s__Unit_u[this], abId), level, dataId, value)
endfunction  // 修改力量
function s__Unit_setStr takes integer this,integer value returns nothing
    if ( s__Unit_heroBool[this] ) then
        call SetHeroStr(s__Unit_u[this], s__Unit_countStr(this,value), true)
    endif
endfunction  // 修改敏捷
function s__Unit_setAgi takes integer this,integer value returns nothing
    if ( s__Unit_heroBool[this] ) then
        call SetHeroAgi(s__Unit_u[this], s__Unit_countAgi(this,value), true)
    endif
endfunction  // 修改智力
function s__Unit_setInt takes integer this,integer value returns nothing
    if ( s__Unit_heroBool[this] ) then
        call SetHeroInt(s__Unit_u[this], s__Unit_countInt(this,value), true)
    endif
endfunction  // 设置全属性
function s__Unit_setSaiState takes integer this,integer value returns nothing
    call s__Unit_setStr(this,value)
    call s__Unit_setAgi(this,value)
    call s__Unit_setInt(this,value)
endfunction
function s__Unit_setLevel takes integer this,integer level returns nothing
    if ( s__Unit_heroBool[this] ) then
        call SetHeroLevelBJ(s__Unit_u[this], level, false)
    endif
endfunction
function s__Unit_setExp takes integer this,integer value returns nothing
    if ( s__Unit_heroBool[this] ) then
        call SetHeroXP(s__Unit_u[this], value, false)
    endif
endfunction
function s__Unit_setState takes integer this,integer index,real value returns nothing
    call SetUnitState(s__Unit_u[this], ConvertUnitState(index), value)
endfunction
function s__Unit_setLife takes integer this,real value returns nothing
    call SetUnitState(s__Unit_u[this], UNIT_STATE_LIFE, GetUnitState(s__Unit_u[this], UNIT_STATE_MAX_LIFE) * value)
endfunction  // 设置单位百分比魔法
function s__Unit_setMagic takes integer this,real value returns nothing
    call SetUnitState(s__Unit_u[this], UNIT_STATE_MANA, GetUnitState(s__Unit_u[this], UNIT_STATE_MAX_MANA) * value)
endfunction  // 设置万能属性
function s__Unit_setStateString takes integer this,string index,real value returns nothing
    local integer state = Unit___getStateIndex(index)
    local real data = 0.0
    if ( state != - 1 ) then
        if ( state == 1 ) then
            set data = s__Unit_Life(this)
            call s__Unit_setState(this,state , value)
            call s__Unit_setLife(this,data)
        elseif ( state == 3 ) then
            set data = s__Unit_Magic(this)
            call s__Unit_setState(this,state , value)
            call s__Unit_setMagic(this,data)
        else
            call s__Unit_setState(this,state , value)
        endif
        call sc__Unit_addInt(this,0)
    elseif ( index == "力量" or index == "力量值" ) then
        call s__Unit_setStr(this,s__math_miR2I(value))
    elseif ( index == "敏捷" or index == "敏捷值" ) then
        call s__Unit_setAgi(this,s__math_miR2I(value))
    elseif ( index == "智力" or index == "智力值" ) then
        call s__Unit_setInt(this,s__math_miR2I(value))
    elseif ( index == "全属性" or index == "三围属性" ) then
        call s__Unit_setSaiState(this,s__math_miR2I(value))
    else
        call s__Unit_setData(this,index , value)
        if ( index == "百分比力量" ) then
            call s__Unit_countStr(this,s__Unit_str(this))
        elseif ( index == "百分比敏捷" ) then
            call s__Unit_countAgi(this,s__Unit_agi(this))
        elseif ( index == "百分比智力" ) then
            call s__Unit_countInt(this,s__Unit_int(this))
        endif
    endif
endfunction  // 设置绑定在单位类型的附加值
function s__Unit_setAdded takes integer unId,real value returns nothing
    call SaveReal(XZHT, 0xD8937420, unId, value)
endfunction
function s__Unit_addLevel takes integer this,integer level returns nothing
    call SetHeroLevel(s__Unit_u[this], level, false)
endfunction
function s__Unit_addData takes integer this,string index,real value returns nothing
    call s__Unit_setData(this,index , s__Unit_data(this,index) + value)
endfunction
function s__Unit_addAbilityLevel takes integer this,integer abId returns nothing
    call IncUnitAbilityLevel(s__Unit_u[this], abId)
endfunction
function s__Unit_addStr takes integer this,integer value returns nothing
    local integer data = 0
    if ( s__Unit_heroBool[this] ) then
        set data = s__Unit_str(this) + value
        call SetHeroStr(s__Unit_u[this], s__Unit_countStr(this,data), true)
    endif
endfunction  // 增加敏捷
function s__Unit_addAgi takes integer this,integer value returns nothing
    local integer data = 0
    if ( s__Unit_heroBool[this] ) then
        set data = s__Unit_agi(this) + value
        call SetHeroAgi(s__Unit_u[this], s__Unit_countAgi(this,data), true)
    endif
endfunction  // 增加智力
function s__Unit_addInt takes integer this,integer value returns nothing
    local integer data = 0
    if ( s__Unit_heroBool[this] ) then
        set data = s__Unit_int(this) + value
        call SetHeroInt(s__Unit_u[this], s__Unit_countInt(this,data), true)
    endif
endfunction  // 提升全属性
function s__Unit_addSaiState takes integer this,integer value returns nothing
    call s__Unit_addStr(this,value)
    call s__Unit_addAgi(this,value)
    call s__Unit_addInt(this,value)
endfunction
function s__Unit_addExp takes integer this,integer value returns nothing
    call s__Unit_setExp(this,s__Unit_exp(this) + value)
endfunction
function s__Unit_addSkillPoints takes integer this,integer number returns boolean
    return UnitModifySkillPoints(s__Unit_u[this], number)
endfunction
function s__Unit_addAbility takes integer this,integer abId,boolean flag returns nothing
    call UnitAddAbility(s__Unit_u[this], abId)
    if ( flag ) then
        call UnitMakeAbilityPermanent(s__Unit_u[this], true, abId)
    endif
endfunction  // 提升单位属性
function s__Unit_addState takes integer this,integer index,real value returns nothing
    local real data = 0.0
    if ( index == 1 ) then
        set data = s__Unit_Life(this)
        call s__Unit_setState(this,index , s__Unit_state(this,index) + value)
        call s__Unit_setLife(this,data)
    elseif ( index == 3 ) then
        set data = s__Unit_Magic(this)
        call s__Unit_setState(this,index , s__Unit_state(this,index) + value)
        call s__Unit_setMagic(this,data)
    else
        call s__Unit_setState(this,index , s__Unit_state(this,index) + value)
    endif
endfunction  // 提升万能属性
function s__Unit_addStateString takes integer this,string index,real value returns nothing
    local integer state = 0
    if ( value > 0.0 ) then
        set state = Unit___getStateIndex(index)
        if ( state != - 1 ) then
            call s__Unit_addState(this,state , value)
            call s__Unit_addInt(this,0)
        elseif ( index == "力量" or index == "力量值" ) then
            call s__Unit_addStr(this,s__math_miR2I(value))
        elseif ( index == "敏捷" or index == "敏捷值" ) then
            call s__Unit_addAgi(this,s__math_miR2I(value))
        elseif ( index == "智力" or index == "智力值" ) then
            call s__Unit_addInt(this,s__math_miR2I(value))
        elseif ( index == "全属性" or index == "三围属性" ) then
            call s__Unit_addSaiState(this,s__math_miR2I(value))
        else
            call s__Unit_addData(this,index , value)
            if ( index == "百分比力量" ) then
                call SetHeroStr(s__Unit_u[this], s__Unit_countStr(this,s__Unit_str(this)), true)
            elseif ( index == "百分比敏捷" ) then
                call SetHeroAgi(s__Unit_u[this], s__Unit_countAgi(this,s__Unit_agi(this)), true)
            elseif ( index == "百分比智力" ) then
                call SetHeroInt(s__Unit_u[this], s__Unit_countInt(this,s__Unit_int(this)), true)
            endif
        endif
    endif
endfunction  // Sub
function s__Unit_subLevel takes integer this,integer level returns nothing
    call UnitStripHeroLevel(s__Unit_u[this], level)
endfunction
function s__Unit_subData takes integer this,string index,real value returns nothing
    call s__Unit_setData(this,index , s__Unit_data(this,index) - value)
endfunction
function s__Unit_subAbilityLevel takes integer this,integer abId returns nothing
    call DecUnitAbilityLevel(s__Unit_u[this], abId)
endfunction
function s__Unit_subStr takes integer this,integer value returns nothing
    local integer data = 0
    if ( s__Unit_heroBool[this] ) then
        set data = s__Unit_str(this) - value
        call SetHeroStr(s__Unit_u[this], s__Unit_countStr(this,data), true)
    endif
endfunction  // 降低敏捷
function s__Unit_subAgi takes integer this,integer value returns nothing
    local integer data = 0
    if ( s__Unit_heroBool[this] ) then
        set data = s__Unit_agi(this) - value
        call SetHeroAgi(s__Unit_u[this], s__Unit_countAgi(this,data), true)
    endif
endfunction  // 降低智力
function s__Unit_subInt takes integer this,integer value returns nothing
    local integer data = 0
    if ( s__Unit_heroBool[this] ) then
        set data = s__Unit_int(this) - value
        call SetHeroInt(s__Unit_u[this], s__Unit_countInt(this,data), true)
    endif
endfunction  // 降低全属性
function s__Unit_subSaiState takes integer this,integer value returns nothing
    call s__Unit_subStr(this,value)
    call s__Unit_subAgi(this,value)
    call s__Unit_subInt(this,value)
endfunction
function s__Unit_subExp takes integer this,integer value returns nothing
    call s__Unit_setExp(this,s__Unit_exp(this) - value)
endfunction
function s__Unit_subState takes integer this,integer index,real value returns nothing
    call s__Unit_setState(this,index , s__Unit_state(this,index) - value)
endfunction
function s__Unit_subAbility takes integer this,integer abId returns nothing
    call UnitRemoveAbility(s__Unit_u[this], abId)
endfunction
function s__Unit_subStateString takes integer this,string index,real value returns nothing
    local integer state = 0
    if ( value > 0.0 ) then
        set state = Unit___getStateIndex(index)
        if ( state != - 1 ) then
            call s__Unit_subState(this,state , value)
            call s__Unit_addInt(this,0)
        elseif ( index == "力量" or index == "力量值" ) then
            call s__Unit_subStr(this,s__math_miR2I(value))
        elseif ( index == "敏捷" or index == "敏捷值" ) then
            call s__Unit_subAgi(this,s__math_miR2I(value))
        elseif ( index == "智力" or index == "智力值" ) then
            call s__Unit_subInt(this,s__math_miR2I(value))
        elseif ( index == "全属性" or index == "三围属性" ) then
            call s__Unit_subSaiState(this,s__math_miR2I(value))
        else
            call s__Unit_subData(this,index , value)
            if ( index == "百分比力量" ) then
                call SetHeroStr(s__Unit_u[this], s__Unit_countStr(this,s__Unit_str(this)), true)
            elseif ( index == "百分比敏捷" ) then
                call SetHeroAgi(s__Unit_u[this], s__Unit_countAgi(this,s__Unit_agi(this)), true)
            elseif ( index == "百分比智力" ) then
                call SetHeroInt(s__Unit_u[this], s__Unit_countInt(this,s__Unit_int(this)), true)
            endif
        endif
    endif
endfunction  // Flush
function s__Unit_remove takes integer this,string index returns nothing
    call RemoveSavedReal(XZHT, s__Unit_handleId[this], StringHash(index))
endfunction
function s__Unit_flush takes integer this returns nothing
    call FlushChildHashtable(XZHT, s__Unit_handleId[this])
    call FlushChildHashtable(XWHT, s__Unit_handleId[this])
endfunction
function s__Unit_IsRace takes integer this,race rc returns boolean
    return IsUnitRace(s__Unit_u[this], rc)
endfunction
function s__Unit_IsType takes integer this,unittype tp returns boolean
    return IsUnitType(s__Unit_u[this], tp)
endfunction
function s__Unit_IsHero takes integer this returns boolean
    return s__Unit_heroBool[this]
endfunction
function s__Unit_IsStructure takes integer this returns boolean
    return IsUnitType(s__Unit_u[this], UNIT_TYPE_STRUCTURE)
endfunction
function s__Unit_IsAlive takes integer this returns boolean
    return UnitAlive(s__Unit_u[this])
endfunction
function s__Unit_IsDead takes integer this returns boolean
    return GetUnitState(s__Unit_u[this], UNIT_STATE_LIFE) <= 0.0
endfunction
function s__Unit_IsShow takes integer this returns boolean
    return not ( IsUnitHidden(s__Unit_u[this]) )
endfunction
function s__Unit_IsIllusion takes integer this returns boolean
    return IsUnitIllusion(s__Unit_u[this])
endfunction
function s__Unit_IsSelected takes integer this,integer gm returns boolean
    return IsUnitSelected(s__Unit_u[this], s__Gamer_Handle(gm))
endfunction
function s__Unit_IsAlly takes integer this,integer gm returns boolean
    return IsUnitAlly(s__Unit_u[this], s__Gamer_Handle(gm))
endfunction
function s__Unit_IsEnemy takes integer this,integer gm returns boolean
    return IsUnitEnemy(s__Unit_u[this], s__Gamer_Handle(gm))
endfunction
function s__Unit_IsEnemyUnit takes integer this,integer u returns boolean
    return IsUnitEnemy(s__Unit_Handle(u), s__Gamer_Handle(s__Gamer_user[s__Unit_GamerId[this]]))
endfunction
function s__Unit_IsOwned takes integer this,integer gm returns boolean
    return IsUnitOwnedByPlayer(s__Unit_u[this], s__Gamer_Handle(gm))
endfunction
function s__Unit_IsVisible takes integer this,integer gm returns boolean
    return IsUnitVisible(s__Unit_u[this], s__Gamer_Handle(gm))
endfunction
function s__Unit_IsInFog takes integer this,integer gm returns boolean
    return IsUnitFogged(s__Unit_u[this], s__Gamer_Handle(gm))
endfunction
function s__Unit_IsInMask takes integer this,integer gm returns boolean
    return IsUnitMasked(s__Unit_u[this], s__Gamer_Handle(gm))
endfunction
function s__Unit_IsInGroup takes integer this,integer gp returns boolean
    return IsUnitInGroup(s__Unit_u[this], s__Group_Handle(gp))
endfunction
function s__Unit_IsInUnitRange takes integer this,integer u,real range returns boolean
    return IsUnitInRange(s__Unit_u[this], s__Unit_Handle(u), range)
endfunction
function s__Unit_IsInXYRange takes integer this,real x,real y,real range returns boolean
    return IsUnitInRangeXY(s__Unit_u[this], x, y, range)
endfunction
function s__Unit_IsInRect takes integer this,rect rct returns boolean
    return RectContainsCoords(rct, s__Unit_x(this), s__Unit_y(this))
endfunction
function s__Unit_IsInRegion takes integer this,region rg returns boolean
    return IsPointInRegion(rg, s__Unit_x(this), s__Unit_y(this))
endfunction
function s__Unit_IsInTransport takes integer this,integer u returns boolean
    return IsUnitInTransport(s__Unit_u[this], s__Unit_Handle(u))
endfunction
function s__Unit_IsInSight takes integer this,integer gm returns boolean
    return IsUnitDetected(s__Unit_u[this], s__Gamer_Handle(gm))
endfunction
function s__Unit_IsLoaded takes integer this returns boolean
    return IsUnitLoaded(s__Unit_u[this])
endfunction
function s__Unit_IsSleeping takes integer this returns boolean
    return UnitIsSleeping(s__Unit_u[this])
endfunction
function s__Unit_IsCanSleep takes integer this returns boolean
    return UnitCanSleep(s__Unit_u[this])
endfunction
function s__Unit_IsItem takes integer this,integer it returns boolean
    return UnitHasItem(s__Unit_u[this], s__Item_Handle(it))
endfunction
function s__Unit_IsData takes integer this,string index returns boolean
    return HaveSavedReal(XZHT, s__Unit_handleId[this], StringHash(index))
endfunction
function s__Unit_IsAbility takes integer this,integer abId returns boolean
    return GetUnitAbilityLevel(s__Unit_u[this], abId) > 0
endfunction
function s__Unit_IsPermanentData takes integer this returns boolean
    return LoadBoolean(XZHT, s__Unit_handleId[this], 0x50B3D311)
endfunction
function s__Unit_IsItemHaveBool takes integer this,integer itemId returns boolean
    local integer index
    set index = 0
    loop
        exitwhen ( index > 5 )
        if ( GetItemTypeId(UnitItemInSlot(s__Unit_u[this], index)) == itemId ) then
            return true
        endif
        set index = index + 1
    endloop
    return false
endfunction  // 是否拥有该物品类型的物品，返回物品实例
function s__Unit_IsItemHave takes integer this,integer itemId returns integer
    local integer index
    set index = 0
    loop
        exitwhen ( index > 5 )
        if ( GetItemTypeId(UnitItemInSlot(s__Unit_u[this], index)) == itemId ) then
            return s__Unit_itemInslot(this,index)
        endif
        set index = index + 1
    endloop
    return 0
endfunction  // 判断物品栏是否拥有空位
function s__Unit_IsUnitItemNumber takes integer this returns boolean
    local integer index
    set index = 0
    loop
        exitwhen ( index > 5 )
        if ( UnitItemInSlot(s__Unit_u[this], index) == null ) then
            return true
        endif
        set index = index + 1
    endloop
    return false
endfunction  // 判断物品栏是否拥有空位，如果有空位则返回物品栏编号，没有空位则返回-1
function s__Unit_IsUnitItemNumberIndex takes integer this returns integer
    local integer index
    set index = 0
    loop
        exitwhen ( index > 5 )
        if ( UnitItemInSlot(s__Unit_u[this], index) == null ) then
            return index
        endif
        set index = index + 1
    endloop
    return - 1
endfunction  // 判断单位内置CD，通过则会自动进入冷却时间
function s__Unit_IsAbilityCD takes integer this,string index,real time returns boolean
    local real result
    local real gameTime
    local real unitTime
    set gameTime = s__Timer_gameTime()
    set unitTime = LoadReal(XZHT, s__Unit_handleId[this], StringHash(index))
    set result = gameTime - unitTime
    if ( result >= time or unitTime == 0.0 ) then
        call SaveReal(XZHT, s__Unit_handleId[this], StringHash(index), gameTime)
        return true
    endif
    return false
endfunction  // Order
function s__Unit_issueImmediateOrder takes integer this,string order returns boolean
    return IssueImmediateOrder(s__Unit_u[this], order)
endfunction
function s__Unit_issueXYOrder takes integer this,string order,real x,real y returns boolean
    return IssuePointOrder(s__Unit_u[this], order, x, y)
endfunction
function s__Unit_issueUnitOrder takes integer this,string order,integer u returns boolean
    return IssueTargetOrder(s__Unit_u[this], order, s__Unit_Handle(u))
endfunction
function s__Unit_issueImmediateOrderById takes integer this,integer order returns boolean
    return IssueImmediateOrderById(s__Unit_u[this], order)
endfunction
function s__Unit_issueXYOrderById takes integer this,integer order,real x,real y returns boolean
    return IssuePointOrderById(s__Unit_u[this], order, x, y)
endfunction
function s__Unit_issueUnitOrderById takes integer this,integer order,integer u returns boolean
    return IssueTargetOrderById(s__Unit_u[this], order, s__Unit_Handle(u))
endfunction
function s__Unit_dropItem takes integer this,integer it,real x,real y returns boolean
    return UnitDropItemPoint(s__Unit_u[this], s__Item_Handle(it), x, y)
endfunction
function s__Unit_dropItemTarget takes integer this,integer it,integer u returns boolean
    return UnitDropItemTarget(s__Unit_u[this], s__Item_Handle(it), s__Unit_Handle(u))
endfunction
function s__Unit_dropItemSlot takes integer this,integer it,integer index returns boolean
    return UnitDropItemSlot(s__Unit_u[this], s__Item_Handle(it), index)
endfunction
function s__Unit_useItem takes integer this,integer it returns boolean
    return UnitUseItem(s__Unit_u[this], s__Item_Handle(it))
endfunction
function s__Unit_useItemXY takes integer this,integer it,real x,real y returns boolean
    return UnitUseItemPoint(s__Unit_u[this], s__Item_Handle(it), x, y)
endfunction
function s__Unit_useItemTarget takes integer this,integer it,integer u returns boolean
    return UnitUseItemTarget(s__Unit_u[this], s__Item_Handle(it), s__Unit_Handle(u))
endfunction
function s__Unit_issueNeutralImmediateOrder takes integer this,integer gm,string order returns boolean
    return IssueNeutralImmediateOrder(s__Gamer_Handle(gm), s__Unit_u[this], order)
endfunction
function s__Unit_issueNeutralXYOrder takes integer this,integer gm,string order,real x,real y returns boolean
    return IssueNeutralPointOrder(s__Gamer_Handle(gm), s__Unit_u[this], order, x, y)
endfunction
function s__Unit_issueNeutralTargetOrder takes integer this,integer gm,string order,integer u returns boolean
    return IssueNeutralTargetOrder(s__Gamer_Handle(gm), s__Unit_u[this], order, s__Unit_Handle(u))
endfunction
function s__Unit_issueNeutralImmediateOrderById takes integer this,integer gm,integer order returns boolean
    return IssueNeutralImmediateOrderById(s__Gamer_Handle(gm), s__Unit_u[this], order)
endfunction
function s__Unit_issueNeutralXYOrderById takes integer this,integer gm,integer order,real x,real y returns boolean
    return IssueNeutralPointOrderById(s__Gamer_Handle(gm), s__Unit_u[this], order, x, y)
endfunction
function s__Unit_issueNeutralTargetOrderById takes integer this,integer gm,integer order,integer u returns boolean
    return IssueNeutralTargetOrderById(s__Gamer_Handle(gm), s__Unit_u[this], order, s__Unit_Handle(u))
endfunction
function s__Unit_revive takes integer this,real x,real y returns nothing
    if ( s__Unit_heroBool[this] ) then
        call ReviveHero(s__Unit_u[this], x, y, true)
    endif
endfunction
function s__Unit_giveItem takes integer this,integer it returns nothing
    call UnitAddItem(s__Unit_u[this], s__Item_Handle(it))
endfunction
function s__Unit_giveItemType takes integer this,integer itemId returns integer
    return s__Item_byHandle(UnitAddItemByIdSwapped(itemId, s__Unit_u[this]))
endfunction
function s__Unit_studySkill takes integer this,integer abId returns nothing
    if ( s__Unit_heroBool[this] ) then
        call SelectHeroSkill(s__Unit_u[this], abId)
    endif
endfunction
function s__Unit_suspendEXP takes integer this,boolean flag returns nothing
    if ( s__Unit_heroBool[this] ) then
        call SuspendHeroXP(s__Unit_u[this], flag)
    endif
endfunction
function s__Unit_kill takes integer this returns nothing
    call KillUnit(s__Unit_u[this])
endfunction
function s__Unit_show takes integer this,boolean flag returns nothing
    call ShowUnit(s__Unit_u[this], flag)
endfunction
function s__Unit_pauseCJ takes integer this,boolean flag returns nothing
    call PauseUnit(s__Unit_u[this], flag)
endfunction
function s__Unit_vertigo takes integer this,boolean flag returns nothing
    call EXPauseUnit(s__Unit_u[this], flag)
endfunction
function s__Unit_applyTimedLife takes integer this,integer buffId,real time returns nothing
    call UnitApplyTimedLife(s__Unit_u[this], buffId, time)
endfunction
function s__Unit_pauseTimedLife takes integer this,boolean flag returns nothing
    call UnitPauseTimedLife(s__Unit_u[this], flag)
endfunction
function s__Unit_resetCD takes integer this returns nothing
    call UnitResetCooldown(s__Unit_u[this])
endfunction
function s__Unit_sleepPermanent takes integer this,boolean flag returns nothing
    call UnitAddAbility(s__Unit_u[this], 'Asla')
    call UnitAddSleepPerm(s__Unit_u[this], flag)
endfunction
function s__Unit_lookAt takes integer this,string bone,integer u,real x,real y,real z returns nothing
    call SetUnitLookAt(s__Unit_u[this], bone, s__Unit_Handle(u), x, y, z)
endfunction
function s__Unit_shareSight takes integer this,integer gm,boolean flag returns nothing
    call UnitShareVision(s__Unit_u[this], s__Gamer_Handle(gm), flag)
endfunction
function s__Unit_suspendDecay takes integer this,boolean flag returns nothing
    call UnitSuspendDecay(s__Unit_u[this], flag)
endfunction
function s__Unit_sleepAtNight takes integer this,boolean flag returns nothing
    call UnitAddSleep(s__Unit_u[this], flag)
endfunction
function s__Unit_wakeUp takes integer this returns nothing
    call UnitWakeUp(s__Unit_u[this])
endfunction
function s__Unit_showSelectionCircle takes integer this,integer r,integer g,integer b,integer t returns nothing
    call AddIndicator(s__Unit_u[this], r, g, b, t)
endfunction
function s__Unit_addType takes integer this,unittype tp returns nothing
    call UnitAddType(s__Unit_u[this], tp)
endfunction
function s__Unit_removeType takes integer this,unittype tp returns nothing
    call UnitRemoveType(s__Unit_u[this], tp)
endfunction
function s__Unit_collisable takes integer this,boolean flag returns nothing
    call SetUnitPathing(s__Unit_u[this], flag)
endfunction
function s__Unit_collisableType takes integer this,boolean flag,integer collisableId returns nothing
    call EXSetUnitCollisionType(flag, s__Unit_u[this], collisableId)
endfunction
function s__Unit_useFood takes integer this,boolean flag returns nothing
    call SetUnitUseFood(s__Unit_u[this], flag)
endfunction
function s__Unit_lockGuard takes integer this,boolean flag returns nothing
    call SetUnitCreepGuard(s__Unit_u[this], flag)
endfunction
function s__Unit_removeGuard takes integer this returns nothing
    call RemoveGuardPosition(s__Unit_u[this])
endfunction
function s__Unit_invulnerable takes integer this,boolean flag returns nothing
    call SetUnitInvulnerable(s__Unit_u[this], flag)
endfunction
function s__Unit_transform takes integer this,integer unitId returns nothing
    call UnitAddAbility(s__Unit_u[this], 'AEme')
    call EXSetAbilityDataInteger(EXGetUnitAbility(s__Unit_u[this], 'AEme'), 1, 117, GetUnitTypeId(s__Unit_u[this]))
    call EXSetAbilityAEmeDataA(EXGetUnitAbility(s__Unit_u[this], 'AEme'), GetUnitTypeId(s__Unit_u[this]))
    call UnitRemoveAbility(s__Unit_u[this], 'AEme')
    call UnitAddAbility(s__Unit_u[this], 'AEme')
    call EXSetAbilityAEmeDataA(EXGetUnitAbility(s__Unit_u[this], 'AEme'), unitId)
    call UnitRemoveAbility(s__Unit_u[this], 'AEme')
endfunction  // 创建物品之后给予，并指定使用次数
function s__Unit_giveItemTypeNumber takes integer this,integer itemId,integer number returns integer
    local integer it = s__Item_create(itemId , s__Unit_x(this) , s__Unit_y(this))
    call s__Item_setCharges(it,number)
    call s__Unit_giveItem(this,it)
    return it
endfunction  // Event 事件响应 调用需要排泄，如果不排泄那么会产生泄露
function s__Unit_triggerUnit takes nothing returns integer
    return s__Unit_byHandle(GetTriggerUnit())
endfunction  //end of: UnitEvent("triggerUnit", "GetTriggerUnit", "触发单位")
function s__Unit_damageUnit takes nothing returns integer
    return s__Unit_byHandle(GetEventDamageSource())
endfunction  //end of: UnitEvent("damageUnit", "GetEventDamageSource", "伤害来源")
function s__Unit_enumUnit takes nothing returns integer
    return s__Unit_byHandle(GetEnumUnit())
endfunction  //end of: UnitEvent("enumUnit", "GetEnumUnit", "选取单位")
function s__Unit_soldUnit takes nothing returns integer
    return s__Unit_byHandle(GetSoldUnit())
endfunction  //end of: UnitEvent("soldUnit", "GetSoldUnit", "被贩卖单位")
function s__Unit_buyingUnit takes nothing returns integer
    return s__Unit_byHandle(GetBuyingUnit())
endfunction  //end of: UnitEvent("buyingUnit", "GetBuyingUnit", "购买者")
function s__Unit_filterUnit takes nothing returns integer
    return s__Unit_byHandle(GetFilterUnit())
endfunction  //end of: UnitEvent("filterUnit", "GetFilterUnit", "匹配单位")
function s__Unit_loadedUnit takes nothing returns integer
    return s__Unit_byHandle(GetLoadedUnit())
endfunction  //end of: UnitEvent("loadedUnit", "GetLoadedUnit", "被装载单位")
function s__Unit_killingUnit takes nothing returns integer
    return s__Unit_byHandle(GetKillingUnit())
endfunction  //end of: UnitEvent("killingUnit", "GetKillingUnit", "凶手单位")
function s__Unit_leavingUnit takes nothing returns integer
    return s__Unit_byHandle(GetLeavingUnit())
endfunction  //end of: UnitEvent("leavingUnit", "GetLeavingUnit", "离开的单位")
function s__Unit_orderedUnit takes nothing returns integer
    return s__Unit_byHandle(GetOrderedUnit())
endfunction  //end of: UnitEvent("orderedUnit", "GetOrderedUnit", "发布命令的单位")
function s__Unit_sellingUnit takes nothing returns integer
    return s__Unit_byHandle(GetSellingUnit())
endfunction  //end of: UnitEvent("sellingUnit", "GetSellingUnit", "贩卖者")
function s__Unit_dyingUnit takes nothing returns integer
    return s__Unit_byHandle(GetDyingUnit())
endfunction  //end of: UnitEvent("dyingUnit", "GetDyingUnit", "死亡单位")
function s__Unit_trainedUnit takes nothing returns integer
    return s__Unit_byHandle(GetTrainedUnit())
endfunction  //end of: UnitEvent("trainedUnit", "GetTrainedUnit", "训练单位")
function s__Unit_summonedUnit takes nothing returns integer
    return s__Unit_byHandle(GetSummonedUnit())
endfunction  //end of: UnitEvent("summonedUnit", "GetSummonedUnit", "召唤单位")
function s__Unit_changingUnit takes nothing returns integer
    return s__Unit_byHandle(GetChangingUnit())
endfunction  //end of: UnitEvent("changingUnit", "GetChangingUnit", "被改变所有者的单位")
function s__Unit_decayingUnit takes nothing returns integer
    return s__Unit_byHandle(GetDecayingUnit())
endfunction  //end of: UnitEvent("decayingUnit", "GetDecayingUnit", "腐化的单位")
function s__Unit_detectedUnit takes nothing returns integer
    return s__Unit_byHandle(GetDetectedUnit())
endfunction  //end of: UnitEvent("detectedUnit", "GetDetectedUnit", "检测单位")
function s__Unit_enteringUnit takes nothing returns integer
    return s__Unit_byHandle(GetEnteringUnit())
endfunction  //end of: UnitEvent("enteringUnit", "GetEnteringUnit", "进入的单位")
function s__Unit_learningUnit takes nothing returns integer
    return s__Unit_byHandle(GetLearningUnit())
endfunction  //end of: UnitEvent("learningUnit", "GetLearningUnit", "学习技能的单位")
function s__Unit_revivingUnit takes nothing returns integer
    return s__Unit_byHandle(GetRevivingUnit())
endfunction  //end of: UnitEvent("revivingUnit", "GetRevivingUnit", "复活英雄")
function s__Unit_summoningUnit takes nothing returns integer
    return s__Unit_byHandle(GetSummoningUnit())
endfunction  //end of: UnitEvent("summoningUnit", "GetSummoningUnit", "召唤者")
function s__Unit_revivableUnit takes nothing returns integer
    return s__Unit_byHandle(GetRevivableUnit())
endfunction  //end of: UnitEvent("revivableUnit", "GetRevivableUnit", "可复活英雄")
function s__Unit_transportUnit takes nothing returns integer
    return s__Unit_byHandle(GetTransportUnit())
endfunction  //end of: UnitEvent("transportUnit", "GetTransportUnit", "运输单位")
function s__Unit_eventTargetUnit takes nothing returns integer
    return s__Unit_byHandle(GetEventTargetUnit())
endfunction  //end of: UnitEvent("eventTargetUnit", "GetEventTargetUnit", "事件目标单位")
function s__Unit_orderTargetUnit takes nothing returns integer
    return s__Unit_byHandle(GetOrderTargetUnit())
endfunction  //end of: UnitEvent("orderTargetUnit", "GetOrderTargetUnit", "命令发布目标")
function s__Unit_researchingUnit takes nothing returns integer
    return s__Unit_byHandle(GetResearchingUnit())
endfunction  //end of: UnitEvent("researchingUnit", "GetResearchingUnit", "研究科技的单位")
function s__Unit_spellTargetUnit takes nothing returns integer
    return s__Unit_byHandle(GetSpellTargetUnit())
endfunction  //end of: UnitEvent("spellTargetUnit", "GetSpellTargetUnit", "技能施放目标")
function s__Unit_manipulatingUnit takes nothing returns integer
    return s__Unit_byHandle(GetManipulatingUnit())
endfunction  //end of: UnitEvent("manipulatingUnit", "GetManipulatingUnit", "操作物品的单位")
function s__Unit_spellAbilityUnit takes nothing returns integer
    return s__Unit_byHandle(GetSpellAbilityUnit())
endfunction  //end of: UnitEvent("spellAbilityUnit", "GetSpellAbilityUnit", "施法单位")
function s__Unit_underMouseUnit takes nothing returns integer
    return s__Unit_byHandle(DzGetUnitUnderMouse())
endfunction  //end of: UnitEvent("underMouseUnit", "DzGetUnitUnderMouse", "鼠标指向单位")

//library Unit ends
//library XZAPI:

//library XZAPI ends
//library Button:
function s__ButtonPara_create takes nothing returns integer
    local integer this = s__ButtonPara__allocate()
    set s__ButtonPara_pt[this]= s__Frame_getGameUI()
    return this
endfunction
function s__ButtonPara_new takes integer Pt returns integer
    local integer this = s__ButtonPara__allocate()
    set s__ButtonPara_name[this]= s__Frame_name(Pt) + s__ButtonPara_name[this]
    set s__ButtonPara_pt[this]= Pt
    return this
endfunction
//private:
function s__Button_onInit takes nothing returns nothing
    set s__Button_table = s__Table_create()
endfunction
//public:
//public:
function s__Button_create takes integer Para returns integer
    local integer this = s__Button__allocate()
    set s__Button_para[this]= Para // 背景初始化
    set s__Button_id[this]= s__Frame_createTag("BACKDROP" , s__ButtonPara_name[Para] , s__ButtonPara_pt[Para] , "" , 0) // 默认背景
    call s__Frame_setTextUre(s__Button_id[this],s__ButtonPara_blp[Para] , s__ButtonPara_mode[Para])
    set s__Button_buId[this]= s__Frame_Handle(s__Button_id[this]) // 回调初始化
    set s__Button_callBack[this]= DzCreateFrameByTagName("BUTTON", s__ButtonPara_name[Para] + "_callBack", s__Button_buId[this], "", 0) // 设置所有锚点到背景
    call DzFrameSetAllPoints(s__Button_callBack[this], s__Button_buId[this]) // 设定回调启用
    call DzFrameSetEnable(s__Button_callBack[this], true) // 文本初始化
    if ( s__ButtonPara_text[Para] != "" ) then
        call sc__Button_setText(this,s__ButtonPara_text[Para])
    endif
    call s__Table__setindex(s__Button_table,s__Button_callBack[this], this)
    return this
endfunction
function s__Button_byHandle takes integer frameId returns integer
    local integer this = 0
    if ( s__Table__getindex(s__Button_table,frameId) > 0 ) then
        set this = s__Table__getindex(s__Button_table,frameId)
    else
        //Debug:
        call BJDebugMsg("Button -> byHandle 非法FrameId,当前Id尚未注册过Button实例. Id:" + I2S(frameId))
    endif
    return this
endfunction  // 析构函数 注意 一担析构之后就无法再重新赋值记录 只能重新构造
function s__Button_destroy takes integer this returns nothing
    call s__Table_remove(s__Button_table,s__Button_callBack[this])
    set s__Button_textSize[this]= 0.0
    set s__Button_textLen[this]= 0
    set s__Button_textFlag[this]= false
    call s__ButtonPara_deallocate(s__Button_para[this])
    call s__Frame_destroy(s__Button_id[this])
    call s__Button_deallocate(this)
endfunction  // 获取回调响应句柄
function s__Button_Handle takes integer this returns integer
    return s__Button_callBack[this]
endfunction  // 获取按钮名称
function s__Button_name takes integer this returns string
    return s__ButtonPara_name[s__Button_para[this]]
endfunction  // 获取按钮文本
function s__Button_getText takes integer this returns string
    return s__ButtonPara_text[s__Button_para[this]]
endfunction  // 获取文本大小
function s__Button_getTextSize takes integer this returns real
    return s__Button_textSize[this]
endfunction  // 获取文本长度
function s__Button_getTextLen takes integer this returns integer
    return s__Button_textLen[this]
endfunction  // 获取正常背景
function s__Button_getBlp takes integer this returns string
    return s__ButtonPara_blp[s__Button_para[this]]
endfunction  // 获取高光背景
function s__Button_getHgi takes integer this returns string
    return s__ButtonPara_hig[s__Button_para[this]]
endfunction  // 获取禁用背景
function s__Button_getDis takes integer this returns string
    return s__ButtonPara_dis[s__Button_para[this]]
endfunction  // 获取响应的按钮
function s__Button_getUI takes nothing returns integer
    return s__Button_byHandle(DzGetTriggerUIEventFrame())
endfunction
function s__Button_setText takes integer this,string char returns nothing
    if ( s__Button_text[this] == 0 ) then
        set s__Button_text[this]= DzCreateFrameByTagName("TEXT", s__ButtonPara_name[s__Button_para[this]], s__Button_buId[this], s__ButtonPara_temp[s__Button_para[this]], 0)
        call DzFrameSetPoint(s__Button_text[this], 4, s__Button_buId[this], 4, 0.0, 0.0) // 设定文本为禁用，免得打扰回调的事件响应
        call DzFrameSetEnable(s__Button_text[this], false)
        call sc__Button_textShow(this,true)
    endif
    call DzFrameSetText(s__Button_text[this], char)
    set s__ButtonPara_text[s__Button_para[this]]= char
    set s__Button_textLen[this]= StringLength(char)
endfunction
function s__Button_setFont takes integer this,string font,real height,integer flag returns nothing
    set s__Button_textSize[this]= height
    call DzFrameSetFont(s__Button_text[this], font, height, flag)
endfunction
function s__Button_setBack takes integer this,string path,integer flag returns nothing
    if ( path != "" ) then
        set s__ButtonPara_blp[s__Button_para[this]]= path
    endif
    call s__Frame_setTextUre(s__Button_id[this],s__ButtonPara_blp[s__Button_para[this]] , flag)
endfunction
function s__Button_setHig takes integer this,string path,integer flag returns nothing
    if ( path != "" ) then
        set s__ButtonPara_hig[s__Button_para[this]]= path
    endif
    call s__Frame_setTextUre(s__Button_id[this],s__ButtonPara_hig[s__Button_para[this]] , flag)
endfunction
function s__Button_setDis takes integer this,string path,integer flag returns nothing
    if ( path != "" ) then
        set s__ButtonPara_dis[s__Button_para[this]]= path
    endif
    call s__Frame_setTextUre(s__Button_id[this],s__ButtonPara_dis[s__Button_para[this]] , flag)
endfunction
function s__Button_setSize takes integer this,real width,real heigth returns nothing
    call s__Frame_setSize(s__Button_id[this],width , heigth)
endfunction
function s__Button_textShow takes integer this,boolean flag returns nothing
    set s__Button_textFlag[this]= flag
    call DzFrameShow(s__Button_text[this], flag)
endfunction  // 判断按钮文本是否显示
function s__Button_IsText takes integer this returns boolean
    return s__Button_textFlag[this]
endfunction  // 注册异步UI事件回调 action为异步执行回调 需要自己同步，无法在本地环境内执行触发器
function s__Button_onEvent takes integer this,string eventId,code action returns nothing
    local integer index = LoadInteger(XZHT, 0x8FD97086, StringHash(eventId))
    call DzFrameSetScriptByCode(s__Button_callBack[this], index, action, false)
endfunction
function s__Button_onEventSync takes integer this,string eventId,code action returns nothing
    local integer index = LoadInteger(XZHT, 0x8FD97086, StringHash(eventId))
    call DzFrameSetScriptByCode(s__Button_callBack[this], index, action, true)
endfunction

//library Button ends
//library Damage:
//private:
//public:
function s__Damage_value takes integer this returns real
    return s__Table___reals__getindex(s__Table__get_real(s__Damage_ht[this]),0x0BFBB67B)
endfunction
function s__Damage_data takes integer this,string name returns real
    return s__Table___reals__getindex(s__Table__get_real(s__Damage_ht[this]),StringHash(name))
endfunction
function s__Damage_dataInt takes integer this,integer name returns real
    return s__Table___reals__getindex(s__Table__get_real(s__Damage_ht[this]),name)
endfunction
function s__Damage_getAttackStr takes integer this returns string
    return s__Table___strings__getindex(s__Table__get_string(s__Damage_ht[this]),0x2C0327D7)
endfunction
function s__Damage_getDamageStr takes integer this returns string
    return s__Table___strings__getindex(s__Table__get_string(s__Damage_ht[this]),0x3FFEF0F0)
endfunction
function s__Damage_getUnit takes integer this returns integer
    return s__Damage_du[this]
endfunction
function s__Damage_getTrigger takes integer this returns integer
    return s__Damage_tu[this]
endfunction
function s__Damage_getThis takes nothing returns integer
    return s__Table__getindex(s__Damage_table,GetHandleId(GetEventDamageSource()))
endfunction
function s__Damage_setValue takes integer this,real value returns nothing
    call s__Table___reals__setindex(s__Table__get_real(s__Damage_ht[this]),0x0BFBB67B, value)
endfunction
function s__Damage_setData takes integer this,string name,real value returns nothing
    call s__Table___reals__setindex(s__Table__get_real(s__Damage_ht[this]),StringHash(name), value)
endfunction
function s__Damage_setDataInt takes integer this,integer name,real value returns nothing
    call s__Table___reals__setindex(s__Table__get_real(s__Damage_ht[this]),name, value)
endfunction
function s__Damage_addData takes integer this,string name,real value returns nothing
    call s__Table___reals__setindex(s__Table__get_real(s__Damage_ht[this]),StringHash(name), s__Table___reals__getindex(s__Table__get_real(s__Damage_ht[this]),StringHash(name)) + value)
endfunction
function s__Damage_addDataInt takes integer this,integer name,real value returns nothing
    call s__Table___reals__setindex(s__Table__get_real(s__Damage_ht[this]),name, s__Table___reals__getindex(s__Table__get_real(s__Damage_ht[this]),name) + value)
endfunction
function s__Damage_IsAttackType takes integer this,string name returns boolean
    return s__Table___strings__getindex(s__Table__get_string(s__Damage_ht[this]),0x2C0327D7) == name
endfunction
function s__Damage_IsDamageType takes integer this,string name returns boolean
    return s__Table___strings__getindex(s__Table__get_string(s__Damage_ht[this]),0x3FFEF0F0) == name
endfunction
function s__Damage_IsCrit takes integer this returns boolean
    return s__Table___booleans__getindex(s__Table__get_boolean(s__Damage_ht[this]),0x38E580E9)
endfunction
function s__Damage_causeUnit takes integer d,integer t,real damage,boolean attackDamage,boolean rangedDamage,string damageIndex,boolean flag returns nothing
    call SaveBoolean(XZHT, s__Unit_HandleId(d), 0xDAC06B44, flag)
    if ( damageIndex == "物理伤害" ) then
        call s__Unit_causeUnit(d,t , damage , attackDamage , rangedDamage , ConvertAttackType(1) , ConvertDamageType(4) , WEAPON_TYPE_WHOKNOWS)
    elseif ( damageIndex == "法术伤害" ) then
        call s__Unit_causeUnit(d,t , damage , attackDamage , rangedDamage , ConvertAttackType(4) , ConvertDamageType(4) , WEAPON_TYPE_WHOKNOWS)
    elseif ( damageIndex == "真实伤害" ) then
        call s__Unit_causeUnit(d,t , damage , attackDamage , rangedDamage , ConvertAttackType(5) , ConvertDamageType(26) , WEAPON_TYPE_WHOKNOWS)
    else
        //Debug:
        call BJDebugMsg("damageEvent - causeUnit() [伤害类型参数出错]. 伤害类型参数只能是 物理伤害/法术伤害/真实伤害.")
    endif
endfunction  // 伤害范围 伤害来源 坐标 范围 伤害值 是否为近战攻击 是否为远程攻击 伤害类型 是否过滤伤害衍生事件 特效
function s__Damage_causeRange takes integer d,real x,real y,real range,real damage,boolean attackDamage,boolean rangedDamage,string damageIndex,boolean flag,string name returns nothing
    local integer g = 0
    local integer un = 0
    if ( damageIndex != "物理伤害" and damageIndex != "法术伤害" and damageIndex != "真实伤害" ) then
        //Debug:
        call BJDebugMsg("damageEvent - causeRange() [伤害类型参数出错]. 伤害类型参数只能是 物理伤害/法术伤害/真实伤害.")
        return
    endif
    set g = s__Group_create()
    call s__Group_unitsInArea(g,x , y , range)
    set un = s__Group_getUnit(g)
    loop
        exitwhen ( s__Unit_Handle(un) == null )
        call s__Group_remove(g,un)
        if ( s__Unit_IsEnemyUnit(d,un) and s__Unit_IsAlive(un) ) then
            if ( name != "" ) then
                call s__Effect_delete(s__Effect_createUnit(name , un , "origin"))
            endif
            call s__Damage_causeUnit(d , un , damage , attackDamage , rangedDamage , damageIndex , flag)
        endif
        call s__Unit_Null(un)
        set un = s__Group_getUnit(g)
    endloop
    call s__Group_destroy(g)
    call s__Unit_Null(un)
endfunction
//private:
function s__Damage_destroy takes integer this returns nothing
    call SaveBoolean(XZHT, s__Damage_duId[this], 0xDAC06B44, false)
    call s__Table_remove(s__Damage_table,s__Damage_duId[this])
    call s__Unit_Null(s__Damage_du[this])
    call s__Unit_Null(s__Damage_tu[this])
    call s__Table_destroy(s__Damage_ht[this])
endfunction  // 伤害类型过滤器
function s__Damage_damageTypeFilter takes nothing returns integer
    if ( ( ConvertDamageType(26) != ConvertDamageType(EXGetEventDamageData(4)) ) and ( ConvertAttackType(4) != ConvertAttackType(EXGetEventDamageData(6)) ) ) then
        return 1
    endif
    if ( ( ConvertDamageType(26) != ConvertDamageType(EXGetEventDamageData(4)) ) and ( ConvertAttackType(1) != ConvertAttackType(EXGetEventDamageData(6)) ) ) then
        return 2
    endif
    if ( ConvertDamageType(26) == ConvertDamageType(EXGetEventDamageData(4)) and ConvertAttackType(5) == ConvertAttackType(EXGetEventDamageData(6)) ) then
        return 3
    endif
    return 1
endfunction  // 真实伤害处理
function s__Damage_authenticCount takes integer this returns nothing
    local real damageData = s__Damage_dataValue[this]
    set damageData = damageData * ( 1.0 + s__Table___reals__getindex(s__Table__get_real(s__Damage_ht[this]),0x8C00BEEE) ) // 真实伤害附加
    set damageData = damageData + s__Table___reals__getindex(s__Table__get_real(s__Damage_ht[this]),0xE4A8BEC8) // 判断事件过滤和响应机制
    if ( not ( s__Damage_eventBool[this] ) ) then
        call s__Table___reals__setindex(s__Table__get_real(s__Damage_ht[this]),0x0BFBB67B, damageData)
        call s__Event_executeDiyInt(0xCF779C89)
        set damageData = s__Table___reals__getindex(s__Table__get_real(s__Damage_ht[this]),0x0BFBB67B)
    endif // 设定最终伤害
    call EXSetEventDamage(damageData)
endfunction  // 法术伤害处理
function s__Damage_spellsCount takes integer this returns nothing
    local real damageData = s__Damage_dataValue[this]
    local real armor = 0.0
    local real loc1 = 0.0
    local real loc2 = 0.0
    local real loc3 = 0.0
    if ( s__Table___reals__getindex(s__Table__get_real(s__Damage_ht[this]),0xA727C6F6) > 0.0 ) then
        set armor = s__Unit_stateString(s__Damage_tu[this],"护甲")
        if ( s__Table___reals__getindex(s__Table__get_real(s__Damage_ht[this]),0xA727C6F6) >= 0.8 ) then
            set loc1 = armor * ( 1.0 - 0.8 )
        else
            set loc1 = armor * ( 1.0 - s__Table___reals__getindex(s__Table__get_real(s__Damage_ht[this]),0xA727C6F6) )
        endif
        set loc2 =( 0.002 * armor ) / ( 0.002 * armor + 1.0 )
        set loc3 = damageData / ( 1.0 - loc2 )
        set loc2 =( 0.002 * loc1 ) / ( 0.002 * loc1 + 1.0 )
        set damageData = loc3 * ( 1.0 - loc2 )
    endif // 暴击处理
    if ( s__Table___reals__getindex(s__Table__get_real(s__Damage_ht[this]),0x32B1EC07) >= s__math_random() ) then
        if ( s__Table___reals__getindex(s__Table__get_real(s__Damage_ht[this]),0xE71C84A6) < 2.0 ) then
            set loc1 = 2.0
        else
            set loc1 = s__Table___reals__getindex(s__Table__get_real(s__Damage_ht[this]),0xE71C84A6)
        endif
        set damageData = damageData * loc1
        call s__Table___booleans__setindex(s__Table__get_boolean(s__Damage_ht[this]),0x38E580E9, true)
    endif // 加成处理
    set damageData = damageData * ( 1.0 + s__Table___reals__getindex(s__Table__get_real(s__Damage_ht[this]),0x9BADE34E) ) // 伤害减免/伤害免伤处理 减免+免伤 / 2
    set loc1 =( s__Table___reals__getindex(s__Table__get_real(s__Damage_ht[this]),0x7712A4D0) + s__Table___reals__getindex(s__Table__get_real(s__Damage_ht[this]),0x5AF44D77) )
    if ( loc1 > 0.0 ) then
        set loc1 = loc1 / 2
        if ( loc1 > 0.85 ) then
            set damageData = damageData * ( 1.0 - 0.85 )
        else
            set damageData = damageData * ( 1.0 - loc1 )
        endif
    endif // 最终伤害加成处理
    set damageData = damageData * ( 1.0 + s__Table___reals__getindex(s__Table__get_real(s__Damage_ht[this]),0x8C00BEEE) ) // 真实伤害附加
    set damageData = damageData + s__Table___reals__getindex(s__Table__get_real(s__Damage_ht[this]),0xE4A8BEC8) // 伤害计算事件 过滤和响应
    if ( not ( s__Damage_eventBool[this] ) ) then
        call s__Table___reals__setindex(s__Table__get_real(s__Damage_ht[this]),0x0BFBB67B, damageData)
        call s__Event_executeDiyInt(0xCF779C89)
        set damageData = s__Table___reals__getindex(s__Table__get_real(s__Damage_ht[this]),0x0BFBB67B)
    endif // 设置最终伤害
    call EXSetEventDamage(damageData) // 吸血处理
    if ( s__Table___reals__getindex(s__Table__get_real(s__Damage_ht[this]),0x83C13D14) > 0.0 ) then
        set loc1 = damageData * s__Table___reals__getindex(s__Table__get_real(s__Damage_ht[this]),0x83C13D14)
        call s__Unit_addStateString(s__Damage_du[this],"生命值" , loc1)
        call s__Effect_delete(s__Effect_createUnit("Abilities\\Spells\\Undead\\VampiricAura\\VampiricAuraTarget.mdl" , s__Damage_du[this] , "origin"))
    endif
endfunction  // 分裂伤害处理
function s__Damage_sputteringCount takes integer this returns nothing
    local real damageData = s__Damage_dataValue[this] * s__Table___reals__getindex(s__Table__get_real(s__Damage_ht[this]),0xDA717BFA)
    local integer sputteringInt = 0
    local integer g = 0
    local integer un = 0
    if ( damageData > 0.0 ) then
        set g = s__Group_create()
        call s__Group_unitsInArea(g,s__Unit_x(s__Damage_tu[this]) , s__Unit_y(s__Damage_tu[this]) , 425.0)
        set un = s__Group_getUnit(g)
        loop
            exitwhen ( s__Unit_Handle(un) == null )
            call s__Group_remove(g,un)
            if ( s__Unit_IsEnemyUnit(s__Damage_du[this],un) and s__Unit_IsAlive(un) and sputteringInt <= 25 ) then
                set sputteringInt = sputteringInt + 1
                call s__Unit_causeUnit(s__Damage_du[this],un , damageData , false , false , ConvertAttackType(0) , ConvertDamageType(0) , WEAPON_TYPE_WHOKNOWS)
            endif
            call s__Unit_Null(un)
            set un = s__Group_getUnit(g)
        endloop
        call s__Group_destroy(g)
        call s__Unit_Null(un)
    endif
endfunction  // 物理伤害处理
function s__Damage_physicsCount takes integer this returns nothing
    local real damageData = s__Damage_dataValue[this]
    local real armor = 0.0
    local real loc1 = 0.0
    local real loc2 = 0.0
    local real loc3 = 0.0
    if ( s__Table___reals__getindex(s__Table__get_real(s__Damage_ht[this]),0x636DFFD3) > 0.0 ) then
        set armor = s__Unit_stateString(s__Damage_tu[this],"护甲")
        if ( s__Table___reals__getindex(s__Table__get_real(s__Damage_ht[this]),0x636DFFD3) >= 0.8 ) then
            set loc1 = armor * ( 1.0 - 0.8 )
        else
            set loc1 = armor * ( 1.0 - s__Table___reals__getindex(s__Table__get_real(s__Damage_ht[this]),0x636DFFD3) )
        endif
        set loc2 =( 0.002 * armor ) / ( 0.002 * armor + 1.0 )
        set loc3 = damageData / ( 1.0 - loc2 )
        set loc2 =( 0.002 * loc1 ) / ( 0.002 * loc1 + 1.0 )
        set damageData = loc3 * ( 1.0 - loc2 )
    endif // 暴击处理
    if ( s__Table___reals__getindex(s__Table__get_real(s__Damage_ht[this]),0x83099CB6) >= s__math_random() ) then
        if ( s__Table___reals__getindex(s__Table__get_real(s__Damage_ht[this]),0xC8AFB92E) < 2.0 ) then
            set loc1 = 2.0
        else
            set loc1 = s__Table___reals__getindex(s__Table__get_real(s__Damage_ht[this]),0xC8AFB92E)
        endif
        set damageData = damageData * loc1
        call s__Table___booleans__setindex(s__Table__get_boolean(s__Damage_ht[this]),0x38E580E9, true)
    endif // 加成处理
    set damageData = damageData * ( 1.0 + s__Table___reals__getindex(s__Table__get_real(s__Damage_ht[this]),0xC132CA25) ) // 伤害减免/伤害免伤处理 减免+免伤 / 2
    set loc1 =( s__Table___reals__getindex(s__Table__get_real(s__Damage_ht[this]),0x7712A4D0) + s__Table___reals__getindex(s__Table__get_real(s__Damage_ht[this]),0x5AF44D77) )
    if ( loc1 > 0.0 ) then
        set loc1 = loc1 / 2
        if ( loc1 > 0.85 ) then
            set damageData = damageData * ( 1.0 - 0.85 )
        else
            set damageData = damageData * ( 1.0 - loc1 )
        endif
    endif // 最终伤害加成处理
    set damageData = damageData * ( 1.0 + s__Table___reals__getindex(s__Table__get_real(s__Damage_ht[this]),0x8C00BEEE) ) // 真实伤害附加
    set damageData = damageData + s__Table___reals__getindex(s__Table__get_real(s__Damage_ht[this]),0xE4A8BEC8) // 伤害计算事件 过滤和响应
    if ( not ( s__Damage_eventBool[this] ) ) then
        call s__Table___reals__setindex(s__Table__get_real(s__Damage_ht[this]),0x0BFBB67B, damageData)
        call s__Event_executeDiyInt(0xCF779C89)
        set damageData = s__Table___reals__getindex(s__Table__get_real(s__Damage_ht[this]),0x0BFBB67B)
    endif // 设置最终伤害
    call EXSetEventDamage(damageData) // 分裂处理
    if ( s__Table___reals__getindex(s__Table__get_real(s__Damage_ht[this]),0xDA717BFA) > 0.0 and s__Damage_IsAttackType(this,"近战攻击") ) then
        call s__Damage_sputteringCount(this)
    endif // 吸血处理
    if ( s__Table___reals__getindex(s__Table__get_real(s__Damage_ht[this]),0x59E18EE2) > 0.0 ) then
        set loc1 = damageData * s__Table___reals__getindex(s__Table__get_real(s__Damage_ht[this]),0x59E18EE2)
        call s__Unit_addStateString(s__Damage_du[this],"生命值" , loc1)
        call s__Effect_delete(s__Effect_createUnit("Abilities\\Spells\\Undead\\VampiricAura\\VampiricAuraTarget.mdl" , s__Damage_du[this] , "origin"))
    endif
endfunction
function s__Damage_action takes nothing returns nothing
    local integer this = 0
    local integer damageIndex = 0
    local real Dodge = 0.0
    if ( GetEventDamage() > 1.0 and ( ConvertDamageType(0) != ConvertDamageType(EXGetEventDamageData(4)) ) and ( ConvertAttackType(0) != ConvertAttackType(EXGetEventDamageData(6)) ) ) then // 过滤伤害值和筛选伤害类型。 // 参数注册
        set this = s__Damage__allocate()
        set s__Damage_dataValue[this]= GetEventDamage()
        set s__Damage_du[this]= s__Unit_damageUnit()
        set s__Damage_tu[this]= s__Unit_triggerUnit()
        set s__Damage_dp[this]= s__Unit_owner(s__Damage_du[this])
        set s__Damage_tp[this]= s__Unit_owner(s__Damage_tu[this])
        set s__Damage_duId[this]= s__Unit_HandleId(s__Damage_du[this])
        set s__Damage_tuId[this]= s__Unit_HandleId(s__Damage_tu[this])
        set s__Damage_ht[this]= s__Table_create()
        call s__Table__setindex(s__Damage_table,s__Damage_duId[this], this)
        set s__Damage_eventBool[this]= LoadBoolean(XZHT, s__Damage_duId[this], 0xDAC06B44)
        set damageIndex = s__Damage_damageTypeFilter() // 攻击类型记录
        if ( 0 != EXGetEventDamageData(3) ) then
            call s__Table___strings__setindex(s__Table__get_string(s__Damage_ht[this]),0x2C0327D7, "远程攻击")
        elseif ( 0 != EXGetEventDamageData(2) ) then
            call s__Table___strings__setindex(s__Table__get_string(s__Damage_ht[this]),0x2C0327D7, "近战攻击")
        else
            call s__Table___strings__setindex(s__Table__get_string(s__Damage_ht[this]),0x2C0327D7, "触发攻击")
        endif // 伤害类型记录
        if ( damageIndex == 3 ) then
            call s__Table___strings__setindex(s__Table__get_string(s__Damage_ht[this]),0x3FFEF0F0, "真实伤害")
        elseif ( damageIndex == 2 ) then
            call s__Table___strings__setindex(s__Table__get_string(s__Damage_ht[this]),0x3FFEF0F0, "法术伤害")
        else
            call s__Table___strings__setindex(s__Table__get_string(s__Damage_ht[this]),0x3FFEF0F0, "物理伤害")
        endif // 伤害开始事件 属性参数注册和过滤
        if ( not ( s__Damage_eventBool[this] ) ) then // 物理属性注册 物理穿透，物理暴击率，物理暴击伤害，物理加成，物理吸血，分裂伤害
            call s__Table___reals__setindex(s__Table__get_real(s__Damage_ht[this]),0x636DFFD3, s__Unit_stateString(s__Damage_du[this],"物理穿透"))
            call s__Table___reals__setindex(s__Table__get_real(s__Damage_ht[this]),0x83099CB6, s__Unit_stateString(s__Damage_du[this],"物理暴击率"))
            call s__Table___reals__setindex(s__Table__get_real(s__Damage_ht[this]),0xC8AFB92E, s__Unit_stateString(s__Damage_du[this],"物理暴击伤害"))
            call s__Table___reals__setindex(s__Table__get_real(s__Damage_ht[this]),0xC132CA25, s__Unit_stateString(s__Damage_du[this],"物理加成"))
            call s__Table___reals__setindex(s__Table__get_real(s__Damage_ht[this]),0x59E18EE2, s__Unit_stateString(s__Damage_du[this],"物理吸血"))
            call s__Table___reals__setindex(s__Table__get_real(s__Damage_ht[this]),0xDA717BFA, s__Unit_stateString(s__Damage_du[this],"分裂伤害")) // 法术属性注册 法术穿透，法术暴击率，法术暴击伤害，法术加成，法术吸血
            call s__Table___reals__setindex(s__Table__get_real(s__Damage_ht[this]),0xA727C6F6, s__Unit_stateString(s__Damage_du[this],"法术穿透"))
            call s__Table___reals__setindex(s__Table__get_real(s__Damage_ht[this]),0x32B1EC07, s__Unit_stateString(s__Damage_du[this],"法术暴击率"))
            call s__Table___reals__setindex(s__Table__get_real(s__Damage_ht[this]),0xE71C84A6, s__Unit_stateString(s__Damage_du[this],"法术暴击伤害"))
            call s__Table___reals__setindex(s__Table__get_real(s__Damage_ht[this]),0x9BADE34E, s__Unit_stateString(s__Damage_du[this],"法术加成"))
            call s__Table___reals__setindex(s__Table__get_real(s__Damage_ht[this]),0x83C13D14, s__Unit_stateString(s__Damage_du[this],"法术吸血")) // 通用属性注册 格挡，闪避，最终伤害加成，伤害免伤，伤害减免，真实伤害附加值
            call s__Table___reals__setindex(s__Table__get_real(s__Damage_ht[this]),0xF3FE330A, s__Unit_stateString(s__Damage_tu[this],"格挡"))
            call s__Table___reals__setindex(s__Table__get_real(s__Damage_ht[this]),0x9F07BF14, s__Unit_stateString(s__Damage_tu[this],"闪避"))
            call s__Table___reals__setindex(s__Table__get_real(s__Damage_ht[this]),0x8C00BEEE, s__Unit_stateString(s__Damage_du[this],"最终伤害加成"))
            call s__Table___reals__setindex(s__Table__get_real(s__Damage_ht[this]),0x7712A4D0, s__Unit_stateString(s__Damage_tu[this],"伤害免伤"))
            call s__Table___reals__setindex(s__Table__get_real(s__Damage_ht[this]),0x5AF44D77, s__Unit_stateString(s__Damage_tu[this],"伤害减免"))
            call s__Table___reals__setindex(s__Table__get_real(s__Damage_ht[this]),0xE4A8BEC8, s__Unit_stateString(s__Damage_du[this],"真实伤害"))
            call s__Event_executeDiyInt(0x1433C249)
        endif // 闪避/伤害免疫 判断机制
        set Dodge =( s__Table___reals__getindex(s__Table__get_real(s__Damage_ht[this]),0xF3FE330A) + s__Table___reals__getindex(s__Table__get_real(s__Damage_ht[this]),0x9F07BF14) )
        if ( Dodge > 0.0 ) then
            set Dodge = Dodge / 2
            if ( Dodge >= s__math_random() ) then // 免疫字体
                call s__Effect_delete(s__Effect_create("XZincFrameModel\\DamageFont\\Dawn_MY.mdl" , s__Unit_x(s__Damage_tu[this]) , s__Unit_y(s__Damage_tu[this]) + 40.0))
                call EXSetEventDamage(0.0)
                call s__Damage_destroy(this)
                return
            endif
        endif // 伤害分流
        if ( damageIndex == 3 ) then
            call s__Damage_authenticCount(this)
        elseif ( damageIndex == 2 ) then
            call s__Damage_spellsCount(this)
        else
            call s__Damage_physicsCount(this)
        endif // 伤害结算事件 过滤和响应
        if ( not ( s__Damage_eventBool[this] ) ) then
            call s__Event_executeDiyInt(0xAA083FE5)
        endif // 特效回调事件
        call s__Event_executeDiyInt(0x2F60A049) // 释放
        call s__Damage_destroy(this)
    endif
endfunction
function s__Damage_onInit takes nothing returns nothing
    set s__Damage_table = s__Table_create()
    call s__Event_onDiy("单位接受伤害" , function s__Damage_action)
endfunction

//library Damage ends
//library Motion:
//public:
//private:
function s__Motion_onInit takes nothing returns nothing
    set s__Motion_ht = s__Table_create()
endfunction
//private:
//public:
function s__Motion_getMover takes integer this returns integer
    return s__Motion_mover[this]
endfunction  // 获取被碰撞单位
function s__Motion_getUnit takes integer this returns integer
    return s__Motion_collisionUnit[this]
endfunction
//private:
function s__Motion_destroy takes integer this returns nothing
    if ( s__Motion_height[this] > 0.0 ) then // 重置单位高度和开启单位碰撞
        call s__Unit_setZ(s__Motion_mover[this],s__Motion_z[this] , 99999)
        call s__Unit_collisable(s__Motion_mover[this],true)
    endif // 发动一次停止命令避免往回走且清除绑定实例
    call s__Unit_issueImmediateOrder(s__Motion_mover[this],"stop")
    call s__Unit_setFacing(s__Motion_mover[this],s__Motion_angle[this] , true)
    call s__Table_remove(s__Motion_ht,s__Unit_HandleId(s__Motion_mover[this])) // 响应完成事件
    if ( s__MotionPara_eventEnd[s__Motion_para[this]] ) then
        call s__Event_setEventDataInt(0x2B48CC41 , (this))
        call s__Event_executeDiyInt(0x2B48CC41)
    endif // 清空状态
    call s__Unit_setStateString(s__Motion_mover[this],"冲锋状态" , 0.0) // 数据排泄
    if ( s__MotionPara_vest[s__Motion_para[this]] ) then
        call s__Unit_delete(s__Motion_mover[this])
    else
        call s__Unit_Null(s__Motion_mover[this])
    endif
    call s__Unit_Null(s__Motion_collisionUnit[this])
    set s__Motion_mover[this]= 0
    set s__Motion_collisionUnit[this]= 0
    call s__Timer_delete(s__Motion_time[this])
    call s__Group_destroy(s__Motion_screen[this])
    call s__MotionPara_deallocate(s__Motion_para[this])
    call s__Motion_deallocate(this)
endfunction
function s__Motion_Spin takes nothing returns nothing
    local integer this = s__Timer_thisData()
    local boolean terrain = false
    local real gheight = 0.0
    local integer grou = 0
    if ( not ( s__Unit_IsAlive(s__Motion_mover[this]) ) ) then
        call s__Motion_destroy(this)
        return
    endif // 开始判断是否满足跳出
    if ( s__Motion_number[this] < s__Motion_count[this] ) then // 开始计算偏移坐标
        set s__Motion_dx[this]= s__position_correctX(s__Motion_x[this] + s__Motion_number[this] * s__Motion_dist[this] * s__math_cos(s__Motion_angle[this] * 3.14159 / 180.0))
        set s__Motion_dy[this]= s__position_correctY(s__Motion_y[this] + s__Motion_number[this] * s__Motion_dist[this] * s__math_sin(s__Motion_angle[this] * 3.14159 / 180.0)) // 开始判断下一次运动的坐标是否能够通过
        if ( s__Motion_flag[this] ) then
            set terrain = s__Point_IsWalkable(s__Motion_dx[this] , s__Motion_dy[this])
        else
            set terrain = true
        endif // 开始执行下一次运动内容
        if ( terrain ) then // 移动单位
            call s__Unit_setX(s__Motion_mover[this],s__Motion_dx[this])
            call s__Unit_setY(s__Motion_mover[this],s__Motion_dy[this]) // 响应移动事件
            if ( s__MotionPara_eventMover[s__Motion_para[this]] ) then
                call s__Event_setEventDataInt(0x33595419 , (this))
                call s__Event_executeDiyInt(0x33595419)
            endif // 刷新执行次数
            set s__Motion_number[this]= s__Motion_number[this] + 1 // 计算当前运动帧数高度
            if ( s__Motion_height[this] > 0.0 ) then
                set gheight =( - ( 2 * I2R(s__Motion_number[this]) * s__Motion_dheig[this] - 1 ) * ( 2 * I2R(s__Motion_number[this]) * s__Motion_dheig[this] - 1 ) + 1 ) * s__Motion_height[this] + s__Motion_z[this] // 设置单位高度
                call s__Unit_setZ(s__Motion_mover[this],gheight , 99999)
            endif // 设置单位面向角度
            call s__Unit_setFacing(s__Motion_mover[this],s__Motion_angle[this] , true) // 开始判断碰撞事件和捕捉被碰撞单位
            if ( s__Motion_range[this] > 0.0 and s__MotionPara_eventColli[s__Motion_para[this]] ) then
                set grou = s__Group_create()
                call s__Group_unitsInArea(grou,s__Motion_dx[this] , s__Motion_dy[this] , s__Motion_range[this])
                set s__Motion_collisionUnit[this]= s__Group_getUnit(grou)
                loop
                    exitwhen ( s__Unit_Handle(s__Motion_collisionUnit[this]) == null )
                    call s__Group_remove(grou,s__Motion_collisionUnit[this])
                    if ( s__Unit_IsAlive(s__Motion_collisionUnit[this]) and not ( s__Group_IsInUnit(s__Motion_screen[this],s__Motion_collisionUnit[this]) ) ) then // 往运动器碰撞单位过滤器内添加被碰撞单位和绑定被碰撞单位
                        call s__Group_add(s__Motion_screen[this],s__Motion_collisionUnit[this]) // 响应碰撞事件
                        call s__Event_setEventDataInt(0xC7AD0C44 , (this))
                        call s__Event_executeDiyInt(0xC7AD0C44)
                    endif
                    call s__Unit_Null(s__Motion_collisionUnit[this])
                    set s__Motion_collisionUnit[this]= s__Group_getUnit(grou)
                endloop
                call s__Unit_Null(s__Motion_collisionUnit[this])
                call s__Group_destroy(grou)
            endif
        else
            call s__Motion_destroy(this)
        endif
    else
        call s__Motion_destroy(this)
    endif
endfunction
//public:
function s__Motion_create takes integer Para,string Name returns integer
    local integer this = 0
    if ( s__Table_has(s__Motion_ht,s__Unit_HandleId(s__MotionPara_mover[Para])) ) then
        call s__MotionPara_deallocate(Para)
        return 0
    else
        set this = s__Motion__allocate()
        call s__Table__setindex(s__Motion_ht,s__Unit_HandleId(s__MotionPara_mover[Para]), (this))
    endif // 运动参数注册
    set s__Motion_mover[this]= s__Unit_byHandle(s__Unit_Handle(s__MotionPara_mover[Para]))
    set s__Motion_x[this]= s__Unit_x(s__Motion_mover[this])
    set s__Motion_y[this]= s__Unit_y(s__Motion_mover[this])
    set s__Motion_dx[this]= s__Motion_x[this]
    set s__Motion_dy[this]= s__Motion_y[this]
    set s__Motion_z[this]= s__Unit_z(s__Motion_mover[this])
    set s__Motion_count[this]= s__math_miR2I(s__MotionPara_dur[Para] / s__MotionPara_time[Para])
    set s__Motion_number[this]= 0
    set s__Motion_dheig[this]= 1.0 / s__Motion_count[this]
    set s__Motion_height[this]= s__MotionPara_height[Para]
    set s__Motion_flag[this]= s__MotionPara_flag[Para]
    set s__Motion_range[this]= s__MotionPara_range[Para]
    set s__Motion_screen[this]= s__Group_create()
    set s__Motion_name[this]= Name
    set s__Motion_para[this]= Para // 判断运动类型
    if ( s__MotionPara_x[Para] != 0.0 and s__MotionPara_y[Para] != 0.0 ) then
        set s__Motion_dist[this]= s__math_unitDistanceXY(s__Motion_mover[this] , s__MotionPara_x[Para] , s__MotionPara_y[Para]) / s__Motion_count[this]
        set s__Motion_angle[this]= s__math_xyAngle(s__Motion_x[this] , s__Motion_y[this] , s__MotionPara_x[Para] , s__MotionPara_y[Para])
    else
        set s__Motion_dist[this]= s__MotionPara_dist[Para] / s__Motion_count[this]
        set s__Motion_angle[this]= s__MotionPara_angle[Para]
    endif // 把运动单位添加到过滤器
    call s__Group_add(s__Motion_screen[this],s__Motion_mover[this])
    call s__Unit_setStateString(s__Motion_mover[this],"冲锋状态" , 100.0) // 设定高度参数设置
    if ( s__Motion_height[this] > 0.0 ) then
        call s__Unit_flyEnable(s__Motion_mover[this])
        call s__Unit_collisable(s__Motion_mover[this],false)
    endif // 开始执行运动
    set s__Motion_time[this]= s__Timer_create(s__MotionPara_time[Para] , true , function s__Motion_Spin)
    call s__Timer_setData(s__Motion_time[this],(this))
    return this
endfunction

//library Motion ends
//library XZLogic:

//library XZLogic ends
//library XZUI:

//library XZUI ends
//library Xwei:

//library Xwei ends
//library Debug:

function Debug__initAction takes nothing returns nothing
    set Debug__hero = s__Unit_byHandle(gg_unit_Hblm_0016)
endfunction
function Debug__anon__0 takes nothing returns nothing
    local string chat = s__String_chat()
    if ( chat == "thisSize" ) then
        //Debug:
        call BJDebugMsg("--------------------")
        //Debug:
        call BJDebugMsg("Effect-特效-实例数量：" + I2S(s__Effect_thisSize))
        //Debug:
        call BJDebugMsg("Point-点-实例数量：" + I2S(s__Point_thisSize))
        //Debug:
        call BJDebugMsg("Group-单位组-实例数量：" + I2S(s__Group_thisSize))
        //Debug:
        call BJDebugMsg("Unit-单位-实例数量：" + I2S(s__Unit_thisSize))
        //Debug:
        call BJDebugMsg("Item-物品-实例数量：" + I2S(s__Item_thisSize))
        //Debug:
        call BJDebugMsg("--------------------")
    endif
    if ( chat == "1" ) then
        set Debug__bf = s__Buff_new(Debug__hero , Debug__hero , "眩晕Buff" , 2.0)
    endif
    if ( chat == "2" ) then
        call s__Buff_endTime(Debug__bf)
    endif
endfunction  // 初始化
function Debug__onInit takes nothing returns nothing
    call s__Event_onGamerChat(function Debug__anon__0)
    call s__Timer_create(0.0 , false , function Debug__initAction)
endfunction

//library Debug ends
//library HurtEffect:
function s__HurtEffect__HurtEffect_show takes integer this returns nothing
    local integer gm = 0
    local integer len = 0
    local integer index = 0
    local integer bjIndex = 0
    local integer forIndex = 0
    local integer damageIndex = 0
    local string bjzt = ""
    local string damageStr = ""
    local string tx = ""
    local real x = 0.0
    local real y = 0.0
    if ( s__Damage_IsDamageType(s__HurtEffect__HurtEffect_damage[this],"法术伤害") ) then
        set index = 10
        set bjIndex = 31
        set bjzt = "XZincFrameModel\\DamageFont\\Mawn_FBJ.mdl"
    else
        set index = 0
        set bjIndex = 30
        set bjzt = "XZincFrameModel\\DamageFont\\Dawn_BJ.mdl"
    endif // 伤害显示异步玩家
    if ( s__Unit_gamerId(s__HurtEffect__HurtEffect_tu[this]) <= 5 ) then
        set gm = s__Unit_owner(s__HurtEffect__HurtEffect_tu[this])
    elseif ( s__Unit_gamerId(s__HurtEffect__HurtEffect_du[this]) <= 5 ) then
        set gm = s__Unit_owner(s__HurtEffect__HurtEffect_du[this])
    endif // 过滤较低伤害值
    if ( s__Unit_gamerId(s__HurtEffect__HurtEffect_tu[this]) <= 5 and s__Damage_value(s__HurtEffect__HurtEffect_damage[this]) < s__Unit_stateString(s__HurtEffect__HurtEffect_tu[this],"生命值") * 0.03 ) then
        return
    endif // 特效参数注册和位置偏移设置
    set damageStr = s__math_miR2S(s__Damage_value(s__HurtEffect__HurtEffect_damage[this]))
    set len = StringLength(damageStr)
    set x = s__Unit_x(s__HurtEffect__HurtEffect_tu[this]) - len * 20.0
    set y = s__Unit_y(s__HurtEffect__HurtEffect_tu[this]) + 50.0 // 暴击特效
    if ( s__Damage_IsCrit(s__HurtEffect__HurtEffect_damage[this]) ) then
        if ( s__Gamer_IsLocal(gm) and s__Gamer_IsPlayer(gm) ) then
            set tx = bjzt
        endif
        call s__Effect_delete(s__Effect_create(tx , x - 50.0 , y))
    endif // 伤害数值展现
    if ( len > 5 ) then
        set len = len - 4
        set forIndex = 1
        loop
            exitwhen ( forIndex > len )
            set damageIndex = S2I(SubString(damageStr, forIndex - 1, forIndex))
            if ( s__Gamer_IsLocal(gm) and s__Gamer_IsPlayer(gm) ) then
                set tx = s__HurtEffect__HurtEffect_EffectStr[damageIndex + index]
            endif
            call s__Effect_delete(s__Effect_create(tx , x , y))
            set x = x + 35.0
            set forIndex = forIndex + 1
        endloop
        if ( s__Gamer_IsLocal(gm) and s__Gamer_IsPlayer(gm) ) then
            set tx = s__HurtEffect__HurtEffect_EffectStr[bjIndex]
        endif
        call s__Effect_delete(s__Effect_create(tx , x , y))
    else
        set forIndex = 1
        loop
            exitwhen ( forIndex > len )
            set damageIndex = S2I(SubString(damageStr, forIndex - 1, forIndex))
            if ( s__Gamer_IsLocal(gm) and s__Gamer_IsPlayer(gm) ) then
                set tx = s__HurtEffect__HurtEffect_EffectStr[damageIndex + index]
            endif
            call s__Effect_delete(s__Effect_create(tx , x , y))
            set x = x + 35.0
            set forIndex = forIndex + 1
        endloop
    endif
endfunction
function s__HurtEffect__HurtEffect_anon__0 takes nothing returns nothing
    call SaveBoolean(XWHT, s__Timer_thisData(), 0xF341A704, false)
endfunction
function s__HurtEffect__HurtEffect_action takes nothing returns nothing
    local integer this = s__HurtEffect__HurtEffect__allocate()
    set s__HurtEffect__HurtEffect_damage[this]= s__Damage_getThis()
    set s__HurtEffect__HurtEffect_du[this]= s__Damage_getUnit(s__HurtEffect__HurtEffect_damage[this])
    set s__HurtEffect__HurtEffect_tu[this]= s__Damage_getTrigger(s__HurtEffect__HurtEffect_damage[this])
    if ( s__Gamer_id(s__Unit_owner(s__HurtEffect__HurtEffect_du[this])) <= 5 ) then
        call s__Effect_delete(s__Effect_createUnit("Abilities\\Spells\\Other\\Stampede\\StampedeMissileDeath.mdl" , s__HurtEffect__HurtEffect_tu[this] , "origin"))
        if ( not ( LoadBoolean(XWHT, s__Unit_HandleId(s__HurtEffect__HurtEffect_du[this]), 0xF341A704) ) ) then
            call SaveBoolean(XWHT, s__Unit_HandleId(s__HurtEffect__HurtEffect_du[this]), 0xF341A704, true)
            call s__HurtEffect__HurtEffect_show(this)
            call s__Timer_setData(s__Timer_create(0.25 , false , function s__HurtEffect__HurtEffect_anon__0),s__Unit_HandleId(s__HurtEffect__HurtEffect_du[this]))
        endif
    endif // 释放
    call s__HurtEffect__HurtEffect_deallocate(this)
endfunction
function s__HurtEffect__HurtEffect_onInit takes nothing returns nothing
    set s__HurtEffect__HurtEffect_EffectStr[0]= "XZincFrameModel\\DamageFont\\Dawn_0.mdl" // 物理字体
    set s__HurtEffect__HurtEffect_EffectStr[1]= "XZincFrameModel\\DamageFont\\Dawn_1.mdl"
    set s__HurtEffect__HurtEffect_EffectStr[2]= "XZincFrameModel\\DamageFont\\Dawn_2.mdl"
    set s__HurtEffect__HurtEffect_EffectStr[3]= "XZincFrameModel\\DamageFont\\Dawn_3.mdl"
    set s__HurtEffect__HurtEffect_EffectStr[4]= "XZincFrameModel\\DamageFont\\Dawn_4.mdl"
    set s__HurtEffect__HurtEffect_EffectStr[5]= "XZincFrameModel\\DamageFont\\Dawn_5.mdl"
    set s__HurtEffect__HurtEffect_EffectStr[6]= "XZincFrameModel\\DamageFont\\Dawn_6.mdl"
    set s__HurtEffect__HurtEffect_EffectStr[7]= "XZincFrameModel\\DamageFont\\Dawn_7.mdl"
    set s__HurtEffect__HurtEffect_EffectStr[8]= "XZincFrameModel\\DamageFont\\Dawn_8.mdl"
    set s__HurtEffect__HurtEffect_EffectStr[9]= "XZincFrameModel\\DamageFont\\Dawn_9.mdl"
    set s__HurtEffect__HurtEffect_EffectStr[30]= "XZincFrameModel\\DamageFont\\Dawn_W.mdl" // 法术字体
    set s__HurtEffect__HurtEffect_EffectStr[10]= "XZincFrameModel\\DamageFont\\Mawn_0.mdl"
    set s__HurtEffect__HurtEffect_EffectStr[11]= "XZincFrameModel\\DamageFont\\Mawn_1.mdl"
    set s__HurtEffect__HurtEffect_EffectStr[12]= "XZincFrameModel\\DamageFont\\Mawn_2.mdl"
    set s__HurtEffect__HurtEffect_EffectStr[13]= "XZincFrameModel\\DamageFont\\Mawn_3.mdl"
    set s__HurtEffect__HurtEffect_EffectStr[14]= "XZincFrameModel\\DamageFont\\Mawn_4.mdl"
    set s__HurtEffect__HurtEffect_EffectStr[15]= "XZincFrameModel\\DamageFont\\Mawn_5.mdl"
    set s__HurtEffect__HurtEffect_EffectStr[16]= "XZincFrameModel\\DamageFont\\Mawn_6.mdl"
    set s__HurtEffect__HurtEffect_EffectStr[17]= "XZincFrameModel\\DamageFont\\Mawn_7.mdl"
    set s__HurtEffect__HurtEffect_EffectStr[18]= "XZincFrameModel\\DamageFont\\Mawn_8.mdl"
    set s__HurtEffect__HurtEffect_EffectStr[19]= "XZincFrameModel\\DamageFont\\Mawn_9.mdl"
    set s__HurtEffect__HurtEffect_EffectStr[31]= "XZincFrameModel\\DamageFont\\Mawn_W.mdl" // 事件注册
    call s__Event_onDiy("伤害特效处理" , function s__HurtEffect__HurtEffect_action)
endfunction
function s__HurtEffect__FightDeath_action takes nothing returns nothing
    local integer du = s__Unit_killingUnit()
    local integer tu = 0
    local integer eff = 0
    if ( s__Unit_owner(du) <= 5 ) then
        set tu = s__Unit_triggerUnit()
        set eff = s__Effect_create("XZincFrameModel\\Effect\\Currency\\[tx]bloodex-special-3.mdl" , s__Unit_x(tu) , s__Unit_y(tu))
        call s__Effect_setSize(eff,0.8)
        call s__Effect_delete(eff)
        call s__Unit_Null(tu)
    endif
    call s__Unit_Null(du)
endfunction
function s__HurtEffect__FightDeath_onInit takes nothing returns nothing
    call s__Event_onUnit("单位死亡" , function s__HurtEffect__FightDeath_action)
endfunction

//library HurtEffect ends
//library RefreshAttribute:
function s__RefreshAttribute__RefreshAttribute_action takes nothing returns nothing
    local integer index
    set index = 0
    loop
        exitwhen ( index > 3 )
        call s__Unit_addStateString(s__Gamer_hero[s__Gamer_user[index]],"力量" , s__Unit_stateString(s__Gamer_hero[s__Gamer_user[index]],"每秒力量") + s__Unit_stateString(s__Gamer_hero[s__Gamer_user[index]],"每秒全属性"))
        call s__Unit_addStateString(s__Gamer_hero[s__Gamer_user[index]],"敏捷" , s__Unit_stateString(s__Gamer_hero[s__Gamer_user[index]],"每秒敏捷") + s__Unit_stateString(s__Gamer_hero[s__Gamer_user[index]],"每秒全属性"))
        call s__Unit_addStateString(s__Gamer_hero[s__Gamer_user[index]],"智力" , s__Unit_stateString(s__Gamer_hero[s__Gamer_user[index]],"每秒智力") + s__Unit_stateString(s__Gamer_hero[s__Gamer_user[index]],"每秒全属性"))
        set index = index + 1
    endloop
endfunction
function s__RefreshAttribute__RefreshAttribute_onInit takes nothing returns nothing
    call s__Timer_create(1.0 , true , function s__RefreshAttribute__RefreshAttribute_action)
endfunction

//library RefreshAttribute ends
//library Vertigo:

function Vertigo__anon__0 takes nothing returns nothing
    local integer bf = s__BuffType_getBuff()
    local integer tu = 0
    if ( s__Buff_IsRepeat(bf) ) then
        if ( s__Buff_getRepeatTime(bf) >= s__Buff_getTime(bf) ) then
            call s__Buff_setTime(bf,s__Buff_getRepeatTime(bf))
        endif
    else
        set tu = s__Buff_getTarget(bf)
        call s__Unit_vertigo(tu,true)
        call SaveInteger(USDT, s__Buff_HandleId(bf), 0x49A5D29C, (s__Effect_createUnit("Abilities\\Spells\\Human\\Thunderclap\\ThunderclapTarget.mdl" , tu , "overhead")))
        call s__Unit_Null(tu)
    endif
endfunction
function Vertigo__anon__1 takes nothing returns nothing
    local integer bf = s__BuffType_getBuff()
    local integer tu = s__Buff_getTarget(bf)
    call s__Unit_vertigo(tu,false)
    call s__Effect_delete((LoadInteger(USDT, s__Buff_HandleId(bf), 0x49A5D29C)))
    call RemoveSavedInteger(USDT, s__Buff_HandleId(bf), 0x49A5D29C)
    call s__Unit_Null(tu)
endfunction
function Vertigo__onInit takes nothing returns nothing
    set VertigoBuff = s__BuffType_create("眩晕Buff" , false)
    call s__BuffType_onAdd(VertigoBuff,function Vertigo__anon__0)
    call s__BuffType_onRemove(VertigoBuff,function Vertigo__anon__1)
endfunction

//library Vertigo ends
//===========================================================================
// 
// 框架测试地图
// 
//   Warcraft III map script
//   Generated by the Warcraft III World Editor
//   Date: Mon Apr 20 17:38:42 2020
//   Map Author: 未知
// 
//===========================================================================
//***************************************************************************
//*
//*  Global Variables
//*
//***************************************************************************
function InitGlobals takes nothing returns nothing
endfunction
//***************************************************************************
//*
//*  Items
//*
//***************************************************************************
function CreateAllItems takes nothing returns nothing
    local integer itemID
    call CreateItem('I000', - 404.7, 56.7)
endfunction
//***************************************************************************
//*
//*  Unit Creation
//*
//***************************************************************************
//===========================================================================
function CreateUnitsForPlayer0 takes nothing returns nothing
    local player p = Player(0)
    local unit u
    local integer unitID
    local trigger t
    local real life
    set gg_unit_Hblm_0016 = CreateUnit(p, 'Hblm', - 386.3, 631.3, 143.728)
endfunction
//===========================================================================
function CreateNeutralPassive takes nothing returns nothing
    local player p = Player(PLAYER_NEUTRAL_PASSIVE)
    local unit u
    local integer unitID
    local trigger t
    local real life
    set u = CreateUnit(p, 'hpea', - 475.3, 1719.7, 213.625)
    set u = CreateUnit(p, 'hpea', - 320.8, 1579.5, 206.758)
    set u = CreateUnit(p, 'hpea', - 39.9, 1600.4, 358.055)
    set u = CreateUnit(p, 'hpea', - 18.7, 1558.7, 335.005)
    set u = CreateUnit(p, 'hpea', - 219.6, 1420.4, 285.137)
    set u = CreateUnit(p, 'hpea', - 463.9, 1493.0, 139.091)
    set u = CreateUnit(p, 'hpea', - 406.1, 1663.9, 347.135)
    set u = CreateUnit(p, 'hpea', - 156.4, 1663.9, 324.381)
    set u = CreateUnit(p, 'hpea', - 443.7, 1424.4, 295.267)
    set u = CreateUnit(p, 'hpea', - 496.3, 1587.9, 236.543)
    set u = CreateUnit(p, 'hpea', - 287.0, 1732.7, 113.624)
    set u = CreateUnit(p, 'hpea', - 74.9, 1668.1, 75.687)
    set u = CreateUnit(p, 'hpea', - 115.2, 1468.6, 207.373)
    set u = CreateUnit(p, 'hpea', - 291.3, 1460.6, 89.113)
endfunction
//===========================================================================
function CreatePlayerBuildings takes nothing returns nothing
endfunction
//===========================================================================
function CreatePlayerUnits takes nothing returns nothing
    call CreateUnitsForPlayer0()
endfunction
//===========================================================================
function CreateAllUnits takes nothing returns nothing
    call CreatePlayerBuildings()
    call CreateNeutralPassive()
    call CreatePlayerUnits()
endfunction
//***************************************************************************
//*
//*  Triggers
//*
//***************************************************************************
//===========================================================================
// Trigger: Main
//===========================================================================
//TESH.scrollpos=0
//TESH.alwaysfold=0
// // 框架
// 宏常量和宏语法糖
// frame
// 宏函数
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
// Library
// requires
// Library
// requires
// Library
// requires
// requires
// 地图物编预处理
// #include "Code\\Obj\\main.j"
// BuffType定义
// 基础相关
// 地图玩家人数 由0开始计数，如填写3 则是0-3，合计4个。
// 游戏相关
// 调试库
//===========================================================================
// Trigger: Init
//
// gg_unit_Hblm_0016
//===========================================================================
function Trig_InitActions takes nothing returns nothing
    call RemoveUnit(gg_unit_Hblm_0016)
endfunction
//===========================================================================
function InitTrig_Init takes nothing returns nothing
    set gg_trg_Init = CreateTrigger()
    call DoNothing()
    call TriggerAddAction(gg_trg_Init, function Trig_InitActions)
endfunction
//===========================================================================
function InitCustomTriggers takes nothing returns nothing
    //Function not found: call InitTrig_Main()
    call InitTrig_Init()
endfunction
//***************************************************************************
//*
//*  Players
//*
//***************************************************************************
function InitCustomPlayerSlots takes nothing returns nothing
    // Player 0
    call SetPlayerStartLocation(Player(0), 0)
    call SetPlayerColor(Player(0), ConvertPlayerColor(0))
    call SetPlayerRacePreference(Player(0), RACE_PREF_HUMAN)
    call SetPlayerRaceSelectable(Player(0), true)
    call SetPlayerController(Player(0), MAP_CONTROL_USER)
endfunction
function InitCustomTeams takes nothing returns nothing
    // Force: TRIGSTR_002
    call SetPlayerTeam(Player(0), 0)
endfunction
//***************************************************************************
//*
//*  Main Initialization
//*
//***************************************************************************
//===========================================================================
function main takes nothing returns nothing
    call SetCameraBounds(- 3328.0 + GetCameraMargin(CAMERA_MARGIN_LEFT), - 3584.0 + GetCameraMargin(CAMERA_MARGIN_BOTTOM), 3328.0 - GetCameraMargin(CAMERA_MARGIN_RIGHT), 3072.0 - GetCameraMargin(CAMERA_MARGIN_TOP), - 3328.0 + GetCameraMargin(CAMERA_MARGIN_LEFT), 3072.0 - GetCameraMargin(CAMERA_MARGIN_TOP), 3328.0 - GetCameraMargin(CAMERA_MARGIN_RIGHT), - 3584.0 + GetCameraMargin(CAMERA_MARGIN_BOTTOM))
    call SetDayNightModels("Environment\\DNC\\DNCLordaeron\\DNCLordaeronTerrain\\DNCLordaeronTerrain.mdl", "Environment\\DNC\\DNCLordaeron\\DNCLordaeronUnit\\DNCLordaeronUnit.mdl")
    call NewSoundEnvironment("Default")
    call SetAmbientDaySound("LordaeronSummerDay")
    call SetAmbientNightSound("LordaeronSummerNight")
    call SetMapMusic("Music", true, 0)
    call CreateAllItems()
    call CreateAllUnits()
    call InitBlizzard()

    call ExecuteFunc("jasshelper__initstructs29436078")
    call ExecuteFunc("Base___onInit")
    call ExecuteFunc("Gamer___onInit")
    call ExecuteFunc("Debug__onInit")
    call ExecuteFunc("Vertigo__onInit")

    call InitGlobals()
    call InitCustomTriggers()
endfunction
//***************************************************************************
//*
//*  Map Configuration
//*
//***************************************************************************
function config takes nothing returns nothing
    call SetMapName("框架测试地图")
    call SetMapDescription("没有说明")
    call SetPlayers(1)
    call SetTeams(1)
    call SetGamePlacement(MAP_PLACEMENT_USE_MAP_SETTINGS)
    call DefineStartLocation(0, - 128.0, 64.0)
    // Player setup
    call InitCustomPlayerSlots()
    call SetPlayerSlotAvailable(Player(0), MAP_CONTROL_USER)
    call InitGenericPlayerSlots()
endfunction




//Struct method generated initializers/callers:
function sa__Button_setText takes nothing returns boolean
    local integer this = f__arg_this
    local string char = f__arg_string1
    if ( s__Button_text[this] == 0 ) then
        set s__Button_text[this]= DzCreateFrameByTagName("TEXT", s__ButtonPara_name[s__Button_para[this]], s__Button_buId[this], s__ButtonPara_temp[s__Button_para[this]], 0)
        call DzFrameSetPoint(s__Button_text[this], 4, s__Button_buId[this], 4, 0.0, 0.0) // 设定文本为禁用，免得打扰回调的事件响应
        call DzFrameSetEnable(s__Button_text[this], false)
        call sc__Button_textShow(this,true)
    endif
    call DzFrameSetText(s__Button_text[this], char)
    set s__ButtonPara_text[s__Button_para[this]]= char
    set s__Button_textLen[this]= StringLength(char)
    return true
endfunction
function sa__Button_textShow takes nothing returns boolean
    local integer this = f__arg_this
    local boolean flag = f__arg_boolean1
    set s__Button_textFlag[this]= flag
    call DzFrameShow(s__Button_text[this], flag)
    return true
endfunction
function sa__Unit_byHandle takes nothing returns boolean
    set f__result_integer = s__Unit_byHandle(f__arg_unit1)
    return true
endfunction
function sa__Unit_Null takes nothing returns boolean
    local integer this = f__arg_this
    if ( not ( s__Unit_NullBool[this] ) or (this) < 1 ) then
        return true
    endif
    set s__Unit_u[this]= null
    set s__Unit_GamerId[this]= 0
    set s__Unit_handleId[this]= 0
    set s__Unit_heroBool[this]= false
    set s__Unit_NullBool[this]= false
    set s__Unit_thisSize = s__Unit_thisSize - 1
    call s__Unit_deallocate(this)
    return true
endfunction
function sa__Unit_Handle takes nothing returns boolean
    local integer this = f__arg_this
    set f__result_unit = s__Unit_u[this]
    return true
endfunction
function sa__Unit_HandleId takes nothing returns boolean
    local integer this = f__arg_this
    set f__result_integer = s__Unit_handleId[this]
    return true
endfunction
function sa__Unit_x takes nothing returns boolean
    local integer this = f__arg_this
    set f__result_real = GetUnitX(s__Unit_u[this])
    return true
endfunction
function sa__Unit_y takes nothing returns boolean
    local integer this = f__arg_this
    set f__result_real = GetUnitY(s__Unit_u[this])
    return true
endfunction
function sa__Unit_addInt takes nothing returns boolean
    local integer this = f__arg_this
    local integer value = f__arg_integer1
    local integer data = 0
    if ( s__Unit_heroBool[this] ) then
        set data = s__Unit_int(this) + value
        call SetHeroInt(s__Unit_u[this], s__Unit_countInt(this,data), true)
    endif
    return true
endfunction
function sa__Unit_addStateString takes nothing returns boolean
    local integer this = f__arg_this
    local string index = f__arg_string1
    local real value = f__arg_real1
    local integer state = 0
    if ( value > 0.0 ) then
        set state = Unit___getStateIndex(index)
        if ( state != - 1 ) then
            call s__Unit_addState(this,state , value)
            call s__Unit_addInt(this,0)
        elseif ( index == "力量" or index == "力量值" ) then
            call s__Unit_addStr(this,s__math_miR2I(value))
        elseif ( index == "敏捷" or index == "敏捷值" ) then
            call s__Unit_addAgi(this,s__math_miR2I(value))
        elseif ( index == "智力" or index == "智力值" ) then
            call s__Unit_addInt(this,s__math_miR2I(value))
        elseif ( index == "全属性" or index == "三围属性" ) then
            call s__Unit_addSaiState(this,s__math_miR2I(value))
        else
            call s__Unit_addData(this,index , value)
            if ( index == "百分比力量" ) then
                call SetHeroStr(s__Unit_u[this], s__Unit_countStr(this,s__Unit_str(this)), true)
            elseif ( index == "百分比敏捷" ) then
                call SetHeroAgi(s__Unit_u[this], s__Unit_countAgi(this,s__Unit_agi(this)), true)
            elseif ( index == "百分比智力" ) then
                call SetHeroInt(s__Unit_u[this], s__Unit_countInt(this,s__Unit_int(this)), true)
            endif
        endif
    endif
    return true
endfunction
function sa__Unit_subStateString takes nothing returns boolean
    local integer this = f__arg_this
    local string index = f__arg_string1
    local real value = f__arg_real1
    local integer state = 0
    if ( value > 0.0 ) then
        set state = Unit___getStateIndex(index)
        if ( state != - 1 ) then
            call s__Unit_subState(this,state , value)
            call s__Unit_addInt(this,0)
        elseif ( index == "力量" or index == "力量值" ) then
            call s__Unit_subStr(this,s__math_miR2I(value))
        elseif ( index == "敏捷" or index == "敏捷值" ) then
            call s__Unit_subAgi(this,s__math_miR2I(value))
        elseif ( index == "智力" or index == "智力值" ) then
            call s__Unit_subInt(this,s__math_miR2I(value))
        elseif ( index == "全属性" or index == "三围属性" ) then
            call s__Unit_subSaiState(this,s__math_miR2I(value))
        else
            call s__Unit_subData(this,index , value)
            if ( index == "百分比力量" ) then
                call SetHeroStr(s__Unit_u[this], s__Unit_countStr(this,s__Unit_str(this)), true)
            elseif ( index == "百分比敏捷" ) then
                call SetHeroAgi(s__Unit_u[this], s__Unit_countAgi(this,s__Unit_agi(this)), true)
            elseif ( index == "百分比智力" ) then
                call SetHeroInt(s__Unit_u[this], s__Unit_countInt(this,s__Unit_int(this)), true)
            endif
        endif
    endif
    return true
endfunction
function sa__Unit_flush takes nothing returns boolean
    local integer this = f__arg_this
    call FlushChildHashtable(XZHT, s__Unit_handleId[this])
    call FlushChildHashtable(XWHT, s__Unit_handleId[this])
    return true
endfunction
function sa__Unit_manipulatingUnit takes nothing returns boolean

    set f__result_integer = s__Unit_byHandle(GetManipulatingUnit())
    return true
endfunction
function sa__Turn_item takes nothing returns boolean
    local integer id = f__arg_integer1
    call SaveFogStateHandle(XZHT, 0x08C2BCB3, 0, ConvertFogState(id))
    set f__result_item = LoadItemHandle(XZHT, 0x08C2BCB3, 0)
    return true
endfunction
function sa__String_setPermanent takes nothing returns boolean
    local integer this = f__arg_this
    local boolean flag = f__arg_boolean1
    set s__String_permanent[this]= flag
    call SetTextTagPermanent(s__String_s[this], flag)
    return true
endfunction
function sa__String_setLife takes nothing returns boolean
    local integer this = f__arg_this
    local real life = f__arg_real1
    call SetTextTagLifespan(s__String_s[this], life)
    return true
endfunction
function sa__Item_byHandle takes nothing returns boolean
    set f__result_integer = s__Item_byHandle(f__arg_item1)
    return true
endfunction
function sa__Item_Null takes nothing returns boolean
    local integer this = f__arg_this
    if ( (this) < 1 ) then
        return true
    endif
    set s__Item_it[this]= null
    set s__Item_handleId[this]= 0
    set s__Item_thisSize = s__Item_thisSize - 1
    call s__Item_deallocate(this)
    return true
endfunction
function sa__Item_delete takes nothing returns boolean
    local integer this = f__arg_this
    call RemoveItem(s__Item_it[this])
    call sc__Item_flush(this)
    call s__Item_Null(this)
    return true
endfunction
function sa__Item_Handle takes nothing returns boolean
    local integer this = f__arg_this
    set f__result_item = s__Item_it[this]
    return true
endfunction
function sa__Item_life takes nothing returns boolean
    local integer this = f__arg_this
    set f__result_real = GetWidgetLife(s__Item_it[this])
    return true
endfunction
function sa__Item_setLife takes nothing returns boolean
    local integer this = f__arg_this
    local real value = f__arg_real1
    call SetWidgetLife(s__Item_it[this], value)
    return true
endfunction
function sa__Item_flush takes nothing returns boolean
    local integer this = f__arg_this
    call FlushChildHashtable(XZHT, s__Item_handleId[this])
    return true
endfunction
function sa__Item_enumInRect takes nothing returns boolean
    call s__Item_enumInRect(f__arg_rect1,f__arg_code1)
    return true
endfunction
function sa__Item_enumItem takes nothing returns boolean

    set f__result_integer = s__Item_byHandle(GetEnumItem())
    return true
endfunction
function sa__Gamer_Handle takes nothing returns boolean
    local integer this = f__arg_this
    set f__result_player = s__Gamer_p[this]
    return true
endfunction
function sa__Gamer_id takes nothing returns boolean
    local integer this = f__arg_this
    set f__result_integer = s__Gamer_pid[this]
    return true
endfunction
function sa__Gamer_IsPlayer takes nothing returns boolean
    local integer this = f__arg_this
    set f__result_boolean = s__Gamer_controller(this) == MAP_CONTROL_USER and s__Gamer_slotState(this) == PLAYER_SLOT_STATE_PLAYING
    return true
endfunction
function sa__Gamer_echo takes nothing returns boolean
    local integer index = f__arg_integer1
    local real dur = f__arg_real1
    local string msg = f__arg_string1
    if ( index >= 0 and index <= 15 ) then
        call DisplayTimedTextToPlayer(Player(index), 0, 0, dur, msg)
    elseif ( index == - 1 ) then
        call DisplayTimedTextToPlayer(GetLocalPlayer(), 0, 0, dur, msg)
    else
        call BJDebugMsg("echo错误提示:玩家索引参数超出预设范围,原定需要显示的内容为 - [" + msg + "]")
    endif
    return true
endfunction
function sa__Timer_destroy takes nothing returns boolean
    local integer this = f__arg_this
    call DestroyTrigger(s__Timer_trig[this])
    set s__Timer_trig[this]= null
    call s__Timer_deallocate(this)
    return true
endfunction
function sa__Timer_create takes nothing returns boolean
    local real time = f__arg_real1
    local boolean flag = f__arg_boolean1
    local code action = f__arg_code1
    local integer this = s__Timer__allocate()
    set s__Timer_trig[this]= CreateTrigger()
    set s__Timer_cycle[this]= time
    set s__Timer_perio[this]= flag
    set s__Timer_pause[this]= true
    set s__Timer_elapsed[this]= 0.0
    set s__Timer_dataInt[this]= 0
    set s__Timer_suspendTime[this]= 0.0
    call TriggerAddAction(s__Timer_trig[this], action)
    set s__Timer_Structs[s__Timer_size]= this
    set s__Timer_size = s__Timer_size + 1
    set f__result_integer = this
    return true
endfunction
function sa__Timer_thisTimer takes nothing returns boolean

    set f__result_integer = s__Timer_name
    return true
endfunction
function sa__Timer_thisData takes nothing returns boolean

    set f__result_integer = s__Timer_data(s__Timer_name)
    return true
endfunction
function sa__Timer_setData takes nothing returns boolean
    local integer this = f__arg_this
    local integer dataInt = f__arg_integer1
    set s__Timer_dataInt[this]= dataInt
    return true
endfunction
function sa__Timer_delete takes nothing returns boolean
    local integer this = f__arg_this
    set s__Timer_perio[this]= false
    set s__Timer_pause[this]= false
    return true
endfunction
function sa__Table_create takes nothing returns boolean

    local integer this = s__Table__getindex(s__Table___dex__get_list(),0)
    if this == 0 then
        set this = Table___more + 1
        set Table___more = this
    else
        call s__Table__setindex(s__Table___dex__get_list(),0, s__Table__getindex(s__Table___dex__get_list(),this))
        call s__Table_remove(s__Table___dex__get_list(),this) //Clear hashed memory
    endif
    call s__Table__setindex(s__Table___dex__get_list(),this, - 1)
    set f__result_integer = this
    return true
endfunction
function sa__Point_Handle takes nothing returns boolean
    local integer this = f__arg_this
    set f__result_location = s__Point_p[this]
    return true
endfunction
function sa__math_randomReal takes nothing returns boolean
    local real low = f__arg_real1
    local real high = f__arg_real2
    set f__result_real = GetRandomReal(low, high)
    return true
endfunction
function sa__math_sin takes nothing returns boolean
    local real r = f__arg_real1
    set f__result_real = Sin(r)
    return true
endfunction
function sa__math_cos takes nothing returns boolean
    local real r = f__arg_real1
    set f__result_real = Cos(r)
    return true
endfunction
function sa__math_pow takes nothing returns boolean
    local real x = f__arg_real1
    local real power = f__arg_real2
    set f__result_real = Pow(x, power)
    return true
endfunction
function sa__math_squareRoot takes nothing returns boolean
    local real x = f__arg_real1
    set f__result_real = SquareRoot(x)
    return true
endfunction
function sa__math_sinBJ takes nothing returns boolean
    local real degrees = f__arg_real1
    set f__result_real = Sin(degrees * bj_DEGTORAD)
    return true
endfunction
function sa__math_cosBJ takes nothing returns boolean
    local real degrees = f__arg_real1
    set f__result_real = Cos(degrees * bj_DEGTORAD)
    return true
endfunction
function sa__Group_Handle takes nothing returns boolean
    local integer this = f__arg_this
    set f__result_group = s__Group_g[this]
    return true
endfunction
function sa__Frame_createTag takes nothing returns boolean
    local string Type = f__arg_string1
    local string name = f__arg_string2
    local integer p = f__arg_integer1
    local string template = f__arg_string3
    local integer id = f__arg_integer2
    local integer this = s__Frame__allocate()
    set s__Frame_FrameName[this]= name
    set s__Frame_f[this]= DzCreateFrameByTagName(Type, name, sc__Frame_Handle(p), template, id)
    call SaveInteger(XZHT, 0xD86C0ECF, s__Frame_f[this], (this))
    set f__result_integer = this
    return true
endfunction
function sa__Frame_destroy takes nothing returns boolean
    local integer this = f__arg_this
    call RemoveSavedInteger(XZHT, 0xD86C0ECF, s__Frame_f[this])
    call s__Frame_deallocate(this)
    return true
endfunction
function sa__Frame_Handle takes nothing returns boolean
    local integer this = f__arg_this
    set f__result_integer = s__Frame_f[this]
    return true
endfunction
function sa__Frame_name takes nothing returns boolean
    local integer this = f__arg_this
    set f__result_string = s__Frame_FrameName[this]
    return true
endfunction
function sa__Frame_getGameUI takes nothing returns boolean

    set f__result_integer = s__Frame_byHandle(DzGetGameUI())
    return true
endfunction
function sa__Frame_setTextUre takes nothing returns boolean
    local integer this = f__arg_this
    local string ure = f__arg_string1
    local integer flag = f__arg_integer1
    call DzFrameSetTexture(s__Frame_f[this], ure, flag)
    return true
endfunction
function sa__Backdrop_setText takes nothing returns boolean
    local integer this = f__arg_this
    local string char = f__arg_string1
    if ( s__Backdrop_text[this] == 0 ) then
        set s__Backdrop_text[this]= DzCreateFrameByTagName("TEXT", s__BackdropPara_name[s__Backdrop_para[this]] + "_text", s__Backdrop_buId[this], s__BackdropPara_temp[s__Backdrop_para[this]], 0)
        call DzFrameSetPoint(s__Backdrop_text[this], 4, s__Backdrop_buId[this], 4, 0.0, 0.0) //this.textShow(true);
    endif
    call DzFrameSetText(s__Backdrop_text[this], char)
    set s__BackdropPara_text[s__Backdrop_para[this]]= char
    set s__Backdrop_textLen[this]= StringLength(char)
    return true
endfunction
function sa__Effect_Handle takes nothing returns boolean
    local integer this = f__arg_this
    set f__result_effect = s__Effect_e[this]
    return true
endfunction
function sa__Effect_setSize takes nothing returns boolean
    local integer this = f__arg_this
    local real size = f__arg_real1
    call EXSetEffectSize(s__Effect_e[this], size)
    return true
endfunction
function sa__Border_setStyle takes nothing returns boolean
    local integer this = f__arg_this
    local string style = f__arg_string1
    if ( style == "default" ) then
        call s__Border_setTextUre(this,- 1 , s__BorderPara_blp[s__Border_para[this]] , s__BorderPara_mode[s__Border_para[this]])
    elseif ( style == "custom" ) then
        call s__Border_setTextUre(this,1 , s__BorderPara_blp[s__Border_para[this]] + "top.blp" , s__BorderPara_mode[s__Border_para[this]])
        call s__Border_setTextUre(this,0 , s__BorderPara_blp[s__Border_para[this]] + "topleft.blp" , s__BorderPara_mode[s__Border_para[this]])
        call s__Border_setTextUre(this,2 , s__BorderPara_blp[s__Border_para[this]] + "topright.blp" , s__BorderPara_mode[s__Border_para[this]])
        call s__Border_setTextUre(this,3 , s__BorderPara_blp[s__Border_para[this]] + "left.blp" , s__BorderPara_mode[s__Border_para[this]])
        call s__Border_setTextUre(this,5 , s__BorderPara_blp[s__Border_para[this]] + "right.blp" , s__BorderPara_mode[s__Border_para[this]])
        call s__Border_setTextUre(this,7 , s__BorderPara_blp[s__Border_para[this]] + "bottom.blp" , s__BorderPara_mode[s__Border_para[this]])
        call s__Border_setTextUre(this,6 , s__BorderPara_blp[s__Border_para[this]] + "bottomleft.blp" , s__BorderPara_mode[s__Border_para[this]])
        call s__Border_setTextUre(this,8 , s__BorderPara_blp[s__Border_para[this]] + "bottomright.blp" , s__BorderPara_mode[s__Border_para[this]])
    else
        call BJDebugMsg("输入[样式类型]错误!")
    endif
    return true
endfunction
function sa__Event_onDiy takes nothing returns boolean
    local string name = f__arg_string1
    local code action = f__arg_code1
    local integer index
    local integer nameId
    local triggercondition condition
    set nameId = StringHash(name)
    if ( not ( HaveSavedHandle(XZHT, 0xB4AF6F97, nameId) ) ) then
        call SaveTriggerHandle(XZHT, 0xB4AF6F97, nameId, CreateTrigger())
        call SaveStr(XZHT, 0xB4AF6F97, GetHandleId(LoadTriggerHandle(XZHT, 0xB4AF6F97, nameId)), name)
        call SaveInteger(XZHT, 0xB4AF6F97, GetHandleId(LoadTriggerHandle(XZHT, 0xB4AF6F97, nameId)), nameId)
    endif
    set condition = TriggerAddCondition(LoadTriggerHandle(XZHT, 0xB4AF6F97, nameId), Filter(action))
    set index = GetHandleId(condition)
    call SaveInteger(XZHT, 0xB4AF6F97, index, nameId)
    call SaveTriggerConditionHandle(XZHT, 0xB4AF6F97, index, condition)
    set condition = null
    set f__result_integer = index
    return true
endfunction
function sa__Event_executeDiy takes nothing returns boolean
    local string name = f__arg_string1
    local integer index = StringHash(name)
    if ( HaveSavedHandle(XZHT, 0xB4AF6F97, index) ) then
        call TriggerEvaluate(LoadTriggerHandle(XZHT, 0xB4AF6F97, index))
    endif
    return true
endfunction
function sa__Event_executeDiyInt takes nothing returns boolean
    local integer index = f__arg_integer1
    if ( HaveSavedHandle(XZHT, 0xB4AF6F97, index) ) then
        call TriggerEvaluate(LoadTriggerHandle(XZHT, 0xB4AF6F97, index))
    endif
    return true
endfunction
function sa__Event_onSync takes nothing returns boolean
    local string name = f__arg_string1
    local code action = f__arg_code1
    local integer index
    local integer nameId
    local triggercondition condition
    set nameId = StringHash(name)
    if ( not ( HaveSavedHandle(XZHT, 0xFD004243, nameId) ) ) then
        call SaveTriggerHandle(XZHT, 0xFD004243, nameId, CreateTrigger())
        call DzTriggerRegisterSyncData(LoadTriggerHandle(XZHT, 0xFD004243, nameId), name, false)
    endif
    set condition = TriggerAddCondition(LoadTriggerHandle(XZHT, 0xFD004243, nameId), Filter(action))
    set index = GetHandleId(condition)
    call SaveInteger(XZHT, 0xFD004243, index, nameId)
    call SaveTriggerConditionHandle(XZHT, 0xFD004243, index, condition)
    set condition = null
    set f__result_integer = index
    return true
endfunction
function sa___prototype6_s__Gamer_Gamer takes nothing returns boolean
 local integer id = f__arg_integer1

    if ( id > 15 ) then
        call BJDebugMsg("Gamer-id >15!")
        set f__result_integer = 0
        return true
    endif
    set f__result_integer = s__Gamer_gamerEx[id]
    return true
endfunction

function jasshelper__initstructs29436078 takes nothing returns nothing
    set st__Button_setText = CreateTrigger()
    call TriggerAddCondition(st__Button_setText,Condition( function sa__Button_setText))
    set st__Button_textShow = CreateTrigger()
    call TriggerAddCondition(st__Button_textShow,Condition( function sa__Button_textShow))
    set st__Unit_byHandle = CreateTrigger()
    call TriggerAddCondition(st__Unit_byHandle,Condition( function sa__Unit_byHandle))
    set st__Unit_Null = CreateTrigger()
    call TriggerAddCondition(st__Unit_Null,Condition( function sa__Unit_Null))
    set st__Unit_Handle = CreateTrigger()
    call TriggerAddCondition(st__Unit_Handle,Condition( function sa__Unit_Handle))
    set st__Unit_HandleId = CreateTrigger()
    call TriggerAddCondition(st__Unit_HandleId,Condition( function sa__Unit_HandleId))
    set st__Unit_x = CreateTrigger()
    call TriggerAddCondition(st__Unit_x,Condition( function sa__Unit_x))
    set st__Unit_y = CreateTrigger()
    call TriggerAddCondition(st__Unit_y,Condition( function sa__Unit_y))
    set st__Unit_addInt = CreateTrigger()
    call TriggerAddCondition(st__Unit_addInt,Condition( function sa__Unit_addInt))
    set st__Unit_addStateString = CreateTrigger()
    call TriggerAddCondition(st__Unit_addStateString,Condition( function sa__Unit_addStateString))
    set st__Unit_subStateString = CreateTrigger()
    call TriggerAddCondition(st__Unit_subStateString,Condition( function sa__Unit_subStateString))
    set st__Unit_flush = CreateTrigger()
    call TriggerAddCondition(st__Unit_flush,Condition( function sa__Unit_flush))
    set st__Unit_manipulatingUnit = CreateTrigger()
    call TriggerAddCondition(st__Unit_manipulatingUnit,Condition( function sa__Unit_manipulatingUnit))
    set st__Turn_item = CreateTrigger()
    call TriggerAddCondition(st__Turn_item,Condition( function sa__Turn_item))
    set st__String_setPermanent = CreateTrigger()
    call TriggerAddCondition(st__String_setPermanent,Condition( function sa__String_setPermanent))
    set st__String_setLife = CreateTrigger()
    call TriggerAddCondition(st__String_setLife,Condition( function sa__String_setLife))
    set st__Item_byHandle = CreateTrigger()
    call TriggerAddCondition(st__Item_byHandle,Condition( function sa__Item_byHandle))
    set st__Item_Null = CreateTrigger()
    call TriggerAddCondition(st__Item_Null,Condition( function sa__Item_Null))
    set st__Item_delete = CreateTrigger()
    call TriggerAddCondition(st__Item_delete,Condition( function sa__Item_delete))
    set st__Item_Handle = CreateTrigger()
    call TriggerAddCondition(st__Item_Handle,Condition( function sa__Item_Handle))
    set st__Item_life = CreateTrigger()
    call TriggerAddCondition(st__Item_life,Condition( function sa__Item_life))
    set st__Item_setLife = CreateTrigger()
    call TriggerAddCondition(st__Item_setLife,Condition( function sa__Item_setLife))
    set st__Item_flush = CreateTrigger()
    call TriggerAddCondition(st__Item_flush,Condition( function sa__Item_flush))
    set st__Item_enumInRect = CreateTrigger()
    call TriggerAddCondition(st__Item_enumInRect,Condition( function sa__Item_enumInRect))
    set st__Item_enumItem = CreateTrigger()
    call TriggerAddCondition(st__Item_enumItem,Condition( function sa__Item_enumItem))
    set st__Gamer_Handle = CreateTrigger()
    call TriggerAddCondition(st__Gamer_Handle,Condition( function sa__Gamer_Handle))
    set st__Gamer_id = CreateTrigger()
    call TriggerAddCondition(st__Gamer_id,Condition( function sa__Gamer_id))
    set st__Gamer_IsPlayer = CreateTrigger()
    call TriggerAddCondition(st__Gamer_IsPlayer,Condition( function sa__Gamer_IsPlayer))
    set st__Gamer_echo = CreateTrigger()
    call TriggerAddCondition(st__Gamer_echo,Condition( function sa__Gamer_echo))
    set st__Timer_destroy = CreateTrigger()
    call TriggerAddCondition(st__Timer_destroy,Condition( function sa__Timer_destroy))
    set st__Timer_create = CreateTrigger()
    call TriggerAddCondition(st__Timer_create,Condition( function sa__Timer_create))
    set st__Timer_thisTimer = CreateTrigger()
    call TriggerAddCondition(st__Timer_thisTimer,Condition( function sa__Timer_thisTimer))
    set st__Timer_thisData = CreateTrigger()
    call TriggerAddCondition(st__Timer_thisData,Condition( function sa__Timer_thisData))
    set st__Timer_setData = CreateTrigger()
    call TriggerAddCondition(st__Timer_setData,Condition( function sa__Timer_setData))
    set st__Timer_delete = CreateTrigger()
    call TriggerAddCondition(st__Timer_delete,Condition( function sa__Timer_delete))
    set st__Table_create = CreateTrigger()
    call TriggerAddCondition(st__Table_create,Condition( function sa__Table_create))
    set st__Point_Handle = CreateTrigger()
    call TriggerAddCondition(st__Point_Handle,Condition( function sa__Point_Handle))
    set st__SpecialOrders_onDestroy[34]= null
    set st__SpecialOrders_onDestroy[35]= null
    set st__SpecialOrders_onDestroy[36]= null
    set st__math_randomReal = CreateTrigger()
    call TriggerAddCondition(st__math_randomReal,Condition( function sa__math_randomReal))
    set st__math_sin = CreateTrigger()
    call TriggerAddCondition(st__math_sin,Condition( function sa__math_sin))
    set st__math_cos = CreateTrigger()
    call TriggerAddCondition(st__math_cos,Condition( function sa__math_cos))
    set st__math_pow = CreateTrigger()
    call TriggerAddCondition(st__math_pow,Condition( function sa__math_pow))
    set st__math_squareRoot = CreateTrigger()
    call TriggerAddCondition(st__math_squareRoot,Condition( function sa__math_squareRoot))
    set st__math_sinBJ = CreateTrigger()
    call TriggerAddCondition(st__math_sinBJ,Condition( function sa__math_sinBJ))
    set st__math_cosBJ = CreateTrigger()
    call TriggerAddCondition(st__math_cosBJ,Condition( function sa__math_cosBJ))
    set st__Group_Handle = CreateTrigger()
    call TriggerAddCondition(st__Group_Handle,Condition( function sa__Group_Handle))
    set st__Frame_createTag = CreateTrigger()
    call TriggerAddCondition(st__Frame_createTag,Condition( function sa__Frame_createTag))
    set st__Frame_destroy = CreateTrigger()
    call TriggerAddCondition(st__Frame_destroy,Condition( function sa__Frame_destroy))
    set st__Frame_Handle = CreateTrigger()
    call TriggerAddCondition(st__Frame_Handle,Condition( function sa__Frame_Handle))
    set st__Frame_name = CreateTrigger()
    call TriggerAddCondition(st__Frame_name,Condition( function sa__Frame_name))
    set st__Frame_getGameUI = CreateTrigger()
    call TriggerAddCondition(st__Frame_getGameUI,Condition( function sa__Frame_getGameUI))
    set st__Frame_setTextUre = CreateTrigger()
    call TriggerAddCondition(st__Frame_setTextUre,Condition( function sa__Frame_setTextUre))
    set st__Backdrop_setText = CreateTrigger()
    call TriggerAddCondition(st__Backdrop_setText,Condition( function sa__Backdrop_setText))
    set st__Event___InitEvent_onDestroy[14]= null
    set st__Event___InitEvent_onDestroy[15]= null
    set st__Effect_Handle = CreateTrigger()
    call TriggerAddCondition(st__Effect_Handle,Condition( function sa__Effect_Handle))
    set st__Effect_setSize = CreateTrigger()
    call TriggerAddCondition(st__Effect_setSize,Condition( function sa__Effect_setSize))
    set st__Border_setStyle = CreateTrigger()
    call TriggerAddCondition(st__Border_setStyle,Condition( function sa__Border_setStyle))
    set st__Event_onDiy = CreateTrigger()
    call TriggerAddCondition(st__Event_onDiy,Condition( function sa__Event_onDiy))
    set st__Event_executeDiy = CreateTrigger()
    call TriggerAddCondition(st__Event_executeDiy,Condition( function sa__Event_executeDiy))
    set st__Event_executeDiyInt = CreateTrigger()
    call TriggerAddCondition(st__Event_executeDiyInt,Condition( function sa__Event_executeDiyInt))
    set st__Event_onSync = CreateTrigger()
    call TriggerAddCondition(st__Event_onSync,Condition( function sa__Event_onSync))
    set st___prototype6[1]= CreateTrigger()
    call TriggerAddAction(st___prototype6[1],function sa___prototype6_s__Gamer_Gamer)
    call TriggerAddCondition(st___prototype6[1],Condition(function sa___prototype6_s__Gamer_Gamer))







































































































    call ExecuteFunc("s__Attribute__DefineItem_onInit")
    call ExecuteFunc("s__Attribute__ItemAttribute_onInit")
    call ExecuteFunc("s__position_onInit")
    call ExecuteFunc("s__Majia_onInit")
    call ExecuteFunc("s__Ease_onInit")
    call ExecuteFunc("s__Event___InitEvent_onInit")
    call ExecuteFunc("s__Event_onInit")
    call ExecuteFunc("s__Event___DamageEvent_onInit")
    call ExecuteFunc("s__Excretion__deathUnit_onInit")
    call ExecuteFunc("s__Excretion__deathItem_onInit")
    call ExecuteFunc("s__Frame_onInit")
    call ExecuteFunc("s__Game_onInit")
    call ExecuteFunc("s__RandomInt_onInit")
    call ExecuteFunc("s__Object_onInit")
    call ExecuteFunc("s__Point_onInit")
    call ExecuteFunc("s__TimeStamp_onInit")
    call ExecuteFunc("s__Timer_onInit")
    call ExecuteFunc("s__Gamer_onInit")
    call ExecuteFunc("s__Button_onInit")
    call ExecuteFunc("s__Damage_onInit")
    call ExecuteFunc("s__Motion_onInit")
    call ExecuteFunc("s__HurtEffect__HurtEffect_onInit")
    call ExecuteFunc("s__HurtEffect__FightDeath_onInit")
    call ExecuteFunc("s__RefreshAttribute__RefreshAttribute_onInit")
endfunction

