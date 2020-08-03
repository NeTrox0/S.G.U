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
_role = _this select 1;


//Link some items to correct slots.
_unit linkItem "ItemMap";
_unit linkItem "ItemCompass";

//IF TFAR is loaded and unit is a TL or SL do not give them any Watch. TFAR_MICRODAGR will take its place!

if ((isClass(configfile >> "CfgPatches" >> "tfar_core")) and ((_role == "GRPC") or (_role == "GRPC2") or (_role == "PLTC"))) then {
} else {
	_unit linkItem "ItemWatch";
};


//Add a UAV terminal to Squad leaders. Normal GPS for the other units
if ((_role == "PLTC") or (_role == "UAV")) then {
	_unit linkItem "B_UavTerminal";
} else {
	_unit linkItem "ItemGPS";
};


//Add NVG
switch (true) do {
	case (_role == "JPIL"): {};
	case (_role == "HPIL"): {
		_unit addItemToBackpack "rhsusf_ANPVS_15";
	};
	default {
		_unit addItemToBackpack "rhsusf_ANPVS_14";
	};
};


//Add Binos
switch (true) do {
	case (_role == "GRPC"); 
	case (_role == "GRPC2"); 
	case (_role == "PLTC"): {
		_unit addMagazine "Laserbatteries";
		_unit addWeapon "Laserdesignator_03";
	};
	case (_role == "SKRP"): {
		_unit addWeapon "Rangefinder";
	};
	default {
		_unit addWeapon "Binocular"; //Because Binos can hurt you.. :)
	};
};


//Engineer items like EOD and explosives
if ((_role == "ING") or (_role == "CREW3"))then {
//	_unit addItemToBackpack "MineDetector";
	_unit addItemToBackpack "ToolKit";

	for "_i" from 1 to 2 do {_unit addItemToBackpack "DemoCharge_Remote_Mag";};
};