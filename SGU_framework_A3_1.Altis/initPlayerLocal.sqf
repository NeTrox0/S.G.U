//initPlayerLocal.sqf
//Executed locally when player joins mission (includes both mission start and JIP). 
	

[] spawn {
	waitUntil {!isNull player && player == player};

	//info..
	// Om inte Flaggan eller Arsenalen är definerade object så kan samtliga rader i denna init tas bort. annars kommer de att ge fel.

	// Base Flag Pole
	SGU_Flag allowDamage false;
	SGU_Flag enableSimulation false;
	
		// Halo Jump
	SGU_Flag addAction["<t size='1.2' shadow='2' color='#ff9900'>HALO jump</t>", "scripts\halojump.sqf",[],1,false,true,"","_this distance _target < 10"];
	
		// Teleport..
	SGU_Flag addAction ["<t size='1.2' shadow='2' color='#0055FF'>Move To Outpost Mufflon</t>", "scripts\teleport.sqf", "MUFFLON",1,false,true,"","_this distance _target < 10"];
	SGU_Flag addAction ["<t size='1.2' shadow='2' color='#0055FF'>Move To USS-Freedom</t>", "scripts\teleport.sqf", "USS-FREEDOM",1,false,true,"","_this distance _target < 10"];

		// MHQ // Kommer att bli scriptfel om MHQ inte finns. SE TILL ATT MHQ FINNS! funkar denna med det nya scriptet? 
	//SGU_Flag addAction ["<t size='1.2' shadow='2' color='#0055FF'>Move To MHQ1</t>", "scripts\teleport.sqf", MHQ1];
	//SGU_Flag addAction ["<t size='1.2' shadow='2' color='#0077FF'>Move To MHQ2</t>", "scripts\teleport.sqf", MHQ2];
	//SGU_Flag addAction ["<t size='1.2' shadow='2' color='#0099FF'>Move To MHQ3</t>", "scripts\teleport.sqf", MHQ3];

	// Virtual Arsenal
	SGU_Arsenal allowDamage false;
	SGU_Arsenal enableSimulation false;

	SGU_Arsenal addAction[("<t size='1.3' shadow='2' color='#33cc33'>") + "Open Arsenal" + "</t>",{["Open",true] call BIS_fnc_arsenal;},[],1,false,true,"","_this distance _target < 15"];
	SGU_Arsenal addAction ["<t size='1.2' shadow='1' color='#ff0000'>----------------</t>", "",[],1,false,true,"","_this distance _target < 15"];
	SGU_Arsenal addAction ["<t size='1' shadow='1' color='#00ff00'>M90</t>", {[player,"W","A"] execVM "scripts\gear\SGU_getGear.sqf"},[],1,false,true,"","_this distance _target < 15"];
	SGU_Arsenal addAction ["<t size='1' shadow='1' color='#00ff00'>M90K</t>", {[player,"D","A"] execVM "scripts\gear\SGU_getGear.sqf"},[],1,false,true,"","_this distance _target < 15"];
};

//Group Management system. initialize the player side of the framework.
["InitializePlayer", [player]] call BIS_fnc_dynamicGroups;
