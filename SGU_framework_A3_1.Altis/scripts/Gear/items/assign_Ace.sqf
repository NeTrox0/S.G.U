/*
*	Select Items, 
*	Requires: ACE and ACEX
*	
*	Parameters:
*	Player,
*
*	By Trox
*/

_unit = _this select 0;


//Add misc items from ACE;
_unit addItemToUniform "ACE_EarPlugs";
_unit addItemToUniform "ACE_CableTie";
_unit addItemToUniform "ACE_Flashlight_XL50";
_unit addItemToUniform "ACE_IR_Strobe_Item";


if (_unit isKindOf "B_Pilot_F") then {
	// No NVG for JET Pilot. IT will overwrite the helmet!
} else {
	_unit addItemToBackpack "ACE_NVG_Wide";
};


//mer random mat ?
//MAT för JET PILOT?
//if ((_unit isKindOf "B_Pilot_F") then {} else {};

//ACE Survival Food and drink.
_unit addItemToBackpack selectRandom ["ACE_MRE_ChickenTikkaMasala","ACE_MRE_CreamChickenSoup","ACE_MRE_MeatballsPasta","ACE_MRE_SteakVegetables","ACE_MRE_BeefStew"];
_unit addItemToBackpack selectRandom ["ACE_Can_Franta","ACE_Can_Spirit"];
_unit addItemToBackpack "ACE_Can_RedGull";
_unit addItemToBackpack "ACE_Canteen";


//Engineer items like EOD and explosives
if (_unit isKindOf "B_engineer_F") then {
	_unit addItemToBackpack "ACE_DefusalKit";
	_unit addItemToBackpack "ACE_EntrenchingTool";
	_unit addItemToBackpack "ACE_M26_Clacker";
	_unit addItemToBackpack "ACE_wirecutter";
	_unit addItemToBackpack "ACE_VMH3";
};

if (_unit isKindOf "B_Soldier_M_F") then {
	_unit addItemToUniform "ACE_RangeCard";
};