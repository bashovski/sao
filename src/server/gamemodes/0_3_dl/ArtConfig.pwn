#include <YSI\y_hooks>

#define base_no_col 18766
#define all_vw 		-1
static 
	loadedSkinModels,
	loadedObjectModels;

stock AddSkinModel( baseid, newid, dffname[], txdname[] ) {
	loadedSkinModels++;
	return AddCharModel( baseid, newid, dffname[], txdname );
}

getLoadedSkinModels() {
	return loadedSkinModels;
}

getLoadedObjectModels() {
	return loadedObjectModels;
}

AddObjModel( virtualworld, baseid, newid, dffname[], txdname[] ) {
	loadedObjectModels++;
	return AddSimpleModel( virtualworld, baseid, newid, dffname, txdname );
}

__ArtConfigInit() {

	AddObjModel( all_vw, base_no_col, -2001, "/bennys/bshell.dff", "/bennys/bennys.txd" );
	AddObjModel( all_vw, base_no_col, -2002, "/bennys/bext.dff", "/bennys/bennys.txd" );
	AddObjModel( all_vw, base_no_col, -2003, "/bennys/bprops.dff", "/bennys/bennys.txd" );
	AddObjModel( all_vw, base_no_col, -2004, "/bennys/bshit.dff", "/bennys/bennys.txd" );
	AddObjModel( all_vw, base_no_col, -2005, "/bennys/bvehic.dff", "/bennys/bennys.txd" );
	AddObjModel( all_vw, base_no_col, -2006, "/bennys/framewov.dff", "/bennys/bennys2.txd" );
	AddObjModel( all_vw, base_no_col, -2007, "/bennys/lamps_von.dff", "/bennys/bennys.txd" );
	AddObjModel( all_vw, base_no_col, -2008, "/bennys/llframe.dff", "/bennys/bennys2.txd" );
	AddObjModel( all_vw, base_no_col, -2009, "/bennys/v_doorbenny.dff", "/bennys/bennys.txd" );
	AddObjModel( all_vw, base_no_col, -2010, "/bennys/lr_banners1.dff", "/bennys/bennys.txd" );
	AddObjModel( all_vw, base_no_col, -2012, "/bennys/lr_banners2.dff", "/bennys/bennys.txd" );
	AddObjModel( all_vw, base_no_col, -2013, "/bennys/lr_banners3.dff", "/bennys/bennys.txd" );
	AddObjModel( all_vw, base_no_col, -2014, "/bennys/lr_banners4.dff", "/bennys/bennys.txd" );
	AddObjModel( all_vw, base_no_col, -2015, "/bennys/lr_carlift.dff", "/bennys/bennys.txd" );
	AddObjModel( all_vw, base_no_col, -2016, "/bennys/lr_grafitib.dff", "/bennys/bennys.txd" );
	AddObjModel( all_vw, base_no_col, -2017, "/bennys/lr_grafside.dff", "/bennys/bennys.txd" );
	AddObjModel( all_vw, base_no_col, -2018, "/bennys/lr_mezzanin.dff", "/bennys/bennys.txd" );
	AddObjModel( all_vw, base_no_col, -2019, "/bennys/lr_montageb.dff", "/bennys/bennys.txd" );
	AddObjModel( all_vw, base_no_col, -2020, "/bennys/lr_montx.dff", "/bennys/bennys.txd" );
	AddObjModel( all_vw, base_no_col, -2021, "/bennys/lr_pillars.dff", "/bennys/bennys.txd" );
	AddObjModel( all_vw, base_no_col, -2022, "/bennys/lr_racksb.dff", "/bennys/bennys.txd" );
	AddObjModel( all_vw, base_no_col, -2023, "/bennys/lr_rail1.dff", "/bennys/bennys.txd" );
	AddObjModel( all_vw, base_no_col, -2024, "/bennys/lr_rail2.dff", "/bennys/bennys.txd" );
	AddObjModel( all_vw, base_no_col, -2026, "/bennys/lr_spray.dff", "/bennys/bennys.txd" );
	AddObjModel( all_vw, base_no_col, -2028, "/bennys/lr_office.dff", "/bennys/bennys.txd" );


	AddObjModel( all_vw, base_no_col, -2029, "/pershing/LODRoads06_LAn01.dff", "/pershing/pershing.txd" );
	AddObjModel( all_vw, base_no_col, -2030, "/pershing/LODRoads13_LAn.dff", "/pershing/pershing.txd" );
	AddObjModel( all_vw, base_no_col, -2031, "/pershing/LODRoads14_LAn.dff", "/pershing/pershing.txd" );
	AddObjModel( all_vw, base_no_col, -2032, "/pershing/LODRoads24_LAn.dff", "/pershing/pershing.txd" );
	AddObjModel( all_vw, base_no_col, -2033, "/pershing/LODshingSq1_LAn.dff", "/pershing/pershing.txd" );
	AddObjModel( all_vw, base_no_col, -2034, "/pershing/LODshingSq2_LAn.dff", "/pershing/pershing.txd" );
	AddObjModel( all_vw, base_no_col, -2035, "/pershing/PershingSq1_LAn.dff", "/pershing/pershing.txd" );
	AddObjModel( all_vw, base_no_col, -2036, "/pershing/PershingSq2_LAn.dff", "/pershing/pershing.txd" );
	AddObjModel( all_vw, base_no_col, -2037, "/pershing/Roads06_LAn.dff", "/pershing/pershing.txd" );
	AddObjModel( all_vw, base_no_col, -2038, "/pershing/Roads13_LAn.dff", "/pershing/pershing.txd" );
	AddObjModel( all_vw, base_no_col, -2039, "/pershing/Roads14_LAn.dff", "/pershing/pershing.txd" );
	AddObjModel( all_vw, base_no_col, -2040, "/pershing/Roads24_LAn.dff", "/pershing/pershing.txd" );


	printf( "[SA:O] :: Loaded %d skin models\n[SA:O] :: Loaded %d object models\n[SA:O] :: Total models loaded: %d", loadedSkinModels, loadedObjectModels, loadedSkinModels+loadedObjectModels );
	return (true);
}

hook OnGameModeInit() {
	__ArtConfigInit();
	printf( "[SA:O] :: Initialization of custom models has been completed successfully." );
	return (true);
}	