library ListModule
//===========================================================================
// Information: 
//==============
//
//     This module allows you to create a linked list containing all of the allocated
// instances of a struct. Iterating through a linked list is slightly faster than the
// typical method of looping through an array containing all of the instances. However,
// getting a random struct from a list is an O(n) operation instead of O(1) as with
// SetModule. This should be a good trade as most systems don't need random access.
//
//     There is no speed loss while iterating through structs compared to doing
// it yourself, since all of method calls used while iterating get inlined. The best
// use for this module is to hide a lot of ugly low-level code from your systems.
//
// How to use List:
//==================
//
//     Implement the List module in your struct. Your struct will gain all of the
// following methods:
//
// (static) getLength: Returns an integer indicating the number of structs in the list.
//
// (static) getRandom: Returns a random struct from the list. Note that this is rather
//                     slow due to the fact that this is a linked list implementation.
//
// (static) getFirst: Returns the first struct in the list.
//
// (static) getLast: Returns the last struct in the list.
//
// getNext: Returns the next struct in the list.
//
// getPrev: Returns the previous struct in the list.
//
// inList: Returns a boolean indicating whether this struct is in the list.
//
// addList: Adds this struct to the list. Returns false if adding failed because the
//          list is being destroyed or the struct was already in the list.
//
// removeList: Removes this struct from the list. Returns false if removal failed 
//             because the struct was not in the list.
//
// (static) destroyList: Destroys all of the structs in the list.
//
// Example of List usage:
//========================
//
// struct YourStruct
//     implement List
//
//     static method create takes nothing returns YourStruct
//         local YourStruct ys = .allocate()
//             call ys.addList()
//         return ys
//     endmethod
//
//     method onDestroy takes nothing returns nothing
//         call .removeList()
//     endmethod
//
//     static method GetRandomStruct takes nothing returns YourStruct
//         return .getRandom() //That was easy... but slow.
//     endmethod
//
//     static method LoopThroughAllYourStructs takes nothing returns nothing
//         local YourStruct ys = .getFirst() //This is inlined to a variable read.
//             loop
//                 exitwhen ys == 0
//                 //Do something with the YourStruct instance here.
//                 set ys = ys.getNext() //This is inlined to an array read.
//             endloop
//     endmethod
// endstruct
//
//===========================================================================

    module List
    
        private static boolean destroyinglist = false
        private static thistype length = 0
        private static thistype first = 0
        private static thistype last = 0
    
        private thistype prev = 0
        private thistype next = 0
        private boolean inlist = false
    
        static method getLength takes nothing returns integer
            return .length
        endmethod
    
        static method getFirst takes nothing returns thistype
            return .first
        endmethod
    
        static method getLast takes nothing returns thistype
            return .last
        endmethod
    
        static method getRandom takes nothing returns thistype
            local thistype s = .first
            local thistype array list
            local integer n = -1
            loop
                exitwhen s == 0
                set n = n + 1
                set list[n] = s
                set s = s.next
            endloop
            if n == -1 then
                return 0
            endif
            return list[GetRandomInt(0, n)]
        endmethod
    
        method getNext takes nothing returns thistype
            return .next
        endmethod
    
        method getPrev takes nothing returns thistype
            return .prev
        endmethod
    
        method inList takes nothing returns boolean
            return .inlist
        endmethod

        method addList takes nothing returns boolean
            if not .inlist and not .destroyinglist then
                set .inlist = true
                if .first == 0 then
                    set .first = this
                else
                    set .prev = .last
                    set .prev.next = this
                endif
                set .last = this
                set .length = .length + 1
                return true
            endif
            return false
        endmethod
    
        method removeList takes nothing returns boolean
            if .inlist then
                if .destroyinglist then
                    return true
                endif
                set .inlist = false
                if .first == this then
                    set .first = .next
                endif
                if .last == this then
                    set .last = .prev
                endif
                set .prev.next = .next
                set .next.prev = .prev
                set .length = .length - 1
                return true
            endif
            return false
        endmethod
    
        static method destroyList takes nothing returns nothing
            local thistype s = .first
            if not .destroyinglist then
                loop
                    exitwhen s == 0
                    set .destroyinglist = false
                    call s.removeList()
                    set .destroyinglist = true
                    call s.destroy()
                    set s = s.next
                endloop
                set .destroyinglist = false
            endif
        endmethod
    
    endmodule

endlibrary


