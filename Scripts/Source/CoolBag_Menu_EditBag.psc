Scriptname CoolBag_Menu_EditBag

function OpenEditMenu(int bagIndex) global
    string optionSelected = ShowEditBagListOfOptions()
    if optionSelected == "Rename Bag"
        string newBagName = ShowTextEntryDialog()
        if newBagName != ""
            CoolBag_ActivatorInstances.GetActivator(bagIndex).SetName(newBagName)
            CoolBag_ContainerInstances.GetContainer(bagIndex).GetBaseObject().SetName(newBagName)
        endIf
    endIf
endFunction

string function ShowEditBagListOfOptions() global
    uilistmenu listMenu = uiextensions.GetMenu("UIListMenu") as uilistmenu
    int renameBagOption = listMenu.AddEntryItem("Rename Bag")
    listMenu.OpenMenu()
    int result = listMenu.GetResultInt()
    if result == renameBagOption
        return "Rename Bag"
    endIf
endFunction

string function ShowTextEntryDialog() global
    uitextentrymenu textEntry = uiextensions.GetMenu("UITextEntryMenu") as uitextentrymenu
    textEntry.OpenMenu()
    return textEntry.GetResultString()
endFunction
