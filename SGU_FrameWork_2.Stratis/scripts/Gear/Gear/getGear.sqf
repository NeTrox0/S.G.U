/*
*	Select the gear for unit, using some parameters for Cammo
*	Requires: SAM 3, SGU and ILLBE rewrite if TFAR is loaded.
*	
*	Parameters: 
	_unit
*	_CammoInt fetched from Params. 0:M90, 1:M90K, 2:MC, 3:MCT.
	_role
*
*	By Trox
*/



_unit =  _this select 0;
_cammoInt = _this select 1;
_role = _this select 2;

_gear = false;

//Remove old Gear.
removeHeadgear _unit;
removeUniform _unit;
removeVest _unit;
removeBackpack _unit;


//Get the items in the correct cammo
switch (true) do {
	case (_cammoInt == 1): { //1:M90K
		[_unit, _role] call compile preprocessfile "scripts\gear\gear\M90K.sqf";
	};
	case (_cammoInt == 2): { //2:MC
		[_unit, _role] call compile preprocessfile "scripts\gear\gear\MC.sqf";
	};
	case (_cammoInt == 3): { //3:MCT
		[_unit, _role] call compile preprocessfile "scripts\gear\gear\MCT.sqf";
	};
	default { //0:M90
		[_unit, _role] call compile preprocessfile "scripts\gear\gear\M90.sqf";
	};
};


//set gear to true to allow continuation from caller.
_gear = true;
_gear;