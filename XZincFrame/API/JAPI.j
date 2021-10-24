library JAPI

    // AI
    native UnitAlive               takes unit u returns boolean

    // Unit
    native EXSetUnitFacing         takes unit u, real angle returns nothing
	native EXPauseUnit             takes unit u, boolean flag returns nothing
	native EXSetUnitCollisionType  takes boolean enable, unit u, integer t returns nothing
	native EXSetUnitMoveType       takes unit u, integer t returns nothing

    // Ability
    native EXGetUnitAbility        takes unit u, integer abilcode returns ability
	native EXGetUnitAbilityByIndex takes unit u, integer index returns ability
	native EXGetAbilityId          takes ability abil returns integer
	native EXGetAbilityState       takes ability abil, integer state_type returns real
	native EXSetAbilityState       takes ability abil, integer state_type, real value returns boolean
	native EXGetAbilityDataReal    takes ability abil, integer level, integer data_type returns real
	native EXSetAbilityDataReal    takes ability abil, integer level, integer data_type, real value returns boolean
	native EXGetAbilityDataInteger takes ability abil, integer level, integer data_type returns integer
	native EXSetAbilityDataInteger takes ability abil, integer level, integer data_type, integer value returns boolean
	native EXGetAbilityDataString  takes ability abil, integer level, integer data_type returns string
	native EXSetAbilityDataString  takes ability abil, integer level, integer data_type, string value returns boolean
    native EXSetAbilityAEmeDataA   takes ability abil, integer unitid returns boolean

    // Item
    native EXGetItemDataString     takes integer itemcode, integer data_type returns string
    native EXSetItemDataString     takes integer itemcode, integer data_type, string value returns boolean

    // Buff
    // native EXGetBuffDataString     takes integer buffcode, integer data_type returns string
	// native EXSetBuffDataString     takes integer buffcode, integer data_type, string value returns boolean

    // Damage
    native EXGetEventDamageData    takes integer edd_type returns integer
	native EXSetEventDamage        takes real amount returns boolean

    // Effect
    native EXGetEffectX            takes effect e returns real
	native EXGetEffectY            takes effect e returns real
	native EXGetEffectZ            takes effect e returns real
	native EXSetEffectXY           takes effect e, real x, real y returns nothing
	native EXSetEffectZ            takes effect e, real z returns nothing
	native EXGetEffectSize         takes effect e returns real
	native EXSetEffectSize         takes effect e, real size returns nothing
	native EXEffectMatRotateX      takes effect e, real angle returns nothing
	native EXEffectMatRotateY      takes effect e, real angle returns nothing
	native EXEffectMatRotateZ      takes effect e, real angle returns nothing
	native EXEffectMatScale        takes effect e, real x, real y, real z returns nothing
	native EXEffectMatReset        takes effect e returns nothing
	native EXSetEffectSpeed        takes effect e, real speed returns nothing

    // Other
    native EXDisplayChat           takes player p, integer chat_recipient, string message returns nothing
	native EXExecuteScript         takes string script returns string
	native EXBlendButtonIcon       takes string a, string b, string c returns boolean

endlibrary
