//! zinc
<?
local obj
local slk = require 'slk'
?>
library Base
{
    public
    {
        hashtable XWHT = InitHashtable();   // 全局哈希表
        hashtable XZHT = InitHashtable();   // 全局框架表
        hashtable USERTABLE_USDT = InitHashtable(); // 自定义值表 真实名字需要查看Table.h里面所定义的文本宏
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
    #define Unit_MajiaTarArt     "XZincFrameModel\\Unit\\Majia\\dummy.mdl"

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
                obj.file = Unit_MajiaTarArt
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
