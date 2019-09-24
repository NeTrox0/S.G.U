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
_unit forceAddUniform "rhs_uniform_cu_ocp";
_unit addItemToUniform "ACRE_PRC343";
_unit addItemToUniform "ACE_EarPlugs";
_unit addItemToUniform "ACE_Flashlight_XL50";
_unit addItemToUniform "ACE_IR_Strobe_Item";
_unit addItemToUniform "ACE_bloodIV";
for "_i" from 1 to 12 do {_unit addItemToUniform "ACE_fieldDressing";};
for "_i" from 1 to 6 do {_unit addItemToUniform "ACE_morphine";};
_unit addItemToUniform "ACE_CableTie";
_unit addVest "rhsusf_iotv_ocp_Rifleman";
for "_i" from 1 to 2 do {_unit addItemToVest "rhsusf_mag_17Rnd_9x19_JHP";};
for "_i" from 1 to 6 do {_unit addItemToVest "SmokeShellGreen";};
for "_i" from 1 to 2 do {_unit addItemToVest "HandGrenade";};
for "_i" from 1 to 2 do {_unit addItemToVest "ACE_M84";};
_unit addItemToVest "MiniGrenade";
_unit addHeadgear "rhsusf_ach_helmet_headset_ocp";

//comment "Add weapons";
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
