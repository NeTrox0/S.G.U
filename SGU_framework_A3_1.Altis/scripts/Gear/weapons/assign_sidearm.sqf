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


//Add secondary weapons and attachments
_unit addWeapon "rhsusf_weap_glock17g4";
_unit addHandgunItem "acc_flashlight_pistol";
_unit addHandgunItem "rhsusf_mag_17Rnd_9x19_JHP";

if (_unit isKindOf "B_Pilot_F") then {
	_unit addItemToUniform "rhsusf_mag_17Rnd_9x19_JHP";
} else {
	_unit addItemToVest "rhsusf_mag_17Rnd_9x19_JHP";
};


/*
In those cases RHS isnt loaded ? :i
this addWeapon "hgun_Pistol_heavy_01_F";
this addHandgunItem "acc_flashlight_pistol";
this addHandgunItem "11Rnd_45ACP_Mag";
*/