/*
*	Select the weapons for unit.
*	Requires: ACE, SFP and RHS
*	
*	Parameters:
*	Player
*	_role (See ReadMe)
*
*	By Trox
*/

_unit = _this select 0;
_role = _this select 1;

removeAllWeapons _unit;

//assign Primary weapon.
[_unit, _role] execVM "scripts\gear\weapons\assignWeapons.sqf";

//assign sidearm
[_unit, _role] execVM "scripts\gear\weapons\assignSidearm.sqf";

//assign Frags & Smoke.
[_unit, _role] execVM "scripts\gear\weapons\assignGrenades.sqf";

//assign launchers.
[_unit, _role] execVM "scripts\gear\weapons\assignLauncher.sqf";
