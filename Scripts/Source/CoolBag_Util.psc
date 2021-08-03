scriptName CoolBag_Util hidden

string function GetModName() global
    return "CoolBag.esp"
endFunction

function Log(string text) global
    Debug.Trace("[CoolBag] " + text)
endFunction

Form function GetModForm(int formId) global
    return Game.GetFormFromFile(formId, GetModName())
endFunction

Form function GetInventoryActivator() global
    return GetModForm(0xd71)
endFunction