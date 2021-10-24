library List
//==================================================================================
// List version 1.1
//----------------------------
// Use this version in your map.
//==================================================================================
// - made by MaskedPoptart
// - imitates the functionality of ArrayLists (from Java)
// using a hashtable.
//==================================================================================
// Basic Usage:
// set arr = IntegerList.create() - instantiate a List of integers
// arr.size - get the current number of elements
// call arr.addLast(5732) - add 5732 to the end of the list,
// increase .size by 1
// arr.removeLast() - remove the last element in the list,
// decrease .size by 1, return removed element
// arr.remove(6) - remove the 6th element, decrease .size by 1,
// return removed element, shift elements down
// arr[3] - get the element at index 3
// set arr[23] = 815 - replace the value at index 23 with 815
// call arr.clear() - remove all objects from the list
// call arr.destroy() - clear list and recycle the struct index
//
// WARNING: Most attempts to work with indexes <0 or >=.size will fail and
// generate an error message in debug mode. Returns default to 0 for integers/
// reals, null for handles, false for booleans, etc.
//
// LEAK WARNING: List does no automatic garbage collection. If a List
// is the only place you store a variable, make sure the variable will not leak when
// you remove it or replace it.
//===================================================================================
// Credits:
// - Vexorian for JassHelper
// - Vexorian for Table 3.0 (which I used for reference)
// - All the other people who worked on JassNewGenPack
//===================================================================================
    globals
        private constant integer MAX_INSTANCES = 8190
    endglobals
    
    //! textmacro List takes type, listType, typeName
    struct $listType$List [MAX_INSTANCES]
        private integer min = -1
        private integer max = 0
        private static hashtable contents = InitHashtable()
        private static $type$ tempObject
        private static $type$ DEFAULT_VALUE
        
        private static method onInit takes nothing returns nothing
            set thistype.DEFAULT_VALUE = Load$typeName$(thistype.contents,0,0)
        endmethod
        
        private method getActualIndex takes integer publicIndex returns integer
            return publicIndex + this.min + 1
        endmethod
        
        private method getPublicIndex takes integer actualIndex returns integer
            return actualIndex - this.min - 1
        endmethod
        
        private method isValidIndex takes integer actualIndex returns boolean
            return actualIndex > this.min and actualIndex < this.max
        endmethod
        
