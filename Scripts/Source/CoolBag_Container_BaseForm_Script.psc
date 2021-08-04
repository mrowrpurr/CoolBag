Scriptname CoolBag_Container_BaseForm_Script extends ObjectReference  

int property ContainerIndex auto ; BagIndex

Event OnItemAdded(Form item, int count, ObjectReference itemRef, ObjectReference player)
    Form thisBagsActivator = CoolBag_ActivatorInstances.GetActivator(ContainerIndex)
    if item == thisBagsActivator
        Debug.Notification("Cannot put bag into itself")
        RemoveItem(thisBagsActivator, akOtherContainer = player)
    endIf
EndEvent