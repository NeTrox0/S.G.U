/*
*	Select Items, 
*	Requires: ACE, ACEX, ACRE2 or TFAR
*	
*	Parameters:
*	Player,
*	medSys values "B" or "A"
*
*	By Trox
*/

_unit = _this select 0;
_medSys = _this select 1;


Systemchat "karta, kompass.. Radio.";

//assign the base arma items.
[_unit] execVM "scripts\gear\items\assign_Items.sqf";
sleep 1;

//assign the Radio.
[_unit] execVM "scripts\gear\items\assign_Radio.sqf";
sleep 1;

//assign the ACE and ACEX items.
[_unit] execVM "scripts\gear\items\assign_Ace.sqf";
sleep 1;

//assign medical items.
Systemchat "förband skall du ha med, hoppas du slipper använda det..";
[_unit,_medSys] execVM "scripts\gear\items\assign_Medical.sqf";