//---------------------USER METHODS------------------------
        // 获取列表长度
        method operator size takes nothing returns integer
            return this.max-this.min-1
        endmethod
        // 添加到列表首位置处添加数据
        method addFirst takes $type$ object returns nothing
            call Save$typeName$(this.contents, integer(this), this.min, object)
            set this.min = this.min - 1
        endmethod
        // 在列表最后一个位置处添加数据
        method addLast takes $type$ object returns nothing
            call Save$typeName$(this.contents, integer(this), this.max, object)
            set this.max = this.max + 1
        endmethod
        // 删除列表第一个数据并返回所删除的数据
        method removeFirst takes nothing returns $type$
            if(this.size>0)then
                set this.min = this.min + 1
                return Load$typeName$(this.contents, integer(this), this.min)
            endif
            // debug call BJDebugMsg("ERROR: $listType$List \"removeFirst\" method. Cannot remove from an empty List.")
            return this.DEFAULT_VALUE
        endmethod
        // 删除列表最后一个数据并返回所删除的数据
        method removeLast takes nothing returns $type$
            if(this.size>0)then
                set this.max = this.max - 1
                return Load$typeName$(this.contents, integer(this), this.max)
            endif
            // debug call BJDebugMsg("ERROR: $listType$List \"removeLast\" method. Cannot remove from an empty List.")
            return this.DEFAULT_VALUE
        endmethod
        // 重载[]获取对应索引数据，索引不能超出列表长度
        method operator [] takes integer index returns $type$
            local integer actualIndex = this.getActualIndex(index)
            if(this.isValidIndex(actualIndex))then
                return Load$typeName$(this.contents, integer(this), actualIndex)
            endif
            // debug call BJDebugMsg("ERROR: $listType$List \"[]\" method. Index Out of Bounds ("+I2S(index)+").")
            return this.DEFAULT_VALUE
        endmethod
        // 更改对应索引的数据，不能更改空索引数据
        method operator []= takes integer index, $type$ object returns nothing
            local integer actualIndex = this.getActualIndex(index)
            if(this.isValidIndex(actualIndex))then
                call Save$typeName$(this.contents, integer(this), actualIndex, object)
            debug else
                debug call BJDebugMsg("ERROR: $listType$List \"[]=\" method. Index Out of Bounds ("+I2S(index)+").")
            endif
        endmethod
        // 在指定位置后面添加一个新的数据
        method add takes integer index, $type$ object returns nothing
            local integer i
            local integer actualIndex = this.getActualIndex(index)
            if(actualIndex > this.min and actualIndex <= this.max)then
                if(actualIndex <= 0.5*(this.min+this.max))then
                    set actualIndex = actualIndex - 1
                    set i = this.min
                    loop
                        exitwhen i >= actualIndex
                        call Save$typeName$(this.contents, integer(this), i, Load$typeName$(this.contents, integer(this), i+1))
                        set i = i + 1
                    endloop
                    set this.min = this.min - 1
                else
                    set i = this.max
                    loop
                        exitwhen i <= actualIndex
                        call Save$typeName$(this.contents, integer(this), i, Load$typeName$(this.contents, integer(this), i-1))
                        set i = i - 1
                    endloop
                    set this.max = this.max + 1
                endif
                call Save$typeName$(this.contents, integer(this), actualIndex, object)
            debug else
                debug call BJDebugMsg("ERROR: $listType$List \"add\" method. Index Out of Bounds ("+I2S(index)+").")
            endif
        endmethod
        // 删除指定位置后面的第一个数据
        method remove takes integer index returns $type$
            local integer i
            local integer actualIndex = this.getActualIndex(index)
            if(this.isValidIndex(actualIndex))then
                set this.tempObject = Load$typeName$(this.contents, integer(this), actualIndex)
                set i = actualIndex
                if(actualIndex <= 0.5*(this.min+this.max))then
                    set this.min = this.min + 1
                    loop
                        exitwhen i <= this.min
                        call Save$typeName$(this.contents, integer(this), i, Load$typeName$(this.contents, integer(this), i-1))
                        set i = i - 1
                    endloop               
                else
                    set this.max = this.max - 1
                    loop
                        exitwhen i >= this.max
                        call Save$typeName$(this.contents, integer(this), i, Load$typeName$(this.contents, integer(this), i+1))
                        set i = i + 1
                    endloop
                endif
                return this.tempObject
            endif
            debug call BJDebugMsg("ERROR: $listType$List \"remove\" method. Index Out of Bounds ("+I2S(index)+").")
            return this.DEFAULT_VALUE
        endmethod
        // 清空列表所有数据
        method clear takes nothing returns nothing
            call FlushChildHashtable(this.contents, integer(this))
            set this.min = -1
            set this.max = 0
        endmethod
        // 没有使用过，初步猜测为删除第一个参数到第二个参数这中间的数据
        method removeRange takes integer fromIndex, integer toIndex returns nothing
            local integer i
            local integer actualFromIndex = this.getActualIndex(fromIndex)
            local integer actualToIndex = this.getActualIndex(toIndex-1)
            if(this.isValidIndex(actualFromIndex))then
                if(this.isValidIndex(actualToIndex) and toIndex>fromIndex)then
                    if(actualFromIndex-this.min < this.max-actualToIndex)then
                        set i = actualFromIndex
                        loop
                            set i = i - 1
                            exitwhen i<=this.min
                            call Save$typeName$(this.contents, integer(this), i-fromIndex+toIndex, Load$typeName$(this.contents, integer(this), i))
                        endloop
                        set this.min = this.min-fromIndex+toIndex
                    else
                        set i = actualToIndex
                        loop
                            set i = i + 1
                            exitwhen i>=this.max
                            call Save$typeName$(this.contents, integer(this), i+fromIndex-toIndex, Load$typeName$(this.contents, integer(this), i))
                        endloop
                        set this.max = this.max+fromIndex-toIndex
                    endif
                debug else
                    debug call BJDebugMsg("ERROR: $listType$List \"removeRange\" method. Index Out of Bounds ("+I2S(toIndex)+").")
                endif
            debug else
                debug call BJDebugMsg("ERROR: $listType$List \"removeRange\" method. Index Out of Bounds ("+I2S(fromIndex)+").")
            endif
        endmethod
        // 返回数据第一次出现的索引
        method indexOf takes $type$ object returns integer
            local integer i = this.min
            loop
                set i = i + 1
                exitwhen i>=this.max
                if(Load$typeName$(this.contents, integer(this), i) == object)then
                    return this.getPublicIndex(i)
                endif
            endloop
            return -1
        endmethod
        // 返回数据上一次出现的索引
        method lastIndexOf takes $type$ object returns integer
            local integer i = this.max
            loop
                set i = i - 1
                exitwhen i<=this.min
                if(Load$typeName$(this.contents, integer(this), i) == object)then
                    return this.getPublicIndex(i)
                endif
            endloop
            return -1
        endmethod
        // 交互两个数据的位置
        method swap takes integer index1, integer index2 returns nothing
            local integer actualIndex1 = this.getActualIndex(index1)
            local integer actualIndex2 = this.getActualIndex(index2)
            if(this.isValidIndex(actualIndex1))then
                if(this.isValidIndex(actualIndex2))then
                    set this.tempObject = Load$typeName$(this.contents, integer(this), actualIndex1)
                    call Save$typeName$(this.contents, integer(this), actualIndex1, Load$typeName$(this.contents, integer(this), actualIndex2))
                    call Save$typeName$(this.contents, integer(this), actualIndex2, this.tempObject)
                debug else
                    debug call BJDebugMsg("ERROR: $listType$List \"swap\" method. Index Out of Bounds ("+I2S(index2)+").")
                endif
            debug else
                debug call BJDebugMsg("ERROR: $listType$List \"swap\" method. Index Out of Bounds ("+I2S(index1)+").")
            endif
        endmethod
        // 指定位置内存在数据则返回true
        method exists takes integer index returns boolean
            return index >= 0 and index < this.size
        endmethod
        // 如果当前列表没有任何数据则返回true
        method isEmpty takes nothing returns boolean
            return this.max == 0
        endmethod
        
