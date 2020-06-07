/*
*	Select the gear for unit, using some parameters for Cammo
*	Requires: MLO ALL IN ONE, ILLBE rewrite if TFAR is loaded.
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
			_unit addHeadgear selectRandom ["VSM_MulticamTropic_OPS","VSM_MulticamTropic_OPS_2"];
		} else {
			_unit addHeadgear selectRandom ["VSM_OPS_Multicam","VSM_OPS_2_Multicam"];
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
			_unit forceAddUniform "VSM_MulticamTropic_Crye_Camo";
		} else {
			_unit forceAddUniform "VSM_Multicam_Crye_Camo";
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
	case (_unit isKindOf "B_soldier_AR_F"): {
		if (_cammo == "W") then {
			_unit addVest "VSM_LBT6094_MG_MulticamTropic";
		} else {
			_unit addVest "VSM_LBT6094_MG_Multicam";
		};
	};
	default {
		if (_cammo == "W") then {
			_unit addVest "VSM_LBT6094_operator_MulticamTropic";
		} else {
			_unit addVest "VSM_LBT6094_operator_Multicam";
		};
	};
};


//backpack
switch (true) do {
	//Add TFAR radio bags to TL/SL if TFAR is loaded
	case ((isClass(configfile >> "CfgPatches" >> "tfar_core")) and ((_unit isKindOf "B_soldier_TL_F") or (_unit isKindOf "B_Soldier_SL_F"))): {	
		if (_cammo == "W") then {
			_unit addBackpack "tfw_ilbe_whip_mct";
		} else {
			_unit addBackpack "tfw_ilbe_whip_mc";
		};
	};
	//Add medic backpack
	case (_unit isKindOf "B_medic_F");
	case (_unit isKindOf "B_engineer_F");
	case (_unit isKindOf "B_soldier_LAT2_F"): {
		if (_cammo == "W") then {
			_unit addBackpack "VSM_MulticamTropic_Backpack_Kitbag";
		} else {
			_unit addBackpack "VSM_Multicam_Backpack_Kitbag";
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
			_unit addBackpack "VSM_MulticamTropic_Backpack_Compact";
		} else {
			_unit addBackpack "VSM_Multicam_Backpack_Compact";
		};
	};
};

//set gear to true to allow continuation from caller.
_gear = true;
_gear;