/*
*	Select the weapons for unit.
*	Requires: RHS
*	
*	Parameters:
*	Player
*
*	By Trox
*/

_unit = _this select 0;


//Add special weapon and attachments
switch (true) do {
	case (_unit isKindOf "B_soldier_LAT_F"): { 
		_unit addWeapon "launch_NLAW_F";
	};
	case (_unit isKindOf "B_soldier_GL_F"): {
		if (isClass(configfile >> "CfgPatches" >> "rhsusf_c_weapons")) then {
			_unit addWeapon "rhs_weap_M136";
		};
	};
	case (_unit isKindOf "B_soldier_LAT2_F"): {
		_unit addWeapon "launch_MRAWS_olive_F";
		_unit addSecondaryWeaponItem "MRAWS_HEAT_F";
		
		for "_i" from 1 to 2 do {_unit addItemToBackpack "MRAWS_HEAT_F"};
		for "_i" from 1 to 2 do {_unit addItemToBackpack "MRAWS_HE_F"};
	};
	default {
	};
};



