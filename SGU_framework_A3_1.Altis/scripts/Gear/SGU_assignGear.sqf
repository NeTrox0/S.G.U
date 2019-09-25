/*
*	Select the gear for unit, using some parameters for Cammo
*	Requires: SAM 3 and SGU
*	
*	Parameters:
*	Player,
*	_cammo values "W" or "D",
*
*	By Trox
*/

//Helmets
H_M90  = "SAM_HelmetB_M90";
H_M90K = "SAM_HelmetB_M90K";
H_M90B = "SAM_HelmetB_M90b";
H_P = "H_PilotHelmetHeli_B"; //Heli Pilot
H_F = "H_PilotHelmetFighter_B"; //JET Pilot

//Uniforms
U_M90  = "SAM_Crye_M90_uniform";
U_M90K = "SAM_Crye_M90K_uniform";
U_F = "U_B_PilotCoveralls"; //JET Pilot

//Vests
V_CR  = "SGU_Carrier_Rig";
V_CRL = "SGU_Carrier_Rig_Lite";
V_CRN = "SGU_Carrier_Rig_Name";
V_P = "V_TacVest_blk"; //Heli pilot

//Backpacks
B_A  = "SGU_Assault_pack";
B_K  = "SGU_Kitbag";
B_KM = "SGU_Kitbag_Medic";


///-----------------------------------------------------------------------------
// DO NOT EDIT BELOW THIS LINE !!!!
///-----------------------------------------------------------------------------

//select the sent values.
_unit =  _this select 0;
_cammo = _this select 1;


//Helmet
switch (true) do {
	case (_unit isKindOf "B_Pilot_F"): {
		_unit addHeadgear H_F;
	};
	case (_unit isKindOf "B_Helipilot_F"): {
		_unit addHeadgear H_P;
	};
	default {
		switch (_cammo) do {
			case "W": {
				_unit addHeadgear H_M90;
			};
			case "D": {
				_unit addHeadgear H_M90K;
			};
			default {
				_unit addHeadgear H_M90;
			};
		};
		//Helmet för TL
		if ((_unit isKindOf "B_soldier_TL_F") or (_unit isKindOf "B_soldier_SL_F")) then {
			removeHeadgear _unit;
			_unit addHeadgear H_M90B;
		};
	};
};


//uniform
switch (true) do {
	case (_unit isKindOf "B_Pilot_F"): {
		_unit forceAddUniform U_F;
	};
	default {
		switch (_cammo) do {
			case "W": {
				_unit forceAddUniform U_M90;
			};
			case "D": {
				_unit forceAddUniform U_M90K;
			};
			default {
				_unit forceAddUniform U_M90;
			};
		};
	};
};


//Vest
switch (true) do {
	case (_unit isKindOf "B_Pilot_F"): {
		//No vest for JET Pilot
	};
	case (_unit isKindOf "B_Helipilot_F"): {
		_unit addVest V_P;
	};
	default {
		_unit addVest selectRandom [V_CR, V_CRL, V_CRN];
	};
};


//backpack
switch (true) do {
	case (_unit isKindOf "B_medic_F"): {
		_unit addBackpack B_KM;
	};
	case (_unit isKindOf "B_Pilot_F"): {
		// No Backpack for JET Pilot
	};
	default {
		_unit addBackpack B_A;
	};
};


//set gear to true to allow continuation from caller.
_gear = true;
_gear;
