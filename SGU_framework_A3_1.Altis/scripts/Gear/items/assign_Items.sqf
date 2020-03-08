/*
*	Select Items, 
*	Requires: N / A
*	
*	Parameters:
*	Player,
*
*	By Trox
*/

_unit = _this select 0;


//Link some items to correct slots.
_unit linkItem "ItemMap";
_unit linkItem "ItemCompass";

//IF TFAR is loaded and unit is a TL or SL do not give them any Watch. TFAR_MICRODAGR will take its place!
if ((isClass(configfile >> "CfgPatches" >> "tfar_core")) and ((_unit isKindOf "B_soldier_TL_F") or (_unit isKindOf "B_Soldier_SL_F"))) then {

} else {
	_unit linkItem "ItemWatch";
};


//Add a UAV terminal to Squad leaders. Normal GPS for the other units
if ((_unit isKindOf "B_Soldier_SL_F") or (_unit isKindOf "B_Soldier_UAV_F")) then {
	_unit linkItem "B_UavTerminal";
} else {
	_unit linkItem "ItemGPS";
};


//Add NVG
switch (true) do {
	case (_unit isKindOf "B_Pilot_F"): {
		
	};
	case (_unit isKindOf "B_Helipilot_F"): {
		_unit addItemToBackpack "rhsusf_ANPVS_15";
	};
	default {
		_unit addItemToBackpack "rhsusf_ANPVS_14"; //Because Binos can hurt you.. :)
	};
};


//Add Binos
switch (true) do {
	case (_unit isKindOf "B_soldier_TL_F"); 
	case (_unit isKindOf "B_Soldier_SL_F"): {
		_unit addMagazine "Laserbatteries";
		_unit addWeapon "Laserdesignator_03";
	};
	case (_unit isKindOf "B_Soldier_M_F"): {
		_unit addWeapon "Rangefinder";
	};
	default {
		_unit addWeapon "Binocular"; //Because Binos can hurt you.. :)
	};
};


//Engineer items like EOD and explosives
if (_unit isKindOf "B_engineer_F") then {
//	_unit addItemToBackpack "MineDetector";
	_unit addItemToBackpack "ToolKit";

	for "_i" from 1 to 2 do {_unit addItemToBackpack "DemoCharge_Remote_Mag";};
};
