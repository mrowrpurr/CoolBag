Scriptname CoolBag_Container_BaseForm_Script extends ObjectReference  

Event OnItemAdded(Form item, int count, ObjectReference itemRef, ObjectReference player)
    if item == Self
        Debug.Notification("Cannot put bag into itself")
        RemoveItem(Self, akOtherContainer = player)
    endIf
EndEvent