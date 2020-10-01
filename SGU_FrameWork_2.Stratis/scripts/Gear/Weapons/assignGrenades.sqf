/*
*	Select the weapons for unit.
*	Requires: ACE & SFP (Not really due to the checks)
*	
*	Parameters:
*	Player
*	_role (See ReadMe)
*
*	By Trox
*/

_unit = _this select 0;
_role = _this select 1;


//Smoke and frags
switch (_role) do {
	case ("HPIL"): {
		for "_i" from 1 to 3 do {_unit addItemToVest "SmokeShellGreen";};
		_unit addItemToVest "SmokeShellYellow";
	};
	case ("JPIL"): {
		for "_i" from 1 to 3 do {_unit addItemToUniform "SmokeShellGreen";};
		_unit addItemToUniform "SmokeShellYellow";
	};
	case ("VC");
	case ("CREW");
	case ("CREW2");
	case ("CREW3"): {
		for "_i" from 1 to 4 do {_unit addItemToVest "SmokeShellGreen";};

		if (isClass(configfile >> "CfgPatches" >> "sfp_weapons_grenades")) then { 
			_unit addItemToVest "sfp_handgrenade_shgr56";
		} else {
			_unit addItemToVest "HandGrenade";
		};
		
		if (_role == "VC") then {
			for "_i" from 1 to 2 do {_unit addItemToBackpack "SmokeShellYellow";};
			for "_i" from 1 to 2 do {_unit addItemToBackpack "B_IR_Grenade";};
		};
	};
	default {
		for "_i" from 1 to 6 do {_unit addItemToVest "SmokeShellGreen";};
		
		if (isClass(configfile >> "CfgPatches" >> "ace_grenades")) then { 
			_unit addItemToVest "ACE_M84";
		};

		if (isClass(configfile >> "CfgPatches" >> "sfp_weapons_grenades")) then { 
			for "_i" from 1 to 2 do {_unit addItemToVest "sfp_handgrenade_shgr56";};
		} else {
			for "_i" from 1 to 2 do {_unit addItemToVest "HandGrenade";};
		};
		
		if ((_role == "GRPC") or (_role == "GRPC2") or (_role == "PLTC")) then {
			for "_i" from 1 to 2 do {_unit addItemToBackpack "SmokeShellYellow";};
			for "_i" from 1 to 2 do {_unit addItemToBackpack "B_IR_Grenade";};
		};
	};
};