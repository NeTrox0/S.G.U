

To use the gear scripts call using example below.

For Woodland Cammo
this addAction ["<t size='1' shadow='1' color='#00ff00'>M90K</t>", {[player,"W"] execVM "scripts\gear\get_Gear.sqf"},[],1,false,true,"","_this distance _target < 15"];

For Desert Cammo
this addAction ["<t size='1' shadow='1' color='#00ff00'>M90K</t>", {[player,"D"] execVM "scripts\gear\get_Gear.sqf"},[],1,false,true,"","_this distance _target < 15"];


Call sequence for gear.

get_Gear 
assign_Gear

get_Items
assign_Radio
assign_Items
assign_Ace
assign_Medical

get_Weapons
assign_Weapons
assign_Sidearm
assign_Grenades
assign_Launcher
