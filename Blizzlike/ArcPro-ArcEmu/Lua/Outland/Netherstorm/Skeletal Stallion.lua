--[[ WoTD License - 
This software is provided as free and open source by the
team of The WoTD Team. This script was written and is
protected by the GPL v2. Please give credit where credit
is due, if modifying, redistributing and/or using this 
software. Thank you.
Thank: BlackHer0; for the Script
~~End of License... Please Stand By...
-- WoTD Team, Janurary 19, 2010. ]]

function Stallion_OnEnterCombat(Unit, Event)
    Unit:RegisterEvent("Stallion_Kick", 5000, 0)
end

function Stallion_Kick(Unit, Event)
    Unit:FullCastSpellOnTarget(11978, Unit:MainTank())
end   

function Stallion_OnLeaveCombat(Unit, Event)
	Unit:RemoveEvents()
end

function Stallion_OnDied(Unit, Event)
	Unit:RemoveEvents()
end

RegisterUnitEvent(20495, 1, "Stallion_OnEnterCombat")
RegisterUnitEvent(20495, 2, "Stallion_OnLeaveCombat")
RegisterUnitEvent(20495, 4, "Stallion_OnDied")