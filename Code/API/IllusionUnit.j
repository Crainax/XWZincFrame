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
                EXSetAbilityDataReal(EXGetUnitAbility(thistype.majia, thistype.abId), 1, ABILITY_DATA_DUR, dur);
                EXSetAbilityDataReal(EXGetUnitAbility(thistype.majia, thistype.abId), 1, ABILITY_DATA_HERODUR, dur);
                EXSetAbilityDataReal(EXGetUnitAbility(thistype.majia, thistype.abId), 1, ABILITY_DATA_DATA_A, damageDealt);
                EXSetAbilityDataReal(EXGetUnitAbility(thistype.majia, thistype.abId), 1, ABILITY_DATA_DATA_B, damageTaken);
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
