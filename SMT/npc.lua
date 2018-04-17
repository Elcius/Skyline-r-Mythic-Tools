local T, C, L, G = unpack(select(2, ...))

L.Npc = {}

local TT = CreateFrame('GameTooltip','SMT_TT');
TT:AddFontStrings(
	TT:CreateFontString("$parentTextLeft1"),
	TT:CreateFontString("$parentTextRight1")
);
TT:SetOwner(WorldFrame, "CENTER");
TT:ClearLines();

local m = {
	__index = function(t,k)
		TT:SetHyperlink('unit:Creature-0-0-0-0-'..k);
		v = SMT_TTTextLeft1:GetText();
		return v;
	end,
};
setmetatable(L.Npc, m);
