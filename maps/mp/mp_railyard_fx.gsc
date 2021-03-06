
main()
{
	precacheFX();
	ambientFX();

	level.scr_sound["flak88_explode"] = "flak88_explode";
}

precacheFX()
{
	level._effect["flak_explosion"] = [[level.ex_PrecacheEffect]]("fx/explosions/flak88_explosion.efx");

	if(level.ex_ambfirefx)
	{
		level._effect["building_fire_large"] = [[level.ex_PrecacheEffect]]("fx/fire/building_fire_large.efx");
		level._effect["tank_fire_turret"] = [[level.ex_PrecacheEffect]]("fx/fire/tank_fire_turret_small.efx");
		level._effect["tank_fire_engine"] = [[level.ex_PrecacheEffect]]("fx/fire/tank_fire_engine.efx");
	}

	if(level.ex_ambsmokefx)
	{
		level._effect["thin_black_smoke_M"] = [[level.ex_PrecacheEffect]]("fx/smoke/thin_black_smoke_M.efx");
		level._effect["battlefield_smokebank_S"] = [[level.ex_PrecacheEffect]]("fx/smoke/battlefield_smokebank_S.efx");
	}

	if(level.ex_ambsnowfx)
	{
		level._effect["snow_light"] = [[level.ex_PrecacheEffect]]("fx/misc/snow_light_mp_railyard.efx");
		level._effect["snow_wind_cityhall"] = [[level.ex_PrecacheEffect]]("fx/misc/snow_wind_cityhall.efx");
	}

	if(level.ex_ambfogbankfx) level._effect["fogbank_small_duhoc"] = [[level.ex_PrecacheEffect]]("fx/misc/fogbank_small_duhoc.efx");

}

ambientFX()
{
	if(level.ex_ambsnowfx)
	{
		maps\mp\_fx::loopfx("snow_light", (-1249,961,355), 0.6, (-1249,961,455));
		maps\mp\_fx::loopfx("snow_wind_cityhall", (193,766,-12), 0.6, (193,766,87));
		maps\mp\_fx::loopfx("snow_wind_cityhall", (-155,1608,-10), 0.6, (-155,1608,89));
		maps\mp\_fx::loopfx("snow_wind_cityhall", (-493,1639,-10), 0.6, (-493,1639,89));
		maps\mp\_fx::loopfx("snow_wind_cityhall", (166,65,-4), 0.6, (166,65,95));
		maps\mp\_fx::loopfx("snow_wind_cityhall", (45,-919,-10), 0.6, (45,-919,89));
		maps\mp\_fx::loopfx("snow_wind_cityhall", (-611,-263,-16), 0.6, (-611,-263,83));
		maps\mp\_fx::loopfx("snow_wind_cityhall", (201,1434,-11), 0.6, (201,1434,88));
		maps\mp\_fx::loopfx("snow_wind_cityhall", (-1874,11,-7), 0.6, (-1874,11,92));
		maps\mp\_fx::loopfx("snow_wind_cityhall", (-1518,-927,14), 0.6, (-1518,-927,114));
		maps\mp\_fx::loopfx("snow_wind_cityhall", (-2270,-845,-4), 0.6, (-2270,-845,95));
		maps\mp\_fx::loopfx("snow_wind_cityhall", (-217,211,33), 0.6, (-217,211,133));
		maps\mp\_fx::loopfx("snow_wind_cityhall", (-1165,-483,-2), 0.6, (-1165,-483,97));
		maps\mp\_fx::loopfx("snow_wind_cityhall", (-2343,3342,-53), 0.6, (-2343,3342,45));
		maps\mp\_fx::loopfx("snow_wind_cityhall", (-1843,2962,-58), 0.6, (-1843,2962,40));
		maps\mp\_fx::loopfx("snow_wind_cityhall", (-1325,2825,-62), 0.6, (-1325,2825,36));
	}

	if(level.ex_ambfogbankfx)
	{
		maps\mp\_fx::loopfx("fogbank_small_duhoc", (-2514,305,403), 2, (-2514,305,502));
		maps\mp\_fx::loopfx("fogbank_small_duhoc", (-2579,91,-23), 2, (-2579,91,75));
		maps\mp\_fx::loopfx("fogbank_small_duhoc", (-1350,280,-15), 2, (-1350,280,82));
		maps\mp\_fx::loopfx("fogbank_small_duhoc", (-810,1515,-9), 2, (-810,1515,88));
		maps\mp\_fx::loopfx("fogbank_small_duhoc", (-194,2170,277), 2, (-194,2170,375));
		maps\mp\_fx::loopfx("fogbank_small_duhoc", (-199,2250,21), 2, (-199,2250,119));
		maps\mp\_fx::loopfx("fogbank_small_duhoc", (483,1933,-7), 2, (483,1933,90));
	}

	if(level.ex_ambfirefx)
	{
		maps\mp\_fx::loopfx("building_fire_large", (302,1083,687), 2, (400,1078,703));
		maps\mp\_fx::loopfx("building_fire_large", (302,1083,687), 2, (400,1078,703));
		maps\mp\_fx::loopfx("building_fire_large", (433,1216,537), 2, (433,1117,549));
		maps\mp\_fx::loopfx("tank_fire_turret", (49,1620,73), 1, (49,1620,172));
		maps\mp\_fx::loopfx("tank_fire_turret", (-2287,2719,12), 1, (-2287,2719,111));
		maps\mp\_fx::loopfx("tank_fire_engine", (-23,1667,56), 1, (-23,1667,155));
		maps\mp\_fx::loopfx("tank_fire_engine", (-2292,2712,29), 1, (-2292,2712,128));
		maps\mp\_fx::loopfx("tank_fire_engine", (-2335,2638,-11), 1, (-2335,2638,87));
	}

	if(level.ex_ambsmokefx)
	{
		maps\mp\_fx::loopfx("thin_black_smoke_M", (424,1099,959), 0.6, (424,1099,1058));
		maps\mp\_fx::loopfx("battlefield_smokebank_S", (-2084,2733,-56), 1, (-2084,2733,42));
		maps\mp\_fx::loopfx("battlefield_smokebank_S", (-309,592,63), 1, (-309,592,162));
	}

	if(level.ex_ambsoundfx)
	{
		maps\mp\_fx::soundfx("bigfire", (431,1101,603));
		maps\mp\_fx::soundfx("medfire", (48,1598,69));	
		maps\mp\_fx::soundfx("medfire", (-2272,2716,3));
	}
}
