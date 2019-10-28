/*
*	Select medical items for the unit. 
*	Requires: ACE
*	
*	Parameters:
*	Player,
*	medSys values "B" or "A"
*
*	By Trox
*/

_unit = _this select 0;
_medSys = _this select 1;


//IF ACE medical is loaded add ACE items.
if (isClass(configfile >> "CfgPatches" >> "ace_medical")) then {
	if (_medSys == "B") then {
		//Basic medical
		for "_i" from 1 to 12 do {_unit addItemToUniform "ACE_fieldDressing";};
		for "_i" from 1 to 6 do {_unit addItemToUniform "ACE_morphine";};
		_unit addItemToUniform "ACE_bloodIV";
			
		if (_unit isKindOf "B_medic_F") then {
			for "_i" from 1 to 40 do {_unit addItemToBackpack "ACE_fieldDressing";};
			for "_i" from 1 to 12 do {_unit addItemToBackpack "ACE_epinephrine";};	
			for "_i" from 1 to 20 do {_unit addItemToBackpack "ACE_morphine";};
			for "_i" from 1 to 10 do {_unit addItemToUniform "ACE_bloodIV";};
		};
	} else {
		//Advanced medical
		for "_i" from 1 to 8 do {_unit addItemToUniform "ACE_elasticBandage";};
		for "_i" from 1 to 4 do {_unit addItemToUniform "ACE_tourniquet";};
		_unit addItemToUniform "ACE_epinephrine";
		_unit addItemToUniform "ACE_morphine";
		_unit addItemToUniform "ACE_salineIV_500";
		
		if (_unit isKindOf "B_medic_F") then {
			for "_i" from 1 to 20 do {_unit addItemToBackpack "ACE_fieldDressing";};
			for "_i" from 1 to 25 do {_unit addItemToBackpack "ACE_elasticBandage";};
			for "_i" from 1 to 20 do {_unit addItemToBackpack "ACE_packingBandage";};
			for "_i" from 1 to 10 do {_unit addItemToBackpack "ACE_quikclot";};
			for "_i" from 1 to 6 do {_unit addItemToBackpack "ACE_tourniquet";};
			for "_i" from 1 to 10 do {_unit addItemToBackpack "ACE_morphine";};
			for "_i" from 1 to 10 do {_unit addItemToBackpack "ACE_epinephrine";};
			for "_i" from 1 to 2 do {_unit addItemToBackpack "ACE_bodyBag";};
			for "_i" from 1 to 6 do {_unit addItemToBackpack "ACE_adenosine";};
			for "_i" from 1 to 6 do {_unit addItemToBackpack "ACE_salineIV_500";};
			for "_i" from 1 to 6 do {_unit addItemToBackpack "ACE_salineIV_250";};
			for "_i" from 1 to 2 do {_unit addItemToBackpack "ACE_salineIV";};
			_unit addItemToBackpack "ACE_surgicalKit";
			_unit addItemToBackpack "ACE_personalAidKit";
		};	
	};
} else {
	//basic ARMA 3 medical.
	for "_i" from 1 to 2 do {_unit addItemToUniform "FirstAidKit";};
	
	if (_unit isKindOf "B_medic_F") then {
		for "_i" from 1 to 10 do {_unit addItemToBackpack "FirstAidKit";};
		_unit addItemToBackpack "Medikit";
	};
};