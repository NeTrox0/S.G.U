//init.sqf
//Executed when mission is started (before briefing screen)

//SGU Framework A3 init.sqf / 2018 04 17

//----Invis markers----
//"respawn_west" setMarkerAlphaLocal 0;
//"respawn_east" setMarkerAlphaLocal 0;


//----Disable Saving and Auto Saving----
enableSaving [false, false];

if (!isdedicated) then
{
	//Player is player... Japp player is player..
	waitUntil {!isNull player};
	waitUntil {player == player};	
	//Script för Spelaren endast!
	
		//Lägg till Brief.
		if (side player == west) then {[] call compile preProcessFileLineNumbers "briefing.sqf";};
		if (side player == east) then {[] call compile preProcessFileLineNumbers "briefing_east.sqf";};
		
		//sätt marker höjden för att kunna tpa / spawna på carrier.
		//"USS-FREEDOM" setMarkerPosLocal [markerPos "USS-FREEDOM" select 0, markerPos "USS-FREEDOM" select 1, 24];
};






//Kolla om ACRE2 är laddat.. ISF exekvera koden för språk.
if(isClass(configfile >> "CfgPatches" >> "ACRE2"))then
{
//	Acre 2 setup script way. 	Here is the code we use to setup bable:
	[] call compile preprocessFileLineNumbers "Scripts\Acre\ACRE_init.sqf";
};

//West speaks English, east speaks Russian, indp and civilians speak Arabic. 
//If you want to make a translator, put this in the unit's init: 
//this setVariable ["f_languages",["en", "ar"]];



// Zeus Test...
/*
//Ska Zeus Viritual användas så applicera nedan kod för att flytta den virituella enheten efter kameran på Zeus
zCurator enableSimulationGlobal false;
zCurator hideObjectGlobal true;

// move zeus_virtual_entity to camera position continuously
if (player == zCurator) then {
	[] spawn { 
		while {true} do { 
			sleep 1; 
			zCurator setPos (getPos curatorCamera);
		}; 
	};
};
*/