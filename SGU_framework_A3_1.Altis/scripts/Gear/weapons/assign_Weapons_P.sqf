/*
*	Select and give the Weapons & Ammo for unit. (Primary only).
*
*	This is done in a few steps.
*	1: Weapon selection based on Unit
*	2: Attachement selection based on Weapon
*	3: Ammo selection based on Weapon
*	
*	Requires: SFP & RHS(Marksman Supressor)
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
		_unit addWeapon "arifle_SPAR_01_GL_khk_F";
	};
	case (_unit isKindOf "B_soldier_AR_F"): {
		_unit addWeapon "LMG_03_F";
	};
	case (_unit isKindOf "B_Soldier_M_F"): {
		_unit addWeapon "arifle_SPAR_03_khk_F";
	};
	case (_unit isKindOf "B_Helipilot_F"): {
		_unit addWeapon "arifle_SPAR_01_blk_F";
	};
	default {
		_unit addWeapon "arifle_SPAR_01_khk_F";
	};
};


//2: Attachements
_primWeapon = primaryWeapon _unit;

//Optic
switch (true) do {
	case (_primWeapon == "arifle_SPAR_01_blk_F"): {
		_unit addPrimaryWeaponItem "optic_ACO";
	};
	case (_primWeapon == "arifle_SPAR_03_khk_F"): {
		_unit addPrimaryWeaponItem "optic_AMS";
		_unit addItemToBackpack "optic_NVS";
	};
	default {
		_unit addPrimaryWeaponItem "optic_ARCO_blk_F";
	};
};

//Muzzle
switch (true) do {
	case (_primWeapon == "arifle_SPAR_01_blk_F"): {
	};
	case (_primWeapon == "arifle_SPAR_03_khk_F"): {
		_unit addItemToBackpack "rhsgref_sdn6_suppressor";
	};
	default {
		_unit addItemToBackpack "muzzle_snds_M";
	};
};

//Underbarrel
switch (true) do {
	case (_primWeapon == "arifle_SPAR_03_khk_F"): {
		_unit addPrimaryWeaponItem "bipod_02_F_blk";
	};
	default {		
	};
};

//Side
_unit addPrimaryWeaponItem "acc_pointer_ir";


//3: Ammo
//Primary Ammo
switch (true) do {
	case ((_primWeapon == "arifle_SPAR_01_GL_khk_F") && !(_unit isKindOf "B_soldier_GL_F")): {
		//Duplicate for below line OMMMMMMMMMMMMG.
		for "_i" from 1 to 5 do {_unit addItemToVest "30Rnd_556x45_Stanag_red";};
		for "_i" from 1 to 2 do {_unit addItemToVest "30Rnd_556x45_Stanag_Tracer_Red";};
	};
	case (_primWeapon == "LMG_03_F"): {
		for "_i" from 1 to 2 do {_unit addItemToVest "200Rnd_556x45_Box_Tracer_Red_F";};
		for "_i" from 1 to 3 do {_unit addItemToBackpack "200Rnd_556x45_Box_Tracer_Red_F";};
	};	
	case (_primWeapon == "arifle_SPAR_03_khk_F"): {
		for "_i" from 1 to 5 do {_unit addItemToVest "20Rnd_762x51_Mag";};
		for "_i" from 1 to 2 do {_unit addItemToVest "ACE_20Rnd_762x51_Mag_Tracer";};
		for "_i" from 1 to 2 do {_unit addItemToVest "ACE_20Rnd_762x51_M993_AP_Mag";};
	};
	case (_primWeapon == "arifle_SPAR_01_blk_F"): {
		//Duplicate for below line OMMMMMMMMMMMMG.
		for "_i" from 1 to 3 do {_unit addItemToVest "30Rnd_556x45_Stanag_red";};
	};
	default {
		for "_i" from 1 to 7 do {_unit addItemToVest "30Rnd_556x45_Stanag_red";};
	};
};

//UBGL Ammo
if (_primWeapon == "arifle_SPAR_01_GL_khk_F") then {
	for "_i" from 1 to 12 do {_unit addItemToBackpack "1Rnd_HE_Grenade_shell";};
	for "_i" from 1 to 4 do {_unit addItemToBackpack "UGL_FlareCIR_F";};
};





