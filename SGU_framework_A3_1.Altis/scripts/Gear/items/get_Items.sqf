/*
*	Select Items, 
*	Requires: ACE, ACEX, ACRE2 or TFAR
*	
*	Parameters:
*	Player
*
*	By Trox
*/

_unit = _this select 0;


//assign the Radio.
[_unit] execVM "scripts\gear\items\assign_Radio.sqf";

//assign the base arma items.
[_unit] execVM "scripts\gear\items\assign_Items.sqf";

//assign the ACE and ACEX items.
[_unit] execVM "scripts\gear\items\assign_Ace.sqf";

//assign medical items.
Systemchat "förband skall du ha med, hoppas du slipper använda dem..";
[_unit] execVM "scripts\gear\items\assign_Medical.sqf";