/*
*	Select the gear for unit, using some parameters for Cammo
*	Requires: SAM 3, SGU and ILLBE rewrite if TFAR is loaded.
*	
*	Parameters:
*	Player,
*	_cammo values "W" or " "
*
*	By Trox
*/


//get the sent values.
_unit =  _this select 0;
_cammo = _this select 1;


//Helmet
switch (true) do {
	case (_unit isKindOf "B_Pilot_F"): {
		_unit addHeadgear "H_PilotHelmetFighter_B";
	};
	case (_unit isKindOf "B_Helipilot_F"): {
		_unit addHeadgear "H_PilotHelmetHeli_B";
	};
	default {
		if (_cammo == "W") then {
			_unit addHeadgear "SAM_HelmetB_M90";
	    } else {
			_unit addHeadgear "SAM_HelmetB_M90K";
		};
	};
};


//uniform
switch (true) do {
	case (_unit isKindOf "B_Pilot_F"): {
		_unit forceAddUniform "U_B_PilotCoveralls";
	};
	default {
		if (_cammo == "W") then {
			_unit forceAddUniform "SAM_Crye_M90_uniform";
		} else {
			_unit forceAddUniform "SAM_Crye_M90K_uniform";
		};
	};
};


//Vest
switch (true) do {
	case (_unit isKindOf "B_Pilot_F"): {
		//No vest for JET Pilot
	};
	case (_unit isKindOf "B_Helipilot_F"): {
		_unit addVest "V_TacVest_blk";
	};
	default {
		if (_cammo == "W") then {
			_unit addVest selectRandom ["SGU_Carrier_Rig", "SGU_Carrier_Rig_Lite", "SGU_Carrier_Rig_Name"];
		} else {
			_unit addVest selectRandom ["SGU_Carrier_Rig_Tan", "SGU_Carrier_Rig_Lite_Tan", "SGU_Carrier_Rig_Name_Tan"];
		};
	};
};


//backpack
switch (true) do {
	//Add TFAR radio bags to TL/SL if TFAR is loaded
	case ((isClass(configfile >> "CfgPatches" >> "tfar_core")) and ((_unit isKindOf "B_soldier_TL_F") or (_unit isKindOf "B_Soldier_SL_F"))): {
		if (_cammo == "W") then {
			_unit addBackpack "tfw_ilbe_whip_gr";
		} else {
			_unit addBackpack "tfw_ilbe_whip_coy";
		};
	};
	//Add medic backpack
	case (_unit isKindOf "B_medic_F"): {
		if (_cammo == "W") then {
			_unit addBackpack "SGU_Kitbag_Medic";
		} else {
			_unit addBackpack "SGU_Kitbag_Medic_Tan";
		};
	};
	case (_unit isKindOf "B_Soldier_UAV_F"): {
		_unit addBackpack "B_UAV_01_backpack_F";
	};
	case (_unit isKindOf "B_Pilot_F"): {
		// No Backpack for JET Pilot
	};
	default {
		if (_cammo == "W") then {
			_unit addBackpack "SGU_Assault_Pack";
		} else {
			_unit addBackpack "SGU_Assault_Pack_Tan";
		};
	};
};

//set gear to true to allow continuation from caller.
_gear = true;
_gear;