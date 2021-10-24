//! zinc
library Gamer requires Base
{
    private
    {
        integer Count = 0;  // 玩家数量
    }

    public struct Gamer
    {
        public
        {
            // 玩家自身
            static Gamer user[];
            // 特殊玩家
            static Gamer NEUTRAL_AGGRESSIVE;  //中立敌对
            static Gamer NEUTRAL_VICTIM;      //中立受害
            static Gamer NEUTRAL_EXTRA;       //中立特殊
            static Gamer NEUTRAL_PASSIVE;     //中立被动
            // 成员属性
            Table ht;   // 玩家表
            Unit hero;  // 英雄
            Unit pets;  // 宠物
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
                    thistype.user[index].pid  = index;
                    thistype.user[index].p    = Player(index);
                    thistype.user[index].team = 0;
                    thistype.user[index].ht   = Table.create();
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
                    print("Gamer-id >15!");
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
                        print(I2S(index));
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
                SetPlayerAlliance(this.p, dest.Handle(), ConvertAllianceType(0), flag);  // 结盟
                SetPlayerAlliance(this.p, dest.Handle(), ConvertAllianceType(1), false); // 救援请求
                SetPlayerAlliance(this.p, dest.Handle(), ConvertAllianceType(2), false); // 救援回应
                SetPlayerAlliance(this.p, dest.Handle(), ConvertAllianceType(3), flag);  // 共享经验
                SetPlayerAlliance(this.p, dest.Handle(), ConvertAllianceType(4), false); // 魔法锁定
                SetPlayerAlliance(this.p, dest.Handle(), ConvertAllianceType(5), flag);  // 共享视野
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
            method IsEffect() ->boolean { return LoadBoolean(XZHT, this.HandleId(), strHash("特效开关")); } // 获取玩家的特效开关

            // 响应事件，不需要排泄
            static method triggerGamer() ->thistype { return Gamer.Gamer(GetPlayerId(GetTriggerPlayer())); } // 触发玩家
            static method keyGamer() ->thistype { return Gamer.Gamer(GetPlayerId(DzGetTriggerKeyPlayer())); }     // 触发硬件玩家
            static method UIGamer() ->thistype { return Gamer.Gamer(GetPlayerId(DzGetTriggerUIEventPlayer())); }  // 触发UI玩家
            static method syncGamer() ->thistype { return Gamer.Gamer(GetPlayerId(DzGetTriggerSyncPlayer())); }   // 同步数据玩家
            static method enumGamer() ->thistype { return Gamer.Gamer(GetPlayerId(GetEnumPlayer())); } // 选取玩家
            static method filterGamer() ->thistype { return Gamer.Gamer(GetPlayerId(GetFilterPlayer())); } // 匹配玩家
            static method localGamer() ->thistype { return Gamer.Gamer(GetPlayerId(GetLocalPlayer())); } // 本地玩家
            static method owningGamer(Unit u) ->thistype { return Gamer.Gamer(GetPlayerId(GetOwningPlayer(u.Handle()))); } // 单位所有者
            static method owningGamerEX(unit u) ->thistype { return Gamer.Gamer(GetPlayerId(GetOwningPlayer(u))); } // 单位所有者 改
            // static method winningGamer() ->thistype { return Gamer.Gamer(GetPlayerId(GetWinningPlayer())); } // 暂定
            
            // 其他API
            method switchEffect(boolean flag) { SaveBoolean(XZHT, this.HandleId(), strHash("特效开关"), flag); } // 设置玩家的特效开关
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
                    print("echo错误提示:玩家索引参数超出预设范围,原定需要显示的内容为 - [" + msg + "]");
                }
            }
        }
    }

    private function onInit() {
        Gamer.NEUTRAL_AGGRESSIVE = Gamer.user[12];
        Gamer.NEUTRAL_VICTIM     = Gamer.user[13];
        Gamer.NEUTRAL_EXTRA      = Gamer.user[14];
        Gamer.NEUTRAL_PASSIVE    = Gamer.user[15];
    }
}
//! endzinc
