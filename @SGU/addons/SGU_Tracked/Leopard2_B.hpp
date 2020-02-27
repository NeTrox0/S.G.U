/*
	Config Leopard2
	
	By Trox.
*/
	class MBT_Leopard2_B: I_MBT_03_cannon_F
	{
		scope=2;
		author="Trox";
		displayName="Leopard 290";
		crew="B_crew_F";
		typicalCargo[]=
		{
			"B_Soldier_F"
		};
		side=1;
		faction="SGU_F";
		model="\A3\Armor_F_EPB\MBT_03\MBT_03_cannon_F.p3d";
		picture="\A3\Armor_F_EPB\MBT_03\Data\UI\MBT_03_Ca.paa";
		icon="\A3\Armor_F_EPB\MBT_03\Data\UI\map_MBT_03_Ca.paa";
		
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
							"HMG_127_APC",
							"SmokeLauncher"
						};
						magazines[]=
						{
							"200Rnd_127x99_mag_Tracer_Red",
							"200Rnd_127x99_mag_Tracer_Red",
							"SmokeLauncherMag"
						};
					};
				};
			
				weapons[]=
				{
					"cannon_120mm_long",
					"LMG_coax"
				};
				magazines[]=
				{
					"20Rnd_120mm_APFSDS_shells_Tracer_Red",
					"12Rnd_120mm_HEAT_MP_T_Red",
					"8Rnd_120mm_HE_shells_Tracer_Red",
					"200Rnd_762x51_Belt_Red",
					"200Rnd_762x51_Belt_Red",
					"200Rnd_762x51_Belt_Red",
					"200Rnd_762x51_Belt_Red",
					"200Rnd_762x51_Belt_Red",
					"200Rnd_762x51_Belt_Red",
					"200Rnd_762x51_Belt_Red"
				};
			};
		};
		hiddenSelections[]=
		{
			"Camo1",
			"Camo2",
			"Camo3",
			"CamoNet"
		};
		hiddenSelectionsTextures[]=
		{
			"a3\armor_f_epb\mbt_03\data\mbt_03_ext01_co.paa",
			"a3\armor_f_epb\mbt_03\data\mbt_03_ext02_co.paa",
			"a3\armor_f_epb\mbt_03\data\mbt_03_rcws_co.paa",
			"A3\armor_f\data\camonet_green_CO.paa"
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
					"a3\armor_f_epb\mbt_03\data\mbt_03_ext01_co.paa",
					"a3\armor_f_epb\mbt_03\data\mbt_03_ext02_co.paa",
					"a3\armor_f_epb\mbt_03\data\mbt_03_rcws_co.paa",
					"A3\armor_f\data\camonet_green_CO.paa"
				};
				factions[]=
				{
					"SGU_F"
				};
			};
			class SGU_02
			{
				displayName="Desert(Cammo)";
				author="$STR_A3_Bohemia_Interactive";
				textures[]=
				{
					"a3\armor_f_epb\mbt_03\data\mbt_03_ext01_co.paa",
					"a3\armor_f_epb\mbt_03\data\mbt_03_ext02_co.paa",
					"a3\armor_f_epb\mbt_03\data\mbt_03_rcws_co.paa",
					"A3\Armor_F\Data\camonet_AAF_Digi_Desert_CO.paa"
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
					"a3\armor_f_epb\mbt_03\data\mbt_03_ext01_co.paa",
					"a3\armor_f_epb\mbt_03\data\mbt_03_ext02_co.paa",
					"a3\armor_f_epb\mbt_03\data\mbt_03_rcws_co.paa",
					"\SGU_Tracked\Data\CamoNet\camonet_white_CO.paa"
				};
				factions[]=
				{
					"SGU_F"
				};
			};
		};
		class Library
		{
			libTextDesc="$STR_A3_CfgVehicles_MBT_03_base_F_Library0";
		};
		class TransportMagazines
		{
			class _xx_SmokeShell
			{
				magazine="SmokeShell";
				count=2;
			};
			class _xx_SmokeShellGreen
			{
				magazine="SmokeShellGreen";
				count=2;
			};
			class _xx_30Rnd_556x45_Stanag
			{
				magazine="30Rnd_556x45_Stanag";
				count=4;
			};
		};
		class TransportWeapons
		{
			class _xx_arifle_Mk20C_F
			{
				weapon="arifle_Mk20C_F";
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
	};