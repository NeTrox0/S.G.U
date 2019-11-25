_unit =  _this select 0;


//comment "Exported from Arsenal by Trox";

//comment "Remove existing items";
removeAllWeapons _unit;
removeAllItems _unit;
removeAllAssignedItems _unit;
removeUniform _unit;
removeVest _unit;
removeBackpack _unit;
removeHeadgear _unit;
removeGoggles _unit;

//comment "Add containers";
_unit forceAddUniform "SAM_Crye_M90_uniform";
_unit addItemToUniform "ACRE_PRC343";
_unit addItemToUniform "ACE_EarPlugs";
_unit addItemToUniform "ACE_Flashlight_XL50";
_unit addItemToUniform "ACE_IR_Strobe_Item";
_unit addItemToUniform "ACE_salineIV_500";
for "_i" from 1 to 2 do {_unit addItemToUniform "ACE_tourniquet";};
_unit addItemToUniform "ACE_epinephrine";
_unit addItemToUniform "ACE_morphine";
for "_i" from 1 to 8 do {_unit addItemToUniform "ACE_elasticBandage";};
_unit addItemToUniform "ACE_CableTie";
_unit addVest "SGU_Carrier_Rig";
for "_i" from 1 to 6 do {_unit addItemToVest "SAM_30Rnd_556x45_Pmag";};
for "_i" from 1 to 2 do {_unit addItemToVest "rhsusf_mag_17Rnd_9x19_JHP";};
for "_i" from 1 to 6 do {_unit addItemToVest "SmokeShellGreen";};
for "_i" from 1 to 2 do {_unit addItemToVest "HandGrenade";};
for "_i" from 1 to 2 do {_unit addItemToVest "ACE_M84";};
_unit addItemToVest "MiniGrenade";
_unit addHeadgear "SAM_HelmetB_M90";

//comment "Add weapons";
_unit addWeapon "SAM_AK5C_NOGRIP";
_unit addPrimaryWeaponItem "sam_acco_aimpoint";
_unit addWeapon "rhsusf_weap_glock17g4";
_unit addHandgunItem "acc_flashlight_pistol";
_unit addWeapon "Binocular";

//comment "Add items";
_unit linkItem "ItemMap";
_unit linkItem "ItemCompass";
_unit linkItem "ItemWatch";
_unit linkItem "ItemRadioAcreFlagged";
_unit linkItem "ItemGPS";
_unit linkItem "NVGoggles";

