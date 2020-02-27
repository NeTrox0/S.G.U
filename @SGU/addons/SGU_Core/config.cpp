/*
	config of some SGU specific items..
	V0.1
	
	Requires
	N/A

	By Trox
*/
class CfgPatches
{
	class SGU_Core
	{
		units[] = 
		{
			"SGU_Assault_Pack",
			"SGU_Assault_Pack_Tan",
			"SGU_Assault_Pack_Trox",
			"SGU_Kitbag",
			"SGU_Kitbag_Tan",
			"SGU_Kitbag_Medic",
			"SGU_Kitbag_Medic_Tan"
		};
		weapons[] = 
		{
			"SGU_Carrier_Rig",
			"SGU_Carrier_Rig_Tan",
			"SGU_Carrier_Rig_Lite",
			"SGU_Carrier_Rig_Lite_Tan",
			"SGU_Carrier_Rig_Name",
			"SGU_Carrier_Rig_Name_Tan",
			"SGU_Carrier_Rig_Trox"
		};
		icon = "SGU_Core\UI\SGU_Patch_x64_64.paa";
		requiredVersion = 0.1;
		requiredAddons[] = 
		{
			"A3_Characters_F",
			"A3_Weapons_F"
		};
		magazines[] = {};
		ammo[] = {};
	};
};

class CfgFactionClasses
{
	class SGU_F
	{
		displayName = "SGU";
		icon = "\SGU_Core\UI\SGU_Patch_x128_128.paa"; //Custom Icon 
		priority = 1; // Position in list. 
		side = 1; // Opfor = 0, Blufor = 1, Indep = 2. 
	};
};
class CfgUnitInsignia
{
    class SGU_Insignia
    {
        displayName = "S.G.U Patch"; // Name displayed in Arsenal
        author = "S.G.U Hison"; // Author displayed in Arsenal
        texture = "\SGU_Core\UI\SGU_Patch_x128_128.paa"; // Image path
        textureVehicle = ""; // Does nothing currently, reserved for future use
    };
};
class CfgVehicles
{	
	class ReammoBox;
	class ContainerSupply;
	class Bag_Base: ReammoBox {};
	#include "backpack.hpp"
};
class CfgWeapons
{
	class InventoryItem_Base_F;
	class HeadgearItem: InventoryItem_Base_F {};
	class VestItem: InventoryItem_Base_F {};
	class ItemCore;
	#include "headgear.hpp"
	
	class Vest_NoCamo_Base: ItemCore {};
	class V_PlateCarrier1_rgr: Vest_NoCamo_Base {};
	class V_PlateCarrier_Kerry: V_PlateCarrier1_rgr {};
	class Vest_Camo_Base: ItemCore {};
	#include "vest.hpp"
};