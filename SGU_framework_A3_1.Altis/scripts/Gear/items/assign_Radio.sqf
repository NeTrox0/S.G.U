/*
*	Select Items, 
*	Requires: ACRE2 or TFAR
*	
*	Parameters:
*	Player,
*
*	By Trox
*/

_unit = _this select 0;


switch (true) do {
	//Check if ACRE2 is loaded.
	case (isClass(configfile >> "CfgPatches" >> "ACRE_main")): {
		//Add Radio(ACRE) for all units;
		switch (true) do {
			case (_unit isKindOf "B_Pilot_F"): { // JET Pilot
				_unit addItemToUniform "ACRE_PRC152";
			};
			case (_unit isKindOf "B_Helipilot_F"): { // Heli Pilot
				_unit addItemToVest "ACRE_PRC152";
			};
			case (_unit isKindOf "B_soldier_TL_F"): {
				_unit addItemToUniform "ACRE_PRC343";
				_unit addItemToVest "ACRE_PRC152";
			};
			case (_unit isKindOf "B_Soldier_SL_F"): {
				_unit addItemToUniform "ACRE_PRC343";
				_unit addItemToVest "ACRE_PRC152";
				_unit addItemToBackpack "ACRE_PRC117F";
			};
			default {
				_unit addItemToUniform "ACRE_PRC343";	
			};
		};
	};
/*
	//Check if TFAR is loaded. (Will have an impact on TL with BACKPACKS. maby this should run early?)
	case (isClass(configfile >> "CfgPatches" >> "TFAR")): {
	//Add Radio (TFAR) fall all units. 	
	};
*/
	default {
		//Add the default arma radio
		_unit linkItem "ItemRadio";
	};
};
