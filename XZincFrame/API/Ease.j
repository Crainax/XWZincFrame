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
