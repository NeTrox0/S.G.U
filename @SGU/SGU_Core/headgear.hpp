/*
	Config for Helmets
	
	By Trox
*/
    class SGU_Berret: ItemCore
    {
        author = "Trox S.G.U";
        scope = 2;
        weaponPoolAvailable = 1;
        displayName = "SGU Berret";
        picture="\A3\characters_f_epb\BLUFOR\Data\UI\icon_h_beret02_ca.paa";
		model="\A3\characters_f_epb\BLUFOR\headgear_beret02.p3d";
        hiddenSelections[] = {"camo"};
        hiddenSelectionsTextures[] = {"\SGU_Core\Data\Headgear\SGU_beret.paa"};
        class ItemInfo: HeadgearItem
        {
            mass = 3;
            uniformModel = "\A3\characters_f_epb\BLUFOR\headgear_beret02.p3d";
            modelSides[] = {6};
            hiddenSelections[] = {"camo"};
 
            //subItems[] = {"Integrated_NVG_F"}; //if defined, this headgear item gains functionality (visual modes) of given NVG item and will occupy its slot as well. Currently works only for Headgear + NVG + Radio item combinations.
 
            class HitpointsProtectionInfo //more info at: https://community.bistudio.com/wiki/Arma_3_Soldier_Protection
            {
                class Head
                {
                     hitPointName = "HitHead";
                     armor = 1;
                     passThrough = 1;
                };
            };
        };
    };