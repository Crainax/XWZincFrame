#ifndef XZincFrameMain
#define XZincFrameMain

// 宏常量和宏语法糖
#include "Define\\Define.h"
#include "Define\\Table.h"

#include "API\\main.j"  // API底层
#include "Logic\\main.j"  // 逻辑层
#include "Interface\\main.j"  // UI层

// requires
//! zinc
library Xwei    /*
*/ requires     /*
*/ XZAPI,       /*
*/ XZLogic,     /*
*/ XZUI         /*
*/ 
{
    // private function onInit() {
    //     print("XZincLibrary-load! " + "<?= os.date('%Y-%m-%d %H:%M:%S') ?>");
    // }
}
//! endzinc

#endif