//------------------END USER METHODS----------------------

        private method onDestroy takes nothing returns nothing
            call this.clear()
        endmethod
    endstruct
    //! endtextmacro

  //runtextmacro List( "type", "listType", "typeName" )
  
//type = type of object to store. must be exact.
//listType = prefix to the List struct name. can be whatever you want.
//ex: Timer --> TimerList
//typeName = suffix in Save, Load hashtable functions. must be exact.
//ex: Str --> LoadStr
  
//! runtextmacro List( "integer", "Integer", "Integer" )
// runtextmacro List( "string", "String", "Str" )
// runtextmacro List( "real", "Real", "Real" )
// runtextmacro List( "boolean", "Boolean", "Boolean" )

// runtextmacro List( "player", "Player", "PlayerHandle" )
// runtextmacro List( "unit", "Unit", "UnitHandle" )
// runtextmacro List( "item", "Item", "ItemHandle" )
// runtextmacro List( "widget", "Widget", "WidgetHandle" )
// runtextmacro List( "timer", "Timer", "TimerHandle" )
// runtextmacro List( "effect", "Effect", "EffectHandle" )
// runtextmacro List( "rect", "Rect", "RectHandle" )
// runtextmacro List( "group", "Group", "GroupHandle" )
// runtextmacro List( "force", "Force", "ForceHandle" )

// Add as many handle list types as you want, and comment out the ones you do not use
// so they do not take up unnecessary space in your map script.

endlibrary
