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

//systemchat format ["ARS.Cammo: %1", _cammo];
//systemchat format ["ARS.Roll: %1", _role];

_object allowDamage false;
_object enableSimulation false;


switch (_role) do {
	//Lead Roles
	case ("PLTC"): {		
		_object addAction ["<t size='1' shadow='1' color='#00ff00'>PLTC</t>", {[player,"PLTC"] execVM "scripts\gear\getLoadout.sqf"},[],1,false,true,"","_this distance _target < 15"];
	};
	case ("GRPC");
	case ("GRPC2"): {
		_object addAction ["<t size='1' shadow='1' color='#00ff00'>GRPC</t>", {[player,"GRPC"] execVM "scripts\gear\getLoadout.sqf"},[],1,false,true,"","_this distance _target < 15"];
		_object addAction ["<t size='1' shadow='1' color='#00ff00'>GRPC Utan GRT</t>", {[player,"GRPC2"] execVM "scripts\gear\getLoadout.sqf"},[],1,false,true,"","_this distance _target < 15"];
	};
	
	//Group Roles
	case ("SJV");
	case ("SJV2"): {
		_object addAction ["<t size='1' shadow='1' color='#00ff00'>SJV</t>", {[player,"SJV"] execVM "scripts\gear\getLoadout.sqf"},[],1,false,true,"","_this distance _target < 15"];
		_object addAction ["<t size='1' shadow='1' color='#00ff00'>SJV Skarpskytt</t>", {[player,"SJV2"] execVM "scripts\gear\getLoadout.sqf"},[],1,false,true,"","_this distance _target < 15"];	
	};
	case ("KSP90");
	case ("KSP58"): {
		_object addAction ["<t size='1' shadow='1' color='#00ff00'>KSP90</t>", {[player,"KSP90"] execVM "scripts\gear\getLoadout.sqf"},[],1,false,true,"","_this distance _target < 15"];
		_object addAction ["<t size='1' shadow='1' color='#00ff00'>KSP58</t>", {[player,"KSP58"] execVM "scripts\gear\getLoadout.sqf"},[],1,false,true,"","_this distance _target < 15"];
		//SOLD
		_object addAction ["<t size='1' shadow='1' color='#00ff00'>Skyttesoldat</t>", {[player,"SOLD"] execVM "scripts\gear\getLoadout.sqf"},[],1,false,true,"","_this distance _target < 15"];
		//GRG ASS
		_object addAction ["<t size='1' shadow='1' color='#00ff00'>GRG Ass</t>", {[player,"GRGA"] execVM "scripts\gear\getLoadout.sqf"},[],1,false,true,"","_this distance _target < 15"];
	};
	case ("GRG"): {
		_object addAction ["<t size='1' shadow='1' color='#00ff00'>GRG</t>", {[player,"GRG"] execVM "scripts\gear\getLoadout.sqf"},[],1,false,true,"","_this distance _target < 15"];
		//SOLD
		_object addAction ["<t size='1' shadow='1' color='#00ff00'>Skyttesoldat</t>", {[player,"SOLD"] execVM "scripts\gear\getLoadout.sqf"},[],1,false,true,"","_this distance _target < 15"];
	};
	case ("GRT"): {
		_object addAction ["<t size='1' shadow='1' color='#00ff00'>GRT</t>", {[player,"GRT"] execVM "scripts\gear\getLoadout.sqf"},[],1,false,true,"","_this distance _target < 15"];
		//SOLD
		_object addAction ["<t size='1' shadow='1' color='#00ff00'>Skyttesoldat</t>", {[player,"SOLD"] execVM "scripts\gear\getLoadout.sqf"},[],1,false,true,"","_this distance _target < 15"];
		//GRG ASS
		_object addAction ["<t size='1' shadow='1' color='#00ff00'>GRG Ass</t>", {[player,"GRGA"] execVM "scripts\gear\getLoadout.sqf"},[],1,false,true,"","_this distance _target < 15"];
	};
	
	//Pilots
	case ("HPIL"): {
		_object addAction ["<t size='1' shadow='1' color='#00ff00'>HELI PILOT</t>", {[player,"HPIL"] execVM "scripts\gear\getLoadout.sqf"},[],1,false,true,"","_this distance _target < 15"];
	};
	case ("JPIL"): {
		_object addAction ["<t size='1' shadow='1' color='#00ff00'>JET PILOT</t>", {[player,"JPIL"] execVM "scripts\gear\getLoadout.sqf"},[],1,false,true,"","_this distance _target < 15"];
	};
	
	//Vehicle Crew
	case ("VC");
	case ("CREW");
	case ("CREW2");
	case ("CREW3"): {
		_object addAction ["<t size='1' shadow='1' color='#00ff00'>VagnChef</t>", {[player,"VC"] execVM "scripts\gear\getLoadout.sqf"},[],1,false,true,"","_this distance _target < 15"];
		_object addAction ["<t size='1' shadow='1' color='#00ff00'>Besättning</t>", {[player,"CREW"] execVM "scripts\gear\getLoadout.sqf"},[],1,false,true,"","_this distance _target < 15"];
		_object addAction ["<t size='1' shadow='1' color='#00ff00'>Besättning SJV</t>", {[player,"CREW2"] execVM "scripts\gear\getLoadout.sqf"},[],1,false,true,"","_this distance _target < 15"];
		_object addAction ["<t size='1' shadow='1' color='#00ff00'>Besättning ING</t>", {[player,"CREW3"] execVM "scripts\gear\getLoadout.sqf"},[],1,false,true,"","_this distance _target < 15"];
	};
	default {
		//SOLD as default
		_object addAction ["<t size='1' shadow='1' color='#00ff00'>Skyttesoldat</t>", {[player,"SOLD"] execVM "scripts\gear\getLoadout.sqf"},[],1,false,true,"","_this distance _target < 15"];
		//ING
		_object addAction ["<t size='1' shadow='1' color='#00ff00'>Ingengör</t>", {[player,"ING"] execVM "scripts\gear\getLoadout.sqf"},[],1,false,true,"","_this distance _target < 15"];	
		//SKRP
		_object addAction ["<t size='1' shadow='1' color='#00ff00'>Skarpskytt</t>", {[player,"SKRP"] execVM "scripts\gear\getLoadout.sqf"},[],1,false,true,"","_this distance _target < 15"];	
		//UAV
		_object addAction ["<t size='1' shadow='1' color='#00ff00'>UAV</t>", {[player,"UAV"] execVM "scripts\gear\getLoadout.sqf"},[],1,false,true,"","_this distance _target < 15"];
		//FARB
		_object addAction ["<t size='1' shadow='1' color='#00ff00'>Fältarbetare</t>", {[player,"FARB"] execVM "scripts\gear\getLoadout.sqf"},[],1,false,true,"","_this distance _target < 15"];
		//GRG ASS
		_object addAction ["<t size='1' shadow='1' color='#00ff00'>GRG Asst</t>", {[player,"GRGA"] execVM "scripts\gear\getLoadout.sqf"},[],1,false,true,"","_this distance _target < 15"];
	};
};


_object addAction ["<t size='1.2' shadow='1' color='#ff0000'>----------------</t>", "",[],1,false,true,"","_this distance _target < 15"];
_object addAction[("<t size='1.3' shadow='2' color='#33cc33'>") + "ACE Arsenal" + "</t>",{[SGU_Arsenal, player, true] call ace_arsenal_fnc_openBox;},[],1,false,true,"","_this distance _target < 15"];
