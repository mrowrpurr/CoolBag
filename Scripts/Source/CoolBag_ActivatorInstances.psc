scriptName CoolBag_ActivatorInstances hidden

Form function GetActivator(int index) global
    if index == 0
        return GetBag1()
    elseIf index == 1
        return GetBag2()
    else
        Debug.MessageBox("Unknown activator index: " + index)
    endIf
endFunction

Form function GetBag1() global
    return CoolBag_Util.GetModForm(0xd71)
endFunction

Form function GetBag2() global
    return CoolBag_Util.GetModForm(0x2300)
endFunction