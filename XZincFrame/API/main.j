#ifndef XZincAPIMain
#define XZincAPIMain

// JAPI && DzAPI
#include "Japi.j"
#include "DzAPI.j"

// Library
#include "Table.j" // 表
#include "Base.j" // 基础库
#include "Turn.j" // 转换库
#include "Order.j" // 命令ID映射库
#include "Math.j" // 数学库
#include "Vec3.j" // 向量库
#include "Object.j" // 对象库
#include "List.j" // 列表结构
#include "ListModule.j" // 嵌入式列表模块
#include "Event.j" // 事件库
#include "Timer.j" // 中心计时器库
#include "Effect.j" // 特效库
#include "Game.j" // 游戏库
#include "Gamer.j" // 玩家库
#include "Unit.j" // 单位库
#include "Item.j" // 物品库
#include "Point.j" // 点库
#include "Group.j" // 单位组库
#include "String.j" // 字符串库
#include "Input.j" // 按键映射库
#include "Panel.j" // 多面板库
#include "Dialog.j" // 对话框库
#include "Ease.j" // 网易平台函数库
#include "Hard.j" // 硬件库
#include "Frame.j" // 界面库
#include "Buff.j" // Buff库

// requires
//! zinc
library XZAPI    /*
*/ requires     /*
*/ JAPI,        /* JAPI库
*/ Table,       /* 表库
*/ Turn,        /* 转换库
*/ Base,        /* 基础库
*/ Order,       /* 命令ID库
*/ Math,        /* 数学库
*/ Vec3,        /* 向量库
*/ Object,      /* 对象库
*/ Event,       /* 事件库
*/ Timer,       /* 计时器库
*/ Effect,      /* 特效库
*/ Game,        /* 游戏库
*/ Gamer,       /* 玩家库
*/ Unit,        /* 单位库
*/ Item,        /* 物品库
*/ Point,       /* 点库
*/ Group,       /* 单位组库
*/ String,      /* 字符串库
*/ Input,       /* 按键映射库
*/ Panel,       /* 多面板库
*/ Dialog,      /* 对话框库
*/ Ease,        /* 网易平台库
*/ Hard,        /* 硬件库
*/ Frame,       /* 界面库
*/ Buff,        /* Buff底层库
*/ List,        /* List结构
*/ ListModule   /* List模块
*/ 
{
    // private function onInit() {
    //     print("XZincLibrary-load! " + "<?= os.date('%Y-%m-%d %H:%M:%S') ?>");
    // }
}
//! endzinc

#endif
