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
	_unit addItemToBackpack "ACE_EntrenchingTool";
};

//Engineer items like EOD and explosives
if (_role == "FARB") then {
	_unit addItemToBackpack "ACE_DefusalKit";
	_unit addItemToBackpack "ACE_EntrenchingTool";
	_unit addItemToBackpack "ACE_M26_Clacker";
//	_unit addItemToBackpack "ACE_wirecutter";
	_unit addItemToBackpack "ACE_VMH3";
};

switch (_role) do {
	case ("PRSK");
	case ("SKRP");
	case ("SJV2"): {
		_unit addItemToUniform "ACE_RangeCard";
		_unit addItemToUniform "ACE_Kestrel4500";
	};
	default {};
};

switch (_role) do {
	case ("PLTC");
	case ("GRPC");
	case ("GRPC2");
	case ("VC"): {
		for "_i" from 1 to 3 do {_unit addItemToBackpack "ACE_Chemlight_HiYellow";};
		_unit addItemToBackpack "ACE_MX2A";
	};
	default {};
};