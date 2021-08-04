Scriptname CoolBag_PlayerScript extends ReferenceAlias  

Actor property PlayerRef auto

Event OnItemAdded(Form item, int count, ObjectReference itemRef, ObjectReference theContainer)
    if item.HasKeywordString("VendorItemIngredient")
        ObjectReference activatorBase1 = CoolBag_ContainerInstances.GetContainer1()
        PlayerRef.RemoveItem(item, count, akOtherContainer = activatorBase1)
    endIf
EndEvent
