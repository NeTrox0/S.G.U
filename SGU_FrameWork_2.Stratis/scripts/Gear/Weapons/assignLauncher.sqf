/*
*	Select the weapons for unit.
*	Requires: RHS
*	
*	Parameters:
*	Player
*	_role (See ReadMe)
*
*	By Trox
*/

_unit = _this select 0;
_role = _this select 1;


//Add special weapon and attachments
switch (true) do {
	case (_role == "SOLD"): { 
		_unit addWeapon "launch_NLAW_F";
	};
	case (_role == "GRPC2");
	case (_role == "GRT"): {
		if (isClass(configfile >> "CfgPatches" >> "rhsusf_c_weapons")) then {
			_unit addWeapon "rhs_weap_M136";
		};
	};
	case (_role == "GRG"): {
		_unit addWeapon "launch_MRAWS_olive_F";
		_unit addSecondaryWeaponItem "MRAWS_HEAT_F";
		
		for "_i" from 1 to 2 do {_unit addItemToBackpack "MRAWS_HEAT_F"};
		for "_i" from 1 to 2 do {_unit addItemToBackpack "MRAWS_HE_F"};
	};
	default {
	};
};

