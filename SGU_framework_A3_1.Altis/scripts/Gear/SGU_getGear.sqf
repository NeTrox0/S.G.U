/*
*	Select the gear for unit, using some parameters for Cammo and ACE Medical
*	Requires: ACE and SAM 3
*	
*	Parameters:
*	Player,
*	_cammo values "W" or "D",
*	_medSys values "B" or "A"
*
*	By Trox
*/

_unit =  _this select 0;
_cammo = _this select 1;
_medSys = _this select 2;

_gear = false;

//systemchat format ["unit %1, cammo %2, medsys %3", _unit, _cammo, _medSys];


//Remove existing items;
Systemchat "Ny utrustning? Visst lämna in det du har.";
removeAllWeapons _unit;
removeAllItems _unit;
removeAllAssignedItems _unit;
removeUniform _unit;
removeVest _unit;
removeBackpack _unit;
removeHeadgear _unit;
removeGoggles _unit;

//assign the actual gear to the player. like uniform vest and backpack.
Systemchat "Varsegod en uniform. Som ny, nästan..";
_gear = [_unit,_cammo] call compile preprocessfile "scripts\gear\SGU_assignGear.sqf";
waitUntil {_gear};
sleep 1;

//assign the items that the gear should include
Systemchat "Då ska vi se.. Radio, karta, kompass..";
[_unit] execVM "scripts\gear\SGU_assignItems.sqf";
sleep 2;

//assign the weapons.
Systemchat "Vapen säger du, visst. Varsegod.";
Systemchat "Och Ammunition, lösplug varsegod. Va? vill du ha skarp?";
[_unit] execVM "scripts\gear\SGU_assignWeapons.sqf";
sleep 2;

//assign the medical items from ACE.
Systemchat "förband skall du ha med, hoppas du slipper använda det..";
[_unit,_medSys] execVM "scripts\gear\SGU_assignMedical.sqf";
sleep 1;

Systemchat "Sådärja, det bör vara allt. Lycka till!";