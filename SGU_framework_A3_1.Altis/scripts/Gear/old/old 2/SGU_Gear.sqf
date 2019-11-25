/*
*	Select the gear for unit, using some parameters for Cammo and ACE Medical
*	Requires: ACE and SAM 3
*	
*	Parameters:
*	Player,
*	_cammo values "W" or "D",
*	_medSys values "B" or "A"
*
*	By Trox
*/
_unit =  _this select 0;
_cammo = _this select 1;
_medSys = _this select 2;

//_cammo = _this param [0, "W", [""]];
//_medSys = _this param [1, "A", [""]];


//random number for weapon selection Grip or NoGrip;
_ranNo = floor random 4;

//systemchat format ["Cammo %1, medSys %2, ranNo %3",_cammo, _medSys, _ranNo];


//Remove existing items;
removeAllWeapons _unit;
removeAllItems _unit;
removeAllAssignedItems _unit;
removeUniform _unit;
removeVest _unit;
removeBackpack _unit;
removeHeadgear _unit;
removeGoggles _unit;



//Add uniform and helmet depending on cammo choise;
switch (_cammo) do {
	case "W": {
		_unit addHeadgear "SAM_HelmetB_M90";
		_unit forceAddUniform "SAM_Crye_M90_uniform";
	};
	case "D": {
		_unit addHeadgear "SAM_HelmetB_M90K";
		_unit forceAddUniform "SAM_Crye_M90K_uniform";
	};
	default {
		_unit addHeadgear "SAM_HelmetB_M90";
		_unit forceAddUniform "SAM_Crye_M90_uniform";
		systemchat "No Cammo pattern given Green('W') Assumed";
	};
};


//Add Radio (ACRE) and Misc ACE items;
_unit addItemToUniform "ACRE_PRC343";
_unit addItemToUniform "ACE_EarPlugs";
_unit addItemToUniform "ACE_CableTie";
_unit addItemToUniform "ACE_Flashlight_XL50";
_unit addItemToUniform "ACE_IR_Strobe_Item";


//Add ACE Medical items based on the MedSys choise
switch (_medSys) do {
	case "B": {
		_unit addItemToUniform "ACE_bloodIV";
		for "_i" from 1 to 12 do {_unit addItemToUniform "ACE_fieldDressing";};
		for "_i" from 1 to 6 do {_unit addItemToUniform "ACE_morphine";};
	};
	case "A": {
		_unit addItemToUniform "ACE_salineIV_500";
		for "_i" from 1 to 2 do {_unit addItemToUniform "ACE_tourniquet";};
		_unit addItemToUniform "ACE_epinephrine";
		_unit addItemToUniform "ACE_morphine";
		for "_i" from 1 to 8 do {_unit addItemToUniform "ACE_elasticBandage";};
	};
	default {
		_unit addItemToUniform "ACE_salineIV_500";
		for "_i" from 1 to 2 do {_unit addItemToUniform "ACE_tourniquet";};
		_unit addItemToUniform "ACE_epinephrine";
		_unit addItemToUniform "ACE_morphine";
		for "_i" from 1 to 8 do {_unit addItemToUniform "ACE_elasticBandage";};
		systemchat "No ACE Medical set Advanced('A') assumed";
	};
};


//Add Vest and Items;
_unit addVest "SGU_Carrier_Rig";
for "_i" from 1 to 6 do {_unit addItemToVest "SAM_30Rnd_556x45_Pmag";};
for "_i" from 1 to 2 do {_unit addItemToVest "rhsusf_mag_17Rnd_9x19_JHP";};
for "_i" from 1 to 6 do {_unit addItemToVest "SmokeShellGreen";};
for "_i" from 1 to 2 do {_unit addItemToVest "HandGrenade";};
for "_i" from 1 to 2 do {_unit addItemToVest "ACE_M84";};
_unit addItemToVest "MiniGrenade";


//Add weapon based on ranNo; For diversity;
if (_ranNo >= 3) then {
	_unit addWeapon "SAM_AK5C";
}
else {
	_unit addWeapon "SAM_AK5C_NOGRIP";
};

//Add secondary weapons and attachments
_unit addPrimaryWeaponItem "sam_acco_aimpoint";
_unit addWeapon "rhsusf_weap_glock17g4";
_unit addHandgunItem "acc_flashlight_pistol";
_unit addWeapon "Binocular"; //Because Binos can hurt you.. :)

//Add items;
_unit linkItem "ItemMap";
_unit linkItem "ItemCompass";
_unit linkItem "ItemWatch";
//_unit linkItem "ItemRadioAcreFlagged";
_unit linkItem "ItemGPS";
_unit linkItem "NVGoggles";

