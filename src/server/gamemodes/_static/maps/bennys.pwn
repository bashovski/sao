#include <YSI\y_hooks>

/**

	* Benny's Garage model(s)

*/


hook OnGameModeInit() {

	static 
		objid;
	objid = CreateDynamicObjectEx( -2002, 2273.94, -1999.89, 21.3, 0.000, 0.000, 0.000, 300.00, 300.00 );
	objid = CreateDynamicObjectEx( -2001, 2277.78, -1999.633, 18.72, 0.000, 0.000, 0.000, 300.00, 300.00 );
	objid = CreateDynamicObjectEx( -2026, 2291.234, -1993.04, 14.593, 0.000, 0.000, 0.000, 300.00, 300.00 );
	objid = CreateDynamicObjectEx( -2018, 2279.437, -1999.85, 16.204, 0.000, 0.000, 0.000, 300.00, 300.00 );
	objid = CreateDynamicObjectEx( -2023, 2280.19, -2007.956, 15.2, 0.000, 0.000, 0.000, 300.00, 300.00 );
	objid = CreateDynamicObjectEx( -2015, 2276.711, -1995.611, 14.37, 0.000, 0.000, 0.000, 300.00, 300.00 );
	objid = CreateDynamicObjectEx( -2004, 2279.9, -1987.3, 14.7, 0.000, 0.000, 0.000, 300.00, 300.00 );
	objid = CreateDynamicObjectEx( -2022, 2265.62, -2006.75, 14.08, 0.000, 0.000, 0.000, 300.00, 300.00 );
	objid = CreateDynamicObjectEx( -2016, 2279.7, -1999.672, 18.502, 0.000, 0.000, 0.000, 300.00, 300.00 );
	objid = CreateDynamicObjectEx( -2021, 2279.6788, -1999.62, 18.666, 0.000, 0.000, 0.000, 300.00, 300.00 );
	objid = CreateDynamicObjectEx( -2006, 2279.6, -1997.37, 18.66, 0.000, 0.000, 0.000, 300.00, 300.00 );
	objid = CreateDynamicObjectEx( -2024, 2274.388, -1985.835, 15, 0.000, 0.000, 0.000, 300.00, 300.00 );
	objid = CreateDynamicObjectEx( -2017, 2266.33, -1999.8, 15.21, 0.000, 0.000, 0.000, 300.00, 300.00 );
	objid = CreateDynamicObjectEx( -2005, 2266.3, -1999.64, 14.45, 0.000, 0.000, 0.000, 300.00, 300.00 );
	objid = CreateDynamicObjectEx( -2020, 2280.231, -2003.968, 14.331, 0.000, 0.000, 0.000, 300.00, 300.00 );
	objid = CreateDynamicObjectEx( -2019, 2280.174, -2003.96, 14.323, 0.000, 0.000, 0.000, 300.00, 300.00 );
	objid = CreateDynamicObjectEx( -2012, 2260.656, -2003.09, 15.92, 0.000, 0.000, 0.000, 300.00, 300.00 );
	objid = CreateDynamicObjectEx( -2010, 2279.71, -1998.565, 16.79, 0.000, 0.000, 0.000, 300.00, 300.00 );
	objid = CreateDynamicObjectEx( -2013, 2291.18, -1992.412, 16.33, 0.000, 0.000, 0.000, 300.00, 300.00 );
	objid = CreateDynamicObjectEx( -2014, 2266.4, -1991.51, 16, 0.000, 0.000, 0.000, 300.00, 300.00 );
	objid = CreateDynamicObjectEx( -2008, 2279.24, -1996.3, 16.59, 0.000, 0.000, 0.000, 300.00, 300.00 );
	objid = CreateDynamicObjectEx( -2003, 2278.93, -2012.72, 17.24, 0.000, 0.000, 0.000, 300.00, 300.00 );
	objid = CreateDynamicObjectEx( -2007, 2279.54, -2000, 19.67, 0.000, 0.000, 0.000, 300.00, 300.00 );
	objid = CreateDynamicObjectEx( -2028, 2284.497, -2008.39, 19.662, 0.000, 0.000, 0.000, 300.00, 300.00 );

	return (true);

}

hook OnPlayerConnect( playerid ) {
	RemoveBuildingForPlayer(playerid, 5310, 2267.959, -1997.890, 18.578, 0.250);
	RemoveBuildingForPlayer(playerid, 5318, 2267.959, -1997.890, 18.578, 0.250);
	RemoveBuildingForPlayer(playerid, 1687, 2236.139, -2010.229, 18.296, 0.250);
	RemoveBuildingForPlayer(playerid, 1635, 2255.840, -2013.589, 15.148, 0.250);
	RemoveBuildingForPlayer(playerid, 1308, 2271.729, -2013.619, 11.515, 0.250);
	RemoveBuildingForPlayer(playerid, 1635, 2235.830, -1982.199, 17.625, 0.250);
	RemoveBuildingForPlayer(playerid, 1308, 2245.739, -1981.640, 11.515, 0.250);
	RemoveBuildingForPlayer(playerid, 1260, 2236.560, -1988.050, 26.281, 0.250);
	RemoveBuildingForPlayer(playerid, 1266, 2236.560, -1988.050, 26.281, 0.250);
	RemoveBuildingForPlayer(playerid, 1308, 2272.469, -1981.849, 11.515, 0.250);
	RemoveBuildingForPlayer(playerid, 1635, 2296.669, -1982.199, 17.625, 0.250);

	return (true);

}