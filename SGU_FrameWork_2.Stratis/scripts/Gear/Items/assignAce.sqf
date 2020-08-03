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
_role = _this select 1;


//Add misc items from ACE;
_unit addItemToUniform "ACE_EarPlugs";
_unit addItemToUniform "ACE_CableTie";
_unit addItemToUniform "ACE_Flashlight_XL50";
_unit addItemToUniform "ACE_IR_Strobe_Item";


//Engineer items like EOD and explosives
if ((_role == "ING") or (_role == "CREW3")) then {
	_unit addItemToBackpack "ACE_DefusalKit";
	_unit addItemToBackpack "ACE_EntrenchingTool";
	_unit addItemToBackpack "ACE_M26_Clacker";
	_unit addItemToBackpack "ACE_wirecutter";
	_unit addItemToBackpack "ACE_VMH3";
};

if (_role == "SKRP") then {
	_unit addItemToUniform "ACE_RangeCard";
	_unit addItemToUniform "ACE_Kestrel4500";
};

if ((_role == "GRPC") or (_role == "GRPC2") or (_role == "PLTC")) then {
	for "_i" from 1 to 3 do {_unit addItemToBackpack "ACE_Chemlight_HiYellow";};
	_unit addItemToBackpack "ACE_MX2A";
};