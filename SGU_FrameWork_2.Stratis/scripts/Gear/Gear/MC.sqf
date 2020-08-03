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
_Helmet = ["VSM_OPS_Multicam","VSM_OPS_2_Multicam"];
_Helmet_JPilot = "H_PilotHelmetFighter_B";
_Helmet_HPilot = "H_PilotHelmetHeli_B";
_Helmet_Crew = ["rhsusf_cvc_green_alt_helmet","rhsusf_cvc_green_ess"];

//UNIFORM
_Uniform = "VSM_Multicam_Crye_Camo";
_Uniform_JPilot = "U_B_PilotCoveralls";

//VEST
_Vest = "VSM_LBT6094_operator_Multicam";
_Vest_KSP = "VSM_LBT6094_MG_Multicam";
_Vest_HPilot = "V_TacVest_blk";
_Vest_Crew = "V_TacVest_blk";

//BACKPACK
_Backpack = "VSM_Multicam_Backpack_Compact";
_Backpack_sjv = "VSM_Multicam_Backpack_Kitbag";
_Backpack_UAV = "B_UAV_01_backpack_F";

//***************************************************************//

_unit = _this select 0;
_role = _this select 1;



//Helmet
switch (true) do {
	case (_role == "JPIL"): {
		_unit addHeadgear _Helmet_JPilot;
	};
	case (_role == "HPIL"): {
		_unit addHeadgear _Helmet_HPilot;
	};
	case (_role == "VC");
	case (_role == "CREW");
	case (_role == "CREW2");
	case (_role == "CREW3"): {
		_unit addHeadgear selectRandom _Helmet_Crew;
	};
	default {
		_unit addHeadgear selectRandom _Helmet;
	};
};


//Uniform
switch (true) do {
	case (_role == "JPIL"): {
		_unit forceAddUniform _Uniform_JPilot;
	};
	default {
		_unit forceAddUniform _Uniform;
	};
};


//Vest
switch (true) do {
	case (_role == "JPIL"): {};
	case (_role == "HPIL"): {
		_unit addVest _Vest_HPilot;
	};
	case (_role == "VC");
	case (_role == "CREW");
	case (_role == "CREW2");
	case (_role == "CREW3"): {
		_unit addVest _Vest_Crew;
	};
	case (_role == "KSP90");
	case (_role == "KSP58"): {
		_unit addVest _Vest_KSP;
	};
	default {
		_unit addVest _Vest;
	};
};


//Backpack
switch (true) do {
	case ((isClass(configfile >> "CfgPatches" >> "tfar_core")) and ((_role == "GRPC") or (_role == "GRPC2") or (_role == "PLTC"))): {
		_unit addBackpack "tfw_ilbe_whip_mc";
	};
	case (_role == "ING"); 
	case (_role == "GRG"); 
	case (_role == "SJV"); 
	case (_role == "CREW2"): {
		_unit addBackpack _Backpack_sjv;
	};
	case (_role == "UAV"): {
		_unit addBackpack _Backpack_UAV;
	};
	default {
		_unit addBackpack _Backpack;
	};
};

/*

if (_item = typeName "ARRAY") then {
	_unit addVest selectRandom _item;
} else {
	_unit addVest _item;
};

*/