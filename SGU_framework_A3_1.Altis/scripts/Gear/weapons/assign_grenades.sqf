/*
*	Select the weapons for unit.
*	Requires: ACE & SFP (Not really due to the checks)
*	
*	Parameters:
*	Player
*
*	By Trox
*/

_unit = _this select 0;


//Smoke and frags
switch (true) do {
	case (_unit isKindOf "B_Helipilot_F"): {
		for "_i" from 1 to 3 do {_unit addItemToVest "SmokeShellGreen";};
		_unit addItemToVest "SmokeShellYellow";
	};
	case (_unit isKindOf "B_Pilot_F"): {
		for "_i" from 1 to 3 do {_unit addItemToUniform "SmokeShellGreen";};
		_unit addItemToUniform "SmokeShellYellow";
	};
	default {
		for "_i" from 1 to 6 do {_unit addItemToVest "SmokeShellGreen";};
		
		if (isClass(configfile >> "CfgPatches" >> "ace_grenades")) then { 
			for "_i" from 1 to 2 do {_unit addItemToVest "ACE_M84";};
		};

		if (isClass(configfile >> "CfgPatches" >> "sfp_weapons_grenades")) then { 
			for "_i" from 1 to 2 do {_unit addItemToVest "sfp_handgrenade_shgr56";};
		} else {
			for "_i" from 1 to 2 do {_unit addItemToVest "HandGrenade";};
		};
		
		if ((_unit isKindOf "B_soldier_TL_F") or (_unit isKindOf "B_Soldier_SL_F")) then {
			for "_i" from 1 to 2 do {_unit addItemToBackpack "SmokeShellYellow";};
			for "_i" from 1 to 2 do {_unit addItemToBackpack "B_IR_Grenade";};
		};
	};
};