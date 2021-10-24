#ifndef INCLUDE_DEFINE
#define INCLUDE_DEFINE

// 初始化载入库
<? local slk = require 'slk' ?>

// frame
// 宏函数
#define XWEN <?= '\n' ?>
#define print debug BJDebugMsg
#define hashstr(str) <?= StringHash(str) ?>
#define strHash(str) <?= StringHash(str) ?>
#define AutoSize(value) (value / 16.0) * 0.01

// 预处理函数
<?
    -- 创建一个Buff物编[含技能和魔法效果][Buff名字，特效绑定路径，特效绑定附加节点，Buff提示，Buff扩展提示，移速，攻速][移速和攻速可负可正，1为100%]
    function createBuff(Name, Effect, Attach, Icon, Tip, Discription, Speed, Aspect)
        -- 技能
        local obj_ability           = slk.ability.Aasl:new(Name)
        obj_ability.Name            = Name
        obj_ability.TargetArt       = Effect
        obj_ability.Targetattach    = Attach
        obj_ability.DataA1          = tonumber(Speed)
        obj_ability.DataB1          = tonumber(Aspect)
        obj_ability.targs1          = 'self'
        -- 魔法效果
        local obj_buff              = slk.buff.BHbz:new(Name)
        obj_buff.Buffart            = Icon
        obj_buff.EditorName         = Name
        obj_buff.Bufftip            = Tip
        obj_buff.Buffubertip        = Discription
        -- 绑定
        obj_ability.BuffID1         = obj_buff:get_id()
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
        obj_ability.Tip         = Table.Tip
        obj_ability.Ubertip     = Table.Ubertip
        obj_ability.Art         = Table.Art
        -- 必备数据
        obj_ability.DataA1      = 0.00
        obj_ability.DataG1      = 1
        obj_ability.Animnames   = ''
        obj_ability.CasterArt   = ''
        obj_ability.hero        = 0
        obj_ability.race        = 'orc'
        obj_ability.levels      = 1
        obj_ability.Cool1       = 0.00
        obj_ability.targs1      = 'none'
        obj_ability.Dur1        = 0.001
        obj_ability.HeroDur1    = 0.001
        obj_ability.Cost1       = 0
        obj_ability.Area1       = 0.00
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
#define CHAT_CHANNEL_ALL         0 // 所有人
#define CHAT_CHANNEL_ALLIES      1 // 盟友
#define CHAT_CHANNEL_OBSERVERS   2 // 观看者
#define CHAT_CHANNEL_REFEREES    2 // 裁判
#define CHAT_CHANNEL_PRIVATE     3 // 私人的

// Damage
#define EVENT_DAMAGE_DATA_VAILD             0       // 有效的[没有使用过]
#define EVENT_DAMAGE_DATA_IS_PHYSICAL       1       // 物理伤害[还不清楚用处]
#define EVENT_DAMAGE_DATA_IS_ATTACK         2       // 攻击伤害[任何攻击造成的伤害]
#define EVENT_DAMAGE_DATA_IS_RANGED         3       // 远程伤害[远程攻击]
#define EVENT_DAMAGE_DATA_DAMAGE_TYPE       4       // 伤害类型
#define EVENT_DAMAGE_DATA_WEAPON_TYPE       5       // 武器类型
#define EVENT_DAMAGE_DATA_ATTACK_TYPE       6       // 攻击类型

//Frame 瞄点 
#define FRAME_POINT_TOPLEFT				    0
#define FRAME_POINT_TOP 					1
#define FRAME_POINT_TOPRIGHT 				2
#define FRAME_POINT_LEFT 					3
#define FRAME_POINT_CENTER 					4
#define FRAME_POINT_RIGHT 					5
#define FRAME_POINT_BOTTOMLEFT 				6
#define FRAME_POINT_BOTTOM 					7
#define FRAME_POINT_BOTTOMRIGHT 			8
#define FRAME_POINT_ALL                     -1 //这个锚点用于边框

// Frame 锚点位置
#define FRAME_MAODIAN_ZUOSHANG      0
#define FRAME_MAODIAN_DINGBU        1
#define FRAME_MAODIAN_YOUSHANG      2
#define FRAME_MAODIAN_ZUOCE         3
#define FRAME_MAODIAN_ZHONGXIN      4
#define FRAME_MAODIAN_YOUCE         5
#define FRAME_MAODIAN_ZUOXIA        6
#define FRAME_MAODIAN_DIBU          7
#define FRAME_MAODIAN_YOUXIA        8

// Unit
// 移动类型
#define MOVE_TYPE_NONE      0x00    // 没有
#define MOVE_TYPE_ROOT      0x01    // 禁锢
#define MOVE_TYPE_WALK      0x02    // 步行
#define MOVE_TYPE_FLY       0x04    // 飞行
#define MOVE_TYPE_MINE      0x08    // 地雷
#define MOVE_TYPE_WIND      0x10    // 疾风步
#define MOVE_TYPE_UNKNOW    0x20    // 未知
#define MOVE_TYPE_FLOAT     0x40    // 漂浮
#define MOVE_TYPE_APBS      0x80    // 两栖

