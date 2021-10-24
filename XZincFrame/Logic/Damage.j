//! zinc
library Damage requires XZAPI
{
    // 伤害类型名字
    #define Damage_TypeName_Wuli                "物理伤害"
    #define Damage_TypeName_Fashu               "法术伤害"
    #define Damage_TypeName_Zhenshi             "真实伤害"
    #define Damage_TypeName_Fenlie              "分裂伤害"

    // 物理属性
    #define Damage_Physical_Penetration         "物理穿透"
    #define Damage_Physical_CrisisRate          "物理暴击率"
    #define Damage_Physical_BlitzDamage         "物理暴击伤害"
    #define Damage_Physical_Lncrease            "物理加成"
    #define Damage_Physical_BloodSuction        "攻击吸血"
    #define Damage_Splitting_Hurt               "分裂伤害"

    // 法术属性
    #define Damage_Spells_Penetration           "法术穿透"
    #define Damage_Spells_CrisisRate            "法术暴击率"
    #define Damage_Spells_BlitzDamage           "法术暴击伤害"
    #define Damage_Spells_Lncrease              "法术加成"
    #define Damage_Spells_BloodSuction          "法术吸血"

    // 通用属性
    #define Damage_Block                        "格挡"
    #define Damage_Dodge                        "闪避"
    #define Damage_IncreaseInInjury             "最终伤害加成"
    #define Damage_InjuryOffset                 "伤害免伤"
    #define Damage_InjuryRelief                 "伤害减免"
    #define Damage_Offset                       "伤害抵消"
    #define Damage_RealInjury                   "真实伤害"

    // 伤害类型
    #define Damage_DamageType_Physics           ConvertDamageType(4)   // 物理伤害 ， 普通伤害类型
    #define Damage_DamageType_Spells            ConvertDamageType(4)   // 法术伤害 ， 普通伤害类型
    #define Damage_DamageType_Real              ConvertDamageType(26)  // 真实伤害 ， 通用伤害类型
    #define Damage_DamageType_Splitting         ConvertDamageType(0)   // 分裂伤害 ， 未知伤害类型

    // 攻击类型
    #define Damage_AttackType_Physics           ConvertAttackType(1)   // 物理伤害 ， 普通攻击类型
    #define Damage_AttackType_Spells            ConvertAttackType(4)   // 法术伤害 ， 魔法攻击类型
    #define Damage_AttackType_Real              ConvertAttackType(5)   // 真实伤害 ， 混乱攻击类型
    #define Damage_AttackType_Splitting         ConvertAttackType(0)   // 分裂伤害 ， 法术攻击类型

    // 伤害免疫字体
    #define DAMAGE_STR_EFFECT_MY        "WanJieYongHeng3Model\\DamageFont\\Dawn_MY.mdl"

    // 物理暴击最低倍数，法术暴击最低倍数，分裂范围，分裂人数上限
    #define DAMAGE_REAL_WULI_NO         2.0
    #define DAMAGE_REAL_FASHU_NO        2.0
    #define DAMAGE_REAL_FENLIE_FW       425.0
    #define DAMAGE_INT_FENLIE_RS        25

    // 物理穿透上限，法术穿透上限，护甲因子
    #define DAMAGE_REAL_WULI_CT         0.8
    #define DAMAGE_REAL_FASHU_CT        0.8
    #define DAMAGE_REAL_HUJIA_YZ        0.002

    // 物理伤害减免上限，法术伤害减免上限
    #define DAMAGE_REAL_WULI_JM         0.85
    #define DAMAGE_REAL_FASHU_JM        0.85

    // 设置伤害值
    #define Damage_EXSetEventDamage(data) \
    EXSetEventDamage(data)
    // JAPI伤害类型判断
    #define Damage_IsEventDamageType(data) \
    data == ConvertDamageType(EXGetEventDamageData(EVENT_DAMAGE_DATA_DAMAGE_TYPE))
    // JAPI攻击类型判断
    #define Damage_IsEventAttackType(data) \
    data == ConvertAttackType(EXGetEventDamageData(EVENT_DAMAGE_DATA_ATTACK_TYPE))

    public struct Damage
    {
        private
        {
            // 成员属性
            real dataValue;
            Unit du,tu;
            Gamer dp,tp;
            integer duId,tuId;
            boolean eventBool;
            Table ht;

            // 静态成员
            static Table table = 0;
        }

        public
        {
            // Get
            method value() ->real { return this.ht.real[strHash("伤害值")]; } // 获取本次伤害值
            method data(string name) ->real { return this.ht.real[StringHash(name)]; } // 获取本次伤害参数值
            method dataInt(integer name) ->real { return this.ht.real[name]; }  // 获取本次伤害参数值 整数参数
            method getAttackStr() ->string { return this.ht.string[strHash("攻击类型")]; } // 获取攻击方式
            method getDamageStr() ->string { return this.ht.string[strHash("伤害类型")]; } // 获取伤害类型
            method getUnit() ->Unit { return this.du; } // 获取伤害来源
            method getTrigger() ->Unit { return this.tu; } // 获取触发单位
            static method getThis() ->thistype { return thistype.table[GetHandleId(GetEventDamageSource())]; } // 获取触发的伤害实例

            // Set
            method setValue(real value) { this.ht.real[strHash("伤害值")] = value; } // 修改本次伤害值
            method setData(string name, real value) { this.ht.real[StringHash(name)] = value; } // 修改本次伤害参数值
            method setDataInt(integer name, real value) { this.ht.real[name] = value; } // 修改本次伤害参数值 整数参数

            // Add
            method addData(string name, real value) { this.ht.real[StringHash(name)] = this.ht.real[StringHash(name)] + value; } // 增加本次伤害参数值
            method addDataInt(integer name, real value) { this.ht.real[name] = this.ht.real[name] + value; }    // 增加本次伤害参数值 整数参数
            
            // Boolean
            // 判断攻击类型 - 近战攻击 远程攻击 触发攻击
            method IsAttackType(string name) ->boolean { return this.ht.string[strHash("攻击类型")] == name; }
            // 判断伤害类型 - 物理伤害 法术伤害 真实伤害
            method IsDamageType(string name) ->boolean { return this.ht.string[strHash("伤害类型")] == name; }
            // 判断是否为暴击
            method IsCrit() ->boolean { return this.ht.boolean[strHash("是否暴击")]; }

            // Damage
            // 伤害目标 伤害来源 触发单位 伤害值 是否为近战攻击 是否为远程攻击 伤害类型 是否过滤伤害衍生事件
            static method causeUnit(Unit d, Unit t, real damage, boolean attackDamage, boolean rangedDamage, string damageIndex, boolean flag) {
                SaveBoolean(XZHT, d.HandleId(), strHash("事件过滤器"), flag);
                if (damageIndex == Damage_TypeName_Wuli) {
                    d.causeUnit(t, damage, attackDamage, rangedDamage, Damage_AttackType_Physics, Damage_DamageType_Physics, WEAPON_TYPE_WHOKNOWS);
                } else if (damageIndex == Damage_TypeName_Fashu) {
                    d.causeUnit(t, damage, attackDamage, rangedDamage, Damage_AttackType_Spells, Damage_DamageType_Spells, WEAPON_TYPE_WHOKNOWS);
                } else if (damageIndex == Damage_TypeName_Zhenshi) {
                    d.causeUnit(t, damage, attackDamage, rangedDamage, Damage_AttackType_Real, Damage_DamageType_Real, WEAPON_TYPE_WHOKNOWS);
                } else {
                    print("damageEvent - causeUnit() [伤害类型参数出错]. 伤害类型参数只能是 物理伤害/法术伤害/真实伤害.");
                }
            }
            // 伤害范围 伤害来源 坐标 范围 伤害值 是否为近战攻击 是否为远程攻击 伤害类型 是否过滤伤害衍生事件 特效
            static method causeRange(Unit d, real x, real y, real range, real damage, boolean attackDamage, boolean rangedDamage, string damageIndex, boolean flag, string name) {
                Group g = 0;
                Unit un = 0;
                if (damageIndex != Damage_TypeName_Wuli && damageIndex != Damage_TypeName_Fashu && damageIndex != Damage_TypeName_Zhenshi) {
                    print("damageEvent - causeRange() [伤害类型参数出错]. 伤害类型参数只能是 物理伤害/法术伤害/真实伤害.");
                    return;
                }
                g = Group.create();
                g.unitsInArea(x, y, range);
                un = g.getUnit();
                while (un.Handle() != null) {
                    g.remove(un);
                    if (d.IsEnemyUnit(un) && un.IsAlive() && d.Handle() != un.Handle()) {
                        if (name != "") {
                            Effect.createUnit(name, un, "origin").delete();
                        }
                        Damage.causeUnit(d, un, damage, attackDamage, rangedDamage, damageIndex, flag);
                    }
                    un.Null();
                    un = g.getUnit();
                }
                g.destroy();
                un.Null();
            }
        }

        private
        {
            // 析构函数
            method destroy()
            {
                SaveBoolean(XZHT, this.duId, strHash("事件过滤器"), false);
                thistype.table.remove(this.duId);
                this.du.Null();
                this.tu.Null();
                this.ht.destroy();
                this.deallocate();
            }

            // 伤害类型过滤器
            static method damageTypeFilter() ->integer {
                if (!(Damage_IsEventDamageType(Damage_DamageType_Real)) && !(Damage_IsEventAttackType(Damage_AttackType_Spells))) return 1;
                if (!(Damage_IsEventDamageType(Damage_DamageType_Real)) && !(Damage_IsEventAttackType(Damage_AttackType_Physics))) return 2;
                if (Damage_IsEventDamageType(Damage_DamageType_Real) && Damage_IsEventAttackType(Damage_AttackType_Real)) return 3;
                return 1;
            }

            // 真实伤害处理
            method authenticCount()
            {
                real damageData = this.dataValue;
                // 伤害加成
                damageData = damageData * (1.0 + this.ht.real[strHash(Damage_IncreaseInInjury)]);
                // 真实伤害附加
                damageData = damageData + this.ht.real[strHash(Damage_RealInjury)];
                // 判断事件过滤和响应机制
                if (!this.eventBool) {
                    this.ht.real[strHash("伤害值")] = damageData;
                    Event.executeDiyInt(strHash("伤害计算"));
                    damageData = this.ht.real[strHash("伤害值")];
                }
                // 设定最终伤害
                Damage_EXSetEventDamage(damageData);
            }
            // 法术伤害处理
            method spellsCount()
            {
                real damageData = this.dataValue;
                real armor = 0.0;
                real loc1 = 0.0;
                real loc2 = 0.0;
                real loc3 = 0.0;
                // 穿透处理
                if (this.ht.real[strHash(Damage_Spells_Penetration)] > 0.0) {
                    armor = this.tu.stateString("护甲");
                    if (this.ht.real[strHash(Damage_Spells_Penetration)] >= DAMAGE_REAL_FASHU_CT) {
                        loc1 = armor * (1.0 - DAMAGE_REAL_FASHU_CT);
                    } else {
                        loc1 = armor * (1.0 - this.ht.real[strHash(Damage_Spells_Penetration)]);
                    }
                    loc2 = (DAMAGE_REAL_HUJIA_YZ * armor) / (DAMAGE_REAL_HUJIA_YZ * armor + 1.0);
                    loc3 = damageData / (1.0 - loc2);
                    loc2 = (DAMAGE_REAL_HUJIA_YZ * loc1) / (DAMAGE_REAL_HUJIA_YZ * loc1 + 1.0);
                    damageData = loc3 * (1.0 - loc2);
                }
                // 暴击处理
                if (this.ht.real[strHash(Damage_Spells_CrisisRate)] >= math.random()) {
                    if (this.ht.real[strHash(Damage_Spells_BlitzDamage)] < DAMAGE_REAL_FASHU_NO) {
                        loc1 = DAMAGE_REAL_FASHU_NO;
                    } else {
                        loc1 = this.ht.real[strHash(Damage_Spells_BlitzDamage)];
                    }
                    damageData = damageData * loc1;
                    this.ht.boolean[strHash("是否暴击")] = true;
                }
                // 加成处理
                damageData = damageData * (1.0 + this.ht.real[strHash(Damage_Spells_Lncrease)]);
                // 伤害抵消
                if (this.ht.real[strHash(Damage_Offset)] > 0.0) {
                    damageData = damageData - this.ht.real[strHash(Damage_Offset)];
                }
                // 伤害减免/伤害免伤处理 减免+免伤 / 2
                loc1 = (this.ht.real[strHash(Damage_InjuryOffset)] + this.ht.real[strHash(Damage_InjuryRelief)]);
                if (loc1 > 0.0) {
                    loc1 = loc1 / 2;
                    if (loc1 > DAMAGE_REAL_FASHU_JM) {
                        damageData = damageData * (1.0 - DAMAGE_REAL_FASHU_JM);
                    } else {
                        damageData = damageData * (1.0 - loc1);
                    }
                }
                // 最终伤害加成处理
                damageData = damageData * (1.0 + this.ht.real[strHash(Damage_IncreaseInInjury)]);
                // 真实伤害附加
                damageData = damageData + this.ht.real[strHash(Damage_RealInjury)];
                // 伤害计算事件 过滤和响应
                if (!this.eventBool) {
                    this.ht.real[strHash("伤害值")] = damageData;
                    Event.executeDiyInt(strHash("伤害计算"));
                    damageData = this.ht.real[strHash("伤害值")];
                }
                // 设置最终伤害
                Damage_EXSetEventDamage(damageData);
                // 吸血处理
                if (this.ht.real[strHash(Damage_Spells_BloodSuction)] > 0.0) {
                    loc1 = damageData * this.ht.real[strHash(Damage_Spells_BloodSuction)];
                    this.du.addStateString("生命值", loc1);
                    Effect.createUnit("Abilities\\Spells\\Undead\\VampiricAura\\VampiricAuraTarget.mdl", this.du, "origin").delete();
                }
            }
            // 分裂伤害处理
            method sputteringCount()
            {
                real damageData = this.dataValue * this.ht.real[strHash(Damage_Splitting_Hurt)];
                integer sputteringInt = 0;
                Group g = 0;
                Unit un = 0;
                if (damageData > 0.0) {
                    g = Group.create();
                    g.unitsInArea(this.tu.x(), this.tu.y(), DAMAGE_REAL_FENLIE_FW);
                    un = g.getUnit();
                    while (un.Handle() != null) {
                        g.remove(un);
                        if (this.du.IsEnemyUnit(un) && un.IsAlive() && sputteringInt <= DAMAGE_INT_FENLIE_RS) {
                            sputteringInt +=1;
                            this.du.causeUnit(un, damageData, false, false, Damage_AttackType_Splitting, Damage_DamageType_Splitting, WEAPON_TYPE_WHOKNOWS);
                        }
                        un.Null();
                        un = g.getUnit();
                    }
                    g.destroy();
                    un.Null();
                }
            }
            // 物理伤害处理
            method physicsCount()
            {
                real damageData = this.dataValue;
                real armor = 0.0;
                real loc1 = 0.0;
                real loc2 = 0.0;
                real loc3 = 0.0;
                // 穿透处理
                if (this.ht.real[strHash(Damage_Physical_Penetration)] > 0.0) {
                    armor = this.tu.stateString("护甲");
                    if (this.ht.real[strHash(Damage_Physical_Penetration)] >= DAMAGE_REAL_WULI_CT) {
                        loc1 = armor * (1.0 - DAMAGE_REAL_WULI_CT);
                    } else {
                        loc1 = armor * (1.0 - this.ht.real[strHash(Damage_Physical_Penetration)]);
                    }
                    loc2 = (DAMAGE_REAL_HUJIA_YZ * armor) / (DAMAGE_REAL_HUJIA_YZ * armor + 1.0);
                    loc3 = damageData / (1.0 - loc2);
                    loc2 = (DAMAGE_REAL_HUJIA_YZ * loc1) / (DAMAGE_REAL_HUJIA_YZ * loc1 + 1.0);
                    damageData = loc3 * (1.0 - loc2);
                }
                // 暴击处理
                if (this.ht.real[strHash(Damage_Physical_CrisisRate)] >= math.random()) {
                    if (this.ht.real[strHash(Damage_Physical_BlitzDamage)] < DAMAGE_REAL_WULI_NO) {
                        loc1 = DAMAGE_REAL_WULI_NO;
                    } else {
                        loc1 = this.ht.real[strHash(Damage_Physical_BlitzDamage)];
                    }
                    damageData = damageData * loc1;
                    this.ht.boolean[strHash("是否暴击")] = true;
                }
                // 加成处理
                damageData = damageData * (1.0 + this.ht.real[strHash(Damage_Physical_Lncrease)]);
                // 伤害抵消
                if (this.ht.real[strHash(Damage_Offset)] > 0.0) {
                    damageData = damageData - this.ht.real[strHash(Damage_Offset)];
                }
                // 伤害减免/伤害免伤处理 减免+免伤 / 2
                loc1 = (this.ht.real[strHash(Damage_InjuryOffset)] + this.ht.real[strHash(Damage_InjuryRelief)]);
                if (loc1 > 0.0) {
                    loc1 = loc1 / 2;
                    if (loc1 > DAMAGE_REAL_WULI_JM) {
                        damageData = damageData * (1.0 - DAMAGE_REAL_WULI_JM);
                    } else {
                        damageData = damageData * (1.0 - loc1);
                    }
                }
                // 最终伤害加成处理
                damageData = damageData * (1.0 + this.ht.real[strHash(Damage_IncreaseInInjury)]);
                // 真实伤害附加
                damageData = damageData + this.ht.real[strHash(Damage_RealInjury)];
                // 伤害计算事件 过滤和响应
                if (!this.eventBool) {
                    this.ht.real[strHash("伤害值")] = damageData;
                    Event.executeDiyInt(strHash("伤害计算"));
                    damageData = this.ht.real[strHash("伤害值")];
                }
                // 设置最终伤害
                Damage_EXSetEventDamage(damageData);
                // 分裂处理
                if (this.ht.real[strHash(Damage_Splitting_Hurt)] > 0.0 && this.IsAttackType("近战攻击")) {
                    this.sputteringCount();
                }
                // 吸血处理
                if (this.ht.real[strHash(Damage_Physical_BloodSuction)] > 0.0) {
                    loc1 = damageData * this.ht.real[strHash(Damage_Physical_BloodSuction)];
                    this.du.addStateString("生命值", loc1);
                    Effect.createUnit("Abilities\\Spells\\Undead\\VampiricAura\\VampiricAuraTarget.mdl", this.du, "origin").delete();
                }
            }

            static method action()
            {
                thistype this = 0;
                integer damageIndex = 0;
                real Dodge = 0.0;
                
                // 过滤伤害值和筛选伤害类型。
                if (GetEventDamage() > 1.0 && !(Damage_IsEventDamageType(Damage_DamageType_Splitting)) && !(Damage_IsEventAttackType(Damage_AttackType_Splitting))) {
                    // 参数注册
                    this = thistype.allocate();
                    this.dataValue = GetEventDamage();
                    this.du = Unit.damageUnit();
                    this.tu = Unit.triggerUnit();
                    this.dp = this.du.owner();
                    this.tp = this.tu.owner();
                    this.duId = this.du.HandleId();
                    this.tuId = this.tu.HandleId();
                    this.ht = Table.create();
                    thistype.table[this.duId] = this;
                    this.eventBool = LoadBoolean(XZHT, this.duId, strHash("事件过滤器"));
                    damageIndex = thistype.damageTypeFilter();
                    // 攻击类型记录
                    if (0 != EXGetEventDamageData(EVENT_DAMAGE_DATA_IS_RANGED)) {
                        this.ht.string[strHash("攻击类型")] = "远程攻击";
                    } else if (0 != EXGetEventDamageData(EVENT_DAMAGE_DATA_IS_ATTACK)) {
                        this.ht.string[strHash("攻击类型")] = "近战攻击";
                    } else {
                        this.ht.string[strHash("攻击类型")] = "触发攻击";
                    }
                    // 伤害类型记录
                    if (damageIndex == 3) {
                        this.ht.string[strHash("伤害类型")] = Damage_TypeName_Zhenshi;
                    } else if (damageIndex == 2) {
                        this.ht.string[strHash("伤害类型")] = Damage_TypeName_Fashu;
                    } else {
                        this.ht.string[strHash("伤害类型")] = Damage_TypeName_Wuli;
                    }
                    // 伤害开始事件 属性参数注册和过滤
                    if (!this.eventBool) {
                        // 物理属性注册 物理穿透，物理暴击率，物理暴击伤害，物理加成，物理吸血，分裂伤害
                        this.ht.real[strHash(Damage_Physical_Penetration)]  = this.du.stateString(Damage_Physical_Penetration);
                        this.ht.real[strHash(Damage_Physical_CrisisRate)]   = this.du.stateString(Damage_Physical_CrisisRate);
                        this.ht.real[strHash(Damage_Physical_BlitzDamage)]  = this.du.stateString(Damage_Physical_BlitzDamage);
                        this.ht.real[strHash(Damage_Physical_Lncrease)]     = this.du.stateString(Damage_Physical_Lncrease);
                        this.ht.real[strHash(Damage_Physical_BloodSuction)] = this.du.stateString(Damage_Physical_BloodSuction);
                        this.ht.real[strHash(Damage_Splitting_Hurt)]        = this.du.stateString(Damage_Splitting_Hurt);
                        // 法术属性注册 法术穿透，法术暴击率，法术暴击伤害，法术加成，法术吸血
                        this.ht.real[strHash(Damage_Spells_Penetration)]    = this.du.stateString(Damage_Spells_Penetration);
                        this.ht.real[strHash(Damage_Spells_CrisisRate)]     = this.du.stateString(Damage_Spells_CrisisRate);
                        this.ht.real[strHash(Damage_Spells_BlitzDamage)]    = this.du.stateString(Damage_Spells_BlitzDamage);
                        this.ht.real[strHash(Damage_Spells_Lncrease)]       = this.du.stateString(Damage_Spells_Lncrease);
                        this.ht.real[strHash(Damage_Spells_BloodSuction)]   = this.du.stateString(Damage_Spells_BloodSuction);
                        // 通用属性注册 格挡，闪避，最终伤害加成，伤害抵消，伤害免伤，伤害减免，真实伤害附加值
                        this.ht.real[strHash(Damage_Block)]                 = this.tu.stateString(Damage_Block);
                        this.ht.real[strHash(Damage_Dodge)]                 = this.tu.stateString(Damage_Dodge);
                        this.ht.real[strHash(Damage_IncreaseInInjury)]      = this.du.stateString(Damage_IncreaseInInjury);
                        this.ht.real[strHash(Damage_Offset)]                = this.tu.stateString(Damage_Offset);
                        this.ht.real[strHash(Damage_InjuryOffset)]          = this.tu.stateString(Damage_InjuryOffset);
                        this.ht.real[strHash(Damage_InjuryRelief)]          = this.tu.stateString(Damage_InjuryRelief);
                        this.ht.real[strHash(Damage_RealInjury)]            = this.du.stateString(Damage_RealInjury);
                        Event.executeDiyInt(strHash("伤害开始"));
                    }
                    // 闪避/伤害免疫 判断机制
                    Dodge = (this.ht.real[strHash(Damage_Block)] + this.ht.real[strHash(Damage_Dodge)]);
                    if (Dodge > 0.0) {
                        Dodge = Dodge / 2;
                        if (Dodge >= math.random()) {
                            // 免疫字体
                            Effect.create(DAMAGE_STR_EFFECT_MY, this.tu.x(), this.tu.y() + 40.0).delete();
                            Damage_EXSetEventDamage(0.0);
                            this.destroy();
                            return;
                        }
                    }
                    // 伤害分流
                    if (damageIndex == 3) {
                        this.authenticCount();
                    } else if (damageIndex == 2) {
                        this.spellsCount();
                    } else {
                        this.physicsCount();
                    }
                    // 伤害结算事件 过滤和响应
                    if (!this.eventBool) {
                        Event.executeDiyInt(strHash("伤害结算"));
                    }
                    // 特效回调事件
                    Event.executeDiyInt(strHash("伤害特效处理"));
                    // 释放
                    this.destroy();
                }
            }

            static method onInit()
            {
                thistype.table = Table.create();
                Event.onDiy("单位接受伤害", function thistype.action);
            }
        }
    }
}
//! endzinc
