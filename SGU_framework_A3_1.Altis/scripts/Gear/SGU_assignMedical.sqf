/*
*	Select medical items for the unit. 
*	Requires: ACE
*	
*	Parameters:
*	Player,
*	_medSys values "B" or "A"
*
*	By Trox
*/

_unit = _this select 0;
_medSys = _this select 1;


//Add medical items.
switch (_medSys) do {
	case "B": {
		_unit addItemToUniform "ACE_bloodIV";
		for "_i" from 1 to 12 do {_unit addItemToUniform "ACE_fieldDressing";};
		for "_i" from 1 to 6 do {_unit addItemToUniform "ACE_morphine";};
	};
	case "A": {
		_unit addItemToUniform "ACE_salineIV_500";
		for "_i" from 1 to 2 do {_unit addItemToUniform "ACE_tourniquet";};
		_unit addItemToUniform "ACE_epinephrine";
		_unit addItemToUniform "ACE_morphine";
		for "_i" from 1 to 8 do {_unit addItemToUniform "ACE_elasticBandage";};
	};
	default {
		_unit addItemToUniform "ACE_salineIV_500";
		for "_i" from 1 to 2 do {_unit addItemToUniform "ACE_tourniquet";};
		_unit addItemToUniform "ACE_epinephrine";
		_unit addItemToUniform "ACE_morphine";
		for "_i" from 1 to 8 do {_unit addItemToUniform "ACE_elasticBandage";};
	};
};


//Add medical itesm to the backpack for the medic unit only
if (_unit isKindOf "B_medic_F") then {
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
		};
	};
};