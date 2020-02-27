/*
	Config MORA & Leopard2
	
	By Trox
*/

class CfgPatches
{
	class SGU_Tracked
	{
		units[] = 
		{
			"APC_Mora_B",
			"MBT_Leopard2_B"
		};
		weapons[] = {};
		icon = "SGU_Tracked\UI\SGU_Patch_x64_64.paa";
		requiredVersion = 0.1;
		requiredAddons[] = 
		{
			"A3_Weapons_F",
			"A3_Armor_F_EPB_APC_Tracked_03",
			"A3_Armor_F_EPB_MBT_03"
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
        texture = "\SGU_Tracked\UI\SGU_Patch_x128_128.paa"; // Image path
        textureVehicle = ""; // Does nothing currently, reserved for future use
    };
};

class DefaultEventHandlers;
class WeaponFireGun;
class WeaponCloudsGun;
class WeaponFireMGun;
class WeaponCloudsMGun;
class RCWSOptics;
class Optics_Armored;
class Optics_Commander_02: Optics_Armored
{
	class Wide;
	class Medium;
	class Narrow;
};
//Mora
class Optics_Gunner_APC_02: Optics_Armored
{
	class Wide;
	class Medium;
	class Narrow;
};
//Leopard2
class Optics_Gunner_MBT_03: Optics_Armored
{
	class Wide;
	class Medium;
	class Narrow;
};

class CfgWeapons
{
//	class Mode_Burst;
//	class Mode_FullAuto;
	
	class CannonCore;
	class autocannon_Base_F: CannonCore {};
//	class autocannon_30mm_CTWS: autocannon_Base_F {};
//	class autocannon_30mm: autocannon_30mm_CTWS {};
	
	class autocannon_40mm_CTWS: autocannon_Base_F {};
};
class CfgVehicles 
{
	class LandVehicle;
	class Tank: LandVehicle
	{
		class NewTurret;
		class Sounds;
		class HitPoints;
		class CommanderOptics;
	};
	class Tank_F: Tank
	{
		class Turrets
		{
			class MainTurret: NewTurret
			{
				class ViewGunner;
				class Turrets
				{
					class CommanderOptics: CommanderOptics
					{
						class ViewGunner;
					};
				};
			};
		};
		class AnimationSources;
		class ViewPilot;
		class ViewOptics;
		class ViewCargo;
		class HeadLimits;
		class HitPoints: HitPoints
		{
			class HitHull;
			class HitFuel;
			class HitEngine;
			class HitLTrack;
			class HitRTrack;
		};
		class Sounds: Sounds
		{
			class Engine;
			class Movement;
		};
		class EventHandlers;
	};
	
	//Mora Config
	class APC_Tracked_03_base_F: Tank_F {};
	class I_APC_tracked_03_base_F: APC_Tracked_03_base_F {};
	class I_APC_tracked_03_cannon_F: I_APC_tracked_03_base_F {};
	#include "Mora_B.hpp"
	
	//Leopard2 Config
	class MBT_03_base_F: Tank_F {};
	class I_MBT_03_base_F: MBT_03_base_F {};
	class I_MBT_03_cannon_F: I_MBT_03_base_F {};
	#include "Leopard2_B.hpp"
};