/*
*	Set the choises the unit has at the arsenal box, depending on its role. 
*	
*	Parameters:
*	_unit
*	Cammo fetched from Params. 0:M90, 1:M90K, 2:MC, 3:MCT. Defaults to M90 if none is set.
*	Role fetched from the unit by a variable. Defaults to "SOLD" if none is set.
*	
*	By Trox
*/	

_object = SGU_Arsenal;

_unit = _this select 0;
_cammo = ["Gear_Cammo", 0] call BIS_fnc_getParamValue;
_role = [_unit getVariable "Role"] param [0,"0"];

systemchat format ["ARS.Cammo: %1", _cammo];
systemchat format ["ARS.Roll: %1", _role];

_object allowDamage false;
_object enableSimulation false;


switch (true) do {
	case (_cammo == 1): { //1:M90K
		switch (true) do {
			//Lead Roles
			case (_role == "PLTC"): {		
				_object addAction ["<t size='1' shadow='1' color='#00ff00'>PLTC</t>", {[player,1,"PLTC"] execVM "scripts\gear\getLoadout.sqf"},[],1,false,true,"","_this distance _target < 15"];
			};
			case (_role == "GRPC");
			case (_role == "GRPC2"): {
				_object addAction ["<t size='1' shadow='1' color='#00ff00'>GRPC</t>", {[player,1,"GRPC"] execVM "scripts\gear\getLoadout.sqf"},[],1,false,true,"","_this distance _target < 15"];
				_object addAction ["<t size='1' shadow='1' color='#00ff00'>GRPC Utan GRT</t>", {[player,1,"GRPC2"] execVM "scripts\gear\getLoadout.sqf"},[],1,false,true,"","_this distance _target < 15"];
			};
			
			//Group Roles
			case (_role == "SJV");
			case (_role == "SJV2"): {
				_object addAction ["<t size='1' shadow='1' color='#00ff00'>SJV</t>", {[player,1,"SJV"] execVM "scripts\gear\getLoadout.sqf"},[],1,false,true,"","_this distance _target < 15"];
				_object addAction ["<t size='1' shadow='1' color='#00ff00'>SJV Skarpskytt</t>", {[player,1,"SJV2"] execVM "scripts\gear\getLoadout.sqf"},[],1,false,true,"","_this distance _target < 15"];	
			};
			case (_role == "KSP90");
			case (_role == "KSP58"): {
				_object addAction ["<t size='1' shadow='1' color='#00ff00'>KSP90</t>", {[player,1,"KSP90"] execVM "scripts\gear\getLoadout.sqf"},[],1,false,true,"","_this distance _target < 15"];
				_object addAction ["<t size='1' shadow='1' color='#00ff00'>KSP58</t>", {[player,1,"KSP58"] execVM "scripts\gear\getLoadout.sqf"},[],1,false,true,"","_this distance _target < 15"];
			};
			case (_role == "GRG"): {
				_object addAction ["<t size='1' shadow='1' color='#00ff00'>GRG</t>", {[player,1,"GRG"] execVM "scripts\gear\getLoadout.sqf"},[],1,false,true,"","_this distance _target < 15"];
				//SOLD
				_object addAction ["<t size='1' shadow='1' color='#00ff00'>Skyttesoldat</t>", {[player,1,"SOLD"] execVM "scripts\gear\getLoadout.sqf"},[],1,false,true,"","_this distance _target < 15"];
			};
			case (_role == "GRT"): {
				_object addAction ["<t size='1' shadow='1' color='#00ff00'>GRT</t>", {[player,1,"GRT"] execVM "scripts\gear\getLoadout.sqf"},[],1,false,true,"","_this distance _target < 15"];
				//SOLD
				_object addAction ["<t size='1' shadow='1' color='#00ff00'>Skyttesoldat</t>", {[player,1,"SOLD"] execVM "scripts\gear\getLoadout.sqf"},[],1,false,true,"","_this distance _target < 15"];
			};
			
			//Pilots
			case (_role == "HPIL"): {
				_object addAction ["<t size='1' shadow='1' color='#00ff00'>HELI PILOT</t>", {[player,1,"HPIL"] execVM "scripts\gear\getLoadout.sqf"},[],1,false,true,"","_this distance _target < 15"];
			};
			case (_role == "JPIL"): {
				_object addAction ["<t size='1' shadow='1' color='#00ff00'>JET PILOT</t>", {[player,1,"JPIL"] execVM "scripts\gear\getLoadout.sqf"},[],1,false,true,"","_this distance _target < 15"];
			};
			
			//Vehicle Crew
			case (_role == "VC");
			case (_role == "CREW");
			case (_role == "CREW2");
			case (_role == "CREW3"): {
				_object addAction ["<t size='1' shadow='1' color='#00ff00'>VagnChef</t>", {[player,1,"VC"] execVM "scripts\gear\getLoadout.sqf"},[],1,false,true,"","_this distance _target < 15"];
				_object addAction ["<t size='1' shadow='1' color='#00ff00'>Besättning</t>", {[player,1,"CREW"] execVM "scripts\gear\getLoadout.sqf"},[],1,false,true,"","_this distance _target < 15"];
				_object addAction ["<t size='1' shadow='1' color='#00ff00'>Besättning SJV</t>", {[player,1,"CREW2"] execVM "scripts\gear\getLoadout.sqf"},[],1,false,true,"","_this distance _target < 15"];
				_object addAction ["<t size='1' shadow='1' color='#00ff00'>Besättning ING</t>", {[player,1,"CREW3"] execVM "scripts\gear\getLoadout.sqf"},[],1,false,true,"","_this distance _target < 15"];
			};
			default {
				//SOLD as default
				_object addAction ["<t size='1' shadow='1' color='#00ff00'>Skyttesoldat</t>", {[player,1,"SOLD"] execVM "scripts\gear\getLoadout.sqf"},[],1,false,true,"","_this distance _target < 15"];
				//ING
				_object addAction ["<t size='1' shadow='1' color='#00ff00'>Ingengör</t>", {[player,1,"ING"] execVM "scripts\gear\getLoadout.sqf"},[],1,false,true,"","_this distance _target < 15"];	
				//SKRP
				_object addAction ["<t size='1' shadow='1' color='#00ff00'>Skarpskytt</t>", {[player,1,"SKRP"] execVM "scripts\gear\getLoadout.sqf"},[],1,false,true,"","_this distance _target < 15"];	
				//UAV
				_object addAction ["<t size='1' shadow='1' color='#00ff00'>UAV</t>", {[player,1,"UAV"] execVM "scripts\gear\getLoadout.sqf"},[],1,false,true,"","_this distance _target < 15"];
			};
		};
	};
	case (_cammo == 2): { //2:MC
		switch (true) do {
			//Lead Roles
			case (_role == "PLTC"): {		
				_object addAction ["<t size='1' shadow='1' color='#00ff00'>PLTC</t>", {[player,2,"PLTC"] execVM "scripts\gear\getLoadout.sqf"},[],1,false,true,"","_this distance _target < 15"];
			};
			case (_role == "GRPC");
			case (_role == "GRPC2"): {
				_object addAction ["<t size='1' shadow='1' color='#00ff00'>GRPC</t>", {[player,2,"GRPC"] execVM "scripts\gear\getLoadout.sqf"},[],1,false,true,"","_this distance _target < 15"];
				_object addAction ["<t size='1' shadow='1' color='#00ff00'>GRPC Utan GRT</t>", {[player,2,"GRPC2"] execVM "scripts\gear\getLoadout.sqf"},[],1,false,true,"","_this distance _target < 15"];
			};
			
			//Group Roles
			case (_role == "SJV");
			case (_role == "SJV2"): {
				_object addAction ["<t size='1' shadow='1' color='#00ff00'>SJV</t>", {[player,2,"SJV"] execVM "scripts\gear\getLoadout.sqf"},[],1,false,true,"","_this distance _target < 15"];
				_object addAction ["<t size='1' shadow='1' color='#00ff00'>SJV Skarpskytt</t>", {[player,2,"SJV2"] execVM "scripts\gear\getLoadout.sqf"},[],1,false,true,"","_this distance _target < 15"];	
			};
			case (_role == "KSP90");
			case (_role == "KSP58"): {
				_object addAction ["<t size='1' shadow='1' color='#00ff00'>KSP90</t>", {[player,2,"KSP90"] execVM "scripts\gear\getLoadout.sqf"},[],1,false,true,"","_this distance _target < 15"];
				_object addAction ["<t size='1' shadow='1' color='#00ff00'>KSP58</t>", {[player,2,"KSP58"] execVM "scripts\gear\getLoadout.sqf"},[],1,false,true,"","_this distance _target < 15"];
			};
			case (_role == "GRG"): {
				_object addAction ["<t size='1' shadow='1' color='#00ff00'>GRG</t>", {[player,2,"GRG"] execVM "scripts\gear\getLoadout.sqf"},[],1,false,true,"","_this distance _target < 15"];
				//SOLD
				_object addAction ["<t size='1' shadow='1' color='#00ff00'>Skyttesoldat</t>", {[player,2,"SOLD"] execVM "scripts\gear\getLoadout.sqf"},[],1,false,true,"","_this distance _target < 15"];
			};
			case (_role == "GRT"): {
				_object addAction ["<t size='1' shadow='1' color='#00ff00'>GRT</t>", {[player,2,"GRT"] execVM "scripts\gear\getLoadout.sqf"},[],1,false,true,"","_this distance _target < 15"];
				//SOLD
				_object addAction ["<t size='1' shadow='1' color='#00ff00'>Skyttesoldat</t>", {[player,2,"SOLD"] execVM "scripts\gear\getLoadout.sqf"},[],1,false,true,"","_this distance _target < 15"];
			};
			
			//Pilots
			case (_role == "HPIL"): {
				_object addAction ["<t size='1' shadow='1' color='#00ff00'>HELI PILOT</t>", {[player,2,"HPIL"] execVM "scripts\gear\getLoadout.sqf"},[],1,false,true,"","_this distance _target < 15"];
			};
			case (_role == "JPIL"): {
				_object addAction ["<t size='1' shadow='1' color='#00ff00'>JET PILOT</t>", {[player,2,"JPIL"] execVM "scripts\gear\getLoadout.sqf"},[],1,false,true,"","_this distance _target < 15"];
			};
			
			//Vehicle Crew
			case (_role == "VC");
			case (_role == "CREW");
			case (_role == "CREW2");
			case (_role == "CREW3"): {
				_object addAction ["<t size='1' shadow='1' color='#00ff00'>VagnChef</t>", {[player,2,"VC"] execVM "scripts\gear\getLoadout.sqf"},[],1,false,true,"","_this distance _target < 15"];
				_object addAction ["<t size='1' shadow='1' color='#00ff00'>Besättning</t>", {[player,2,"CREW"] execVM "scripts\gear\getLoadout.sqf"},[],1,false,true,"","_this distance _target < 15"];
				_object addAction ["<t size='1' shadow='1' color='#00ff00'>Besättning SJV</t>", {[player,2,"CREW2"] execVM "scripts\gear\getLoadout.sqf"},[],1,false,true,"","_this distance _target < 15"];
				_object addAction ["<t size='1' shadow='1' color='#00ff00'>Besättning ING</t>", {[player,2,"CREW3"] execVM "scripts\gear\getLoadout.sqf"},[],1,false,true,"","_this distance _target < 15"];
			};
			default {
				//SOLD as default
				_object addAction ["<t size='1' shadow='1' color='#00ff00'>Skyttesoldat</t>", {[player,2,"SOLD"] execVM "scripts\gear\getLoadout.sqf"},[],1,false,true,"","_this distance _target < 15"];
				//ING
				_object addAction ["<t size='1' shadow='1' color='#00ff00'>Ingengör</t>", {[player,2,"ING"] execVM "scripts\gear\getLoadout.sqf"},[],1,false,true,"","_this distance _target < 15"];	
				//SKRP
				_object addAction ["<t size='1' shadow='1' color='#00ff00'>Skarpskytt</t>", {[player,2,"SKRP"] execVM "scripts\gear\getLoadout.sqf"},[],1,false,true,"","_this distance _target < 15"];	
				//UAV
				_object addAction ["<t size='1' shadow='1' color='#00ff00'>UAV</t>", {[player,2,"UAV"] execVM "scripts\gear\getLoadout.sqf"},[],1,false,true,"","_this distance _target < 15"];
			};
		};
	};
	case (_cammo == 3): { //3:MCT
		switch (true) do {
			//Lead Roles
			case (_role == "PLTC"): {		
				_object addAction ["<t size='1' shadow='1' color='#00ff00'>PLTC</t>", {[player,3,"PLTC"] execVM "scripts\gear\getLoadout.sqf"},[],1,false,true,"","_this distance _target < 15"];
			};
			case (_role == "GRPC");
			case (_role == "GRPC2"): {
				_object addAction ["<t size='1' shadow='1' color='#00ff00'>GRPC</t>", {[player,3,"GRPC"] execVM "scripts\gear\getLoadout.sqf"},[],1,false,true,"","_this distance _target < 15"];
				_object addAction ["<t size='1' shadow='1' color='#00ff00'>GRPC Utan GRT</t>", {[player,3,"GRPC2"] execVM "scripts\gear\getLoadout.sqf"},[],1,false,true,"","_this distance _target < 15"];
			};
			
			//Group Roles
			case (_role == "SJV");
			case (_role == "SJV2"): {
				_object addAction ["<t size='1' shadow='1' color='#00ff00'>SJV</t>", {[player,3,"SJV"] execVM "scripts\gear\getLoadout.sqf"},[],1,false,true,"","_this distance _target < 15"];
				_object addAction ["<t size='1' shadow='1' color='#00ff00'>SJV Skarpskytt</t>", {[player,3,"SJV2"] execVM "scripts\gear\getLoadout.sqf"},[],1,false,true,"","_this distance _target < 15"];	
			};
			case (_role == "KSP90");
			case (_role == "KSP58"): {
				_object addAction ["<t size='1' shadow='1' color='#00ff00'>KSP90</t>", {[player,3,"KSP90"] execVM "scripts\gear\getLoadout.sqf"},[],1,false,true,"","_this distance _target < 15"];
				_object addAction ["<t size='1' shadow='1' color='#00ff00'>KSP58</t>", {[player,3,"KSP58"] execVM "scripts\gear\getLoadout.sqf"},[],1,false,true,"","_this distance _target < 15"];
			};
			case (_role == "GRG"): {
				_object addAction ["<t size='1' shadow='1' color='#00ff00'>GRG</t>", {[player,3,"GRG"] execVM "scripts\gear\getLoadout.sqf"},[],1,false,true,"","_this distance _target < 15"];
				//SOLD
				_object addAction ["<t size='1' shadow='1' color='#00ff00'>Skyttesoldat</t>", {[player,3,"SOLD"] execVM "scripts\gear\getLoadout.sqf"},[],1,false,true,"","_this distance _target < 15"];
			};
			case (_role == "GRT"): {
				_object addAction ["<t size='1' shadow='1' color='#00ff00'>GRT</t>", {[player,3,"GRT"] execVM "scripts\gear\getLoadout.sqf"},[],1,false,true,"","_this distance _target < 15"];
				//SOLD
				_object addAction ["<t size='1' shadow='1' color='#00ff00'>Skyttesoldat</t>", {[player,3,"SOLD"] execVM "scripts\gear\getLoadout.sqf"},[],1,false,true,"","_this distance _target < 15"];
			};
			
			//Pilots
			case (_role == "HPIL"): {
				_object addAction ["<t size='1' shadow='1' color='#00ff00'>HELI PILOT</t>", {[player,3,"HPIL"] execVM "scripts\gear\getLoadout.sqf"},[],1,false,true,"","_this distance _target < 15"];
			};
			case (_role == "JPIL"): {
				_object addAction ["<t size='1' shadow='1' color='#00ff00'>JET PILOT</t>", {[player,3,"JPIL"] execVM "scripts\gear\getLoadout.sqf"},[],1,false,true,"","_this distance _target < 15"];
			};
			
			//Vehicle Crew
			case (_role == "VC");
			case (_role == "CREW");
			case (_role == "CREW2");
			case (_role == "CREW3"): {
				_object addAction ["<t size='1' shadow='1' color='#00ff00'>VagnChef</t>", {[player,3,"VC"] execVM "scripts\gear\getLoadout.sqf"},[],1,false,true,"","_this distance _target < 15"];
				_object addAction ["<t size='1' shadow='1' color='#00ff00'>Besättning</t>", {[player,3,"CREW"] execVM "scripts\gear\getLoadout.sqf"},[],1,false,true,"","_this distance _target < 15"];
				_object addAction ["<t size='1' shadow='1' color='#00ff00'>Besättning SJV</t>", {[player,3,"CREW2"] execVM "scripts\gear\getLoadout.sqf"},[],1,false,true,"","_this distance _target < 15"];
				_object addAction ["<t size='1' shadow='1' color='#00ff00'>Besättning ING</t>", {[player,3,"CREW3"] execVM "scripts\gear\getLoadout.sqf"},[],1,false,true,"","_this distance _target < 15"];
			};
			default {
				//SOLD s default
				_object addAction ["<t size='1' shadow='1' color='#00ff00'>Skyttesoldat</t>", {[player,3,"SOLD"] execVM "scripts\gear\getLoadout.sqf"},[],1,false,true,"","_this distance _target < 15"];
				//ING
				_object addAction ["<t size='1' shadow='1' color='#00ff00'>Ingengör</t>", {[player,3,"ING"] execVM "scripts\gear\getLoadout.sqf"},[],1,false,true,"","_this distance _target < 15"];	
				//SKRP
				_object addAction ["<t size='1' shadow='1' color='#00ff00'>Skarpskytt</t>", {[player,3,"SKRP"] execVM "scripts\gear\getLoadout.sqf"},[],1,false,true,"","_this distance _target < 15"];	
				//UAV
				_object addAction ["<t size='1' shadow='1' color='#00ff00'>UAV</t>", {[player,3,"UAV"] execVM "scripts\gear\getLoadout.sqf"},[],1,false,true,"","_this distance _target < 15"];
			};
		};
	};
	default { //0:M90
		switch (true) do { 
	//Lead Roles
			case (_role == "PLTC"): {		
				_object addAction ["<t size='1' shadow='1' color='#00ff00'>PLTC</t>", {[player,0,"PLTC"] execVM "scripts\gear\getLoadout.sqf"},[],1,false,true,"","_this distance _target < 15"];
			};
			case (_role == "GRPC");
			case (_role == "GRPC2"): {
				_object addAction ["<t size='1' shadow='1' color='#00ff00'>GRPC</t>", {[player,0,"GRPC"] execVM "scripts\gear\getLoadout.sqf"},[],1,false,true,"","_this distance _target < 15"];
				_object addAction ["<t size='1' shadow='1' color='#00ff00'>GRPC Utan GRT</t>", {[player,0,"GRPC2"] execVM "scripts\gear\getLoadout.sqf"},[],1,false,true,"","_this distance _target < 15"];
			};
			
			//Group Roles
			case (_role == "SJV");
			case (_role == "SJV2"): {
				_object addAction ["<t size='1' shadow='1' color='#00ff00'>SJV</t>", {[player,0,"SJV"] execVM "scripts\gear\getLoadout.sqf"},[],1,false,true,"","_this distance _target < 15"];
				_object addAction ["<t size='1' shadow='1' color='#00ff00'>SJV Skarpskytt</t>", {[player,0,"SJV2"] execVM "scripts\gear\getLoadout.sqf"},[],1,false,true,"","_this distance _target < 15"];	
			};
			case (_role == "KSP90");
			case (_role == "KSP58"): {
				_object addAction ["<t size='1' shadow='1' color='#00ff00'>KSP90</t>", {[player,0,"KSP90"] execVM "scripts\gear\getLoadout.sqf"},[],1,false,true,"","_this distance _target < 15"];
				_object addAction ["<t size='1' shadow='1' color='#00ff00'>KSP58</t>", {[player,0,"KSP58"] execVM "scripts\gear\getLoadout.sqf"},[],1,false,true,"","_this distance _target < 15"];
			};
			case (_role == "GRG"): {
				_object addAction ["<t size='1' shadow='1' color='#00ff00'>GRG</t>", {[player,0,"GRG"] execVM "scripts\gear\getLoadout.sqf"},[],1,false,true,"","_this distance _target < 15"];
				//SOLD
				_object addAction ["<t size='1' shadow='1' color='#00ff00'>Skyttesoldat</t>", {[player,0,"SOLD"] execVM "scripts\gear\getLoadout.sqf"},[],1,false,true,"","_this distance _target < 15"];
			};
			case (_role == "GRT"): {
				_object addAction ["<t size='1' shadow='1' color='#00ff00'>GRT</t>", {[player,0,"GRT"] execVM "scripts\gear\getLoadout.sqf"},[],1,false,true,"","_this distance _target < 15"];
				//SOLD
				_object addAction ["<t size='1' shadow='1' color='#00ff00'>Skyttesoldat</t>", {[player,0,"SOLD"] execVM "scripts\gear\getLoadout.sqf"},[],1,false,true,"","_this distance _target < 15"];
			};

			//Pilots
			case (_role == "HPIL"): {
				_object addAction ["<t size='1' shadow='1' color='#00ff00'>HELI PILOT</t>", {[player,0,"HPIL"] execVM "scripts\gear\getLoadout.sqf"},[],1,false,true,"","_this distance _target < 15"];
			};
			case (_role == "JPIL"): {
				_object addAction ["<t size='1' shadow='1' color='#00ff00'>JET PILOT</t>", {[player,0,"JPIL"] execVM "scripts\gear\getLoadout.sqf"},[],1,false,true,"","_this distance _target < 15"];
			};
			
			//Vehicle Crew
			case (_role == "VC");
			case (_role == "CREW");
			case (_role == "CREW2");
			case (_role == "CREW3"): {
				_object addAction ["<t size='1' shadow='1' color='#00ff00'>VagnChef</t>", {[player,0,"VC"] execVM "scripts\gear\getLoadout.sqf"},[],1,false,true,"","_this distance _target < 15"];
				_object addAction ["<t size='1' shadow='1' color='#00ff00'>Besättning</t>", {[player,0,"CREW"] execVM "scripts\gear\getLoadout.sqf"},[],1,false,true,"","_this distance _target < 15"];
				_object addAction ["<t size='1' shadow='1' color='#00ff00'>Besättning SJV</t>", {[player,0,"CREW2"] execVM "scripts\gear\getLoadout.sqf"},[],1,false,true,"","_this distance _target < 15"];
				_object addAction ["<t size='1' shadow='1' color='#00ff00'>Besättning ING</t>", {[player,0,"CREW3"] execVM "scripts\gear\getLoadout.sqf"},[],1,false,true,"","_this distance _target < 15"];
			};
			default {
				//SOLD as Default
				_object addAction ["<t size='1' shadow='1' color='#00ff00'>Skyttesoldat</t>", {[player,0,"SOLD"] execVM "scripts\gear\getLoadout.sqf"},[],1,false,true,"","_this distance _target < 15"];
				//ING
				_object addAction ["<t size='1' shadow='1' color='#00ff00'>Ingengör</t>", {[player,0,"ING"] execVM "scripts\gear\getLoadout.sqf"},[],1,false,true,"","_this distance _target < 15"];	
				//SKRP
				_object addAction ["<t size='1' shadow='1' color='#00ff00'>Skarpskytt</t>", {[player,0,"SKRP"] execVM "scripts\gear\getLoadout.sqf"},[],1,false,true,"","_this distance _target < 15"];	
				//UAV
				_object addAction ["<t size='1' shadow='1' color='#00ff00'>UAV</t>", {[player,0,"UAV"] execVM "scripts\gear\getLoadout.sqf"},[],1,false,true,"","_this distance _target < 15"];
			};
		};
	};
};

_object addAction ["<t size='1.2' shadow='1' color='#ff0000'>----------------</t>", "",[],1,false,true,"","_this distance _target < 15"];
_object addAction[("<t size='1.3' shadow='2' color='#33cc33'>") + "ACE Arsenal" + "</t>",{[SGU_Arsenal, player, true] call ace_arsenal_fnc_openBox;},[],1,false,true,"","_this distance _target < 15"];
