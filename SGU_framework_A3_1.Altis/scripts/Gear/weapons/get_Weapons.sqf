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
if (_srvr == "P") then {	
	[_unit] execVM "scripts\gear\weapons\assign_Weapons_P.sqf";
} else {
	[_unit] execVM "scripts\gear\weapons\assign_Weapons.sqf";
};

//assign sidearm
[_unit] execVM "scripts\gear\weapons\assign_sidearm.sqf";

//assign Frags & Smoke.
[_unit] execVM "scripts\gear\weapons\assign_Grenades.sqf";

//assign launchers.
[_unit] execVM "scripts\gear\weapons\assign_Launcher.sqf";