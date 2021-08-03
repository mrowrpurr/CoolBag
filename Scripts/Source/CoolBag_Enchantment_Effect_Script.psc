scriptName CoolBag_Enchantment_Effect_Script extends activemagiceffect  

event OnEffectStart(Actor target, Actor caster)
    CoolBag_Util.Log("Effect Start")
endEvent

event OnEffectFinish(Actor target, Actor caster)
    CoolBag_Util.Log("Effect Finish")
endEvent