scriptName CoolBag_Quest_Script extends Quest  

event OnInit()
    Form activatorBase1 = CoolBag_ActivatorInstances.GetBag1()
    Form activatorBase2 = CoolBag_ActivatorInstances.GetBag2()

    activatorBase1.SetName("Bag One")
    activatorBase2.SetName("Bag Two")

    Game.GetPlayer().AddItem(activatorBase1)
    Game.GetPlayer().AddItem(activatorBase2)
endEvent
