//! zinc
library HurtEffect requires Xwei
{
    // 特效异步显示的人数上限 例如设置为5 那么就是玩家1-玩家5之间互相攻击是不会显示伤害字体的 而非玩家1-玩家5则会显示伤害字体
    #define DAMAGE_INT_EFFECT_RS        5

    // 物理伤害字体，物理暴击字体
    #define DAMAGE_STR_EFFECT_WULI_0    "XZincFrameModel\\DamageFont\\Dawn_0.mdl"
    #define DAMAGE_STR_EFFECT_WULI_1    "XZincFrameModel\\DamageFont\\Dawn_1.mdl"
    #define DAMAGE_STR_EFFECT_WULI_2    "XZincFrameModel\\DamageFont\\Dawn_2.mdl"
    #define DAMAGE_STR_EFFECT_WULI_3    "XZincFrameModel\\DamageFont\\Dawn_3.mdl"
    #define DAMAGE_STR_EFFECT_WULI_4    "XZincFrameModel\\DamageFont\\Dawn_4.mdl"
    #define DAMAGE_STR_EFFECT_WULI_5    "XZincFrameModel\\DamageFont\\Dawn_5.mdl"
    #define DAMAGE_STR_EFFECT_WULI_6    "XZincFrameModel\\DamageFont\\Dawn_6.mdl"
    #define DAMAGE_STR_EFFECT_WULI_7    "XZincFrameModel\\DamageFont\\Dawn_7.mdl"
    #define DAMAGE_STR_EFFECT_WULI_8    "XZincFrameModel\\DamageFont\\Dawn_8.mdl"
    #define DAMAGE_STR_EFFECT_WULI_9    "XZincFrameModel\\DamageFont\\Dawn_9.mdl"
    #define DAMAGE_STR_EFFECT_WULI_W    "XZincFrameModel\\DamageFont\\Dawn_W.mdl"
    #define DAMAGE_STR_EFFECT_WULI_BJ   "XZincFrameModel\\DamageFont\\Dawn_BJ.mdl"

    // 法术伤害字体，法术暴击字体
    #define DAMAGE_STR_EFFECT_FASHU_0   "XZincFrameModel\\DamageFont\\Mawn_0.mdl"
    #define DAMAGE_STR_EFFECT_FASHU_1   "XZincFrameModel\\DamageFont\\Mawn_1.mdl"
    #define DAMAGE_STR_EFFECT_FASHU_2   "XZincFrameModel\\DamageFont\\Mawn_2.mdl"
    #define DAMAGE_STR_EFFECT_FASHU_3   "XZincFrameModel\\DamageFont\\Mawn_3.mdl"
    #define DAMAGE_STR_EFFECT_FASHU_4   "XZincFrameModel\\DamageFont\\Mawn_4.mdl"
    #define DAMAGE_STR_EFFECT_FASHU_5   "XZincFrameModel\\DamageFont\\Mawn_5.mdl"
    #define DAMAGE_STR_EFFECT_FASHU_6   "XZincFrameModel\\DamageFont\\Mawn_6.mdl"
    #define DAMAGE_STR_EFFECT_FASHU_7   "XZincFrameModel\\DamageFont\\Mawn_7.mdl"
    #define DAMAGE_STR_EFFECT_FASHU_8   "XZincFrameModel\\DamageFont\\Mawn_8.mdl"
    #define DAMAGE_STR_EFFECT_FASHU_9   "XZincFrameModel\\DamageFont\\Mawn_9.mdl"
    #define DAMAGE_STR_EFFECT_FASHU_W   "XZincFrameModel\\DamageFont\\Mawn_W.mdl"
    #define DAMAGE_STR_EFFECT_FASHU_BJ  "XZincFrameModel\\DamageFont\\Mawn_FBJ.mdl"

    // 魔兽自带溅血特效
    #define HurtEffect_STR_EFFECT_JIANXUE "Abilities\\Spells\\Other\\Stampede\\StampedeMissileDeath.mdl"
    // 魔兽自带吸血特效
    #define HurtEffect_STR_EFFECT_XIXUE   "Abilities\\Spells\\Undead\\VampiricAura\\VampiricAuraTarget.mdl"
    // 爆血特效
    #define HurtEffect_STR_EFFECT_BAOXUE "XZincFrameModel\\Effect\\Currency\\[tx]bloodex-special-3.mdl"

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
                bjzt = DAMAGE_STR_EFFECT_FASHU_BJ;
            } else {
                index = 0;
                bjIndex = 30;
                bjzt = DAMAGE_STR_EFFECT_WULI_BJ;
            }
            // 伤害显示异步玩家
            if (this.tu.gamerId() <= DAMAGE_INT_EFFECT_RS) {
                gm = this.tu.owner();
            } else if (this.du.gamerId() <= DAMAGE_INT_EFFECT_RS) {
                gm = this.du.owner();
            }
            // 过滤较低伤害值
            if (this.tu.gamerId() <= DAMAGE_INT_EFFECT_RS && this.damage.value() < this.tu.stateString("生命值") * 0.03) {
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
            if (this.du.owner().id() <= DAMAGE_INT_EFFECT_RS) {
                // 普通打击溅射小血
                Effect.createUnit(HurtEffect_STR_EFFECT_JIANXUE, this.tu, "origin").delete();
                // 伤害字体
                if (!load(boolean, XWHT, this.du.HandleId(), strHash("伤害特效过滤器"))) {
                    save(boolean, XWHT, this.du.HandleId(), strHash("伤害特效过滤器"), true);
                    this.show();
                    Timer.create(0.25, false, function() {
                        save(boolean, XWHT, Timer.thisData(), strHash("伤害特效过滤器"), false);
                    }).setData(this.du.HandleId());
                }
            }

            // 释放
            this.destroy();
        }

        static method onInit()
        {
            // 物理字体
            thistype.EffectStr[0]  = DAMAGE_STR_EFFECT_WULI_0;
            thistype.EffectStr[1]  = DAMAGE_STR_EFFECT_WULI_1;
            thistype.EffectStr[2]  = DAMAGE_STR_EFFECT_WULI_2;
            thistype.EffectStr[3]  = DAMAGE_STR_EFFECT_WULI_3;
            thistype.EffectStr[4]  = DAMAGE_STR_EFFECT_WULI_4;
            thistype.EffectStr[5]  = DAMAGE_STR_EFFECT_WULI_5;
            thistype.EffectStr[6]  = DAMAGE_STR_EFFECT_WULI_6;
            thistype.EffectStr[7]  = DAMAGE_STR_EFFECT_WULI_7;
            thistype.EffectStr[8]  = DAMAGE_STR_EFFECT_WULI_8;
            thistype.EffectStr[9]  = DAMAGE_STR_EFFECT_WULI_9;
            thistype.EffectStr[30] = DAMAGE_STR_EFFECT_WULI_W;
            // 法术字体
            thistype.EffectStr[10] = DAMAGE_STR_EFFECT_FASHU_0;
            thistype.EffectStr[11] = DAMAGE_STR_EFFECT_FASHU_1;
            thistype.EffectStr[12] = DAMAGE_STR_EFFECT_FASHU_2;
            thistype.EffectStr[13] = DAMAGE_STR_EFFECT_FASHU_3;
            thistype.EffectStr[14] = DAMAGE_STR_EFFECT_FASHU_4;
            thistype.EffectStr[15] = DAMAGE_STR_EFFECT_FASHU_5;
            thistype.EffectStr[16] = DAMAGE_STR_EFFECT_FASHU_6;
            thistype.EffectStr[17] = DAMAGE_STR_EFFECT_FASHU_7;
            thistype.EffectStr[18] = DAMAGE_STR_EFFECT_FASHU_8;
            thistype.EffectStr[19] = DAMAGE_STR_EFFECT_FASHU_9;
            thistype.EffectStr[31] = DAMAGE_STR_EFFECT_FASHU_W;
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
            if (du.owner() <= DAMAGE_INT_EFFECT_RS) {
                tu = Unit.triggerUnit();
                eff = Effect.create(HurtEffect_STR_EFFECT_BAOXUE, tu.x(), tu.y());
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
