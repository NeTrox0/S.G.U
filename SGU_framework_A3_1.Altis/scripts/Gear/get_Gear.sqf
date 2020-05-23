/*
*	Select the gear for unit, using some parameters for Cammo and ACE Medical
*	Requires: ACE, ACEX, ACRE2 or TFAR, RHS, SAM3, SFP
*	
*	Parameters:
*	Player
*	cammo values "W" or " "
*	srvr  values "P" or " "
*
*	By Trox
*/

_unit =  _this select 0;
_cammo = _this select 1;
_srvr = _this select 2;

_gear = false;


Systemchat "Ny utrustning! Visst, lämna in det du har.";

//Remove existing items;
removeAllWeapons _unit;
removeAllItems _unit;
removeAllAssignedItems _unit;
removeUniform _unit;
removeVest _unit;
removeBackpack _unit;
removeHeadgear _unit;
removeGoggles _unit;


//assign the actual gear to the player. like uniform vest and backpack.
if (_srvr == "P") then {	
	_gear = [_unit,_cammo] call compile preprocessfile "scripts\gear\assign_Gear_P.sqf";
} else {
	_gear = [_unit,_cammo] call compile preprocessfile "scripts\gear\assign_Gear.sqf";
};
Systemchat "Uniform, Väst och Ryggsäck.";
waitUntil {_gear};


//assign the items that the gear should include
[_unit] execVM "scripts\gear\items\get_Items.sqf";
Systemchat "karta, kompass, Radio..";
sleep 2;

//assign the weapons.
[_unit,_srvr] execVM "scripts\gear\weapons\get_Weapons.sqf";
Systemchat "Vapen, Ammunition, lösplug varsegod. Va? skarp?";
sleep 2;

//assign insignia 
[_unit,"SGU_Insignia"] call BIS_fnc_setUnitInsignia;

Systemchat "Sådärja, det bör vara allt. Lycka till!";
