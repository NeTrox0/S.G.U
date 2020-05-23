/*
*	Select and give the Weapons & Ammo for unit. (Primary only).
*
*	This is done in a few steps.
*	1: Weapon selection based on Unit
*	2: Attachement selection based on Weapon
*	3: Ammo selection based on Weapon
*	
*	Requires: SFP
*	Parameters: Player
*
*	By Trox
*/

_unit = _this select 0;


//Jet Pilot exit.
if (_unit isKindOf "B_Pilot_F") exitWith {};


//1: Weapon
switch (true) do {
	case (_unit isKindOf "B_soldier_TL_F");
	case (_unit isKindOf "B_Soldier_SL_F");
	case (_unit isKindOf "B_soldier_GL_F"): {
		_unit addWeapon "sfp_ak5c_m203";
	};
	case (_unit isKindOf "B_soldier_AR_F"): {
		_unit addWeapon "LMG_03_F";
	};
	case (_unit isKindOf "B_Soldier_M_F"): {
		_unit addWeapon "sfp_ak4d";
	};
	case (_unit isKindOf "B_Helipilot_F"): {
		_unit addWeapon "sfp_ak5dmk2";
	};
	default {
		_unit addWeapon selectRandom ["sfp_ak5c","sfp_ak5c_alt"];
	};
};


//2: Attachements
_primWeapon = primaryWeapon _unit;

//Optic
switch (true) do {
	case (_primWeapon == "sfp_ak5dmk2"): {
	};
	case (_primWeapon == "sfp_ak4d"): {
		_unit addPrimaryWeaponItem "optic_AMS";
		_unit addItemToBackpack "optic_NVS";
	};
	default {
		_unit addPrimaryWeaponItem "sfp_optic_3x_aimpoint";
	};
};

//Muzzle
switch (true) do {
	case (_primWeapon == "sfp_ak5dmk2"): {
	};
	case (_primWeapon == "sfp_ak4d"): {
		_unit addItemToBackpack "muzzle_snds_B";
	};
	default {
		_unit addItemToBackpack "muzzle_snds_M";
	};
};

//Underbarrel
switch (true) do {
	case (_primWeapon == "sfp_ak4d"): {
		_unit addPrimaryWeaponItem "bipod_02_F_blk";
	};
	default {		
	};
};

//Side
switch (true) do {
	case (_primWeapon == "sfp_ak5c_m203"): {
	};
	default {		
		_unit addPrimaryWeaponItem "acc_pointer_ir";
	};
};

//3: Ammo
//Primary Ammo
switch (true) do {
	case ((_primWeapon == "sfp_ak5c_M203") && !(_unit isKindOf "B_soldier_GL_F")): {
		for "_i" from 1 to 7 do {_unit addItemToVest "sfp_30Rnd_556x45_Stanag_tracer_plastic";};
	};
	case (_primWeapon == "LMG_03_F"): {
		for "_i" from 1 to 2 do {_unit addItemToVest "200Rnd_556x45_Box_Tracer_Red_F";};
		for "_i" from 1 to 3 do {_unit addItemToBackpack "200Rnd_556x45_Box_Tracer_Red_F";};
	};	
	case (_primWeapon == "sfp_ak4d"): {
		for "_i" from 1 to 5 do {_unit addItemToVest "sfp_20Rnd_762x51_ak4_ap";};
		for "_i" from 1 to 2 do {_unit addItemToVest "sfp_20Rnd_762x51_ak4_tracer";};
	};
	case (_primWeapon == "sfp_ak5dmk2"): {
		//Duplicate for below line OMMMMMMMMMMMMG. But it looks so much nicer..
		for "_i" from 1 to 3 do {_unit addItemToVest "sfp_30Rnd_556x45_Stanag_plastic";};
	};
	default {
		for "_i" from 1 to 7 do {_unit addItemToVest "sfp_30Rnd_556x45_Stanag_plastic";};
	};
};

//UBGL Ammo
if (_primWeapon == "sfp_ak5c_M203") then {
	for "_i" from 1 to 12 do {_unit addItemToBackpack "1Rnd_HE_Grenade_shell";};
	for "_i" from 1 to 4 do {_unit addItemToBackpack "UGL_FlareCIR_F";};
};