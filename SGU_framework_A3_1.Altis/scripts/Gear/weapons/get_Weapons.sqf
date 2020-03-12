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


Systemchat "Vapen säger du, visst. Varsegod.";
Systemchat "Ammunition, lösplug varsegod. Va? vill du ha skarp?";

//assign Primary weapon.
if (_srvr == "P") then {	
	[_unit] execVM "scripts\gear\weapons\assign_Weapons_P.sqf";
} else {
	[_unit] execVM "scripts\gear\weapons\assign_Weapons.sqf";
};
sleep 1;

//assign sidearm
[_unit] execVM "scripts\gear\weapons\assign_sidearm.sqf";
sleep 1;

//assign Frags & Smoke.
[_unit] execVM "scripts\gear\weapons\assign_Grenades.sqf";
sleep 1;

//assign launchers.
[_unit] execVM "scripts\gear\weapons\assign_Launcher.sqf";