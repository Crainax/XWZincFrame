//! zinc
library Unit requires Base
{
    private
    {
        function getStateIndex(string index) ->integer {
            integer state = -1;
            if (index == "攻击力" || index == "基础攻击") {
                state = UNIT_DATA_ATTACK;
            } else if (index == "护甲" || index == "防御力") {
                state = UNIT_DATA_ARMOR;
            } else if (index == "攻击距离" || index == "攻击范围") {
                state = UNIT_DATA_ATTACK_RANGE;
            } else if (index == "攻击间隔") {
                state = UNIT_DATA_INTERVAL;
            } else if (index == "攻击速度") {
                state = UNIT_DATA_SPEED;
            } else if (index == "生命值") {
                state = UNIT_DATA_LIFE;
            } else if (index == "魔法值") {
                state = UNIT_DATA_MAGIC;
            } else if (index == "最大生命值" || index == "生命上限") {
                state = UNIT_DATA_LIFE_MAX;
            } else if (index == "最大魔法值" || index == "魔法上限") {
                state = UNIT_DATA_MAGIC_MAX;
            }
            return state;
        }
    }

    public struct Unit
    {
        private
        {
            // 单位成员属性
            unit u;
            integer handleId;
            integer GamerId;
            boolean heroBool;
            boolean NullBool;
        }

        public
        {
            // 实例自身数量
            static integer thisSize = 0;

            // 构造函数
            static method create(Gamer p, integer unitId, real x, real y, real angle) ->thistype {
                thistype this = thistype.allocate();
                this.u        = CreateUnit(p.Handle(), unitId, x, y, angle);
                this.GamerId  = p.id();
                this.handleId = GetHandleId(this.u);
                this.heroBool = IsUnitType(this.u, UNIT_TYPE_HERO);
                this.NullBool = true;
                this.thisSize +=1;
                return this;
            }
            static method byHandle(unit u) ->thistype {
                thistype this = 0;
                if (u == null) return 0;
                this          = thistype.allocate();
                this.u        = u;
                this.GamerId  = GetPlayerId(GetOwningPlayer(this.u));
                this.handleId = GetHandleId(this.u);
                this.heroBool = IsUnitType(this.u, UNIT_TYPE_HERO);
                this.NullBool = true;
                this.thisSize +=1;
                return this;
            }

            // 析构函数
            method Null() {
                if (!this.NullBool || integer(this) < 1) return;
                this.u = null;
                this.GamerId = 0;
                this.handleId = 0;
                this.heroBool = false;
                this.NullBool = false;
                this.thisSize -=1;
                this.deallocate();
            }
            method delete() {
                RemoveUnit(this.u);
                this.flush();
                this.Null();
            }

            // 重载 ==
            method operator == (Unit u) ->boolean { return this.u == u.Handle(); }

            // 伤害函数
            method causeUnit(Unit target, real amount, boolean attack, boolean ranged, attacktype attackType, damagetype damageType, weapontype weaponType) ->boolean
            {
                return UnitDamageTarget(this.u, target.Handle(), amount, attack, ranged, attackType, damageType, weaponType);
            }

            // Get
            method Handle() ->unit { return this.u; } // 获取单位
            method HandleId() ->integer { return this.handleId; } // 获取句柄
            method gamerId() ->integer { return this.GamerId; } // 获取所属玩家ID
            method id() ->integer { return GetUnitTypeId(this.u); } // 获取单位类型
            method name() ->string { return GetUnitName(this.u); } // 获取单位名字
            method x() ->real { return GetUnitX(this.u); } // 获取单位X
            method y() ->real { return GetUnitY(this.u); } // 获取单位Y
            method z() ->real { return GetUnitFlyHeight(this.u); } // 当前飞行高度Z
            method vec3() ->Vec3 { return Vec3.create(this.x(), this.y(), this.z()); }  // 获取单位的向量信息
            method defaultZ() ->real { return GetUnitDefaultFlyHeight(this.u); } // 默认飞行角度Z
            method data(string index) ->real { return LoadReal(XZHT, this.handleId, StringHash(index)); } // 单位自定义属性值
            method owner() ->Gamer { return Gamer.Gamer(this.GamerId); } // 单位所有者
            method facing() ->real { return GetUnitFacing(this.u); } // 单位面向角度
            method userData() ->integer { return GetUnitUserData(this.u); } // 单位自定义值
            method abilityLevel(integer abId) ->integer { return GetUnitAbilityLevel(this.u, abId); } // 技能等级
            method currentOrder() ->integer { return GetUnitCurrentOrder(this.u); } // 当前命令ID整数
            method acquireRange() ->real { return GetUnitAcquireRange(this.u); } // 当前主动攻击范围
            method defaultAcquireRange() ->real { return GetUnitDefaultAcquireRange(this.u); } // 默认主动攻击范围
            method moveSpeed() ->real { return GetUnitMoveSpeed(this.u); } // 当前移动速度
            method defaultMoveSpeed() ->real { return GetUnitDefaultMoveSpeed(this.u); } // 默认移动速度
            method value() ->integer { return GetUnitPointValue(this.u); } // 单位附加值
            method Race() ->race { return GetUnitRace(this.u); } // 单位种族
            method turnAngle() ->real { return GetUnitPropWindow(this.u); } // 当前转向角度
            method defaultTurnAngle() ->real { return GetUnitDefaultPropWindow(this.u); } // 默认转向角度
            method turnSpeed() ->real { return GetUnitTurnSpeed(this.u); } // 当前转身速度
            method defaultTurnSpeed() ->real { return GetUnitDefaultTurnSpeed(this.u); } // 默认转身速度
            method madeFood() ->integer { return GetUnitFoodMade(this.u); } // 单位制造人口
            method usedFood() ->integer { return GetUnitFoodUsed(this.u); } // 单位使用人口
            method level() ->integer { return GetUnitLevel(this.u); } // 单位等级
            method state(integer index) ->real { return GetUnitState(this.u, ConvertUnitState(index)); } // 单位属性
            method Life() ->real { return GetUnitStatePercent(this.u, UNIT_STATE_LIFE, UNIT_STATE_MAX_LIFE); } // 百分比生命
            method Magic() ->real { return GetUnitStatePercent(this.u, UNIT_STATE_MANA, UNIT_STATE_MAX_MANA); } // 百分比魔法
            method abilityId(integer abId) ->ability { return EXGetUnitAbility(this.u, abId); } // 技能类型获取技能实例
            method abilityIndex(integer index) ->ability { return EXGetUnitAbilityByIndex(this.u, index); } // 技能序列获取技能实例
            method abilityCD(integer abId) ->real { return EXGetAbilityState(EXGetUnitAbility(this.u, abId), 1); } // 单位技能冷却时间
            method itemInslot(integer index) ->Item { return Item.byHandle(UnitItemInSlot(this.u, index)); } // 单位物品栏中的物品
            // 单位技能整数数据
            method abilityDataInt(integer abId, integer level, integer dataId) ->integer {
                return EXGetAbilityDataInteger(EXGetUnitAbility(this.u, abId), level, dataId);
            }
            // 单位技能实数数据
            method abilityDataReal(integer abId, integer level, integer dataId) ->real {
                return EXGetAbilityDataReal(EXGetUnitAbility(this.u, abId), level, dataId);
            }
            // 单位技能字符串数据
            method abilityDataString(integer abId, integer level, integer dataId) ->string {
                return EXGetAbilityDataString(EXGetUnitAbility(this.u, abId), level, dataId);
            }
            // 获取力量
            method str() ->integer {
                if (this.heroBool) {
                    return GetHeroStr(this.u, true);
                }
                return 0;
            }
            // 获取敏捷
            method agi() ->integer {
                if (this.heroBool) {
                    return GetHeroAgi(this.u, true);
                }
                return 0;
            }
            // 获取智力
            method int() ->integer {
                if (this.heroBool) {
                    return GetHeroInt(this.u, true);
                }
                return 0;
            }
            method saiState() ->integer { return this.str() + this.agi() + this.int(); } // 获取全属性
            method heroLevel() ->integer { if (this.heroBool) { return GetHeroLevel(this.u); } return 0; } // 英雄等级
            method exp() ->integer { if (this.heroBool) { return GetHeroXP(this.u); } return 0; } // 英雄经验
            // 英雄主属性
            method stateType() ->string {
                string Code = "";
                Code = "(require'jass.slk').unit";
                Code = Code + "[" + I2S(this.id()) + "].";
                Code = Code + "Primary";
                Code = EXExecuteScript(Code);
                if (Code == "STR") {
                    return "力量";
                } else if (Code == "AGI") {
                    return "敏捷";
                } else if (Code == "INT") {
                    return "智力";
                }
                return null;
            }
            // 万能属性获取
            method stateString(string index) ->real {
                integer state = getStateIndex(index);
                real value = 0.0;
                if (state != -1) {
                    value = this.state(state);
                } else if (index == "力量" || index == "力量值") {
                    value = I2R(this.str());
                } else if (index == "敏捷" || index == "敏捷值") {
                    value = I2R(this.agi());
                } else if (index == "智力" || index == "智力值") {
                    value = I2R(this.int());
                } else if (index == "全属性" || index == "三围属性") {
                    value = I2R(this.saiState());
                } else {
                    value = this.data(index);
                }
                return value;
            }
            // 获取绑定在单位类型的附加值
            static method added(integer unId) ->real { return LoadReal(XZHT, strHash("单位附加值"), unId); }

            // Set 注意 发布命令是有泄露的，不可高频率发布命令
            method setPermanentData(boolean flag) { SaveBoolean(XZHT, this.handleId, strHash("永久单位"), flag); } // 设置是否为永久单位
            method setX(real x) { SetUnitX(this.u, position.correctX(x)); } // 设置X坐标
            method setY(real y) { SetUnitY(this.u, position.correctY(y)); } // 设置Y坐标
            method setZ(real z, real time) { SetUnitFlyHeight(this.u, z, time); } // 设置飞行高度Z，变换速率
            method setXY(real x, real y) { this.setX(x);this.setY(y); } // 设置XY坐标
            method move(real x, real y) { SetUnitPosition(this.u, x, y); } // 移动单位XY坐标 注意 该函数有严重泄露
            method flyEnable() { UnitAddAbility(this.u,'Amrf');UnitRemoveAbility(this.u,'Amrf'); } // 设置单位可以飞行
            method setOwner(Gamer gm, boolean flag) { SetUnitOwner(this.u, gm.Handle(), flag); } // 改变所属
            method setuserData(integer value) { SetUnitUserData(this.u, value); } // 设置自定义值
            method setData(string index, real value) { SaveReal(XZHT, this.handleId, StringHash(index), value); } // 设置自定义属性值
            method setAbilityLevel(integer abId, integer level) ->integer { return SetUnitAbilityLevel(this.u, abId, level); } // 设置技能等级
            method setAbilityPermanent(integer abId, boolean flag) ->boolean { return UnitMakeAbilityPermanent(this.u, flag, abId); } // 设置技能永久
            method setAcquireRange(real range) { SetUnitAcquireRange(this.u, range); } // 设置主动攻击范围
            method setSize(real size) { SetUnitScale(this.u, size, size, size); } // 设置单位尺寸 按倍数
            method setColor(integer r, integer g, integer b, integer t) { SetUnitVertexColor(this.u, r, g, b, t); } // 颜色 红绿蓝 透明 0-255
            method setAnimation(string name) { SetUnitAnimation(this.u, name); } // 播放动画名
            method setAnimationByIndex(integer index) { SetUnitAnimationByIndex(this.u, index); } // 播放动画序号
            method setAnimationRate(real value) { SetUnitTimeScale(this.u, value); } // 改变动画播放速度 正常的value倍数
            method setTexture(string path, integer index) { DzSetUnitTexture(this.u, path, index); } // 修改贴图
            method setModel(string path) { DzSetUnitModel(this.u, path); } // 修改模型
            method setId(integer unitId) { DzSetUnitID(this.u, unitId); } // 修改单位类型
            method setAbilityCD(integer abId, real time) { EXSetAbilityState(EXGetUnitAbility(this.u, abId), 1, time); } // 修改技能冷却时间
            method setMoveType(integer moveType) { EXSetUnitMoveType(this.u, moveType); } // 修改移动类型
            method setTurnAngle(real angle) { SetUnitPropWindow(this.u, angle); } // 修改单位转向角度 弧度
            method setTurnSpeed(real speed) { SetUnitTurnSpeed(this.u, speed); } // 修改单位转身速度
            method setExploded(boolean isExploded) { SetUnitExploded(this.u, isExploded); } // 爆炸死亡
            method setFacingTime(real angle, real time) { SetUnitFacingTimed(this.u, angle, time); } // 改变单位面向角度 指定时间
            method setSpeed(real value) { SetUnitMoveSpeed(this.u, value); } // 设置单位移动速度
            // 改变面向角度，是否立即转身 true 为立即 false 为不立即
            method setFacing(real angle, boolean isTurn) {
                SetUnitFacing(this.u, angle);
                if (isTurn) {
                    EXSetUnitFacing(this.u, angle);
                }
            }
            // 修改单位技能整数数据
            method setAbilityDataInt(integer abId, integer level, integer dataId, integer value) ->boolean {
                return EXSetAbilityDataInteger(EXGetUnitAbility(this.u, abId), level, dataId, value);
            }
            // 修改单位技能实数数据
            method setAbilityDataReal(integer abId, integer level, integer dataId, real value) ->boolean {
                return EXSetAbilityDataReal(EXGetUnitAbility(this.u, abId), level, dataId, value);
            }
            // 修改单位技能字符串数据
            method setAbilityDataString(integer abId, integer level, integer dataId, string value) ->boolean {
                return EXSetAbilityDataString(EXGetUnitAbility(this.u, abId), level, dataId, value);
            }
            // 修改力量
            method setStr(integer value) {
                if (this.heroBool) {
                    SetHeroStr(this.u, value, true);
                }
            }
            // 修改敏捷
            method setAgi(integer value) {
                if (this.heroBool) {
                    SetHeroAgi(this.u, value, true);
                }
            }
            // 修改智力
            method setInt(integer value) {
                if (this.heroBool) {
                    SetHeroInt(this.u, value, true);
                }
            }
            method setSaiState(integer value) { this.setStr(value);this.setAgi(value);this.setInt(value); } // 设置全属性
            method setLevel(integer level) { if (this.heroBool) SetHeroLevelBJ(this.u, level, false); } // 设置等级
            method setExp(integer value) { if (this.heroBool) SetHeroXP(this.u, value, false); } // 设置经验值
            method setState(integer index, real value) { SetUnitState(this.u, ConvertUnitState(index), value); } // 设置单位属性
            // 设置单位百分比生命
            method setLife(real value) {
                SetUnitState(this.u, UNIT_STATE_LIFE, GetUnitState(this.u, UNIT_STATE_MAX_LIFE) * value);
            }
            // 设置单位百分比魔法
            method setMagic(real value) {
                SetUnitState(this.u, UNIT_STATE_MANA, GetUnitState(this.u, UNIT_STATE_MAX_MANA) * value);
            }
            // 设置万能属性
            method setStateString(string index, real value) {
                integer state = getStateIndex(index);
                real data = 0.0;
                if (state != -1) {
                    if (state == UNIT_DATA_LIFE_MAX) {
                        data = this.Life();
                        this.setState(state, value);
                        this.setLife(data);
                    } else if ( state == UNIT_DATA_MAGIC_MAX) {
                        data = this.Magic();
                        this.setState(state, value);
                        this.setMagic(data);
                    } else {
                        this.setState(state, value);
                    }
                    this.addInt(0);
                } else if (index == "力量" || index == "力量值") {
                    this.setStr(math.miR2I(value));
                } else if (index == "敏捷" || index == "敏捷值") {
                    this.setAgi(math.miR2I(value));
                } else if (index == "智力" || index == "智力值") {
                    this.setInt(math.miR2I(value));
                } else if (index == "全属性" || index == "三围属性") {
                    this.setSaiState(math.miR2I(value));
                } else {
                    this.setData(index, value);
                }
            }
            // 设置绑定在单位类型的附加值
            static method setAdded(integer unId, real value) { SaveReal(XZHT, strHash("单位附加值"), unId, value); }

            // Add
            method addLevel(integer level) { SetHeroLevel(this.u, level, false); } // 提升等级
            method addData(string index, real value) { this.setData(index, this.data(index) + value); } // 增加自定义属性值
            method addAbilityLevel(integer abId) { IncUnitAbilityLevel(this.u, abId); } // 提升技能等级
            // 增加力量
            method addStr(integer value) {
                if (this.heroBool) {
                    SetHeroStr(this.u, this.str() + value, true);
                }
            }
            // 增加敏捷
            method addAgi(integer value) {
                if (this.heroBool) {
                    SetHeroAgi(this.u, this.agi() + value, true);
                }
            }
            // 增加智力
            method addInt(integer value) {
                if (this.heroBool) {
                    SetHeroInt(this.u, this.int() + value, true);
                }
            }
            method addSaiState(integer value) { this.addStr(value);this.addAgi(value);this.addInt(value); } // 提升全属性
            method addExp(integer value) { this.setExp(this.exp() + value); } // 提升英雄经验值
            method addSkillPoints(integer number) ->boolean { return UnitModifySkillPoints(this.u, number); } // 添加剩余技能点
            // 添加技能 是否永久性
            method addAbility(integer abId, boolean flag) {
                UnitAddAbility(this.u, abId);
                if (flag) UnitMakeAbilityPermanent(this.u, true, abId);
            }
            // 提升单位属性
            method addState(integer index, real value) {
                real data = 0.0;
                if (index == UNIT_DATA_LIFE_MAX) {
                    data = this.Life();
                    this.setState(index, this.state(index) + value);
                    this.setLife(data);
                } else if (index == UNIT_DATA_MAGIC_MAX) {
                    data = this.Magic();
                    this.setState(index, this.state(index) + value);
                    this.setMagic(data);
                } else {
                    this.setState(index, this.state(index) + value);
                }
            }
            // 提升万能属性
            method addStateString(string index, real value) {
                integer state = 0;
                if (value > 0.0) {
                    state = getStateIndex(index);
                    if (state != -1) {
                        this.addState(state, value);
                        this.addInt(0);
                    } else if (index == "力量" || index == "力量值") {
                        this.addStr(math.miR2I(value));
                    } else if (index == "敏捷" || index == "敏捷值") {
                        this.addAgi(math.miR2I(value));
                    } else if (index == "智力" || index == "智力值") {
                        this.addInt(math.miR2I(value));
                    } else if (index == "全属性" || index == "三围属性") {
                        this.addSaiState(math.miR2I(value));
                    } else {
                        this.addData(index, value);
                    }
                }
            }

            // Sub
            method subLevel(integer level) { UnitStripHeroLevel(this.u, level); } // 降低等级
            method subData(string index, real value) { this.setData(index, this.data(index) - value); } // 降低自定义属性值
            method subAbilityLevel(integer abId) { DecUnitAbilityLevel(this.u, abId); } // 降低技能等级
            // 降低力量
            method subStr(integer value) {
                if (this.heroBool) {
                    SetHeroStr(this.u, this.str() - value, true);
                }
            }
            // 降低敏捷
            method subAgi(integer value) {
                if (this.heroBool) {
                    SetHeroAgi(this.u, this.agi() - value, true);
                }
            }
            // 降低智力
            method subInt(integer value) {
                if (this.heroBool) {
                    SetHeroInt(this.u, this.int() - value, true);
                }
            }
            method subSaiState(integer value) { this.subStr(value);this.subAgi(value);this.subInt(value); } // 降低全属性
            method subExp(integer value) { this.setExp(this.exp() - value); } // 降低英雄经验值
            method subState(integer index, real value) { this.setState(index, this.state(index) - value); } //降低单位属性
            method subAbility(integer abId) { UnitRemoveAbility(this.u, abId); } // 删除技能
            // 降低万能属性
            method subStateString(string index, real value) {
                integer state = 0;
                if (value > 0.0) {
                    state = getStateIndex(index);
                    if (state != -1) {
                        this.subState(state, value);
                        this.addInt(0);
                    } else if (index == "力量" || index == "力量值") {
                        this.subStr(math.miR2I(value));
                    } else if (index == "敏捷" || index == "敏捷值") {
                        this.subAgi(math.miR2I(value));
                    } else if (index == "智力" || index == "智力值") {
                        this.subInt(math.miR2I(value));
                    } else if (index == "全属性" || index == "三围属性") {
                        this.subSaiState(math.miR2I(value));
                    } else {
                        this.subData(index, value);
                    }
                }
            }

            // Flush
            method remove(string index) { RemoveSavedReal(XZHT, this.handleId, StringHash(index)); } // 清空单位索引属性
            method flush() { FlushChildHashtable(XZHT, this.handleId);FlushChildHashtable(XWHT, this.handleId); } // 清空单位所有属性

            // Boolean
            method IsRace(race rc) ->boolean { return IsUnitRace(this.u, rc); } // 种族检查
            method IsType(unittype tp) ->boolean { return IsUnitType(this.u, tp); } // 单位类别检查
            method IsHero() ->boolean { return this.heroBool; } // 是否为英雄
            method IsStructure() ->boolean { return IsUnitType(this.u, UNIT_TYPE_STRUCTURE); } // 是否为建筑
            method IsAlive() ->boolean { return UnitAlive(this.u); } // 是否存活的
            method IsDead() ->boolean { return GetUnitState(this.u, UNIT_STATE_LIFE) <= 0.0; } // 是否为死亡的
            method IsShow() ->boolean { return !IsUnitHidden(this.u); } // 是否为显示的 显示为true 隐藏为false
            method IsIllusion() ->boolean { return IsUnitIllusion(this.u); } // 是否为镜像单位
            method IsSelected(Gamer gm) ->boolean { return IsUnitSelected(this.u, gm.Handle()); } // 是否被玩家选择
            method IsAlly(Gamer gm) ->boolean { return IsUnitAlly(this.u, gm.Handle()); } // 是否为玩家同盟
            method IsEnemy(Gamer gm) ->boolean { return IsUnitEnemy(this.u, gm.Handle()); } // 是否为玩家敌对
            method IsEnemyUnit(Unit u) ->boolean { return IsUnitEnemy(u.Handle(), Gamer.user[this.GamerId].Handle()); } // 是否为敌对单位
            method IsOwned(Gamer gm) ->boolean { return IsUnitOwnedByPlayer(this.u, gm.Handle()); } // 是玩家的单位
            method IsVisible(Gamer gm) ->boolean { return IsUnitVisible(this.u, gm.Handle()); } // 单位对玩家是否可见
            method IsInFog(Gamer gm) ->boolean { return IsUnitFogged(this.u, gm.Handle()); } // 单位对玩家是否处于迷雾
            method IsInMask(Gamer gm) ->boolean { return IsUnitMasked(this.u, gm.Handle()); } // 单位对玩家是否处于黑色阴影
            method IsInGroup(Group gp) ->boolean { return IsUnitInGroup(this.u, gp.Handle()); } // 单位在单位组中
            method IsInUnitRange(Unit u, real range) ->boolean { return IsUnitInRange(this.u, u.Handle(), range); } // 在单位范围内
            method IsInXYRange(real x, real y, real range) ->boolean { return IsUnitInRangeXY(this.u, x, y, range); } // 在指定坐标范围内
            method IsInRect(rect rct) ->boolean { return RectContainsCoords(rct, this.x(), this.y()); } // 单位是否在规则矩形中
            method IsInRegion(region rg) ->boolean { return IsPointInRegion(rg, this.x(), this.y()); } // 单位是否在不规则矩形中
            method IsInTransport(Unit u) ->boolean { return IsUnitInTransport(this.u, u.Handle()); } // 是否被指定单位装载
            method IsInSight(Gamer gm) ->boolean { return IsUnitDetected(this.u, gm.Handle()); } // 在玩家视野范围内
            method IsLoaded() ->boolean { return IsUnitLoaded(this.u); } // 单位是否被装载
            method IsSleeping() ->boolean { return UnitIsSleeping(this.u); } // 单位是否睡眠
            method IsCanSleep() ->boolean { return UnitCanSleep(this.u); } // 单位是否会在夜晚进入睡眠
            method IsItem(Item it) ->boolean { return UnitHasItem(this.u, it.Handle()); } // 单位持有物品
            method IsData(string index) ->boolean { return HaveSavedReal(XZHT, this.handleId, StringHash(index)); } // 单位拥有该属性值
            method IsAbility(integer abId) ->boolean { return GetUnitAbilityLevel(this.u, abId) > 0; } // 判断是否拥有该技能
            method IsPermanentData() ->boolean { return LoadBoolean(XZHT, this.handleId, strHash("永久单位")); } // 检测是否为永久单位 true为永久单位
            // 删除指定Buff
            method removeBuff(string whichType) ->boolean { return Buff.remove(this, whichType); }
            // 是否拥有该物品类型的物品
            method IsItemHaveBool(integer itemId) ->boolean {
                integer index;
                for (0 <= index <= 5) {
                    if (GetItemTypeId(UnitItemInSlot(this.u, index)) == itemId) {
                        return true;
                    }
                }
                return false;
            }
            // 是否拥有该物品类型的物品，返回物品实例
            method IsItemHave(integer itemId) ->Item {
                integer index;
                for (0 <= index <= 5) {
                    if (GetItemTypeId(UnitItemInSlot(this.u, index)) == itemId) {
                        return this.itemInslot(index);
                    }
                }
                return 0;
            }
            // 判断物品栏是否拥有空位
            method IsUnitItemNumber() ->boolean {
                integer index;
                for (0 <= index <= 5) {
                    if (UnitItemInSlot(this.u, index) == null) {
                        return true;
                    }
                }
                return false;
            }
            // 判断物品栏是否拥有空位，如果有空位则返回物品栏编号，没有空位则返回-1
            method IsUnitItemNumberIndex() ->integer {
                integer index;
                for (0 <= index <= 5) {
                    if (UnitItemInSlot(this.u, index) == null) {
                        return index;
                    }
                }
                return -1;
            }
            // 判断单位内置CD，通过则会自动进入冷却时间
            method IsAbilityCD(string index, real time) ->boolean {
                real result,gameTime,unitTime;
                gameTime = Timer.gameTime();
                unitTime = LoadReal(XZHT, this.handleId, StringHash(index));
                result = gameTime - unitTime;
                if (result >= time || unitTime == 0.0) {
                    SaveReal(XZHT, this.handleId, StringHash(index), gameTime);
                    return true;
                }
                return false;
            }
            // 判断单位咆哮被动技能内置CD，通过则会自动进入冷却状态[包括冷却模型和内置冷却效果]
            method IsPassiveCD(string index, real time) ->boolean {
                string NameIndex = index + "咆哮";
                if (this.IsAbilityCD(NameIndex, time)) {
                    this.setAbilityDataReal(load(integer, USERTABLE_USDT, StringHash(index), strHash("abId")), 1, ABILITY_DATA_COOL, time);
                    this.setAbilityCD(load(integer, USERTABLE_USDT, StringHash(index), strHash("abId")), time);
                    return true;
                }
                return false;
            }

            // Order
            method issueImmediateOrder(string order) ->boolean { return IssueImmediateOrder(this.u, order); } // 发布无目标命令
            method issueXYOrder(string order, real x, real y) ->boolean { return IssuePointOrder(this.u, order, x, y); } // 发布命令到坐标
            method issueUnitOrder(string order, Unit u) ->boolean { return IssueTargetOrder(this.u, order, u.Handle()); } // 发布命令到单位
            method issueImmediateOrderById(integer order) ->boolean { return IssueImmediateOrderById(this.u, order); } // 发布无目标命令 ID
            method issueXYOrderById(integer order, real x, real y) ->boolean { return IssuePointOrderById(this.u, order, x, y); } // 发布命令到坐标 ID
            method issueUnitOrderById(integer order, Unit u) ->boolean { return IssueTargetOrderById(this.u, order, u.Handle()); } // 发布命令到单位 ID
            method dropItem(Item it, real x, real y) ->boolean { return UnitDropItemPoint(this.u, it.Handle(), x, y); } // 发布丢弃物品命令到坐标
            method dropItemTarget(Item it, Unit u) ->boolean { return UnitDropItemTarget(this.u, it.Handle(), u.Handle()); } // 发布给予物品
            method dropItemSlot(Item it, integer index) ->boolean { return UnitDropItemSlot(this.u, it.Handle(), index); } // 移动物品到指定物品栏
            method useItem(Item it) ->boolean { return UnitUseItem(this.u, it.Handle()); } // 使用物品
            method useItemXY(Item it, real x, real y) ->boolean { return UnitUseItemPoint(this.u, it.Handle(), x, y); } // 在指定坐标使用物品
            method useItemTarget(Item it, Unit u) ->boolean { return UnitUseItemTarget(this.u, it.Handle(), u.Handle()); } // 给指定单位使用物品
            method issueNeutralImmediateOrder(Gamer gm, string order) ->boolean { return IssueNeutralImmediateOrder(gm.Handle(), this.u, order); } // 发布无目标中介命令
            method issueNeutralXYOrder(Gamer gm, string order, real x, real y) ->boolean { return IssueNeutralPointOrder(gm.Handle(), this.u, order, x, y); } // 发布到指定坐标的中介命令
            method issueNeutralTargetOrder(Gamer gm, string order, Unit u) ->boolean { return IssueNeutralTargetOrder(gm.Handle(), this.u, order, u.Handle()); } // 发布到单位的中介命令
            method issueNeutralImmediateOrderById(Gamer gm, integer order) ->boolean { return IssueNeutralImmediateOrderById(gm.Handle(), this.u, order); } // 发布无目标中介命令 ID
            method issueNeutralXYOrderById(Gamer gm, integer order, real x, real y) ->boolean { return IssueNeutralPointOrderById(gm.Handle(), this.u, order, x, y); } // 发布到指定坐标的中介命令 ID
            method issueNeutralTargetOrderById(Gamer gm, integer order, Unit u) ->boolean { return IssueNeutralTargetOrderById(gm.Handle(), this.u, order, u.Handle()); } // 发布到单位的中介命令 ID

            // 其他
            method revive(real x, real y) { if (this.heroBool) ReviveHero(this.u, x, y, true); } // 复活英雄单位
            method giveItem(Item it) { UnitAddItem(this.u, it.Handle()); } // 给予物品
            method removeItem(Item it) { UnitRemoveItem(this.u, it.Handle()); } // 丢弃物品
            method giveItemType(integer itemId) ->Item { return Item.byHandle(UnitAddItemByIdSwapped(itemId, this.u)); } // 创建物品后给予 返回物品
            method studySkill(integer abId) { if (this.heroBool) SelectHeroSkill(this.u, abId); } // 发布学习技能命令
            method suspendEXP(boolean flag) { if (this.heroBool) SuspendHeroXP(this.u, flag); } // 是否暂停英雄经验停止 true为暂停 false恢复
            method kill() { KillUnit(this.u); } // 杀死单位
            method show(boolean flag) { ShowUnit(this.u, flag); } // 是否显示单位 显示为true 隐藏为false
            method pauseCJ(boolean flag) { PauseUnit(this.u, flag); } // 是否暂停单位 暂停为true 恢复为false
            method vertigo(boolean flag) { EXPauseUnit(this.u, flag); } // 是否眩晕单位 true为眩晕 false为恢复
            method applyTimedLife(integer buffId, real time) { UnitApplyTimedLife(this.u, buffId, time); } // 设置生命周期
            method pauseTimedLife(boolean flag) { UnitPauseTimedLife(this.u, flag); } // 暂停生命周期 暂停为true 恢复为false
            method resetCD() { UnitResetCooldown(this.u); } // 重置所有技能CD
            method sleepPermanent(boolean flag) { UnitAddAbility(this.u, 'Asla');UnitAddSleepPerm(this.u, flag); } // 一直睡觉,中立单位有效
            method lookAt(string bone, Unit u, real x, real y, real z) { SetUnitLookAt(this.u, bone, u.Handle(), x, y, z); } // 锁定单位朝向
            method shareSight(Gamer gm, boolean flag) { UnitShareVision(this.u, gm.Handle(), flag); } // 共享视野 true为打开 false为关闭
            method suspendDecay(boolean flag) { UnitSuspendDecay(this.u, flag); } // 暂停尸体腐烂
            method sleepAtNight(boolean flag) { UnitAddSleep(this.u, flag); } // 晚上睡觉,中立单位有效
            method wakeUp() { UnitWakeUp(this.u); } // 唤醒
            method showSelectionCircle(integer r, integer g, integer b, integer t) { AddIndicator(this.u, r, g, b, t); } // 闪动指示器 红绿蓝 透明
            method addType(unittype tp) { UnitAddType(this.u, tp); } // 添加类别
            method removeType(unittype tp) { UnitRemoveType(this.u, tp); } // 删除类别
            method collisable(boolean flag) { SetUnitPathing(this.u, flag); } // 是否碰撞
            method collisableType(boolean flag, integer collisableId) { EXSetUnitCollisionType(flag, this.u, collisableId); } // 是否碰撞(指定碰撞类型)
            method useFood(boolean flag) { SetUnitUseFood(this.u, flag); } // 是否打开占用人口 true为打开 false为禁用
            method lockGuard(boolean flag) { SetUnitCreepGuard(this.u, flag); } // 锁定警戒点 锁定为true
            method removeGuard() { RemoveGuardPosition(this.u); } // 忽略单位警戒点
            method invulnerable(boolean flag) { SetUnitInvulnerable(this.u, flag); } // 无敌 无敌为true
            method echo(real dur, string msg) { DisplayTimedTextToPlayer(Player(this.GamerId), 0, 0, dur, msg); }
            // JAPI变身
            method transform(integer unitId) {
                UnitAddAbility(this.u, 'AEme');
                EXSetAbilityDataInteger(EXGetUnitAbility(this.u, 'AEme'), 1, ABILITY_DATA_UNITID, GetUnitTypeId(this.u));
                EXSetAbilityAEmeDataA(EXGetUnitAbility(this.u, 'AEme'), GetUnitTypeId(this.u));
                UnitRemoveAbility(this.u, 'AEme');
                UnitAddAbility(this.u, 'AEme');
                EXSetAbilityAEmeDataA(EXGetUnitAbility(this.u, 'AEme'), unitId);
                UnitRemoveAbility(this.u, 'AEme');
            }
            // 创建物品之后给予，并指定使用次数
            method giveItemTypeNumber(integer itemId, integer number) ->Item {
                Item it = Item.create(itemId, this.x(), this.y());
                it.setCharges(number);
                this.giveItem(it);
                return it;
            }

            // Event 事件响应 调用需要排泄，如果不排泄那么会产生泄露
            //! textmacro UnitEvent takes Name, Type, Notes
                static method $Name$() ->thistype {
                    // $Notes$
                    return Unit.byHandle($Type$());
                }
            //! endtextmacro

            //! runtextmacro UnitEvent("triggerUnit", "GetTriggerUnit", "触发单位")
            //! runtextmacro UnitEvent("damageUnit", "GetEventDamageSource", "伤害来源")
            //! runtextmacro UnitEvent("enumUnit", "GetEnumUnit", "选取单位")
            //! runtextmacro UnitEvent("soldUnit", "GetSoldUnit", "被贩卖单位")
            //! runtextmacro UnitEvent("buyingUnit", "GetBuyingUnit", "购买者")
            //! runtextmacro UnitEvent("filterUnit", "GetFilterUnit", "匹配单位")
            //! runtextmacro UnitEvent("loadedUnit", "GetLoadedUnit", "被装载单位")
            //! runtextmacro UnitEvent("killingUnit", "GetKillingUnit", "凶手单位")
            //! runtextmacro UnitEvent("leavingUnit", "GetLeavingUnit", "离开的单位")
            //! runtextmacro UnitEvent("orderedUnit", "GetOrderedUnit", "发布命令的单位")
            //! runtextmacro UnitEvent("sellingUnit", "GetSellingUnit", "贩卖者")
            //! runtextmacro UnitEvent("dyingUnit", "GetDyingUnit", "死亡单位")
            //! runtextmacro UnitEvent("trainedUnit", "GetTrainedUnit", "训练单位")
            //! runtextmacro UnitEvent("summonedUnit", "GetSummonedUnit", "召唤单位")
            //! runtextmacro UnitEvent("changingUnit", "GetChangingUnit", "被改变所有者的单位")
            //! runtextmacro UnitEvent("decayingUnit", "GetDecayingUnit", "腐化的单位")
            //! runtextmacro UnitEvent("detectedUnit", "GetDetectedUnit", "检测单位")
            //! runtextmacro UnitEvent("enteringUnit", "GetEnteringUnit", "进入的单位")
            //! runtextmacro UnitEvent("learningUnit", "GetLearningUnit", "学习技能的单位")
            //! runtextmacro UnitEvent("revivingUnit", "GetRevivingUnit", "复活英雄")
            //! runtextmacro UnitEvent("summoningUnit", "GetSummoningUnit", "召唤者")
            //! runtextmacro UnitEvent("revivableUnit", "GetRevivableUnit", "可复活英雄")
            //! runtextmacro UnitEvent("transportUnit", "GetTransportUnit", "运输单位")
            //! runtextmacro UnitEvent("eventTargetUnit", "GetEventTargetUnit", "事件目标单位")
            //! runtextmacro UnitEvent("orderTargetUnit", "GetOrderTargetUnit", "命令发布目标")
            //! runtextmacro UnitEvent("researchingUnit", "GetResearchingUnit", "研究科技的单位")
            //! runtextmacro UnitEvent("spellTargetUnit", "GetSpellTargetUnit", "技能施放目标")
            //! runtextmacro UnitEvent("manipulatingUnit", "GetManipulatingUnit", "操作物品的单位")
            //! runtextmacro UnitEvent("spellAbilityUnit", "GetSpellAbilityUnit", "施法单位")
            //! runtextmacro UnitEvent("underMouseUnit", "DzGetUnitUnderMouse", "鼠标指向单位")
        }
    }
}
//! endzinc
