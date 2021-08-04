scriptName CoolBag_InventoryActivator_Script extends ObjectReference  

int property ContainerIndex auto ; BagIndex
int L_SHIFT_KEY = 42
int R_SHIFT_KEY = 54

event OnEquipped(Actor player)
    CoolBag_Util.Log("Equipped")
    player.UnequipItem(CoolBag_ActivatorInstances.GetActivator(ContainerIndex), abSilent = true)
    CoolBag_InventoryMenu.CloseMenu()
    if Input.IsKeyPressed(L_SHIFT_KEY) || Input.IsKeyPressed(R_SHIFT_KEY)
        CoolBag_Menu_EditBag.OpenEditMenu(ContainerIndex)
    else
        CoolBag_ContainerInstances.GetContainer(ContainerIndex).Activate(player)
    endIf
endEvent

event OnUnequipped(Actor player)
    CoolBag_Util.Log("Unequipped")
endEvent