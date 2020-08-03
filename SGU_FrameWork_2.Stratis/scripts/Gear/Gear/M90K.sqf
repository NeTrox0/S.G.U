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
_Helmet = "SAM_HelmetB_M90K";
_Helmet_JPilot = "H_PilotHelmetFighter_B";
_Helmet_HPilot = "H_PilotHelmetHeli_B";
_Helmet_Crew = ["rhsusf_cvc_alt_helmet","rhsusf_cvc_ess"];

//UNIFORM
_Uniform = "SAM_Crye_M90K_uniform";
_Uniform_JPilot = "U_B_PilotCoveralls";

//VEST
_Vest = ["SGU_Carrier_Rig_Tan", "SGU_Carrier_Rig_Lite_Tan", "SGU_Carrier_Rig_Name_Tan"];
_Vest_HPilot = "V_TacVest_blk";
_Vest_Crew = "V_TacVest_blk";

//BACKPACK
_Backpack = "SGU_Assault_Pack_Tan";
_Backpack_Sjv = "SGU_Kitbag_Medic_Tan";
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
		_unit addHeadgear _Helmet;
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
	default {
		_unit addVest selectRandom _Vest;
	};
};


//Backpack
switch (true) do {
	case ((isClass(configfile >> "CfgPatches" >> "tfar_core")) and ((_role == "GRPC") or (_role == "GRPC2") or (_role == "PLTC"))): {
		_unit addBackpack "tfw_ilbe_whip_coy";
	};
	case (_role == "SJV"); 
	case (_role == "CREW2"): {
		_unit addBackpack _Backpack_Sjv;
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