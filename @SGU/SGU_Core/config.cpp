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
			"A3_Modules_F",
			"A3_UI_F",
			"A3_Structures_F_Items_Electronics",
			"A3_Weapons_F_ItemHolders",
			"A3_Weapons_F",
			"A3_Weapons_F_Items",
			"A3_Data_F",
			"A3_Air_F",
			"A3_Armor_F"
		};
		magazines[] = {};
		ammo[] = {};
	};
};

class CfgFactionClasses
{
	class SGU
	{
		displayName = "SGU (W)";
		icon = "\SGU_Core\UI\SGU_Patch_x128_128.paa"; //Custom Icon 
		priority = 1; // Position in list. 
		side = 1; // Opfor = 0, Blufor = 1, Indep = 2. 
	};
	class SGU_D
	{
		displayName = "SGU (D)";
		icon = "\SGU_Core\UI\SGU_Patch_x128_128.paa"; //Custom Icon 
		priority = 1; // Position in list. 
		side = 1; // Opfor = 0, Blufor = 1, Indep = 2. 
	};
};
class CfgVehicleClasses
{
	class APCs
	{
		displayName = "APCs";
	};
	class Men
	{
		displayName = "Men";
	};
	class Men_SF
	{
		displayName = "Men (Special Forces)";
	};
	class Planes
	{
		displayName = "Planes";
	};
	class Tanks
	{
		displayName = "Tanks";
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
	class NATO_Box_Base;
	class B_Kitbag_Base;
	class Bag_Base;
	class B_Soldier_base_F;
	class B_Soldier_F;
	#include "backpack.hpp"
};
class CfgWeapons
{
	class Uniform_Base;
	class UniformItem;
	class Iteminfo;
	class ItemCore;
	class HeadgearItem;
	class InventoryItem_Base_F;
	class Vest_Camo_Base;
	class Vest_NoCamo_Base;
	class VestItem;
	class vest_Base;
	class V_PlateCarrier_Kerry;
	class H_HelmetB;
	#include "headgear.hpp"
	#include "vest.hpp"
};