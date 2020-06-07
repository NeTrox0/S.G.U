/*
*	Select Items, 
*	Requires: ACEX
*	
*	Parameters:
*	Player,
*
*	By Trox
*/


_unit = _this select 0;

//mer random mat ?
//MAT för JET PILOT?
//if ((_unit isKindOf "B_Pilot_F") then {} else {};

//ACE Survival Food and drink.
_unit addItemToBackpack selectRandom ["ACE_MRE_ChickenTikkaMasala","ACE_MRE_CreamChickenSoup","ACE_MRE_MeatballsPasta","ACE_MRE_SteakVegetables","ACE_MRE_BeefStew"];
_unit addItemToBackpack selectRandom ["ACE_Can_Franta","ACE_Can_Spirit"];
_unit addItemToBackpack "ACE_Can_RedGull";
_unit addItemToBackpack "ACE_Canteen";
