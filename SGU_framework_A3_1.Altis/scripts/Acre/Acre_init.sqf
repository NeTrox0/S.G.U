//INIT ACRE 2

//Kolla om ACRE2 är laddat.. ISF exekvera koden för språk.
if(isClass(configfile >> "CfgPatches" >> "ACRE_main"))then{
/*
	Acre 2 setup script way.
	Here is the code we use to setup bable:
*/

	//Basic Setup of ACRE 2. 
//	[true, true] call acre_api_fnc_setupMission;
	//The first option is used to indicate if each side should have their own unique language 
	//The second is is used to indicate if the radio channels for each team should be on different frequencies. 
	// So that players on other teams can not hear your communications.


	//Define and add available languages.
	f_available_languages = [
		["sv", "Svenska"],
//		["en", "Engelska"],
		["ru", "Ryska"],
		["gr", "Grekiska"]
	];
	{
		_x call acre_api_fnc_babelAddLanguageType;
	} forEach f_available_languages;

	[] spawn {
		if (!hasInterface) exitWith {};
		if (player != player) then {waitUntil {player == player};};
		if (!alive player) then {waitUntil {alive player};};

		_languagesPlayerSpeaks = player getVariable ["f_languages", []];

		switch (playerside) do {
		case west: {
				if (_languagesPlayerSpeaks isEqualTo []) then {_languagesPlayerSpeaks = ["sv"];};
			};
		case east: {
				if (_languagesPlayerSpeaks isEqualTo []) then {_languagesPlayerSpeaks = ["ru"];};
			};
		case independent: {
				if (_languagesPlayerSpeaks isEqualTo []) then {_languagesPlayerSpeaks = ["gr"];};
			};
		case civilian: {
				if (_languagesPlayerSpeaks isEqualTo []) then {_languagesPlayerSpeaks = ["gr"];};
			};
		};
		_languagesPlayerSpeaks call acre_api_fnc_babelSetSpokenLanguages;
	};

//West speaks English, east speaks Russian, indp and civilians speak Arabic. 
//If you want to make a translator, put this in the unit's init: this setVariable ["f_languages",["sv", "ar"]];
};
