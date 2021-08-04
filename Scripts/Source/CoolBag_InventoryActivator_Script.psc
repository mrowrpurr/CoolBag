scriptName CoolBag_InventoryActivator_Script extends ObjectReference  

int property ContainerIndex auto ; BagIndex

event OnEquipped(Actor player)
    player.UnequipItem(CoolBag_ActivatorInstances.GetActivator(ContainerIndex), abSilent = true)
    CoolBag_Util.Log("Equipped")
    CoolBag_InventoryMenu.CloseMenu()
    CoolBag_ContainerInstances.GetContainer(ContainerIndex).Activate(player)
endEvent

event OnUnequipped(Actor player)
    CoolBag_Util.Log("Unequipped")
endEvent