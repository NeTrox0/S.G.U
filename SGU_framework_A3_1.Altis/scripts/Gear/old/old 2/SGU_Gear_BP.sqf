/*
*	Select medical backpack, using parameters for ACE Medical
*	Requires: ACE
*	
*	Parameters:
*	Player,
*	_medSys values "B" or "A"
*
*	By Trox
*/

_unit =  _this select 0;
_medSys = _this select 1;





//Remove existing Backpack;
removeBackpack _unit;

//Add a new backpack;
_unit addBackpack "SGU_Kitbag_Medic";

//Add uniform and helmet depending on cammo choise;
switch (_medSys) do {
	case "A": {
		for "_i" from 1 to 10 do {_unit addItemToBackpack "ACE_epinephrine";};
		for "_i" from 1 to 20 do {_unit addItemToBackpack "ACE_fieldDressing";};
		for "_i" from 1 to 10 do {_unit addItemToBackpack "ACE_morphine";};
		for "_i" from 1 to 20 do {_unit addItemToBackpack "ACE_elasticBandage";};
		for "_i" from 1 to 20 do {_unit addItemToBackpack "ACE_quikclot";};
		for "_i" from 1 to 2 do {_unit addItemToBackpack "ACE_bodyBag";};
		for "_i" from 1 to 20 do {_unit addItemToBackpack "ACE_packingBandage";};
		_unit addItemToBackpack "ACE_surgicalKit";
		_unit addItemToBackpack "ACE_personalAidKit";
		for "_i" from 1 to 6 do {_unit addItemToBackpack "ACE_tourniquet";};
		for "_i" from 1 to 6 do {_unit addItemToBackpack "ACE_adenosine";};
		for "_i" from 1 to 6 do {_unit addItemToBackpack "ACE_salineIV_500";};
		for "_i" from 1 to 6 do {_unit addItemToBackpack "ACE_salineIV_250";};
		for "_i" from 1 to 2 do {_unit addItemToBackpack "ACE_salineIV";};
	};
	case "B": {
		systemchat "No Basic medical BP available";
	};
	default {
		for "_i" from 1 to 10 do {_unit addItemToBackpack "ACE_epinephrine";};
		for "_i" from 1 to 20 do {_unit addItemToBackpack "ACE_fieldDressing";};
		for "_i" from 1 to 10 do {_unit addItemToBackpack "ACE_morphine";};
		for "_i" from 1 to 20 do {_unit addItemToBackpack "ACE_elasticBandage";};
		for "_i" from 1 to 20 do {_unit addItemToBackpack "ACE_quikclot";};
		for "_i" from 1 to 2 do {_unit addItemToBackpack "ACE_bodyBag";};
		for "_i" from 1 to 20 do {_unit addItemToBackpack "ACE_packingBandage";};
		_unit addItemToBackpack "ACE_surgicalKit";
		_unit addItemToBackpack "ACE_personalAidKit";
		for "_i" from 1 to 6 do {_unit addItemToBackpack "ACE_tourniquet";};
		for "_i" from 1 to 6 do {_unit addItemToBackpack "ACE_adenosine";};
		for "_i" from 1 to 6 do {_unit addItemToBackpack "ACE_salineIV_500";};
		for "_i" from 1 to 6 do {_unit addItemToBackpack "ACE_salineIV_250";};
		for "_i" from 1 to 2 do {_unit addItemToBackpack "ACE_salineIV";};
		
		systemchat "No ACE Medical set Advanced('A') assumed";
	};
};






