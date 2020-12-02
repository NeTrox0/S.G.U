/*
*	Select the correct items for Cammo and Role
*	See the ReadME for accepted roles and cammos
*	Requires: SAM 3, SGU
*	
*	Parameters: _unit, _role
*
*	By Trox
*/

//HELMET
_Helmet = ["VSM_MulticamTropic_OPS","VSM_MulticamTropic_OPS_2"];
_Helmet_JPilot = "H_PilotHelmetFighter_B";
_Helmet_HPilot = "H_PilotHelmetHeli_B";
_Helmet_Crew = ["rhsusf_cvc_green_alt_helmet","rhsusf_cvc_green_ess"];

//UNIFORM
_Uniform = "VSM_MulticamTropic_Crye_Camo";
_Uniform_JPilot = "U_B_PilotCoveralls";

//VEST
_Vest = "VSM_LBT6094_operator_MulticamTropic";
_Vest_KSP = "VSM_LBT6094_MG_MulticamTropic";
_Vest_HPilot = "V_TacVest_blk";
_Vest_Crew = "V_TacVest_blk";

//BACKPACK
_Backpack = "VSM_MulticamTropic_Backpack_Compact";
_Backpack_Sjv = "VSM_MulticamTropic_Backpack_Kitbag";
_Backpack_UAV = "B_UAV_01_backpack_F";

//***************************************************************//

_unit = _this select 0;
_role = _this select 1;



//Helmet
switch (_role) do {
	case ("JPIL"): {
		_unit addHeadgear _Helmet_JPilot;
	};
	case ("HPIL"): {
		_unit addHeadgear _Helmet_HPilot;
	};
	case ("VC");
	case ("CREW");
	case ("CREW2");
	case ("CREW3"): {
		_unit addHeadgear selectRandom _Helmet_Crew;
	};
	default {
		_unit addHeadgear selectRandom _Helmet;
	};
};


//Uniform
switch (_role) do {
	case ("JPIL"): {
		_unit forceAddUniform _Uniform_JPilot;
	};
	default {
		_unit forceAddUniform _Uniform;
	};
};


//Vest
switch (_role) do {
	case ("JPIL"): {};
	case ("HPIL"): {
		_unit addVest _Vest_HPilot;
	};
	case ("VC");
	case ("CREW");
	case ("CREW2");
	case ("CREW3"): {
		_unit addVest _Vest_Crew;
	};
	case ("KSP90");
	case ("KSP58"): {
		_unit addVest _Vest_KSP;
	};
	default {
		_unit addVest _Vest;
	};
};


//Backpack
switch (true) do {
	case ((isClass(configfile >> "CfgPatches" >> "tfar_core")) and ((_role == "GRPC") or (_role == "GRPC2") or (_role == "PLTC"))): {
		_unit addBackpack "tfw_ilbe_whip_mct";
	};
	case (_role == "HPIL"): {};
	case (_role == "FARB");
	case (_role == "GRGA");
	case (_role == "SJV");
	case (_role == "CREW2"): {
		_unit addBackpack _Backpack_sjv;
	};
	case (_role == "UAV"): {
		_unit addBackpack _Backpack_UAV;
	};
	case (_role == "PRSK"): {
		_unit addBackpack "ace_gunbag";
	};	
	default {
		_unit addBackpack _Backpack;
	};
};