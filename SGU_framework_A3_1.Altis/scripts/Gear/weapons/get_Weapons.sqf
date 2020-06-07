/*
*	Select the weapons for unit.
*	Requires: ACE, SFP and RHS
*	
*	Parameters:
*	Player
*
*	By Trox
*/

_unit = _this select 0;
_srvr = _this select 1;

//assign Primary weapon.
if ((isClass(configfile >> "CfgPatches" >> "sfp_ak5")) and (isClass(configfile >> "CfgPatches" >> "sfp_ak4"))) then {
	[_unit] execVM "scripts\gear\weapons\assign_Weapons.sqf";
} else {
	[_unit] execVM "scripts\gear\weapons\assign_Weapons_P.sqf";
};

//assign sidearm
[_unit] execVM "scripts\gear\weapons\assign_sidearm.sqf";

//assign Frags & Smoke.
[_unit] execVM "scripts\gear\weapons\assign_Grenades.sqf";

//assign launchers.
[_unit] execVM "scripts\gear\weapons\assign_Launcher.sqf";




