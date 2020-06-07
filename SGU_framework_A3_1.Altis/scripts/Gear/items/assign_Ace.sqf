/*
*	Select Items, 
*	Requires: ACE
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
	_unit addItemToUniform "ACE_Kestrel4500";
};

if ((_unit isKindOf "B_soldier_TL_F") or (_unit isKindOf "B_Soldier_SL_F")) then {
	for "_i" from 1 to 3 do {_unit addItemToBackpack "ACE_Chemlight_HiYellow";};
	_unit addItemToBackpack "ACE_MX2A";
};