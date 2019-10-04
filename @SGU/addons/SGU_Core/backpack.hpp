/*
	Config for Bags
	
	By Trox

*/
//Assault Pack
	class SGU_Assault_Pack: Bag_Base
	{
		author = "Trox";
		_generalMacro="SGU_Assault_Pack";
		picture="\A3\weapons_f\ammoboxes\bags\data\ui\icon_B_C_Compact_blk_ca.paa";
		model="\A3\Characters_f_epa\BLUFOR\backpack_kerry";
		hiddenSelections[]=
		{
			"camo1",
			"camo2"
		};
		hiddenSelectionsTextures[]=
		{
			"a3\weapons_f\ammoboxes\bags\data\backpack_compact_rgr_co.paa",
			"\SGU_Core\Data\vest\SGU_vest_co.paa"
		};
		displayName="SGU Assault Pack";
		scope=2;
		maximumLoad=280;
		passThrough=1;
		mass=20;
	};
//Assault Pack Trox
	class SGU_Assault_Pack_Trox: Bag_Base
	{
		author = "Trox";
		_generalMacro="SGU_Assault_Pack_Trox";
		picture="\A3\weapons_f\ammoboxes\bags\data\ui\icon_B_C_Compact_blk_ca.paa";
		model="\A3\Characters_f_epa\BLUFOR\backpack_kerry";
		hiddenSelections[]=
		{
			"camo1",
			"camo2"
		};
		hiddenSelectionsTextures[]=
		{
			"a3\weapons_f\ammoboxes\bags\data\backpack_compact_rgr_co.paa",
			"\SGU_Core\Data\vest\SGU_vest_trox_co.paa"
		};
		displayName="SGU Assault Pack Trox";
		scope=2;
		maximumLoad=280;
		passThrough=1;
		mass=20;
	};
//Kitbag
	class SGU_Kitbag: Bag_Base
	{
		author = "Trox";
		_generalMacro="SGU_Kitbag";
		picture="\A3\Weapons_F\ammoboxes\bags\data\ui\icon_B_C_Kitbag_rgr";
		model="\A3\weapons_f\Ammoboxes\bags\Backpack_Fast";
		hiddenSelections[]=	{"camo"};
		hiddenSelectionsTextures[]=	{"\SGU_Core\Data\Backpack\SGU_Kitbag_rgr_co.paa"};
		displayName="SGU Kitbag";
		scope=2;
		maximumLoad=340;
		passThrough=1;
		mass=40;
	};
//Kitbag Medic
	class SGU_Kitbag_Medic: Bag_Base
	{
		author = "Trox";
		_generalMacro="SGU_Kitbag_Medic";
		picture="\A3\Weapons_F\ammoboxes\bags\data\ui\icon_B_C_Kitbag_rgr";
		model="\A3\weapons_f\Ammoboxes\bags\Backpack_Fast";
		hiddenSelections[]=	{"camo"};
		hiddenSelectionsTextures[]=	{"\SGU_Core\Data\Backpack\SGU_Kitbag_medic_rgr_co.paa"};
		displayName="SGU Kitbag (Medic)";
		scope=2;
		maximumLoad=340;
		passThrough=1;
		mass=40;
	};
	
//Tan Backpacks.
//Assault Pack Tan
	class SGU_Assault_Pack_Tan: SGU_Assault_Pack
	{
		author = "Trox";
		hiddenSelectionsTextures[]=
		{
			"a3\weapons_f\ammoboxes\bags\data\backpack_compact_cbr_co.paa",
			"\SGU_Core\Data\vest\SGU_vest_tan_co.paa"
		};
		displayName="SGU Assault Pack Tan";
	};
//Kitbag Tan
	class SGU_Kitbag_Tan: SGU_Kitbag
	{
		author = "Trox";
		hiddenSelectionsTextures[]=	{"\SGU_Core\Data\Backpack\SGU_Kitbag_cbr_co.paa"};
		displayName="SGU Kitbag Tan";
	};
//Kitbag Tan Medic
	class SGU_Kitbag_Medic_Tan: SGU_Kitbag_Medic
	{
		author = "Trox";
		hiddenSelectionsTextures[]=	{"\SGU_Core\Data\Backpack\SGU_Kitbag_medic_cbr_co.paa"};
		displayName="SGU Kitbag Tan (Medic)";
	};