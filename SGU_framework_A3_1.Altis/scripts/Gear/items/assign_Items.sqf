/*
*	Select Items, 
*	Requires: N / A
*	
*	Parameters:
*	Player,
*
*	By Trox
*/

_unit = _this select 0;


//Link some items to correct slots.
_unit linkItem "ItemMap";
_unit linkItem "ItemCompass";
_unit linkItem "ItemWatch";
_unit linkItem "ItemGPS";


//Add Binos
if ((_unit isKindOf "B_soldier_TL_F") or (_unit isKindOf "B_Soldier_SL_F")) then {
	_unit addMagazine "Laserbatteries";
	_unit addWeapon "Laserdesignator_03";
} else {
	_unit addWeapon "Binocular"; //Because Binos can hurt you.. :)
};


//Engineer items like EOD and explosives
if (_unit isKindOf "B_engineer_F") then {
//	_unit addItemToBackpack "MineDetector";
	_unit addItemToBackpack "ToolKit";

	for "_i" from 1 to 2 do {_unit addItemToBackpack "DemoCharge_Remote_Mag";};
};