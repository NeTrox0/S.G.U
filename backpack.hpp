/*
	Config for Bags
	
	By Trox

*/
//Assault Pack Base
	class SGU_Assault_Pack_Base: Bag_Base
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
		scope=0;
		maximumLoad=280;
		passThrough=1;
		mass=20;
	};
//Assault Pack
	class SGU_Assault_Pack: SGU_Assault_Pack_Base
	{
		author = "Trox";
		picture="\A3\weapons_f\ammoboxes\bags\data\ui\icon_B_C_Compact_rgr_ca.paa";
		hiddenSelectionsTextures[]=
		{
			"a3\weapons_f\ammoboxes\bags\data\backpack_compact_rgr_co.paa",
			"\SGU_Core\Data\vest\SGU_vest_co.paa"
		};
		displayName="SWE Assault Pack";
		scope=2;
	};
//Assault Pack Tan
	class SGU_Assault_Pack_Tan: SGU_Assault_Pack
	{
		author = "Trox";
		picture="\A3\weapons_f\ammoboxes\bags\data\ui\icon_b_assaultpack_cbr_ca.paa";
		hiddenSelectionsTextures[]=
		{
			"a3\weapons_f\ammoboxes\bags\data\backpack_compact_cbr_co.paa",
			"\SGU_Core\Data\vest\SGU_vest_tan_co.paa"
		};
		displayName="SWE Assault Pack Tan";
	};
//Assault Pack Medic
	class SGU_Assault_Pack_Medic: SGU_Assault_Pack
	{
		author = "Trox";
		picture="\A3\weapons_f\ammoboxes\bags\data\ui\icon_B_C_Compact_rgr_ca.paa";
		hiddenSelectionsTextures[]=
		{
			"\SGU_Core\Data\Backpack\SGU_AssualtPack_rgr.paa",
			"\SGU_Core\Data\vest\SGU_vest_co.paa"
		};
		displayName="SWE Assault Pack (Medic)";
	};
//Assault Pack Medic Tan
	class SGU_Assault_Pack_Medic_Tan: SGU_Assault_Pack_Medic
	{
		author = "Trox";
		picture="\A3\weapons_f\ammoboxes\bags\data\ui\icon_b_assaultpack_cbr_ca.paa";
		hiddenSelectionsTextures[]=
		{
			"\SGU_Core\Data\Backpack\SGU_AssualtPack_cbr.paa",
			"\SGU_Core\Data\vest\SGU_vest_tan_co.paa"
		};
		displayName="SWE Assault Pack Tan (Medic)";
	};
//Assault Pack Trox
	class SGU_Assault_Pack_Trox: SGU_Assault_Pack
	{
		author = "Trox";
		picture="\A3\Weapons_F\Ammoboxes\Bags\data\UI\icon_B_AssaultPack_Kerry_ca.paa";
		hiddenSelectionsTextures[]=
		{
			"a3\weapons_f\ammoboxes\bags\data\backpack_compact_rgr_co.paa",
			"\SGU_Core\Data\vest\SGU_vest_trox_co.paa"
		};
		displayName="SWE Assault Pack Trox";
	};
//Kitbag Base
	class SGU_Kitbag_Base: Bag_Base
	{
		author = "Trox";
		_generalMacro="SGU_Kitbag";
		picture="\A3\Weapons_F\ammoboxes\bags\data\ui\icon_B_C_Kitbag_rgr.paa";
		model="\A3\weapons_f\Ammoboxes\bags\Backpack_Fast";
		hiddenSelections[]=	{"camo"};
		hiddenSelectionsTextures[]=	{"\SGU_Core\Data\Backpack\SGU_Kitbag_rgr_co.paa"};
		scope=0;
		maximumLoad=340;
		passThrough=1;
		mass=40;
	};	
//Kitbag
	class SGU_Kitbag: SGU_Kitbag_Base
	{
		author = "Trox";
		_generalMacro="SGU_Kitbag";
		picture="\A3\Weapons_F\ammoboxes\bags\data\ui\icon_B_C_Kitbag_rgr.paa";
		hiddenSelectionsTextures[]=	{"\SGU_Core\Data\Backpack\SGU_Kitbag_rgr_co.paa"};
		displayName="SWE Kitbag";
		scope=2;
	};
//Kitbag Tan
	class SGU_Kitbag_Tan: SGU_Kitbag
	{
		author = "Trox";
		picture="\A3\Weapons_F\ammoboxes\bags\data\ui\icon_b_kitbag_cbr_ca.paa";
		hiddenSelectionsTextures[]=	{"\SGU_Core\Data\Backpack\SGU_Kitbag_cbr_co.paa"};
		displayName="SWE Kitbag Tan";
	};
//Kitbag Medic
	class SGU_Kitbag_Medic: SGU_Kitbag
	{
		author = "Trox";
		picture="\A3\Weapons_F\ammoboxes\bags\data\ui\icon_B_C_Kitbag_rgr";
		hiddenSelectionsTextures[]=	{"\SGU_Core\Data\Backpack\SGU_Kitbag_medic_rgr_co.paa"};
		displayName="SWE Kitbag (Medic)";
	};
//Kitbag Tan Medic
	class SGU_Kitbag_Medic_Tan: SGU_Kitbag_Medic
	{
		author = "Trox";
		picture="\A3\Weapons_F\ammoboxes\bags\data\ui\icon_b_kitbag_cbr_ca.paa";
		hiddenSelectionsTextures[]=	{"\SGU_Core\Data\Backpack\SGU_Kitbag_medic_cbr_co.paa"};
		displayName="SWE Kitbag Tan (Medic)";
	};