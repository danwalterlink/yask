#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#Warn  ; Enable warnings to assist with detecting common errors.
#KeyHistory, 0
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance force
;; deactivate capslock completely
SetCapslockState, AlwaysOff

class FunctionObject {
    __Call(method, args*) {
        if (method = "")
            return this.Call(args*)
        if (IsObject(method))
            return this.Call(method, args*)
    }
}

class Hypr extends FunctionObject {

    static hyprArray:= { "h": "Left"
        , "l": "Right"
        , "k": "Up"
        , "j": "Down"
        , "n": ["^", "BackSpace"]
        , "m": "BackSpace"
        , ",": "Delete"
        , ".": ["^", "Delete"]
        , "c": ["^", "c"]
        , "v": ["^", "v"] }

    hooks(byRef array:= hyprArray) {
        memoize()
    }

    latch(byRef hooks, mods) {
        static 

        return keydbhooks(args*)
    }

    unlatch(byRef hooks, mods) {

    }

    static hyproid := InputHook()

    Call := 
}

Hypr.key


#IfWinNotActive, SC2, overwatch
BackSpace::
    Hypr.start(, hyprArray)
return

;; Remap RShift to Hyper-RShift/Escape
~RShift::
    KeyWait, RShift
    if (A_PriorKey = "RShift") {
        Send {Esc}
        return
    }
return

;; Helpers
memoize(byRef fn, args*) {
    key := ""
    Loop % args.Length()
        key . % args[A_Index]

    return %fn%.memoize.key != ""
        ? %fn%.memoize(key)
        : %fn%.memoize.key := %fn%.__Call(args)
}