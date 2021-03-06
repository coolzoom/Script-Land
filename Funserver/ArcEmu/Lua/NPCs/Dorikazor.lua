{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fswiss\fcharset0 Arial;}}
{\*\generator Msftedit 5.41.15.1515;}\viewkind4\uc1\pard\f0\fs20 --[[ PHASE ONE]] --\par
function Dorikazor_Phase1(Unit, event)\par
    if Unit:GetHealthPct() < 72 then\par
        Unit:RemoveEvents()\par
        Unit:SendChatMessage(12, 0, "Feel my Pain that I get!")\par
        Unit:CastSpell(36841)\par
                Unit:RegisterEvent("Dorikazor_lightning",4000, 0)\par
        Unit:RegisterEvent("Dorikazor_Phase2",1000, 0)\par
    end\par
end\par
\par
function Dorikazor_lightning(Unit)\par
    Unit:CastSpell(36841)\par
        Unit:SendChatMessage(12, 0, "Die! Die!")\par
end\par
\par
--[[ PHASE TWO]]--\par
function Dorikazor_Phase2(Unit, event)\par
    if Unit:GetHealthPct() < 62 then\par
        Unit:RemoveEvents()\par
        Unit:SendChatMessage(12, 0, "Run Away I will kill you!")\par
        Unit:CastSpell(41276)\par
        Unit:RegisterEvent("Dorikazor_Meteor",8000, 0)\par
        Unit:RegisterEvent("Dorikazor_Phase3",1000, 0)\par
    end\par
end\par
\par
function Dorikazor_Meteor(Unit)\par
    Unit:CastSpell(41276)\par
end\par
\par
--[[ PHASE THREE ]]--\par
function Dorikazor_Phase3(Unit, event)\par
    if Unit:GetHealthPct() < 52 then\par
        Unit:RemoveEvents()\par
        Unit:SendChatMessage(12, 0, "Your life is over soon!")\par
        Unit:SetModel(18945)\par
        Unit:RegisterEvent("Dorikazor_morph",0, 0)\par
        Unit:RegisterEvent("Dorikazor_Phase4",1000, 0)\par
    end\par
end\par
\par
function Dorikazor_morph(Unit)\par
    Unit:SetModel(18945)\par
end\par
\par
--[[ PHASE FOUR ]]--\par
function Dorikazor_Phase4(Unit, event)\par
    if Unit:GetHealthPct() <= 26 then\par
        Unit:RemoveEvents()\par
        Unit:SetCombatCapable(1)\par
        Unit:SetScale(3)\par
        Unit:CastSpell(31984)\par
        Unit:SendChatMessage(12, 0, "YOU WONT KILL ME!")\par
        Unit:RegisterEvent("Dorikazor_Beam",7000, 0)\par
    end\par
end\par
\par
function Dorikazor_Deathfinger(Unit, event)\par
    Unit:RemoveEvents()\par
    Unit:SetScale(5)\par
    Unit:CastSpell(31984)\par
    Unit:SetCombatCapable(0)\par
    Unit:SendChatMessage(12, 0, "Fear my Death!")\par
end\par
\par
function Dorikazor_OnCombat(Unit, event)\par
    Unit:SendChatMessage(11, 0, "What do you want from me!")\par
    Unit:RegisterEvent("Dorikazor_Phase1",1000, 0)\par
    Unit:RegisterEvent("Dorikazor_lightning",6000, 0)\par
end\par
\par
function Dorikazor_OnLeaveCombat(Unit)\par
    Unit:RemoveEvents()\par
end\par
\par
function Dorikazor_OnKilledTarget(Unit)\par
    Unit:SendChatMessage(11, 0, "Haha, who's next?")\par
    Unit:CastSpell(5)\par
end\par
\par
function Dorikazor_Death(Unit)\par
    Unit:SendChatMessage(12, 0, "This cannot be possible!I'm the strongest,I'm...")\par
    Unit:RemoveEvents()\par
end\par
\par
RegisterUnitEvent(250252, 1, "Dorikazor_OnCombat")\par
RegisterUnitEvent(250252, 2, "Dorikazor_OnLeaveCombat")\par
RegisterUnitEvent(250252, 3, "Dorikazor_OnKilledTarget")\par
RegisterUnitEvent(250252, 4, "Dorikazor_Death")\par
}
 