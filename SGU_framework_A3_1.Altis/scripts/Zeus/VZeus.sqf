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