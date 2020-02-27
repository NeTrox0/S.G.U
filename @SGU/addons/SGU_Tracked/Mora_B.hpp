/*
	Config the Mora
	
	By Trox.
*/
	class APC_Mora_B: I_APC_tracked_03_cannon_F
	{
		scope=2;
		author="Trox";
		displayName="Warrior 90";
		crew="B_crew_F";
		typicalCargo[]=
		{
			"B_Soldier_F"
		};
		side=1;
		faction="SGU_F";
		model="\A3\Armor_F_EPB\APC_Tracked_03\APC_Tracked_03_cannon_F.p3d";
		picture="\A3\Armor_F_EPB\APC_Tracked_03\Data\UI\APC_Tracked_03_Base_ca.paa";
		icon="\A3\Armor_F_EPB\APC_Tracked_03\Data\UI\map_APC_Tracked_03_CA.paa";
		
		class Turrets: Turrets
		{
			class MainTurret: MainTurret
			{
				class Turrets: Turrets
				{
					class CommanderOptics: CommanderOptics
					{
						weapons[]=
						{
							"SmokeLauncher"
						};
						magazines[]=
						{
							"SmokeLauncherMag"
						};
					};
				};
			
				weapons[]=
				{
					"autocannon_40mm_CTWS",
					"LMG_coax"
				};
				magazines[]=
				{
					"60Rnd_40mm_GPR_Tracer_Red_shells",
					"40Rnd_40mm_APFSDS_Tracer_Red_shells",
					"200Rnd_762x51_Belt_Red",
					"200Rnd_762x51_Belt_Red",
					"200Rnd_762x51_Belt_Red",
					"200Rnd_762x51_Belt_Red",
					"200Rnd_762x51_Belt_Red"
				};
			};
		};
		hiddenSelectionsTextures[]=
		{
			"A3\armor_f_epb\apc_tracked_03\data\apc_tracked_03_ext_indp_co.paa",
			"A3\armor_f_epb\apc_tracked_03\data\apc_tracked_03_ext2_indp_co.paa",
//			"\SGU_Tracked\Data\Mora\APC_tracked_03_ext_GRN.paa",
//			"\SGU_Tracked\Data\Mora\APC_tracked_03_ext2_GRN.paa",
			"A3\Armor_F\Data\camonet_green_CO.paa",
			"A3\armor_f\data\cage_olive_co.paa"
		};
		hiddenSelections[]=
		{
			"Camo1",
			"Camo2",
			"CamoNet",
			"CamoSlat"
		};
		textureList[]=
		{
			"SGU_01",
			1
		};
		class TextureSources
		{
			class SGU_01
			{
				displayName="Flat Green";
				author="Trox";
				textures[]=
				{
					"A3\armor_f_epb\apc_tracked_03\data\apc_tracked_03_ext_indp_co.paa",
					"A3\armor_f_epb\apc_tracked_03\data\apc_tracked_03_ext2_indp_co.paa",
//					"\SGU_Tracked\Data\Mora\APC_tracked_03_ext_GRN.paa",
//					"\SGU_Tracked\Data\Mora\APC_tracked_03_ext2_GRN.paa",
					"A3\Armor_F\Data\camonet_green_CO.paa",
					"A3\armor_f\data\cage_olive_co.paa"
				};
				factions[]=
				{
					"SGU_F"
				};
			};
			class SGU_02
			{
				displayName="Desert(Cammo)";
				author="Trox";
				textures[]=
				{
					"A3\armor_f_epb\apc_tracked_03\data\apc_tracked_03_ext_indp_co.paa",
					"A3\armor_f_epb\apc_tracked_03\data\apc_tracked_03_ext2_indp_co.paa",
//					"\SGU_Tracked\Data\Mora\APC_tracked_03_ext_GRN.paa",
//					"\SGU_Tracked\Data\Mora\APC_tracked_03_ext2_GRN.paa",
					"A3\Armor_F\Data\camonet_AAF_Digi_Desert_CO.paa",
					"A3\armor_f\data\cage_sand_co.paa"
				};
				factions[]=
				{
					"SGU_F"
				};
			};				
			class SGU_03
			{
				displayName="White(Cammo)";
				author="Trox";
				textures[]=
				{
					"A3\armor_f_epb\apc_tracked_03\data\apc_tracked_03_ext_indp_co.paa",
					"A3\armor_f_epb\apc_tracked_03\data\apc_tracked_03_ext2_indp_co.paa",
//					"\SGU_Tracked\Data\Mora\APC_tracked_03_ext_GRN.paa",
//					"\SGU_Tracked\Data\Mora\APC_tracked_03_ext2_GRN.paa",
					"\SGU_Tracked\Data\CamoNet\camonet_white_CO.paa",
					"\SGU_Tracked\Data\Cage\cage_white_co.paa"
				};
				factions[]=
				{
					"SGU_F"
				};
			};
//TEST CAMMO			
			class SGU_04
			{
				displayName="WIP: FLAT Green";
				author="Trox";
				textures[]=
				{
					"\SGU_Tracked\Data\Mora\APC_tracked_03_ext_GRN.paa",
					"\SGU_Tracked\Data\Mora\APC_tracked_03_ext2_GRN.paa",
					"A3\Armor_F\Data\camonet_green_CO.paa",
					"A3\armor_f\data\cage_olive_co.paa"
				};
				factions[]=
				{
					"SGU_F"
				};
			};
		};
		class Library
		{
			libTextDesc="$STR_A3_CfgVehicles_APC_Tracked_03_base_F_Library0";
		};
		class TransportMagazines
		{
			class _xx_30Rnd_556x45_Stanag
			{
				magazine="30Rnd_556x45_Stanag";
				count=4;
			};
			class _xx_HandGrenade
			{
				magazine="HandGrenade";
				count=6;
			};
			class _xx_MiniGrenade
			{
				magazine="MiniGrenade";
				count=6;
			};
			class _xx_1Rnd_HE_Grenade_shell
			{
				magazine="1Rnd_HE_Grenade_shell";
				count=6;
			};
			class _xx_SmokeShellGreen
			{
				magazine="SmokeShellGreen";
				count=12;
			};
			class _xx_NLAW_F
			{
				magazine="NLAW_F";
				count=2;
			};
		};
		class TransportItems
		{
			class _xx_FirstAidKit
			{
				name="FirstAidKit";
				count=10;
			};
		};
		class TransportWeapons
		{
			class _xx_arifle_Mk20_F
			{
				weapon="arifle_Mk20_F";
				count=1;
			};
		};
	};
