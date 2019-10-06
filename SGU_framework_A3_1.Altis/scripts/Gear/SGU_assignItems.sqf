/*
*	Select Items, 
*	Requires: ACRE2, ACE and ACEX
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

//Link some items to correct slots.
_unit linkItem "ItemMap";
_unit linkItem "ItemCompass";
_unit linkItem "ItemWatch";
_unit linkItem "ItemGPS";

if (_unit isKindOf "B_Pilot_F") then {
	// No NVG for JET Pilot. IT will overwrite the helmet!
} else {
	_unit linkItem "ACE_NVG_Wide";
};


//Add Radio(ACRE) for all units;
switch (true) do {
	case (_unit isKindOf "B_Pilot_F"): { // JET Pilot
		_unit addItemToUniform "ACRE_PRC152";
	};
	case (_unit isKindOf "B_Helipilot_F"): { // Heli Pilot
		_unit addItemToVest "ACRE_PRC152";
	};
	case (_unit isKindOf "B_soldier_TL_F"): {
		_unit addItemToUniform "ACRE_PRC343";
		_unit addItemToVest "ACRE_PRC152";
	};
	case (_unit isKindOf "B_Soldier_SL_F"): {
		_unit addItemToUniform "ACRE_PRC343";
		_unit addItemToVest "ACRE_PRC152";
		_unit addItemToBackpack "ACRE_PRC117F";
	};
	default {
		_unit addItemToUniform "ACRE_PRC343";	
	};
};


//Add Binos
if ((_unit isKindOf "B_soldier_TL_F") or (_unit isKindOf "B_Soldier_SL_F")) then {
	_unit addMagazine "Laserbatteries";
	_unit addWeapon "Laserdesignator_03";
} else {
	_unit addWeapon "Binocular"; //Because Binos can hurt you.. :)
};


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
//	_unit addItemToBackpack "MineDetector";
	_unit addItemToBackpack "ToolKit";
	_unit addItemToBackpack "ACE_wirecutter";
	_unit addItemToBackpack "ACE_VMH3";

	for "_i" from 1 to 2 do {_unit addItemToBackpack "DemoCharge_Remote_Mag";};
//	_unit addItemToBackpack "SatchelCharge_Remote_Mag";
};
