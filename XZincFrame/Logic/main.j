#ifndef XZincLogicMain
#define XZincLogicMain

// Library
#include "Excretion.j" // 排泄库
#include "Motion.j"    // 运动器
#include "Damage.j"    // 伤害系统
#include "TimeStamp.j" // 时间戳
#include "ArticleSynthesis.j" // 合成物品

// requires
//! zinc
library XZLogic    /*
*/ requires     /*
*/ Excretion,   /*
*/ Motion,      /*
*/ Damage,      /*
*/ TimeStamp,   /*
*/ ArticleSynthesis /*
*/ 
{
    // private function onInit() {
    //     print("XZincLibrary-load! " + "<?= os.date('%Y-%m-%d %H:%M:%S') ?>");
    // }
}
//! endzinc

#endif
