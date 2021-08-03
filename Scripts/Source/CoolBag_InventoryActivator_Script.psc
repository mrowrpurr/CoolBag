scriptName CoolBag_InventoryActivator_Script extends ObjectReference  

event OnEquipped(Actor player)
    player.UnequipItem(CoolBag_Util.GetInventoryActivator(), abSilent = true)
    CoolBag_Util.Log("Equipped")
    CoolBag_InventoryMenu.CloseMenu()
    CoolBag_ContainerInstances.GetContainer1().Activate(player)
endEvent

event OnUnequipped(Actor player)
    CoolBag_Util.Log("Unequipped")
endEvent