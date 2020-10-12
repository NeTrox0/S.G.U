/*
*	Select the gear for unit, using some parameters for Cammo
*	Requires: ACE, ACEX, RHS, SAM3, SFP, ACRE2 or TFAR
*	
*	Parameters: 
*	_unit, 
*	_cammo, from caller or fetched from Params. 0:M90, 1:M90K, 2:MC, 3:MCT.
*	_role(Optional) Script will fetch role unless it is given. See ReadME
*
*	By Trox
*/

_gear = false;


_unit =  _this select 0;
_role = param [1, "0"];
_cammo = param [2, 9];
//systemchat format ["LOG.Cammo: %1", _cammo];
//systemchat format ["LOD.Roll: %1", _role];


if (_cammo == 9) then {
	_cammo = ["Gear_Cammo", 0] call BIS_fnc_getParamValue;
//	systemchat format ["LOG.2.Cammo: %1", _cammo];
};

//if no role is set try to get a role from the unit variable
if (_role == "0") then {
	//Get the set role for the unit. if no role variable is set default to role SOLD
	_role = [_unit getVariable "Role"] param [0, "SOLD"];
//	systemchat format ["LOG.2.Roll: %1", _role];
};

//Give unit new uniform vest and backpack.
_gear = [_unit,_cammo,_role] call compile preprocessfile "scripts\gear\gear\getGear.sqf";
waitUntil {_gear};

//assign the items that the gear should include
[_unit, _role] execVM "scripts\gear\items\getItems.sqf";

//assign the weapons.
[_unit,_role] execVM "scripts\gear\weapons\getWeapons.sqf";


//assign insignia 
[_unit,"SGU_Insignia"] call BIS_fnc_setUnitInsignia;

Systemchat "Utrustad å klar. Lycka till!";
