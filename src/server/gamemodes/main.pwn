#include <a_samp>
#include <a_mysql>
#include <a_objects>
#include <streamer>
#include <sscanf2>
#include <Pawn.Regex>
#include <bashovski_zones>
#include <newsamp>
//#include <progress2>
#include <Pawn.CMD>
#include <YSI\y_hooks>

/**

	*	ArtConfig

*/

#include "0_3_dl/ArtConfig.pwn"


/**
	*	MVC Pattern
*/

#include "Model.pwn"
#include "View.pwn"
#include "Controller.pwn"


/**

	*	Initialization of gamemode

*/

main() {}

public OnGameModeInit() {

	Streamer_VisibleItems( STREAMER_TYPE_OBJECT, 2000 );  
	return (true);
}
public OnGameModeExit() {
	return (true);
}

public OnPlayerCommandPerformed(playerid, cmd[], params[], result, flags) {
	printf( "cmd: %s, result: %d", cmd, result );
}

cmd:vehicle( playerid, params[] ) {
	if( sscanf( params, "i", params[ 0 ] ) ) return SendClientMessage( playerid, -1, "/vehicle [vehicleid]" ); 
	new 
		Float:x, Float:y, Float:z;
	GetPlayerPos( playerid, x, y, z );
	CreateVehicle( params[ 0 ], x, y, z, 0, random( 255 ), random( 255 ), -1 );
	return (true);
}

cmd:gotopos( playerid, params[] ) {
	new 
		Float:x, Float:y, Float:z;
	if( sscanf( params, "fff", x, y, z ) ) return true;
	SetPlayerPos( playerid, x, y, z );
	return (true); 
}

cmd:createobject( playerid, params[] ) {
	if( sscanf( params, "i", params[ 0 ] ) ) return true;
	new 
		Float:x, Float:y, Float:z;
	GetPlayerPos( playerid, x, y, z );
	CreateObject( params[ 0 ], x, y, z, 0, 0, 0 );
	SetPlayerPos( playerid, x, y, z+20 );
	return (true);
}

cmd:jetpack( playerid, params[] ) {

	SetPlayerSpecialAction( playerid, SPECIAL_ACTION_USEJETPACK );
	return (true);
}

