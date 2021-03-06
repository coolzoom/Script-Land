--[[ WoTD License - 
This software is provided as free and open source by the
team of The WoTD Team. This script was written and is
protected by the GPL v2. Please give credit where credit
is due, if modifying, redistributing and/or using this 
software. Thank you.
Thank: zdroid9770; for the Script
~~End of License... Please Stand By...
-- WoTD Team, Janurary 19, 2010. ]]

function Brontus_OnCombat(Unit, Event)
	Unit:RegisterEvent("Brontus_PierceArmor", 10000, 0)
	Unit:RegisterEvent("Brontus_RushingCharge", 8000, 0)
end

function Brontus_PierceArmor(Unit, Event) 
	Unit:FullCastSpellOnTarget(6016, Unit:GetMainTank()) 
end

function Brontus_RushingCharge(Unit, Event) 
	Unit:CastSpell(6268) 
end

function Brontus_OnLeaveCombat(Unit, Event) 
	Unit:RemoveEvents() 
end

function Brontus_OnDied(Unit, Event) 
	Unit:RemoveEvents()
end

RegisterUnitEvent(5827, 1, "Brontus_OnCombat")
RegisterUnitEvent(5827, 2, "Brontus_OnLeaveCombat")
RegisterUnitEvent(5827, 4, "Brontus_OnDied")