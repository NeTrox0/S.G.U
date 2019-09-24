/*
*	Select the weapons for unit.
*	Requires: SAM3 and RHS
*	
*	Parameters:
*	Player
*
*	By Trox
*/

_unit = _this select 0;


//Add weapon, attachements and ammo
switch (true) do {
	case (_unit isKindOf "B_soldier_TL_F"); 
	case (_unit isKindOf "B_Soldier_SL_F"): {
		_unit addWeapon "SAM_AK5C_GRT";
		_unit addPrimaryWeaponItem "sam_acco_aimpoint";
		_unit addPrimaryWeaponItem "SAM_30Rnd_556x45_Pmag_T";
		_unit addPrimaryWeaponItem "1Rnd_HE_Grenade_shell";
		
		for "_i" from 1 to 6 do {_unit addItemToVest "SAM_30Rnd_556x45_Pmag_T";};
		for "_i" from 1 to 8 do {_unit addItemToVest "1Rnd_HE_Grenade_shell";};
	};
	case (_unit isKindOf "B_soldier_GL_F"): {
		_unit addWeapon "SAM_AK5C_GRT";
		_unit addPrimaryWeaponItem "sam_acco_aimpoint";
		_unit addPrimaryWeaponItem "SAM_30Rnd_556x45_Pmag";
		_unit addPrimaryWeaponItem "1Rnd_HE_Grenade_shell";
		
		for "_i" from 1 to 6 do {this addItemToVest "SAM_30Rnd_556x45_Pmag";};
		for "_i" from 1 to 8 do {this addItemToVest "1Rnd_HE_Grenade_shell";};
	};
	case (_unit isKindOf "B_soldier_AR_F"): {
		_unit addWeapon "LMG_03_F";
		_unit addPrimaryWeaponItem "sam_acco_aimpoint";
		_unit addPrimaryWeaponItem "200Rnd_556x45_Box_Red_F";
		
		//_unit addItemToVest "200Rnd_556x45_Box_Red_F";
		for "_i" from 1 to 2 do {_unit addItemToVest "200Rnd_556x45_Box_Red_F";};
		for "_i" from 1 to 2 do {_unit addItemToBackpack "200Rnd_556x45_Box_Red_F";};
	};
	case (_unit isKindOf "B_Soldier_M_F"): {
		_unit addWeapon "SAM_AK4B_SPEC";
		_unit addPrimaryWeaponItem "optic_MRCO";
		_unit addPrimaryWeaponItem "sam_20Rnd_762x51_mag";
		
		for "_i" from 1 to 6 do {_unit addItemToVest "sam_20Rnd_762x51_mag";};
	};
	case (_unit isKindOf "B_Helipilot_F"): {
		_unit addWeapon selectRandom ["SAM_AK5D_NOGRIP","SAM_AK5D"];
		_unit addPrimaryWeaponItem "SAM_30Rnd_556x45_Pmag";

		for "_i" from 1 to 2 do {_unit addItemToVest "SAM_30Rnd_556x45_Pmag";};
	};
	case (_unit isKindOf "B_Pilot_F"): {
		// No primary weapon for JET pilots.
	};
	default {
		_unit addWeapon selectRandom ["SAM_AK5C","SAM_AK5C_NOGRIP"];
		_unit addPrimaryWeaponItem "sam_acco_aimpoint";
		_unit addPrimaryWeaponItem "SAM_30Rnd_556x45_Pmag";
		
		for "_i" from 1 to 6 do {_unit addItemToVest "SAM_30Rnd_556x45_Pmag";};
	};
};


//Add secondary weapons and attachments
_unit addWeapon "rhsusf_weap_glock17g4";
_unit addHandgunItem "acc_flashlight_pistol";
_unit addHandgunItem "rhsusf_mag_17Rnd_9x19_JHP";

if (_unit isKindOf "B_Pilot_F") then {
	_unit addItemToUniform "rhsusf_mag_17Rnd_9x19_JHP";
} else {
	_unit addItemToVest "rhsusf_mag_17Rnd_9x19_JHP";
};


//Add special weapon and attachments
switch (true) do {
	case (_unit isKindOf "B_soldier_LAT_F"): {
		_unit addWeapon selectRandom ["launch_NLAW_F","rhs_weap_M136"];
	};
	case (_unit isKindOf "B_soldier_LAT2_F"): {
		_unit addWeapon "launch_MRAWS_olive_F";
		_unit addSecondaryWeaponItem "MRAWS_HEAT_F";
		
		for "_i" from 1 to 2 do {_unit addItemToBackpack "MRAWS_HEAT_F"};
//		for "_i" from 1 to 3 do {_unit addItemToBackpack "MRAWS_HEAT55_F"};
		for "_i" from 1 to 2 do {_unit addItemToBackpack "MRAWS_HE_F"};
	};
	default {
	};
};


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
		for "_i" from 1 to 2 do {_unit addItemToVest "HandGrenade";};
		for "_i" from 1 to 2 do {_unit addItemToVest "ACE_M84";};
		_unit addItemToVest "MiniGrenade";
		
		if ((_unit isKindOf "B_soldier_TL_F") or (_unit isKindOf "B_Soldier_SL_F")) then {
			for "_i" from 1 to 3 do {_unit addItemToBackpack "SmokeShellYellow";};
		};
	};
};