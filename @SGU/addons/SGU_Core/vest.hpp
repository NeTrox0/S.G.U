    class SGU_Carrier_Rig: Vest_Camo_Base
    {
		author = "Trox";
		_generalMacro="SGU_Carrier_Rig";
        scope = 2;
        displayName = "SGU Carrier Rig";
        picture = "\A3\Characters_f\Data\UI\icon_V_plate_carrier_2_CA.paa";
        model = "\A3\Characters_F\BLUFOR\equip_b_Vest01.p3d";
        hiddenSelections[] = {"camo"};
        hiddenSelectionsTextures[] = {"\SGU_Core\Data\vest\SGU_vest_co.paa"};
		descriptionShort="$STR_A3_SP_AL_IV";
        class ItemInfo: VestItem
        { 
            uniformModel = "\A3\Characters_F\BLUFOR\equip_b_Vest01.p3d";
            hiddenSelections[] = {"camo"};
			containerClass = "Supply160";
			mass = 80;
			class HitpointsProtectionInfo //more info at: https://community.bistudio.com/wiki/Arma_3_Soldier_Protection
            {
                class Chest
				{
					HitpointName="HitChest";
					armor=24;
					PassThrough=0.14;
				};
				class Diaphragm
				{
					HitpointName="HitDiaphragm";
					armor=24;
					PassThrough=0.14;
				};
				class Abdomen
				{
					hitpointName="HitAbdomen";
					armor=24;
					passThrough=0.14;
				};
                class Body
                {
                    hitPointName="HitBody";
                    passThrough = 0.16;
                };
            };
        }; 
    };
    class SGU_Carrier_Rig_Lite: Vest_Camo_Base
    {
		author = "Trox";
		_generalMacro="SGU_Carrier_Rig_Lite";
        scope = 2;
        displayName = "SGU Carrier Rig Lite";
        picture = "\A3\Characters_f\Data\UI\icon_V_plate_carrier_1_CA.paa";
        model = "\A3\Characters_F\BLUFOR\equip_b_Vest02.p3d";
        hiddenSelections[] = {"camo"};
        hiddenSelectionsTextures[] = {"\SGU_Core\Data\vest\SGU_vest_co.paa"};
		descriptionShort="$STR_A3_SP_AL_III";
        class ItemInfo: VestItem
        {
            uniformModel = "\A3\Characters_F\BLUFOR\equip_b_Vest02.p3d";
            hiddenSelections[] = {"camo"};
			containerClass = "Supply160";
			mass = 60;
			class HitpointsProtectionInfo
            {
                class Chest
				{
					HitpointName="HitChest";
					armor=22;
					PassThrough=0.16;
				};
				class Diaphragm
				{
					HitpointName="HitDiaphragm";
					armor=22;
					PassThrough=0.16;
				};
				class Abdomen
				{
					hitpointName="HitAbdomen";
					armor=22;
					passThrough=0.16;
				};
                class Body
                {
                    hitPointName="HitBody";
                    passThrough = 0.16;
                };
            };
        }; 
    };
    class SGU_Carrier_Rig_Name: V_PlateCarrier_Kerry
    {
		author = "Trox";
		_generalMacro="SGU_Carrier_Rig_Name";
        scope = 2;
        displayName = "SGU Carrier Rig Name";
        picture = "\A3\Characters_f\Data\UI\icon_V_plate_carrier_1_CA.paa";
        model = "\A3\Characters_F_EPA\BLUFOR\equip_b_vest_kerry.p3d";
        hiddenSelections[] = {"camo"};
        hiddenSelectionsTextures[] = {"\SGU_Core\Data\vest\SGU_vest_co.paa"};
		descriptionShort="$STR_A3_SP_AL_III";
		class ItemInfo: VestItem
        { 
            uniformModel = "\A3\Characters_F_EPA\BLUFOR\equip_b_vest_kerry.p3d";
            hiddenSelections[] = {"camo"};
			containerClass = "Supply160";
			mass = 60;
			class HitpointsProtectionInfo
            {
				class Chest
				{
					HitpointName="HitChest";
					armor=22;
					PassThrough=0.16;
				};
				class Diaphragm
				{
					HitpointName="HitDiaphragm";
					armor=22;
					PassThrough=0.16;
				};
				class Abdomen
				{
					hitpointName="HitAbdomen";
					armor=22;
					passThrough=0.16;
				};
                class Body
                {
                    hitPointName="HitBody";
                    passThrough = 0.16;
                };
            };
        }; 
    };
	   class SGU_Carrier_Rig_Trox: V_PlateCarrier_Kerry
    {
		author = "Trox";
		_generalMacro="SGU_Carrier_Rig_Name";
        scope = 2;
        displayName = "SGU Carrier Rig Trox";
        picture = "\A3\Characters_f\Data\UI\icon_V_plate_carrier_1_CA.paa";
        model = "\A3\Characters_F_EPA\BLUFOR\equip_b_vest_kerry.p3d";
        hiddenSelections[] = {"camo"};
        hiddenSelectionsTextures[] = {"\SGU_Core\Data\vest\SGU_vest_trox_co.paa"};
		descriptionShort="$STR_A3_SP_AL_III";
		class ItemInfo: VestItem
        { 
            uniformModel = "\A3\Characters_F_EPA\BLUFOR\equip_b_vest_kerry.p3d";
            hiddenSelections[] = {"camo"};
			containerClass = "Supply160";
			mass = 60;
			class HitpointsProtectionInfo
            {
				class Chest
				{
					HitpointName="HitChest";
					armor=22;
					PassThrough=0.13;
				};
				class Diaphragm
				{
					HitpointName="HitDiaphragm";
					armor=22;
					PassThrough=0.13;
				};
				class Abdomen
				{
					hitpointName="HitAbdomen";
					armor=22;
					passThrough=0.13;
				};
                class Body
                {
                    hitPointName="HitBody";
                    passThrough = 0.16;
                };
            };
        }; 
    };