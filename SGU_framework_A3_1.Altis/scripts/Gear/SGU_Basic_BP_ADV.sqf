_unit =  _this select 0;


//comment "Exported from Arsenal by Trox";

//comment "Remove existing items";
removeBackpack _unit;


//comment "Add containers";
_unit addBackpack "SGU_Kitbag_Medic";
for "_i" from 1 to 10 do {_unit addItemToBackpack "ACE_epinephrine";};
for "_i" from 1 to 20 do {_unit addItemToBackpack "ACE_fieldDressing";};
for "_i" from 1 to 10 do {_unit addItemToBackpack "ACE_morphine";};
for "_i" from 1 to 20 do {_unit addItemToBackpack "ACE_elasticBandage";};
for "_i" from 1 to 20 do {_unit addItemToBackpack "ACE_quikclot";};
for "_i" from 1 to 2 do {_unit addItemToBackpack "ACE_bodyBag";};
for "_i" from 1 to 20 do {_unit addItemToBackpack "ACE_packingBandage";};
_unit addItemToBackpack "ACE_surgicalKit";
_unit addItemToBackpack "ACE_personalAidKit";
for "_i" from 1 to 6 do {_unit addItemToBackpack "ACE_tourniquet";};
for "_i" from 1 to 6 do {_unit addItemToBackpack "ACE_adenosine";};
for "_i" from 1 to 6 do {_unit addItemToBackpack "ACE_salineIV_500";};
for "_i" from 1 to 6 do {_unit addItemToBackpack "ACE_salineIV_250";};
for "_i" from 1 to 2 do {_unit addItemToBackpack "ACE_salineIV";};

