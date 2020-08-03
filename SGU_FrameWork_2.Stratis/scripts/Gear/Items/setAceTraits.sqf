/*
*	Set the "traits" of the unit. Medic, Engineer and EOD.
*	Requires: ACE(Not really its just a variable on the unit)
*	
*	Parameters:
*	Player
*
*	By Trox
*/

_unit = _this select 0;
_role = _this select 1;

//Set the unit to have no traits.
_unit setVariable ["Ace_medical_medicClass", 0];
_unit setVariable ["ACE_isEOD", false];
_unit setVariable ["ACE_isEngineer", 0];

switch (true) do {
	case (_role == "SJV");
	case (_role == "SJV2");
	case (_role == "CREW2"): {
		//Set the unit as medic
		_unit setVariable ["Ace_medical_medicClass", 1];
	};
	case (_role == "ING");
	case (_role == "CREW3"): {
		//Set the unit as an engineer and EOD.
		_unit setVariable ["ACE_isEOD", true];
		_unit setVariable ["ACE_isEngineer", 1];
	};
	default {};
};





