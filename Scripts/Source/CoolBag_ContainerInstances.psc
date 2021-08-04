scriptName CoolBag_ContainerInstances hidden

ObjectReference function GetContainer(int index) global
    if index == 0
        return GetContainer1()
    elseIf index == 1
        return GetContainer2()
    else
        Debug.MessageBox("No container with index: " + index)
    endIf
endFunction

ObjectReference function GetContainer1() global
    return CoolBag_Util.GetModForm(0xd6e) as ObjectReference
endFunction

ObjectReference function GetContainer2() global
    return CoolBag_Util.GetModForm(0xd6c) as ObjectReference
endFunction