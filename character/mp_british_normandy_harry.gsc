// THIS FILE IS AUTOGENERATED, DO NOT MODIFY
main()
{
	self setModel("xmodel/playerbody_british_normandy03");
	self attach("xmodel/head_british_harry", "", true);
	if(level.ex_hatmodels)
	{
		hatmodel = character\mp_hatmodels::randomHatModel(character\mp_hatmodels::mp_british_normandy());
		if(hatmodel != "") self.hatModel = hatmodel;
	}
	else self.hatModel = "xmodel/helmet_british_normandy";
	if(isDefined(self.hatModel)) self attach(self.hatModel, "", true);
	self setViewmodel("xmodel/viewmodel_hands_british");
}

precache()
{
	[[level.ex_PrecacheModel]]("xmodel/playerbody_british_normandy03");
	[[level.ex_PrecacheModel]]("xmodel/head_british_harry");
	if(!level.ex_hatmodels) [[level.ex_PrecacheModel]]("xmodel/helmet_british_normandy");
	[[level.ex_PrecacheModel]]("xmodel/viewmodel_hands_british");
}
