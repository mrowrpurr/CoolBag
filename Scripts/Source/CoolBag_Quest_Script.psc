scriptName CoolBag_Quest_Script extends Quest  

event OnInit()
    Game.GetPlayer().AddItem(CoolBag_Util.GetInventoryActivator())
endEvent
