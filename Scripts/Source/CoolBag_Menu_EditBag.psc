Scriptname CoolBag_Menu_EditBag

function OpenEditMenu(int bagIndex) global
    string optionSelected = ShowEditBagListOfOptions(bagIndex)
    if optionSelected == "Rename Bag"
        string newBagName = ShowTextEntryDialog()
        if newBagName != ""
            CoolBag_ActivatorInstances.GetActivator(bagIndex).SetName(newBagName)
            CoolBag_ContainerInstances.GetContainer(bagIndex).GetBaseObject().SetName(newBagName)
        endIf
    elseIf optionSelected == "Start Storing Ingredients"
        CoolBag_InventoryActivator_Script theActivator = CoolBag_ActivatorInstances.GetActivator(bagIndex) as CoolBag_InventoryActivator_Script
        theActivator.StoreAlchemyIngredients = true
    elseIf optionSelected == "Stop Storing Ingredients"
        CoolBag_InventoryActivator_Script theActivator = CoolBag_ActivatorInstances.GetActivator(bagIndex) as CoolBag_InventoryActivator_Script
        theActivator.StoreAlchemyIngredients = false
    endIf
endFunction

string function ShowEditBagListOfOptions(int bagIndex) global
    uilistmenu listMenu = uiextensions.GetMenu("UIListMenu") as uilistmenu
    int renameBagOption = listMenu.AddEntryItem("Rename Bag")
    CoolBag_InventoryActivator_Script theActivator = CoolBag_ActivatorInstances.GetActivator(bagIndex) as CoolBag_InventoryActivator_Script
    int stopStoringIngredientsOption = -10
    int startStoringIngredientsOption = -10
    if theActivator.StoreAlchemyIngredients
        stopStoringIngredientsOption = listMenu.AddEntryItem("Stop Storing Ingredients")
    else
        startStoringIngredientsOption = listMenu.AddEntryItem("Start Storing Ingredients")
    endIf
    listMenu.OpenMenu()
    int result = listMenu.GetResultInt()
    if result == renameBagOption
        return "Rename Bag"
    elseIf result == stopStoringIngredientsOption
        return "Stop Storing Ingredients"
    elseIf result == startStoringIngredientsOption
        return "Start Storing Ingredients"
    endIf
endFunction

string function ShowTextEntryDialog() global
    uitextentrymenu textEntry = uiextensions.GetMenu("UITextEntryMenu") as uitextentrymenu
    textEntry.OpenMenu()
    return textEntry.GetResultString()
endFunction
