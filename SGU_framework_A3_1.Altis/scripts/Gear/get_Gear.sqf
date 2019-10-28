/*
*	Select the gear for unit, using some parameters for Cammo and ACE Medical
*	Requires: ACE, ACEX, ACRE2 or TFAR, RHS, SAM3, SFP
*	
*	Parameters:
*	Player,
*	cammo values "W" or "D",
*	medSys values "B" or "A"
*
*	By Trox
*/

_unit =  _this select 0;
_cammo = _this select 1;
_medSys = _this select 2;

_gear = false;


Systemchat "Ny utrustning? Visst lämna in det du har.";

//Remove existing items;
removeAllWeapons _unit;
removeAllItems _unit;
removeAllAssignedItems _unit;
removeUniform _unit;
removeVest _unit;
removeBackpack _unit;
removeHeadgear _unit;
removeGoggles _unit;


Systemchat "Varsegod en uniform. Som ny, nästan..";

//assign the actual gear to the player. like uniform vest and backpack.
_gear = [_unit,_cammo] call compile preprocessfile "scripts\gear\assign_Gear.sqf";
waitUntil {_gear};
sleep 1;

//assign the items that the gear should include
[_unit,_medSys] execVM "scripts\gear\items\get_Items.sqf";
sleep 2;

//assign the weapons.
[_unit] execVM "scripts\gear\weapons\get_Weapons.sqf";
sleep 2;

//assign insignia 
[_unit,"SGU_Insignia"] call BIS_fnc_setUnitInsignia;

Systemchat "Sådärja, det bör vara allt. Lycka till!";