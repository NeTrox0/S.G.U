/*
*	Select the weapons for unit.
*	Requires: SFP
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
		_unit addWeapon "sfp_ak5c_m203";
		_unit addPrimaryWeaponItem "sfp_optic_3x_aimpoint";
		_unit addPrimaryWeaponItem "sfp_30Rnd_556x45_Stanag_tracer_plastic";
		_unit addPrimaryWeaponItem "1Rnd_HE_Grenade_shell";
		
		for "_i" from 1 to 6 do {_unit addItemToVest "sfp_30Rnd_556x45_Stanag_tracer_plastic";};
		for "_i" from 1 to 8 do {_unit addItemToBackpack "1Rnd_HE_Grenade_shell";};
		for "_i" from 1 to 4 do {_unit addItemToBackpack "UGL_FlareCIR_F";};
	};
	case (_unit isKindOf "B_soldier_GL_F"): {
		_unit addWeapon "sfp_ak5c_m203";
		_unit addPrimaryWeaponItem "sfp_optic_3x_aimpoint";
		_unit addPrimaryWeaponItem "sfp_30Rnd_556x45_Stanag_plastic";
		_unit addPrimaryWeaponItem "1Rnd_HE_Grenade_shell";
		
		for "_i" from 1 to 6 do {this addItemToVest "sfp_30Rnd_556x45_Stanag_plastic";};
		for "_i" from 1 to 8 do {this addItemToBackpack "1Rnd_HE_Grenade_shell";};
	};
	case (_unit isKindOf "B_soldier_AR_F"): {
		_unit addWeapon "LMG_03_F";
		_unit addPrimaryWeaponItem "sfp_optic_3x_aimpoint";
		_unit addPrimaryWeaponItem "200Rnd_556x45_Box_Red_F";
		
		for "_i" from 1 to 2 do {_unit addItemToVest "200Rnd_556x45_Box_Red_F";};
		for "_i" from 1 to 2 do {_unit addItemToBackpack "200Rnd_556x45_Box_Red_F";};
	};
	case (_unit isKindOf "B_Soldier_M_F"): {
		_unit addWeapon "sfp_ak4d";
		_unit addPrimaryWeaponItem "optic_DMS";
		_unit addPrimaryWeaponItem "bipod_02_F_blk";
		_unit addPrimaryWeaponItem "sfp_20Rnd_762x51_ak4_ap";
		
		for "_i" from 1 to 6 do {_unit addItemToVest "sfp_20Rnd_762x51_ak4_ap";};
	};
	case (_unit isKindOf "B_Helipilot_F"): {
		_unit addWeapon "sfp_ak5dmk2";
		_unit addPrimaryWeaponItem "sfp_30Rnd_556x45_Stanag_plastic";

		for "_i" from 1 to 2 do {_unit addItemToVest "sfp_30Rnd_556x45_Stanag_plastic";};
	};
	case (_unit isKindOf "B_Pilot_F"): {
		// No primary weapon for JET pilots.
	};
	default {
		_unit addWeapon selectRandom ["sfp_ak5c","sfp_ak5c_alt"];
		_unit addPrimaryWeaponItem "sfp_optic_3x_aimpoint";
		_unit addPrimaryWeaponItem "sfp_30Rnd_556x45_Stanag_plastic";
		
		for "_i" from 1 to 6 do {_unit addItemToVest "sfp_30Rnd_556x45_Stanag_plastic";};
	};
};

switch (true) do {
	case (_unit isKindOf "B_Helipilot_F");
	case (_unit isKindOf "B_Pilot_F"): {
	
	};
	case (_unit isKindOf "B_Soldier_M_F"): {
		_unit addItemToBackpack "muzzle_snds_B";
		_unit addItemToBackpack "optic_MRCO";
	};
	default {
		_unit addItemToBackpack "muzzle_snds_M";
	};
};