// 属性类型
#define UNIT_DATA_ARMOR             0x20    // 护甲
#define UNIT_DATA_ATTACK            0x12    // 基础攻击
#define UNIT_DATA_ADD_ATTACK        0x13    // 附加攻击
#define UNIT_DATA_ATTACK_RANGE      0x16    // 攻击距离
#define UNIT_DATA_INTERVAL          0x25    // 攻击间隔
#define UNIT_DATA_SPEED             0x51    // 攻击速度
#define UNIT_DATA_LIFE              0       // 生命值
#define UNIT_DATA_LIFE_MAX          1       // 最大生命值
#define UNIT_DATA_MAGIC             2       // 魔法值
#define UNIT_DATA_MAGIC_MAX         3       // 最大魔法值

// BuffId 生命周期用的
#define UNIT_BUFFID_TYPE_DEAD           'BUan'  // 操纵死尸
#define UNIT_BUFFID_TYPE_CLOUD          'Bapl'  // 疾病云雾
#define UNIT_BUFFID_TYPE_NATURE         'BEfn'  // 自然之力
#define UNIT_BUFFID_TYPE_CLASS          'BTLF'  // 类
#define UNIT_BUFFID_TYPE_TREATMENT      'Bhwd'  // 治疗守卫
#define UNIT_BUFFID_TYPE_RAISE          'Brai'  // 复活死尸
#define UNIT_BUFFID_TYPE_WATER          'BHwe'  // 水元素

// 单位朝向用的bone参数
#define UNIT_BONE_HEAD          "bone_head"     // 头部
#define UNIT_BONE_CHEST         "bone_chest"    // 胸部

// collisableId 碰撞类型
#define UNIT_COLLISABLE_TYPE_UNIT       1   // 单位类型
#define UNIT_COLLISABLE_TYPE_ARCH       3   // 建筑类型

// 整数字段
#define ABILITY_DATA_TARGS                  100     // 能力目标 - 暂定
#define ABILITY_DATA_COST                   104     // 魔法消耗
#define ABILITY_DATA_UNITID                 117     // 单位类型
#define ABILITY_DATA_HOTKET                 200     // 热键
#define ABILITY_DATA_UNHOTKET               201     // 关闭热键
#define ABILITY_DATA_RESEARCH_HOTKEY        202     // 学习热键

// 实数字段
#define ABILITY_DATA_CAST                   101     // 施法时间
#define ABILITY_DATA_DUR                    102     // 持续时间普通
#define ABILITY_DATA_HERODUR                103     // 持续时间英雄
#define ABILITY_DATA_COOL                   105     // 施法间隔
#define ABILITY_DATA_AREA                   106     // 影响区域
#define ABILITY_DATA_RNG                    107     // 施法距离
#define ABILITY_DATA_DATA_A                 108     // 数据A
#define ABILITY_DATA_DATA_B                 109     // 数据B
#define ABILITY_DATA_DATA_C                 110     // 数据C
#define ABILITY_DATA_DATA_D                 111     // 数据D
#define ABILITY_DATA_DATA_E                 112     // 数据E
#define ABILITY_DATA_DATA_F                 113     // 数据F
#define ABILITY_DATA_DATA_G                 114     // 数据G
#define ABILITY_DATA_DATA_H                 115     // 数据H
#define ABILITY_DATA_DATA_I                 116     // 数据I

// 字符串字段
#define ABILITY_DATA_NAME                   203     // 名字
#define ABILITY_DATA_ART                    204     // 图标
#define ABILITY_DATA_TARGET_ART             205     // 目标效果
#define ABILITY_DATA_CASTER_ART             206     // 施法者效果
#define ABILITY_DATA_EFFECT_ART             207     // 目标点效果
#define ABILITY_DATA_AREAEFFECT_ART         208     // 区域效果
#define ABILITY_DATA_MISSILE_ART            209     // 投射物
#define ABILITY_DATA_SPECIAL_ART            210     // 特殊效果
#define ABILITY_DATA_LIGHTNING_EFFECT       211     // 闪电效果
#define ABILITY_DATA_BUFF_TIP               212     // Buff提示
#define ABILITY_DATA_BUFF_UBERTIP           213     // Buff提示[扩展]
#define ABILITY_DATA_RESEARCH_TIP           214     // 学习提示
#define ABILITY_DATA_TIP                    215     // 提示
#define ABILITY_DATA_UNTIP                  216     // 关闭提示
#define ABILITY_DATA_RESEARCH_UBERTIP       217     // 学习提示[扩展]
#define ABILITY_DATA_UBERTIP                218     // 提示[扩展]
#define ABILITY_DATA_UNUBERTIP              219     // 关闭提示[扩展]
#define ABILITY_DATA_UNART                  220     // 能力数据 - 暂定

// Item
#define ITEM_STATE_COOLDOWN                 1       // 图标
#define ITEM_STATE_UBEBTIP                  3       // 提示[扩展]
#define ITEM_STATE_TIP                      4       // 提示

// Game
// 游戏速度
#define MAP_SPEED_SLOWEST                   ConvertGameSpeed(0)     // 最低游戏速度
#define MAP_SPEED_SLOW                      ConvertGameSpeed(1)     // 低游戏速度
#define MAP_SPEED_NORMAL                    ConvertGameSpeed(2)     // 正常游戏速度
#define MAP_SPEED_FAST                      ConvertGameSpeed(3)     // 较快游戏速度
#define MAP_SPEED_FASTEST                   ConvertGameSpeed(4)     // 最快游戏速度

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

#endif
