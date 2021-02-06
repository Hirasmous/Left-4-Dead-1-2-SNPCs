// Physics Sounds
//
//	NOTE:  CHAN_BODY is used by sounds in many cases, but the code
//   uses CHAN_STATIC in others, so I didn't specify a channel here
//  Volume is determined procedurally by the physics code
//

// *****************
// SURFACE MATERIALS

"Default.BulletImpact"
{
	"soundlevel"	"SNDLVL_NORM"
	"pitch"			"PITCH_NORM"
	"volume"			"0.7"
	"rndwave"
	{
		"wave"		"physics/plastic/plastic_box_impact_hard1.wav"
		"wave"		"physics/plastic/plastic_box_impact_hard2.wav"
		"wave"		"physics/plastic/plastic_box_impact_hard3.wav"
	}
}

"Default.ScrapeSmooth"
{
	"soundlevel"	"SNDLVL_NORM"
	"volume"		"0.4"
	"pitch"		"96,104"
	"wave"		"physics/plastic/plastic_box_scrape_smooth_loop2.wav"
}

"Default.ScrapeRough"
{
	"soundlevel"	"SNDLVL_NORM"
	"volume"		"0.5"
	"pitch"		"96,104"
	"wave"		"physics/plastic/plastic_box_scrape_smooth_loop1.wav"
}

"Default.ImpactSoft"
{
	"soundlevel"	"SNDLVL_NORM"
	"pitch"		"95,100"
	"volume"		"0.6"
	"rndwave"
	{
		"wave"		"physics/plastic/plastic_box_impact_soft2.wav"
		"wave"		"physics/plastic/plastic_box_impact_soft3.wav"
		"wave"		"physics/plastic/plastic_box_impact_soft4.wav"
	}
}

"Default.ImpactHard"
{
	"soundlevel"	"SNDLVL_NORM"
	"pitch"		"95,100"
	"volume"		"0.6"
	"rndwave"
	{
		"wave"		"physics/plastic/plastic_box_impact_hard1.wav"
		"wave"		"physics/plastic/plastic_box_impact_hard2.wav"
		"wave"		"physics/plastic/plastic_box_impact_hard3.wav"
	}
}


"SolidMetal.ImpactHard"
{
	"soundlevel"	"SNDLVL_NORM"
	"pitch"		"95,100"
	"volume"		"0.6"
	"rndwave"
	{
		"wave"		"physics/metal/metal_solid_impact_hard1.wav"
		"wave"		"physics/metal/metal_solid_impact_hard4.wav"
		"wave"		"physics/metal/metal_solid_impact_hard5.wav"
	}
}


"SolidMetal.ImpactSoft"
{
	"soundlevel"	"SNDLVL_NORM"
	"pitch"		"95,100"
	"volume"		"0.6"
	"rndwave"
	{
		"wave"		"physics/metal/metal_solid_impact_soft1.wav"
		"wave"		"physics/metal/metal_solid_impact_soft2.wav"
		"wave"		"physics/metal/metal_solid_impact_soft3.wav"
	}
}

"SolidMetal.ScrapeRough"
{
	"soundlevel"	"SNDLVL_NORM"
	"pitch"		"95,105"
	"volume"		"0.5"
	"wave"		"physics/metal/metal_box_scrape_rough_loop1.wav"
}

"SolidMetal.ScrapeSmooth"
{
	"soundlevel"	"SNDLVL_NORM"
	"pitch"		"95,105"
	"volume"		"0.5"
	"wave"		"physics/metal/metal_box_scrape_smooth_loop1.wav"
}

"SolidMetal.BulletImpact"
{
	"soundlevel"	"SNDLVL_NORM"
	"pitch"			"PITCH_NORM"
	"volume"		"0.7"
	"rndwave"
	{
		"wave"		"physics/metal/metal_solid_impact_bullet1.wav"
		"wave"		"physics/metal/metal_solid_impact_bullet2.wav"
		"wave"		"physics/metal/metal_solid_impact_bullet3.wav"
		"wave"		"physics/metal/metal_solid_impact_bullet4.wav"
	}
}

//"SolidMetal.Strain"
//{
//	"soundlevel"	"SNDLVL_NORM"
//	"pitch"			"PITCH_NORM"
//	"volume"		"0.7"
//	"rndwave"
//	{
//		"wave"		"physics/metal/metal_solid_strain1.wav"
//		"wave"		"physics/metal/metal_solid_strain4.wav"
//		"wave"		"physics/metal/metal_solid_strain5.wav"
//	}
//}


"Dirt.Impact"
{
	"soundlevel"	"SNDLVL_NORM"
	"volume"		"0.6"
	"pitch"		"98,100"
	"wave"		"physics/surfaces/sand_impact_bullet2.wav"
}

"Dirt.Scrape"
{
	"soundlevel"	"SNDLVL_NORM"
	"volume"		"0.5"
	"pitch"		"95,100"
	"wave"		"physics/cardboard/cardboard_box_scrape_rough_loop1.wav"
}

"Dirt.BulletImpact"
{
	"soundlevel"	"SNDLVL_NORM"
	"volume"		"0.7"
	"pitch"			"PITCH_NORM"
	"rndwave"
	{
		"wave"		"physics/surfaces/sand_impact_bullet1.wav"
		"wave"		"physics/surfaces/sand_impact_bullet2.wav"
		"wave"		"physics/surfaces/sand_impact_bullet3.wav"
		"wave"		"physics/surfaces/sand_impact_bullet4.wav"
	}
}



"MetalGrate.ImpactHard"
{
	"soundlevel"	"SNDLVL_NORM"
	"volume"		"0.6"
	"pitch"		"95,100"
	"rndwave"
	{
		"wave"		"physics/metal/metal_grate_impact_hard1.wav"
		"wave"		"physics/metal/metal_grate_impact_hard2.wav"
		"wave"		"physics/metal/metal_grate_impact_hard3.wav"
	}
}

"MetalGrate.ImpactSoft"
{
	"soundlevel"	"SNDLVL_NORM"
	"volume"		"0.5"
	"pitch"		"95,100"
	"rndwave"
	{
		"wave"		"physics/metal/metal_grate_impact_soft1.wav"
		"wave"		"physics/metal/metal_grate_impact_soft2.wav"
		"wave"		"physics/metal/metal_grate_impact_soft3.wav"
	}
}

"MetalGrate.ScrapeRough"
{
	"soundlevel"	"SNDLVL_NORM"
	"volume"		"0.5"
	"pitch"		"95,100"
	"wave"		"physics/metal/metal_box_scrape_rough_loop1.wav"
}

"MetalGrate.ScrapeSmooth"
{
	"soundlevel"	"SNDLVL_NORM"
	"volume"		"0.5"
	"pitch"		"95,100"
	"wave"		"physics/metal/metal_box_scrape_smooth_loop1.wav"
}

"MetalGrate.BulletImpact"
{
	"soundlevel"	"SNDLVL_NORM"
	"volume"		"0.5"
	"pitch"			"PITCH_NORM"
	"rndwave"
	{
		"wave"		"physics/metal/metal_sheet_impact_bullet1.wav"
		"wave"		"physics/metal/metal_sheet_impact_bullet2.wav"
		"wave"		"physics/metal/metal_solid_impact_bullet2.wav"
	}
}


"MetalVent.ImpactHard"
{
	"soundlevel"	"SNDLVL_NORM"
	"volume"		"0.6"
	"pitch"		"98,100"
	"rndwave"
	{
		"wave"		"physics/metal/metal_sheet_impact_hard6.wav"
		"wave"		"physics/metal/metal_sheet_impact_hard7.wav"
		"wave"		"physics/metal/metal_sheet_impact_hard8.wav"
	}
}


"Tile.BulletImpact"
{
	"soundlevel"	"SNDLVL_NORM"
	"volume"		"0.7"
	"pitch"			"PITCH_NORM"
	"rndwave"
	{
		"wave"	"physics/surfaces/tile_impact_bullet1.wav"
		"wave"	"physics/surfaces/tile_impact_bullet2.wav"
		"wave"	"physics/surfaces/tile_impact_bullet3.wav"
		"wave"	"physics/surfaces/tile_impact_bullet4.wav"	
	}	
}





"Water.BulletImpact"
{
	"soundlevel"	"SNDLVL_NORM"
	"volume"		"0.66"
	"pitch"			"PITCH_NORM"
	"rndwave"
	{
		"wave"	"player/footsteps/survivor/run/slosh1.wav"
		"wave"	"player/footsteps/survivor/run/slosh3.wav"
		"wave"	"player/footsteps/survivor/run/slosh2.wav"
		"wave"	"player/footsteps/survivor/run/slosh4.wav"
	}
}

"Underwater.BulletImpact"
{
	"soundlevel"	"SNDLVL_NORM"
	"volume"		"0.9"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"	"common/null.wav"
		// "wave"	"#physics/surfaces/underwater_impact_bullet1.wav"
		// "wave"	"#physics/surfaces/underwater_impact_bullet2.wav"
		// "wave"	"#physics/surfaces/underwater_impact_bullet3.wav"
	}
}


// generic water splash, used for water explosions, water impacts

"Physics.WaterSplash"
{
	"channel"		"CHAN_VOICE"
	"volume"		"0.800, 1.000"
	"pitch"			"85, 115"

	"soundlevel"	"SNDLVL_NORM"

	"rndwave"
	{
		"wave"	"ambient/water/water_splash1.wav"
		"wave"	"ambient/water/water_splash2.wav"
		"wave"	"ambient/water/water_splash3.wav"
	}
}

"BaseEntity.EnterWater"
{
	"channel"	"CHAN_AUTO"
	"volume"	"0.6"
	"soundlevel"	"SNDLVL_NORM"
	"pitch"	"PITCH_NORM"

	"wave"	"player/footsteps/survivor/run/wade1.wav"
}

"BaseEntity.ExitWater"
{
	"channel"	"CHAN_AUTO"
	"volume"	"0.6"
	"soundlevel"	"SNDLVL_NORM"
	"pitch"	"PITCH_NORM"

	"wave"	"player/footsteps/survivor/run/wade2.wav"
}





"Glass.ImpactHard"
{
	"soundlevel"	"SNDLVL_NORM"
	"volume"		"0.5"
	"pitch"			"PITCH_NORM"
	"rndwave"
	{
		"wave"	"physics/glass/glass_sheet_impact_hard1.wav"
		"wave"	"physics/glass/glass_sheet_impact_hard2.wav"
		"wave"	"physics/glass/glass_sheet_impact_hard3.wav"
	}
}

"Glass.ImpactSoft"
{
	"soundlevel"	"SNDLVL_NORM"
	"volume"		"0.4"
	"pitch"			"PITCH_NORM"
	"rndwave"
	{
		"wave"	"physics/glass/glass_sheet_impact_soft1.wav"
		"wave"	"physics/glass/glass_sheet_impact_soft2.wav"
		"wave"	"physics/glass/glass_sheet_impact_soft3.wav"
	}
}

"Glass.BulletImpact"
{
	"soundlevel"	"SNDLVL_NORM"
	"volume"		"0.7"
	"pitch"			"PITCH_NORM"
	"rndwave"
	{
		"wave"	"physics/glass/glass_impact_bullet1.wav"
		"wave"	"physics/glass/glass_impact_bullet2.wav"
		"wave"	"physics/glass/glass_impact_bullet3.wav"	
		"wave"	"physics/glass/glass_impact_bullet4.wav"
	}
}


"Glass.ScrapeRough"
{
	"soundlevel"	"SNDLVL_NORM"
	"volume"		"0.3"
	"pitch"			"PITCH_NORM"
	"rndwave"
	{
		"wave"	"physics/glass/glass_sheet_impact_hard1.wav"
		"wave"	"physics/glass/glass_sheet_impact_hard2.wav"
		"wave"	"physics/glass/glass_sheet_impact_hard3.wav"
	}
}

"Glass.ScrapeSmooth"
{
	"soundlevel"	"SNDLVL_NORM"
	"volume"		"0.2"
	"pitch"			"PITCH_NORM"
	"rndwave"
	{
		"wave"	"physics/glass/glass_sheet_impact_soft1.wav"
		"wave"	"physics/glass/glass_sheet_impact_soft2.wav"
		"wave"	"physics/glass/glass_sheet_impact_soft3.wav"
	}
}

//"Glass.Strain"
//{
//	"soundlevel"	"SNDLVL_NORM"
//	"volume"		"0.4"
//	"pitch"			"PITCH_NORM"
//	"rndwave"
//	{
//		"wave"	"physics/glass/glass_strain1.wav"
//		"wave"	"physics/glass/glass_strain2.wav"
//		"wave"	"physics/glass/glass_strain3.wav"
//		"wave"	"physics/glass/glass_strain4.wav"
//	}
//}

"Glass.Break"
{
	"soundlevel"	"SNDLVL_NORM"
	"volume"		"0.7"
	"pitch"			"PITCH_NORM"
	"rndwave"
	{
		"wave"	"physics/glass/glass_sheet_break1.wav"
		// "wave"	"physics/glass/glass_sheet_break2.wav"
		"wave"	"physics/glass/glass_sheet_break3.wav"
	}
}


"Pottery.Break"
{
	"soundlevel"	"SNDLVL_NORM"
	"volume"		"0.7"
	"pitch"			"PITCH_NORM"
	"rndwave"
	{
		"wave"	"physics/glass/glass_pottery_break1.wav"
		"wave"	"physics/glass/glass_pottery_break2.wav"
		"wave"	"physics/glass/glass_pottery_break3.wav"
	}
}

"Pottery.ImpactHard"
{
	"soundlevel"	"SNDLVL_NORM"
	"volume"		"0.5"
	"pitch"			"PITCH_NORM"
	"rndwave"
	{
		"wave"	"physics/glass/glass_impact_hard1.wav"
		"wave"	"physics/glass/glass_impact_hard2.wav"
		"wave"	"physics/glass/glass_impact_hard3.wav"
	}
}

"Pottery.ImpactSoft"
{
	"soundlevel"	"SNDLVL_NORM"
	"volume"		"0.4"
	"pitch"			"PITCH_NORM"
	"rndwave"
	{
		"wave"	"physics/glass/glass_impact_soft1.wav"
		"wave"	"physics/glass/glass_impact_soft2.wav"
		"wave"	"physics/glass/glass_impact_soft3.wav"
	}
}

"Pottery.BulletImpact"
{
	"soundlevel"	"SNDLVL_NORM"
	"volume"		"0.7"
	"pitch"			"PITCH_NORM"
	"rndwave"
	{
		"wave"	"physics/glass/glass_pottery_break1.wav"
		"wave"	"physics/glass/glass_pottery_break2.wav"
		"wave"	"physics/glass/glass_pottery_break3.wav"
	}
}



"Computer.BulletImpact"
{
	"soundlevel"	"SNDLVL_NORM"
	"volume"		"0.7"
	"pitch"			"PITCH_NORM"
	"rndwave"
	{
		"wave"	"physics/glass/glass_impact_bullet1.wav"
		"wave"	"physics/glass/glass_impact_bullet2.wav"
		"wave"	"physics/metal/metal_computer_impact_bullet1.wav"
		"wave"	"physics/metal/metal_computer_impact_bullet2.wav"
		"wave"	"physics/metal/metal_computer_impact_bullet3.wav"
		"wave"	"physics/plastic/plastic_box_impact_bullet1.wav"
		"wave"	"physics/plastic/plastic_box_impact_bullet2.wav"
		"wave"	"physics/plastic/plastic_box_impact_bullet3.wav"
	}
}

"Computer.ImpactHard"
{
	"soundlevel"	"SNDLVL_NORM"
	"volume"		"0.5"
	"pitch"			"PITCH_NORM"
	"rndwave"
	{
		"wave"	"physics/metal/metal_computer_impact_hard1.wav"
		"wave"	"physics/metal/metal_computer_impact_hard2.wav"
		"wave"	"physics/metal/metal_computer_impact_hard3.wav"
	}
}

"Computer.ImpactSoft"
{
	"soundlevel"	"SNDLVL_NORM"
	"volume"		"0.4"
	"pitch"			"PITCH_NORM"
	"rndwave"
	{
		"wave"	"physics/metal/metal_computer_impact_soft1.wav"
		"wave"	"physics/metal/metal_computer_impact_soft2.wav"
		"wave"	"physics/metal/metal_computer_impact_soft3.wav"
	}
}




"Concrete.BulletImpact"
{
	"soundlevel"	"SNDLVL_NORM"
	"volume"		"0.7"
	"pitch"			"PITCH_NORM"
	"rndwave"
	{
		"wave"		"physics/concrete/concrete_impact_bullet1.wav"
		"wave"		"physics/concrete/concrete_impact_bullet2.wav"
		"wave"		"physics/concrete/concrete_impact_bullet3.wav"
		"wave"		"physics/concrete/concrete_impact_bullet4.wav"
	}
}

"Concrete.ImpactHard"
{
	"soundlevel"	"SNDLVL_NORM"
	"volume"		"0.6"
	"pitch"			"PITCH_NORM"
	"rndwave"
	{
		"wave"		"physics/concrete/concrete_impact_hard1.wav"
		"wave"		"physics/concrete/concrete_impact_hard2.wav"
		"wave"		"physics/concrete/concrete_impact_hard3.wav"
	}
}

"Concrete.ImpactSoft"
{
	"soundlevel"	"SNDLVL_NORM"
	"volume"		"0.5"
	"pitch"			"PITCH_NORM"
	"rndwave"
	{
		"wave"		"physics/concrete/concrete_impact_soft1.wav"
		"wave"		"physics/concrete/concrete_impact_soft2.wav"
		"wave"		"physics/concrete/concrete_impact_soft3.wav"
	}
}

"Concrete.ScrapeSmooth"
{
	"soundlevel"	"SNDLVL_NORM"
	"volume"		"0.5"
	"pitch"			"PITCH_NORM"
	
	"wave"		"physics/concrete/concrete_scrape_smooth_loop1.wav"
}

"Concrete.ScrapeRough"
{
	"soundlevel"	"SNDLVL_NORM"
	"volume"		"0.5"
	"pitch"			"PITCH_NORM"
	
	"wave"		"physics/concrete/rock_scrape_rough_loop1.wav"
}

"Rock.ImpactHard"
{
	"soundlevel"	"SNDLVL_NORM"
	"volume"		"0.6"
	"pitch"			"PITCH_NORM"
	"rndwave"
	{
		"wave"		"physics/concrete/rock_impact_hard4.wav"
		"wave"		"physics/concrete/rock_impact_hard5.wav"
		"wave"		"physics/concrete/rock_impact_hard6.wav"
	}
}

"Rock.ImpactSoft"
{
	"soundlevel"	"SNDLVL_NORM"
	"volume"		"0.5"
	"pitch"			"PITCH_NORM"
	"rndwave"
	{
		"wave"		"physics/concrete/rock_impact_soft1.wav"
		"wave"		"physics/concrete/rock_impact_soft2.wav"
		"wave"		"physics/concrete/rock_impact_soft3.wav"
	}
}


"Boulder.ScrapeSmooth"
{
	"soundlevel"	"SNDLVL_NORM"
	"volume"		"0.4"
	"pitch"			"80"
	
	"wave"		"physics/concrete/rock_scrape_rough_loop1.wav"
}

"Boulder.ScrapeRough"
{
	"soundlevel"	"SNDLVL_NORM"
	"volume"		"0.6"
	"pitch"			"95"
	
	"wave"		"physics/concrete/concrete_block_scrape_rough_loop1.wav"
}

"Boulder.ImpactSoft"
{
	"soundlevel"	"SNDLVL_NORM"
	"volume"		"0.3"
	"pitch"			"90"
	"rndwave"
	{
		"wave"		"physics/concrete/rock_impact_hard1.wav"
		"wave"		"physics/concrete/rock_impact_hard2.wav"
		"wave"		"physics/concrete/rock_impact_hard3.wav"
	}
}

"Boulder.ImpactHard"
{
	"soundlevel"	"SNDLVL_NORM"
	"volume"		"0.85"
	"pitch"			"PITCH_NORM"
	"rndwave"
	{
		"wave"		"physics/concrete/boulder_impact_hard1.wav"
		"wave"		"physics/concrete/boulder_impact_hard2.wav"
		"wave"		"physics/concrete/boulder_impact_hard3.wav"
		"wave"		"physics/concrete/boulder_impact_hard4.wav"
	}
}

"Concrete_Block.ImpactHard"
{
	"soundlevel"	"SNDLVL_NORM"
	"volume"		"0.6"
	"pitch"			"PITCH_NORM"
	"rndwave"
	{
		"wave"		"physics/concrete/concrete_block_impact_hard1.wav"
		"wave"		"physics/concrete/concrete_block_impact_hard2.wav"
		"wave"		"physics/concrete/concrete_block_impact_hard3.wav"
	}
}




"ChainLink.ScrapeRough"
{
	"soundlevel"	"SNDLVL_NORM"
	"volume"		"0.5"
	"pitch"		"95,100"
	"wave"		"physics/metal/metal_chainlink_scrape_rough_loop1.wav"
}

"ChainLink.ScrapeSmooth"
{
	"soundlevel"	"SNDLVL_NORM"
	"volume"		"0.2"
	"pitch"		"95,100"
	"wave"		"physics/metal/metal_chainlink_scrape_rough_loop1.wav"
}

"ChainLink.ImpactHard"
{
	"soundlevel"	"SNDLVL_NORM"
	"volume"		"0.6"
	"pitch"		"95,100"
	"rndwave"
	{
		"wave"		"physics/metal/metal_chainlink_impact_hard1.wav"
		"wave"		"physics/metal/metal_chainlink_impact_hard2.wav"
		"wave"		"physics/metal/metal_chainlink_impact_hard3.wav"
	}
}

"ChainLink.ImpactSoft"
{
	"soundlevel"	"SNDLVL_NORM"
	"volume"		"0.6"
	"pitch"		"95,100"
	"rndwave"
	{
		"wave"		"physics/metal/metal_chainlink_impact_soft1.wav"
		"wave"		"physics/metal/metal_chainlink_impact_soft2.wav"
		"wave"		"physics/metal/metal_chainlink_impact_soft3.wav"
	}
}

"ChainLink.BulletImpact"
{
	"soundlevel"	"SNDLVL_NORM"
	"volume"		"0.7"
	"pitch"			"PITCH_NORM"
	"rndwave"
	{
		"wave"		"physics/metal/metal_chainlink_impact_hard2.wav"

		"wave"		"physics/metal/metal_chainlink_impact_hard3.wav"
	}
}

// LEFT 4 DEAD

//"ChainLink.Climb"
//{
//	"soundlevel"	"SNDLVL_70dB"
//	"volume"		"0.8"
//	"pitch"			"96, 104"
//	"rndwave"
//	{
//		"wave" 		"physics/metal/ChainLink_Hit01.wav"
//		"wave" 		"physics/metal/ChainLink_Hit02.wav"
//		"wave" 		"physics/metal/ChainLink_Hit03.wav"
//
//	}
//}

//


//"Chain.ScrapeRough"
//{
//	"soundlevel"	"SNDLVL_NORM"
//	"volume"		"0.5"
//	"pitch"		"95,100"
//	"wave"		"physics/metal/chain_scrape_rough_loop1.wav"
//}

//"Chain.ScrapeSmooth"
//{
//	"soundlevel"	"SNDLVL_NORM"
//	"volume"		"0.2"
//	"pitch"		"95,100"
//	"wave"		"physics/metal/chain_scrape_rough_loop1.wav"
//}

//"Chain.ImpactHard"
//{
//	"soundlevel"	"SNDLVL_NORM"
//	"volume"		"0.6"
//	"pitch"		"95,100"
//	"rndwave"
//	{
//		"wave"		"physics/metal/chain_impact_hard1.wav"
//		"wave"		"physics/metal/chain_impact_hard2.wav"
//	}
//}

//"Chain.ImpactSoft"
//{
//	"soundlevel"	"SNDLVL_NORM"
//	"volume"		"0.6"
//	"pitch"		"95,100"
//	"rndwave"
//	{
//		"wave"		"physics/metal/chain_impact_soft1.wav"
//		"wave"		"physics/metal/chain_impact_soft2.wav"
//		"wave"		"physics/metal/chain_impact_soft3.wav"
//	}
//}

//"Chain.BulletImpact"
//{
//	"soundlevel"	"SNDLVL_NORM"
//	"volume"		"0.7"
//	"pitch"			"PITCH_NORM"
//	"rndwave"
//	{
//		"wave"		"physics/metal/chain_impact_hard1.wav"
//		"wave"		"physics/metal/chain_impact_hard2.wav"
//	}
//}


"Flesh.ImpactSoft"
{
	"soundlevel"	"SNDLVL_NORM"
	"volume"		"0.6"
	"pitch"			"PITCH_NORM"
	"rndwave"
	{
		"wave"	"physics/body/body_medium_impact_soft1.wav"
		"wave"	"physics/body/body_medium_impact_soft2.wav"
		"wave"	"physics/body/body_medium_impact_soft5.wav"
		"wave"	"physics/body/body_medium_impact_soft6.wav"
		"wave"	"physics/body/body_medium_impact_soft7.wav"
	}
}



"Flesh.ImpactHard"
{
	"soundlevel"	"SNDLVL_NORM"
	"volume"		"0.8"
	"pitch"			"PITCH_NORM"
	"rndwave"
	{
		"wave"	"physics/body/body_medium_impact_soft1.wav"
		"wave"	"physics/body/body_medium_impact_soft2.wav"
		"wave"	"physics/body/body_medium_impact_soft5.wav"
		"wave"	"physics/body/body_medium_impact_soft6.wav"
		"wave"	"physics/body/body_medium_impact_soft7.wav"
	}
}

"Flesh.BulletImpact"
{
	"soundlevel"	"SNDLVL_NORM"
	"volume"		"0.7"
	"pitch"			"PITCH_NORM"
	"rndwave"
	{
		"wave"	"physics/flesh/flesh_impact_bullet1.wav"
		"wave"	"physics/flesh/flesh_impact_bullet2.wav"
		"wave"	"physics/flesh/flesh_impact_bullet3.wav"
		"wave"	"physics/flesh/flesh_impact_bullet4.wav"
		"wave"	"physics/flesh/flesh_impact_bullet5.wav"
	}
}

"Flesh.ScrapeRough"
{
	"soundlevel"	"SNDLVL_NORM"
	"volume"		"0.5"
	"pitch"			"PITCH_NORM"
	"wave"		"physics/body/body_medium_scrape_rough_loop1.wav"
}


"Flesh.ScrapeSmooth"
{
	"soundlevel"	"SNDLVL_NORM"
	"volume"		"0.35"
	"pitch"			"PITCH_NORM"
	"wave"		"physics/body/body_medium_scrape_smooth_loop1.wav"
}


//"Flesh.Strain"
//{
//	"soundlevel"	"SNDLVL_NORM"
//	"volume"		"0.3"
//	"pitch"			"100"
//	"rndwave"
//	{
//		"wave"	"physics/body/body_medium_strain1.wav"
//		"wave"	"physics/body/body_medium_strain2.wav"
//		"wave"	"physics/body/body_medium_strain3.wav"
//	}
//}


"Flesh.Break"
{
	"soundlevel"	"SNDLVL_NORM"
	"volume"		"0.6"
	"pitch"			"100"
	"rndwave"
	{
		"wave"	"physics/body/body_medium_break2.wav"
		"wave"	"physics/body/body_medium_break3.wav"
		"wave"	"physics/body/body_medium_break4.wav"
	}
}

"Flesh_Bloody.ImpactHard"
{
	"soundlevel"	"SNDLVL_NORM"
	"volume"		"0.6"
	"pitch"			"100"
	"rndwave"
	{
		"wave"	"physics/flesh/flesh_squishy_impact_hard1.wav"
		"wave"	"physics/flesh/flesh_squishy_impact_hard2.wav"
		"wave"	"physics/flesh/flesh_squishy_impact_hard3.wav"
		"wave"	"physics/flesh/flesh_squishy_impact_hard4.wav"
	}
}

"Carpet.Impact"
{
	"soundlevel"	"SNDLVL_NORM"
	"volume"		"0.6"
	"pitch"			"PITCH_NORM"
	"rndwave"
	{
		"wave"	"player/footsteps/survivor/run/sand1.wav"
		"wave"	"player/footsteps/survivor/run/sand2.wav"
		"wave"	"player/footsteps/survivor/run/sand3.wav"
		"wave"	"player/footsteps/survivor/run/sand4.wav"
	}
}

"Carpet.BulletImpact"
{
	"soundlevel"	"SNDLVL_NORM"
	"volume"		"0.7"
	"pitch"			"PITCH_NORM"
	"rndwave"
	{
		"wave"	"physics/surfaces/sand_impact_bullet1.wav"
		"wave"	"physics/surfaces/sand_impact_bullet2.wav"
		"wave"	"physics/surfaces/sand_impact_bullet3.wav"
		"wave"	"physics/surfaces/sand_impact_bullet4.wav"
	}
}

"Carpet.Scrape"
{
	"pitch"			"PITCH_NORM"
	"volume"		"0.5"
	"soundlevel"	"SNDLVL_NORM"
	"wave"		"physics/flesh/flesh_scrape_rough_loop.wav"
}





"Sand.BulletImpact"
{
	"soundlevel"	"SNDLVL_NORM"
	"volume"		"0.7"
	"pitch"			"PITCH_NORM"
	"rndwave"
	{
		"wave"	"physics/surfaces/sand_impact_bullet1.wav"
		"wave"	"physics/surfaces/sand_impact_bullet2.wav"
		"wave"	"physics/surfaces/sand_impact_bullet3.wav"
		"wave"	"physics/surfaces/sand_impact_bullet4.wav"
	}
}

// *****************
// PROP MATERIALS

//"Watermelon.Impact"
//{
//	"soundlevel"	"SNDLVL_NORM"
//	"volume"		"0.6"
//	"pitch"			"PITCH_NORM"
//	"rndwave"
//	{
//		"wave"	"physics/flesh/flesh_squishy_impact_hard1.wav"
//		"wave"	"physics/flesh/flesh_squishy_impact_hard2.wav"
//		"wave"	"physics/flesh/flesh_squishy_impact_hard3.wav"
//		"wave"	"physics/flesh/flesh_squishy_impact_hard4.wav"
//	}
//}

//"Watermelon.BulletImpact"
//{
//	"soundlevel"	"SNDLVL_NORM"
//	"volume"		"0.7"
//	"pitch"			"PITCH_NORM"
//	"rndwave"
//	{
//		"wave"	"physics/flesh/flesh_squishy_impact_hard1.wav"
//		"wave"	"physics/flesh/flesh_squishy_impact_hard2.wav"
//		"wave"	"physics/flesh/flesh_squishy_impact_hard3.wav"
//		"wave"	"physics/flesh/flesh_squishy_impact_hard4.wav"
//	}
//}

//"Watermelon.Scrape"
//{
//	"soundlevel"	"SNDLVL_NORM"
//	"volume"		"0.5"
//	"pitch"			"PITCH_NORM"
//	"wave"	"physics/flesh/flesh_squishy_impact_hard4.wav"
//}


"ArmorFlesh.BulletImpact"
{
	"soundlevel"	"SNDLVL_NORM"
	"volume"		"0.7"
	"pitch"			"PITCH_NORM"
	"rndwave"
	{
		"wave"		"physics/metal/metal_sheet_impact_bullet1.wav"
		"wave"		"physics/metal/metal_sheet_impact_bullet2.wav"
	}
}

"Metal_SeafloorCar.BulletImpact"
{
	"soundlevel"	"SNDLVL_NORM"
	"volume"		"0.7"
	"pitch"			"PITCH_NORM"
	"wave"		"doors/heavy_metal_stop1.wav"
}

"GlassBottle.StepLeft"
{
	"soundlevel"	"SNDLVL_NORM"
	"volume"		"0.2"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"physics/glass/glass_impact_soft1.wav"
		"wave"		"physics/glass/glass_impact_soft2.wav"
	}
}

"GlassBottle.StepRight"
{
	"soundlevel"	"SNDLVL_NORM"
	"volume"		"0.2"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"physics/glass/glass_impact_soft2.wav"
		"wave"		"physics/glass/glass_impact_soft3.wav"
	}
}

"GlassBottle.ImpactHard"
{
	"soundlevel"	"SNDLVL_NORM"
	"volume"		"0.6"
	"pitch"	"95,100"
	"rndwave"
	{
		"wave"	"physics/glass/glass_bottle_impact_hard1.wav"
		"wave"	"physics/glass/glass_bottle_impact_hard2.wav"
		"wave"	"physics/glass/glass_bottle_impact_hard3.wav"
	}
}

"GlassBottle.ImpactSoft"
{
	"soundlevel"	"SNDLVL_NORM"
	"volume"		"0.5"
	"pitch"	"95,100"
	"rndwave"
	{
		"wave"	"physics/glass/glass_impact_soft1.wav"
		"wave"	"physics/glass/glass_impact_soft2.wav"
		"wave"	"physics/glass/glass_impact_soft3.wav"
	}
}

"GlassBottle.BulletImpact"
{
	"soundlevel"	"SNDLVL_NORM"
	"volume"		"0.7"
	"pitch"			"PITCH_NORM"
	"rndwave"
	{
		"wave"	"physics/glass/glass_bottle_break1.wav"
		"wave"	"physics/glass/glass_bottle_break2.wav"
	}
}

"GlassBottle.ScrapeRough"
{
	"soundlevel"	"SNDLVL_NORM"
	"volume"		"0.3"
	"pitch"		"98,100"
	"rndwave"
	{
		"wave"	"physics/glass/glass_bottle_impact_hard1.wav"
		"wave"	"physics/glass/glass_bottle_impact_hard2.wav"
		"wave"	"physics/glass/glass_bottle_impact_hard3.wav"
	}
}

"GlassBottle.ScrapeSmooth"
{
	"soundlevel"	"SNDLVL_NORM"
	"volume"		"0.3"
	"pitch"		"98,100"
	"rndwave"
	{
		"wave"	"physics/glass/glass_impact_soft1.wav"
		"wave"	"physics/glass/glass_impact_soft2.wav"
		"wave"	"physics/glass/glass_impact_soft3.wav"
	}
}

"GlassBottle.Break"
{
	"soundlevel"	"SNDLVL_NORM"
	"volume"		"0.7"
	"pitch"			"PITCH_NORM"
	"rndwave"
	{
		"wave"	"physics/glass/glass_bottle_break1.wav"
		"wave"	"physics/glass/glass_bottle_break2.wav"
	}
}




"Canister.ImpactHard"
{
	"soundlevel"	"SNDLVL_NORM"
	"volume"		"0.6"
	"pitch"		"98,100"
	"rndwave"
	{
		"wave"	"physics/metal/metal_canister_impact_hard1.wav"
		"wave"	"physics/metal/metal_canister_impact_hard2.wav"
		"wave"	"physics/metal/metal_canister_impact_hard3.wav"
	}
}

"Canister.ImpactSoft"
{
	"soundlevel"	"SNDLVL_NORM"
	"volume"		"0.45"
	"pitch"		"98,100"
	"rndwave"
	{
		"wave"	"physics/metal/metal_canister_impact_soft1.wav"
		"wave"	"physics/metal/metal_canister_impact_soft2.wav"
		"wave"	"physics/metal/metal_canister_impact_soft3.wav"
	}
}

"Canister.ScrapeRough"
{
	"soundlevel"	"SNDLVL_NORM"
	"volume"		"0.5"
	"pitch"			"PITCH_NORM"
	"wave"	"physics/metal/canister_scrape_rough_loop1.wav"
}

"Canister.ScrapeSmooth"
{
	"soundlevel"	"SNDLVL_NORM"
	"volume"		"0.45"
	"pitch"			"PITCH_NORM"
	"wave"	"physics/metal/canister_scrape_smooth_loop1.wav"
}

//"Canister.Roll"
//{
//	"soundlevel"	"SNDLVL_NORM"
//	"volume"		"0.5"
//	"pitch"			"PITCH_NORM"
//	"wave"	"physics/metal/canister_roll_loop1.wav"
//}

"Metal_Barrel.ImpactHard"
{
	"soundlevel"	"SNDLVL_NORM"
	"volume"		"0.6"
	"pitch"		"98,100"
	"rndwave"
	{
		"wave"	"physics/metal/metal_barrel_impact_hard1.wav"
		"wave"	"physics/metal/metal_barrel_impact_hard2.wav"
		"wave"	"physics/metal/metal_barrel_impact_hard3.wav"
	}
}

"Metal_Barrel.ImpactSoft"
{
	"soundlevel"	"SNDLVL_NORM"
	"volume"		"0.5"
	"pitch"		"98,100"
	"rndwave"
	{
		"wave"	"physics/metal/metal_barrel_impact_soft1.wav"
		"wave"	"physics/metal/metal_barrel_impact_soft2.wav"
		"wave"	"physics/metal/metal_barrel_impact_soft3.wav"
		"wave"	"physics/metal/metal_barrel_impact_hard7.wav"
	}
}


"Metal_Barrel.BulletImpact"
{
	"soundlevel"	"SNDLVL_NORM"
	"volume"		"0.7"
	"pitch"			"PITCH_NORM"
	"rndwave"
	{
		"wave"	"physics/metal/metal_sheet_impact_bullet1.wav"
		"wave"	"physics/metal/metal_sheet_impact_bullet2.wav"
		"wave"	"physics/metal/metal_solid_impact_bullet2.wav"
		"wave"	"physics/metal/metal_solid_impact_bullet3.wav"
	}
}


//"Metal_Barrel.Roll"
//{
//	"soundlevel"	"SNDLVL_NORM"
//	"volume"		"0.2"
//	"pitch"			"PITCH_NORM"
//	"wave"	"physics/metal/canister_roll_loop1.wav"
//}


"Roller.Impact"
{
	"soundlevel"	"SNDLVL_NORM"
	"volume"		"0.6"
	"pitch"		"98,100"
	"rndwave"
	{
		"wave"	"physics/metal/metal_solid_impact_bullet1.wav"
		"wave"	"physics/metal/metal_solid_impact_bullet2.wav"
		"wave"	"physics/metal/metal_solid_impact_bullet3.wav"
		"wave"	"physics/metal/metal_solid_impact_bullet4.wav"
	}
}

"Popcan.ImpactHard"
{
	"soundlevel"	"SNDLVL_NORM"
	"volume"		"0.6"
	"pitch"		"98,100"
	"rndwave"
	{
		"wave"	"physics/metal/soda_can_impact_hard1.wav"
		"wave"	"physics/metal/soda_can_impact_hard2.wav"
		"wave"	"physics/metal/soda_can_impact_hard3.wav"
	}
}

"Popcan.ImpactSoft"
{
	"soundlevel"	"SNDLVL_NORM"
	"volume"		"0.4"
	"pitch"		"98,100"
	"rndwave"
	{
		"wave"	"physics/metal/soda_can_impact_soft1.wav"
		"wave"	"physics/metal/soda_can_impact_soft2.wav"
		"wave"	"physics/metal/soda_can_impact_soft3.wav"
	}
}

"Popcan.BulletImpact"
{
	"soundlevel"	"SNDLVL_NORM"
	"volume"		"0.7"
	"pitch"			"PITCH_NORM"
	"rndwave"
	{
		"wave"	"physics/metal/soda_can_impact_hard1.wav"
		"wave"	"physics/metal/soda_can_impact_hard2.wav"
		"wave"	"physics/metal/soda_can_impact_hard3.wav"
	}
}

"Popcan.ScrapeRough"
{
	"soundlevel"	"SNDLVL_NORM"
	"volume"		"0.4"
	"pitch"		"98,100"
	"wave"	"physics/metal/soda_can_scrape_rough_loop1.wav"
}

"Popcan.ScrapeSmooth"
{
	"soundlevel"	"SNDLVL_NORM"
	"volume"		"0.3"
	"pitch"		"130,140"
	"wave"	"physics/plastic/plastic_box_scrape_smooth_loop2.wav"
}

"Paintcan.ImpactHard"
{
	"soundlevel"	"SNDLVL_NORM"
	"volume"		"0.6"
	"pitch"		"98,100"
	"rndwave"
	{
		"wave"	"physics/metal/paintcan_impact_hard1.wav"
		"wave"	"physics/metal/paintcan_impact_hard2.wav"
		"wave"	"physics/metal/paintcan_impact_hard3.wav"
	}
}

"Paintcan.ImpactSoft"
{
	"soundlevel"	"SNDLVL_NORM"
	"volume"		"0.4"
	"pitch"		"98,100"
	"rndwave"
	{
		"wave"	"physics/metal/paintcan_impact_soft1.wav"
		"wave"	"physics/metal/paintcan_impact_soft2.wav"
		"wave"	"physics/metal/paintcan_impact_soft3.wav"
	}
}

//"Paintcan.Roll"
//{
//	"soundlevel"	"SNDLVL_NORM"
//	"volume"		"0.4"
//	"pitch"		"98,100"
//	"wave"	"physics/metal/paintcan_roll_loop1.wav"
//}

"Papercup.Impact"
{
	"soundlevel"	"SNDLVL_NORM"
	"volume"		"0.6"
	"pitch"		"98,100"
	"rndwave"
	{
		"wave"	"physics/cardboard/cardboard_cup_impact_hard1.wav"
		"wave"	"physics/cardboard/cardboard_cup_impact_hard2.wav"
		"wave"	"physics/cardboard/cardboard_cup_impact_hard3.wav"
	}
}

"Papercup.Scrape"
{
	"soundlevel"	"SNDLVL_NORM"
	"volume"		"0.5"
	"pitch"			"PITCH_NORM"
	"rndwave"
	{
		"wave"	"physics/cardboard/cardboard_cup_impact_hard1.wav"
		"wave"	"physics/cardboard/cardboard_cup_impact_hard2.wav"
		"wave"	"physics/cardboard/cardboard_cup_impact_hard3.wav"
	}
}



"ceiling_tile.BulletImpact"
{
	"soundlevel"	"SNDLVL_NORM"
	"volume"		"1.0"
	"pitch"			"PITCH_NORM"
	"rndwave"
	{
		"wave"	"physics/plaster/ceiling_tile_impact_bullet1.wav"
		"wave"	"physics/plaster/ceiling_tile_impact_bullet2.wav"
		"wave"	"physics/plaster/ceiling_tile_impact_bullet3.wav"
	}
}

"ceiling_tile.ImpactSoft"
{
	"soundlevel"	"SNDLVL_NORM"
	"volume"		"0.6"
	"pitch"		"98,100"
	"rndwave"
	{
		"wave"	"physics/plaster/ceiling_tile_impact_soft1.wav"
		"wave"	"physics/plaster/ceiling_tile_impact_soft2.wav"
		"wave"	"physics/plaster/ceiling_tile_impact_soft3.wav"
	}
}


"ceiling_tile.ImpactHard"
{
	"soundlevel"	"SNDLVL_NORM"
	"volume"		"0.7"
	"pitch"		"98,100"
	"rndwave"
	{
		"wave"	"physics/plaster/ceiling_tile_impact_hard1.wav"
		"wave"	"physics/plaster/ceiling_tile_impact_hard2.wav"
		"wave"	"physics/plaster/ceiling_tile_impact_hard3.wav"
	}
}

"ceiling_tile.ScrapeRough"
{
	"soundlevel"	"SNDLVL_NORM"
	"volume"		"0.5"
	"pitch"		"96,104"
	"wave"		"physics/plaster/ceiling_tile_scrape_smooth_loop1.wav"
}

"ceiling_tile.ScrapeSmooth"
{
	"soundlevel"	"SNDLVL_NORM"
	"volume"		"0.5"
	"pitch"		"96,104"
	"wave"		"physics/plaster/ceiling_tile_scrape_smooth_loop1.wav"
}

"ceiling_tile.Break"
{
	"soundlevel"	"SNDLVL_NORM"
	"volume"		"0.8"
	"pitch"		"98,100"
	"rndwave"
	{
		"wave"	"physics/plaster/ceilingtile_break1.wav"
		"wave"	"physics/plaster/ceilingtile_break2.wav"
	}
}





"drywall.ImpactSoft"
{
	"soundlevel"	"SNDLVL_NORM"
	"volume"		"0.6"
	"pitch"		"98,100"
	"rndwave"
	{
		"wave"	"physics/plaster/drywall_impact_soft1.wav"
		"wave"	"physics/plaster/drywall_impact_soft2.wav"
		"wave"	"physics/plaster/drywall_impact_soft3.wav"
	}
}


"drywall.ImpactHard"
{
	"soundlevel"	"SNDLVL_NORM"
	"volume"		"0.7"
	"pitch"		"98,100"
	"rndwave"
	{
		"wave"	"physics/plaster/drywall_impact_hard1.wav"
		"wave"	"physics/plaster/drywall_impact_hard2.wav"
		"wave"	"physics/plaster/drywall_impact_hard3.wav"
	}
}






// **********************
// legacy Func_breakables

"Breakable.Crate"
{
	"channel"	"CHAN_VOICE"
	"soundlevel"	"SNDLVL_NORM"
	"volume"		"0.7"

	"rndwave"
	{
		"wave"	"physics/wood/wood_crate_break1.wav"
		"wave"	"physics/wood/wood_crate_break2.wav"
		"wave"	"physics/wood/wood_crate_break3.wav"
		"wave"	"physics/wood/wood_crate_break4.wav"
	}
}

"Breakable.Flesh"
{
	"channel"	"CHAN_VOICE"
	"soundlevel"	"SNDLVL_NORM"
	"volume"		"0.7"

	"rndwave"
	{
		"wave"	"physics/flesh/flesh_bloody_break.wav"
	}
}

//"Breakable.Spark"
//{
//	"channel"	"CHAN_VOICE"
//	"soundlevel"	"SNDLVL_NORM"
//	"volume"		"0.7"
//
//	"rndwave"
//	{
//		"wave"	"ambient/energy/spark5.wav"
//		"wave"	"ambient/energy/spark6.wav"
//	}
//}

"Breakable.Metal"
{
	"channel"	"CHAN_VOICE"
	"soundlevel"	"SNDLVL_NORM"
	"volume"		"0.7"

	"rndwave"
	{
		"wave"	"physics/metal/metal_box_break1.wav"
		"wave"	"physics/metal/metal_box_break2.wav"
	}
}

"Breakable.Glass"
{
	"channel"	"CHAN_VOICE"
	"soundlevel"	"SNDLVL_NORM"
	"volume"		"0.7"

	"rndwave"
	{
		"wave"	"physics/glass/glass_largesheet_break1.wav"
		"wave"	"physics/glass/glass_largesheet_break2.wav"
		"wave"	"physics/glass/glass_largesheet_break3.wav"
	}
}

"Breakable.Concrete"
{
	"channel"	"CHAN_VOICE"
	"soundlevel"	"SNDLVL_NORM"
	"volume"		"0.7"

	"rndwave"
	{
		"wave"	"physics/concrete/concrete_break2.wav"
		"wave"	"physics/concrete/concrete_break3.wav"
	}
}

"Breakable.Ceiling"
{
	"channel"	"CHAN_VOICE"
	"soundlevel"	"SNDLVL_NORM"
	"volume"		"0.7"

	"rndwave"
	{
		"wave"	"physics/plaster/ceilingtile_break1.wav"
		"wave"	"physics/plaster/ceilingtile_break2.wav"
	}
}

"Breakable.MatWood"
{
	"channel"	"CHAN_BODY"
	"volume"		"0.7"
	"rndwave"
	{
		"wave"	"physics/wood/wood_plank_break1.wav"
		"wave"	"physics/wood/wood_plank_break2.wav"
		"wave"	"physics/wood/wood_plank_break3.wav"
		"wave"	"physics/wood/wood_plank_break4.wav"
	}
}

"Breakable.MatFlesh"
{
	"channel"	"CHAN_BODY"
	"volume"		"0.7"
	"rndwave"
	{
		"wave"	"physics/body/body_medium_break2.wav"
		"wave"	"physics/body/body_medium_break3.wav"
		"wave"	"physics/body/body_medium_break4.wav"
	}
}

"Breakable.MatMetal"
{
	"channel"	"CHAN_BODY"
	"volume"		"0.7"
	"rndwave"
	{
		"wave"	"physics/metal/metal_box_break1.wav"
		"wave"	"physics/metal/metal_box_break2.wav"
	}
}

"Breakable.MatConcrete"
{
	"channel"	"CHAN_BODY"
	"volume"		"0.7"
	"rndwave"
	{
		"wave"	"physics/concrete/concrete_break2.wav"

	}
}

"Breakable.MatGlass"
{
	"channel"	"CHAN_BODY"
	"volume"		"0.7"
	"rndwave"
	{
		"wave"	"physics/glass/glass_cup_break1.wav"
		"wave"	"physics/glass/glass_cup_break2.wav"
		"wave"	"physics/glass/glass_bottle_break2.wav"
	}
}


"Breakable.Computer"
{
	"channel"	"CHAN_VOICE"
	"volume"	"0.7,1.0"
	"soundlevel"	"SNDLVL_NORM"

	"rndwave"
	{
		"wave"	"ambient/energy/spark5.wav"
		"wave"	"ambient/energy/spark6.wav"
	}
}

// *************************
// Legacy Temp Entity Sounds

"Bounce.Glass"
{
	"pitch"		"90,124"
	"volume"	"0.8"
	"rndwave"
	{
		"wave"	"physics/glass/glass_impact_hard1.wav"
		"wave"	"physics/glass/glass_impact_hard2.wav"
		"wave"	"physics/glass/glass_impact_hard3.wav"
	}
}

"Bounce.Metal"
{
	"pitch"		"90,124"
	"volume"	"0.8"
	"rndwave"
	{
		"wave" "physics/metal/metal_box_impact_hard1.wav"
		"wave" "physics/metal/metal_box_impact_hard2.wav"
		"wave" "physics/metal/metal_box_impact_hard3.wav"
	}
}

"Bounce.Flesh"
{
	"pitch"		"90,124"
	"volume"	"0.8"
	"rndwave"
	{
		"wave"	"physics/flesh/flesh_squishy_impact_hard1.wav"
		"wave"	"physics/flesh/flesh_squishy_impact_hard2.wav"
		"wave"	"physics/flesh/flesh_squishy_impact_hard3.wav"
		"wave"	"physics/flesh/flesh_squishy_impact_hard4.wav"	
	}
}

"Bounce.Wood"
{
	"pitch"		"90,124"
	"volume"	"0.8"
	"rndwave"
	{
		"wave" "physics/wood/wood_plank_impact_hard1.wav"
		"wave" "physics/wood/wood_plank_impact_hard2.wav"
		"wave" "physics/wood/wood_plank_impact_hard3.wav"
	}
}

"Bounce.Shrapnel"
{
	"pitch"		"90,124"
	"volume"	"0.8"
	"rndwave"
	{
		"wave" "weapons/fx/rics/ric1.wav"
		"wave" "weapons/fx/rics/ric2.wav"
		"wave" "weapons/fx/rics/ric3.wav"
		"wave" "weapons/fx/rics/ric4.wav"
		"wave" "weapons/fx/rics/ric5.wav"
	}
}

// "Bounce.ShotgunShell"
// {
	// "pitch"		"PITCH_NORM"
	// "volume"	"0.5"
	// "rndwave"
	// {
		// "wave" "weapons/fx/tink/shotgun_shell1.wav"
		// "wave" "weapons/fx/tink/shotgun_shell2.wav"
		// "wave" "weapons/fx/tink/shotgun_shell3.wav"
	// }
// }

// "Bounce.Shell"
// {
	// "pitch"		"PITCH_NORM"
	// "volume"	"0.8"
	// "rndwave"
	// {
		// "wave" "weapons/fx/tink/pl_shell1.wav"
		// "wave" "weapons/fx/tink/pl_shell2.wav"
		// "wave" "weapons/fx/tink/pl_shell3.wav"
	// }
// }
// "Bounce.PistolShell"
// {
	// "pitch"		"PITCH_NORM"
	// "volume"	"0.8"
// "soundlevel"	"SNDLVL_NORM"
	// "rndwave"
	// {
		// "wave" "weapons/fx/tink/pl_shell1.wav"
		// "wave" "weapons/fx/tink/pl_shell2.wav"
		// "wave" "weapons/fx/tink/pl_shell3.wav"
	// }
// }

// "Bounce.RifleShell"
// {
	// "pitch"		"PITCH_NORM"
	// "volume"	"0.8"
// "soundlevel"	"SNDLVL_NORM"
	// "rndwave"
	// {
		// "wave" "weapons/fx/tink/pl_shell1.wav"
		// "wave" "weapons/fx/tink/pl_shell2.wav"
		// "wave" "weapons/fx/tink/pl_shell3.wav"
	// }
// }



"Bounce.Concrete"
{
	"pitch"		"90,124"
	"volume"	"0.8"
	"rndwave"
	{
		"wave"	"physics/concrete/concrete_break2.wav"	
	}
}

//"ItemSoda.Bounce"
//{
//	"channel"	"CHAN_WEAPON"
//	"volume"	"1"
//	"soundlevel"	"SNDLVL_NORM"
//
//	"wave"	"physics/metal/metal_popcan_impact_hard1.wav"
//	"wave"	"physics/metal/metal_popcan_impact_hard2.wav"
//	"wave"	"physics/metal/metal_popcan_impact_hard3.wav"
//}

// cardboard material - full physics implementation



"Cardboard.ImpactSoft"
{
	"channel"		"CHAN_BODY"
	"soundlevel"	"SNDLVL_NORM"
	"pitch"		"PITCH_NORM"
	"volume"	"0.6"
	"rndwave"
	{
		"wave" "physics/cardboard/cardboard_box_impact_soft1.wav"
		"wave" "physics/cardboard/cardboard_box_impact_soft2.wav"
		"wave" "physics/cardboard/cardboard_box_impact_soft3.wav"
		"wave" "physics/cardboard/cardboard_box_impact_soft4.wav"
		"wave" "physics/cardboard/cardboard_box_impact_soft5.wav"
		"wave" "physics/cardboard/cardboard_box_impact_soft6.wav"
		"wave" "physics/cardboard/cardboard_box_impact_soft7.wav"
	}
}

"Cardboard.ImpactHard"
{
	"channel"		"CHAN_BODY"
	"soundlevel"	"SNDLVL_NORM"
	"pitch"		"PITCH_NORM"
	"volume"	"0.8"
	"rndwave"
	{
		"wave" "physics/cardboard/cardboard_box_impact_hard1.wav"
		"wave" "physics/cardboard/cardboard_box_impact_hard2.wav"
		"wave" "physics/cardboard/cardboard_box_impact_hard3.wav"
		"wave" "physics/cardboard/cardboard_box_impact_hard4.wav"
		"wave" "physics/cardboard/cardboard_box_impact_hard5.wav"
		"wave" "physics/cardboard/cardboard_box_impact_hard6.wav"
		"wave" "physics/cardboard/cardboard_box_impact_hard7.wav"
	}
}

"Cardboard.BulletImpact"
{
	"channel"		"CHAN_BODY"
	"soundlevel"	"SNDLVL_NORM"
	"pitch"		"PITCH_NORM"
	"volume"	"1.0"
	"rndwave"
	{
		"wave" "physics/cardboard/cardboard_box_impact_bullet1.wav"
		"wave" "physics/cardboard/cardboard_box_impact_bullet2.wav"
		"wave" "physics/cardboard/cardboard_box_impact_bullet3.wav"
		"wave" "physics/cardboard/cardboard_box_impact_bullet4.wav"
		"wave" "physics/cardboard/cardboard_box_impact_bullet5.wav"
		
	}
}

//"Cardboard.Strain"
//{
//	"channel"		"CHAN_BODY"
//	"soundlevel"	"SNDLVL_NORM"
//	"pitch"		"PITCH_NORM"
//	"volume"	"0.8"
//	"rndwave"
//	{
//		"wave" "physics/cardboard/cardboard_box_strain1.wav"
//		"wave" "physics/cardboard/cardboard_box_strain2.wav"
//		"wave" "physics/cardboard/cardboard_box_strain3.wav"
//	}
//}

"Cardboard.Break"
{
	"channel"		"CHAN_BODY"
	"soundlevel"	"SNDLVL_NORM"
	"pitch"		"PITCH_NORM"
	"volume"	"0.8"
	"rndwave"
	{
		"wave" "physics/cardboard/cardboard_box_break1.wav"
		"wave" "physics/cardboard/cardboard_box_break2.wav"
		"wave" "physics/cardboard/cardboard_box_break3.wav"
	}
}

//"Cardboard.Shake"
//{
//	"channel"		"CHAN_BODY"
//	"soundlevel"	"SNDLVL_NORM"
//	"pitch"		"PITCH_NORM"
//	"volume"	"0.6"
//	"rndwave"
//	{
//		"wave" "physics/cardboard/cardboard_box_shake1.wav"
//		"wave" "physics/cardboard/cardboard_box_shake2.wav"
//		"wave" "physics/cardboard/cardboard_box_shake3.wav"
//	}
//}

"Cardboard.ScrapeSmooth"
{
	"channel"		"CHAN_BODY"
	"soundlevel"	"SNDLVL_NORM"
	"pitch"		"96,104"
	"volume"	"0.55"

	"wave" "physics/cardboard/cardboard_box_scrape_smooth_loop1.wav"
}

"Cardboard.ScrapeRough"
{
	"channel"		"CHAN_BODY"
	"soundlevel"	"SNDLVL_NORM"
	"pitch"		"96,104"
	"volume"	"0.35"

	"wave" "physics/cardboard/cardboard_box_scrape_rough_loop1.wav"
}

// plastic barrel material - full physics implementation

"Plastic_Barrel.StepLeft"
{
	"soundlevel"	"SNDLVL_NORM"
	"pitch"			"95,105"
	"volume"			"0.5"
	"rndwave"
	{
		"wave"		"physics/plastic/plastic_barrel_impact_soft1.wav"
		"wave"		"physics/plastic/plastic_barrel_impact_soft2.wav"
	}
}

"Plastic_Barrel.StepRight"
{
	"soundlevel"	"SNDLVL_NORM"
	"pitch"			"95,105"
	"volume"			"0.5"
	"rndwave"
	{
		"wave"		"physics/plastic/plastic_barrel_impact_soft3.wav"
		"wave"		"physics/plastic/plastic_barrel_impact_soft4.wav"
	}
}

"Plastic_Barrel.ImpactSoft"
{
	"channel"		"CHAN_BODY"
	"soundlevel"	"SNDLVL_NORM"
	"pitch"		"96,104"
	"volume"	"0.6"
	"rndwave"
	{
		"wave" "physics/plastic/plastic_barrel_impact_soft1.wav"
		"wave" "physics/plastic/plastic_barrel_impact_soft2.wav"
		"wave" "physics/plastic/plastic_barrel_impact_soft3.wav"
		"wave" "physics/plastic/plastic_barrel_impact_soft4.wav"
		"wave" "physics/plastic/plastic_barrel_impact_soft5.wav"
		"wave" "physics/plastic/plastic_barrel_impact_soft6.wav"
	}
}

"Plastic_Barrel.ImpactHard"
{
	"channel"		"CHAN_BODY"
	"soundlevel"	"SNDLVL_NORM"
	"pitch"		"96,104"
	"volume"	"0.8"
	"rndwave"
	{
		"wave" "physics/plastic/plastic_barrel_impact_hard1.wav"
		"wave" "physics/plastic/plastic_barrel_impact_hard2.wav"
		"wave" "physics/plastic/plastic_barrel_impact_hard3.wav"
		"wave" "physics/plastic/plastic_barrel_impact_hard4.wav"
	}
}

"Plastic_Barrel.BulletImpact"
{
	"channel"		"CHAN_BODY"
	"soundlevel"	"SNDLVL_NORM"
	"pitch"		"96,104"
	"volume"	"1.0"
	"rndwave"
	{
		"wave" "physics/plastic/plastic_barrel_impact_bullet1.wav"
		"wave" "physics/plastic/plastic_barrel_impact_bullet2.wav"
		"wave" "physics/plastic/plastic_barrel_impact_bullet3.wav"
		
	}
}

//"Plastic_Barrel.Strain"
//{
//	"channel"		"CHAN_BODY"
//	"soundlevel"	"SNDLVL_NORM"
//	"pitch"		"PITCH_NORM"
//	"volume"	"0.8"
//	"rndwave"
//	{
//		"wave" "physics/plastic/plastic_barrel_strain1.wav"
//		"wave" "physics/plastic/plastic_barrel_strain2.wav"
//		"wave" "physics/plastic/plastic_barrel_strain3.wav"
//	}
//}

"Plastic_Barrel.Break"
{
	"channel"		"CHAN_BODY"
	"soundlevel"	"SNDLVL_NORM"
	"pitch"		"96,104"
	"volume"	"1.0"
	"rndwave"
	{
		"wave" "physics/plastic/plastic_barrel_break1.wav"
		"wave" "physics/plastic/plastic_barrel_break2.wav"
	}
}


"Plastic_Barrel.ScrapeSmooth"
{
	"channel"		"CHAN_BODY"
	"soundlevel"	"SNDLVL_NORM"
	"pitch"		"96,104"
	"volume"	"0.55"

	"wave" "physics/plastic/plastic_barrel_scrape_smooth_loop1.wav"
}

"Plastic_Barrel.ScrapeRough"
{
	"channel"		"CHAN_BODY"
	"soundlevel"	"SNDLVL_NORM"
	"pitch"		"96,104"
	"volume"	"0.35"

	"wave" "physics/plastic/plastic_barrel_scrape_rough_loop1.wav"
}

//"Plastic_Barrel.Roll"
//{
//	"channel"		"CHAN_BODY"
//	"soundlevel"	"SNDLVL_NORM"
//	"pitch"		"PITCH_NORM"
//	"volume"	"0.4"
//
//	"wave" "physics/plastic/plastic_barrel_roll_loop1.wav"
//}


// plastic box material - full physics implementation

"Plastic_Box.StepLeft"
{
	"soundlevel"	"SNDLVL_NORM"
	"pitch"			"95,105"
	"volume"			"0.3"
	"rndwave"
	{
		"wave"		"physics/plastic/plastic_box_impact_soft1.wav"
		"wave"		"physics/plastic/plastic_box_impact_soft2.wav"
	}
}

"Plastic_Box.StepRight"
{
	"soundlevel"	"SNDLVL_NORM"
	"pitch"			"95,105"
	"volume"			"0.3"
	"rndwave"
	{
		"wave"		"physics/plastic/plastic_box_impact_soft3.wav"
		"wave"		"physics/plastic/plastic_box_impact_soft4.wav"
	}
}

"Plastic_Box.ImpactSoft"
{
	"channel"		"CHAN_BODY"
	"soundlevel"	"SNDLVL_NORM"
	"pitch"		"96,104"
	"volume"	"0.6"
	"rndwave"
	{
		"wave" "physics/plastic/plastic_box_impact_soft1.wav"
		"wave" "physics/plastic/plastic_box_impact_soft2.wav"
		"wave" "physics/plastic/plastic_box_impact_soft3.wav"
		"wave" "physics/plastic/plastic_box_impact_soft4.wav"
	}
}

"Plastic_Box.ImpactHard"
{
	"channel"		"CHAN_BODY"
	"soundlevel"	"SNDLVL_NORM"
	"pitch"		"96,104"
	"volume"	"0.8"
	"rndwave"
	{
		"wave" "physics/plastic/plastic_box_impact_hard1.wav"
		"wave" "physics/plastic/plastic_box_impact_hard2.wav"
		"wave" "physics/plastic/plastic_box_impact_hard3.wav"
		"wave" "physics/plastic/plastic_box_impact_hard4.wav"
	}
}

"Plastic_Box.BulletImpact"
{
	"channel"		"CHAN_BODY"
	"soundlevel"	"SNDLVL_NORM"
	"pitch"		"96,104"
	"volume"	"1.0"
	"rndwave"
	{
		"wave" "physics/plastic/plastic_box_impact_bullet1.wav"
		"wave" "physics/plastic/plastic_box_impact_bullet2.wav"
		"wave" "physics/plastic/plastic_box_impact_bullet3.wav"
		"wave" "physics/plastic/plastic_box_impact_bullet4.wav"
		"wave" "physics/plastic/plastic_box_impact_bullet5.wav"	
	}
}

//"Plastic_Box.Strain"
//{
//	"channel"		"CHAN_BODY"
//	"soundlevel"	"SNDLVL_NORM"
//	"pitch"		"PITCH_NORM"
//	"volume"	"0.8"
//	"rndwave"
//	{
//		"wave" "physics/plastic/plastic_box_strain1.wav"
//		"wave" "physics/plastic/plastic_box_strain2.wav"
//		"wave" "physics/plastic/plastic_box_strain3.wav"
//	}
//}

"Plastic_Box.Break"
{
	"channel"		"CHAN_BODY"
	"soundlevel"	"SNDLVL_NORM"
	"pitch"		"96,104"
	"volume"	"1.0"
	"rndwave"
	{
//		"wave" "physics/plastic/plastic_box_break1.wav"
		"wave" "physics/plastic/plastic_box_break2.wav"
	}
}


"Plastic_Box.ScrapeSmooth"
{
	"channel"		"CHAN_BODY"
	"soundlevel"	"SNDLVL_NORM"
	"pitch"		"96,104"
	"volume"	"0.55"

	"wave" "physics/plastic/plastic_box_scrape_smooth_loop2.wav"
}

"Plastic_Box.ScrapeRough"
{
	"channel"		"CHAN_BODY"
	"soundlevel"	"SNDLVL_NORM"
	"pitch"		"96,104"
	"volume"	"0.35"

	"wave" "physics/plastic/plastic_box_scrape_rough_loop1.wav"
}



// rubber matt & rubber tire material 

"Rubber.StepLeft"
{
	"soundlevel"	"SNDLVL_NORM"
	"pitch"			"98,102"
	"volume"			"0.2"
	"wave"		"physics/rubber/rubber_tire_impact_soft1.wav"
}

"Rubber.StepRight"
{
	"soundlevel"	"SNDLVL_NORM"
	"pitch"			"98,102"
	"volume"		"0.2"
	"wave"		"physics/rubber/rubber_tire_impact_soft1.wav"
}

"Rubber.BulletImpact"
{
	"channel"		"CHAN_BODY"
	"soundlevel"	"SNDLVL_NORM"
	"pitch"		"90,96"
	"volume"	"0.7"
	"wave" "physics/rubber/rubber_tire_impact_bullet1.wav"
}

"Rubber.ImpactSoft"
{
	"channel"		"CHAN_BODY"
	"soundlevel"	"SNDLVL_NORM"
	"pitch"		"PITCH_NORM"
	"volume"	"0.4"
	"wave" "physics/rubber/rubber_tire_impact_soft1.wav"
}

"Rubber.ImpactHard"
{
	"channel"		"CHAN_BODY"
	"soundlevel"	"SNDLVL_NORM"
	"pitch"		"PITCH_NORM"
	"volume"	"0.5"

	"wave" "physics/rubber/rubber_tire_impact_hard3.wav"
}

"Rubber_Tire.ImpactSoft"
{
	"channel"		"CHAN_BODY"
	"soundlevel"	"SNDLVL_NORM"
	"pitch"		"PITCH_NORM"
	"volume"	"0.6"
	"rndwave"
	{
		"wave" "physics/rubber/rubber_tire_impact_soft1.wav"
		"wave" "physics/rubber/rubber_tire_impact_soft2.wav"
		"wave" "physics/rubber/rubber_tire_impact_soft3.wav"
	}
}

"Rubber_Tire.ImpactHard"
{
	"channel"		"CHAN_BODY"
	"soundlevel"	"SNDLVL_NORM"
	"pitch"		"PITCH_NORM"
	"volume"	"0.8"
	"rndwave"
	{
		"wave" "physics/rubber/rubber_tire_impact_hard1.wav"
		"wave" "physics/rubber/rubber_tire_impact_hard2.wav"
		"wave" "physics/rubber/rubber_tire_impact_hard3.wav"
	}
}

"Rubber_Tire.BulletImpact"
{
	"channel"		"CHAN_BODY"
	"soundlevel"	"SNDLVL_NORM"
	"pitch"		"96,104"
	"volume"	"1.0"
	"rndwave"
	{
		"wave" "physics/rubber/rubber_tire_impact_bullet1.wav"
		"wave" "physics/rubber/rubber_tire_impact_bullet2.wav"
		"wave" "physics/rubber/rubber_tire_impact_bullet3.wav"
		
	}
}

//"Rubber_Tire.Strain"
//{
//	"channel"		"CHAN_BODY"
//	"soundlevel"	"SNDLVL_NORM"
//	"pitch"		"PITCH_NORM"
//	"volume"	"0.8"
//	"rndwave"
//	{
//		"wave" "physics/rubber/rubber_tire_strain1.wav"
//		"wave" "physics/rubber/rubber_tire_strain2.wav"
//		"wave" "physics/rubber/rubber_tire_strain3.wav"
//	}
//}

// hard metal grenade

//"Grenade.StepLeft"
//{
//	"soundlevel"	"SNDLVL_NORM"
//	"pitch"			"95,105"
//	"volume"			"0.3"
//	"rndwave"
//	{
//		"wave"	"physics/metal/metal_grenade_impact_soft2.wav"
//		"wave"	"physics/metal/metal_grenade_impact_soft3.wav"
//	}
//}

//"Grenade.StepRight"
//{
//	"soundlevel"	"SNDLVL_NORM"
//	"pitch"			"95,105"
//	"volume"			"0.3"
//	"rndwave"
//	{
//		"wave"	"physics/metal/metal_grenade_impact_soft1.wav"
//		"wave"	"physics/metal/metal_grenade_impact_soft2.wav"
//	}
//}

"Grenade.ImpactHard"
{
	"soundlevel"	"SNDLVL_NORM"
	"volume"		"0.6"
	"pitch"		"98,100"
	"rndwave"
	{
		"wave"	"physics/metal/metal_grenade_impact_hard1.wav"
		"wave"	"physics/metal/metal_grenade_impact_hard2.wav"
		"wave"	"physics/metal/metal_grenade_impact_hard3.wav"
	}
}

"Grenade.ImpactSoft"
{
	"soundlevel"	"SNDLVL_NORM"
	"volume"		"0.6"
	"pitch"		"98,100"
	"rndwave"
	{
		"wave"	"physics/metal/metal_grenade_impact_soft1.wav"
		"wave"	"physics/metal/metal_grenade_impact_soft2.wav"
		"wave"	"physics/metal/metal_grenade_impact_soft3.wav"
	}
}

"Grenade.ScrapeRough"
{
	"soundlevel"	"SNDLVL_NORM"
	"volume"		"0.4"
	"pitch"			"96,104"
	"wave"			"physics/metal/metal_grenade_scrape_rough_loop1.wav"
}

"Grenade.ScrapeSmooth"
{
	"soundlevel"	"SNDLVL_NORM"
	"volume"		"0.3"
	"pitch"			"96,104"
	"wave"			"physics/metal/metal_grenade_scrape_smooth_loop1.wav"
}

//"Grenade.Roll"
//{
//	"soundlevel"	"SNDLVL_NORM"
//	"volume"		"0.4"
//	"pitch"			"PITCH_NORM"
//	"wave"			"physics/metal/metal_grenade_roll_loop1.wav"
//}

// generic wood


"Wood.BulletImpact"
{
	"soundlevel"	"SNDLVL_NORM"
	"volume"		"0.7"
	"pitch"			"PITCH_NORM"
	"rndwave"
	{
		"wave"	"physics/wood/wood_solid_impact_bullet1.wav"
		"wave"	"physics/wood/wood_solid_impact_bullet2.wav"
		"wave"	"physics/wood/wood_solid_impact_bullet3.wav"
		"wave"	"physics/wood/wood_solid_impact_bullet4.wav"
		"wave"	"physics/wood/wood_solid_impact_bullet5.wav"
	}
}

"Wood.ImpactSoft"
{
	"soundlevel"	"SNDLVL_NORM"
	"volume"		"0.6"
	"pitch"		"PITCH_NORM"
	"rndwave"
	{
		"wave"	"physics/wood/wood_plank_impact_soft1.wav"
		"wave"	"physics/wood/wood_box_impact_soft1.wav"
		"wave"	"physics/wood/wood_solid_impact_soft2.wav"
	}
}


"Wood.ImpactHard"
{
	"soundlevel"	"SNDLVL_NORM"
	"volume"		"0.6"
	"pitch"		"96,104"

	"rndwave"
	{
		"wave"	"physics/wood/wood_box_impact_hard1.wav"
		"wave"	"physics/wood/wood_box_impact_hard2.wav"
		"wave"	"physics/wood/wood_box_impact_hard3.wav"
	}
}

"Wood.ScrapeRough"
{
	"soundlevel"	"SNDLVL_NORM"
	"volume"		"0.5"
	"pitch"		"96,104"
	"wave"		"physics/wood/wood_solid_scrape_rough_loop1.wav"
}

"Wood.ScrapeSmooth"
{
	"soundlevel"	"SNDLVL_NORM"
	"volume"		"0.5"
	"pitch"		"96,104"
	"wave"		"physics/wood/wood_plank_scrape_smooth_loop1.wav"
}

"Wood.Break"
{
	"soundlevel"	"SNDLVL_NORM"
	"volume"		"0.8"
	"pitch"		"98,100"
	"rndwave"
	{
		"wave"	"physics/wood/wood_plank_break2.wav"
		"wave"	"physics/wood/wood_plank_break3.wav"
		"wave"	"physics/wood/wood_plank_break4.wav"
	}
}

//"Wood.Strain"
//{
//	"soundlevel"	"SNDLVL_NORM"
//	"volume"		"0.6"
//	"pitch"		"98,100"
//	"rndwave"
//	{
//		"wave"	"physics/wood/wood_strain5.wav"
//		"wave"	"physics/wood/wood_strain6.wav"
//		"wave"	"physics/wood/wood_strain7.wav"
//		"wave"	"physics/wood/wood_strain8.wav"
//	}
//}


// wood box - small crate



"Wood_Box.BulletImpact"
{
	"soundlevel"	"SNDLVL_NORM"
	"volume"		"0.7"
	"pitch"			"PITCH_NORM"
	"rndwave"
	{
		"wave"	"physics/wood/wood_box_impact_bullet1.wav"
		"wave"	"physics/wood/wood_box_impact_bullet2.wav"
		"wave"	"physics/wood/wood_box_impact_bullet3.wav"
		"wave"	"physics/wood/wood_box_impact_bullet4.wav"
	}
}

"Wood_Box.ImpactSoft"
{
	"soundlevel"	"SNDLVL_NORM"
	"volume"		"0.6"
	"pitch"		"98,100"
	"rndwave"
	{
		"wave"	"physics/wood/wood_box_impact_soft1.wav"
		"wave"	"physics/wood/wood_box_impact_soft2.wav"
		"wave"	"physics/wood/wood_box_impact_soft3.wav"
	}
}


"Wood_Box.ImpactHard"
{
	"soundlevel"	"SNDLVL_NORM"
	"volume"		"0.6"
	"pitch"		"98,100"
	"rndwave"
	{
		"wave"	"physics/wood/wood_box_impact_hard4.wav"
		"wave"	"physics/wood/wood_box_impact_hard5.wav"
		"wave"	"physics/wood/wood_box_impact_hard6.wav"
	}
}

"Wood_Box.ScrapeRough"
{
	"soundlevel"	"SNDLVL_NORM"
	"volume"		"0.5"
	"pitch"		"96,104"
	"wave"		"physics/wood/wood_box_scrape_rough_loop1.wav"
}

"Wood_Box.ScrapeSmooth"
{
	"soundlevel"	"SNDLVL_NORM"
	"volume"		"0.5"
	"pitch"		"96,104"
	"wave"		"physics/wood/wood_box_scrape_smooth_loop1.wav"
}

"Wood_Box.Break"
{
	"soundlevel"	"SNDLVL_NORM"
	"volume"		"0.8"
	"pitch"		"98,100"
	"rndwave"
	{
		"wave"	"physics/wood/wood_box_break1.wav"
		"wave"	"physics/wood/wood_box_break2.wav"
	}
}

//"Wood_Box.Strain"
//{
//	"soundlevel"	"SNDLVL_NORM"
//	"volume"		"0.6"
//	"pitch"		"98,100"
//	"rndwave"
//	{
//		"wave"	"physics/wood/wood_strain1.wav"
//		"wave"	"physics/wood/wood_strain6.wav"
//		"wave"	"physics/wood/wood_strain7.wav"
//	}
//}

// wood crate - large crate

"Wood_Crate.StepLeft"
{
	"soundlevel"	"SNDLVL_NORM"
	"volume"		".66"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"physics/wood/wood_box_footstep1.wav"
		"wave"		"physics/wood/wood_box_footstep2.wav"
	}
}

"Wood_Crate.StepRight"
{
	"soundlevel"	"SNDLVL_NORM"
	"volume"		".66"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"physics/wood/wood_box_footstep3.wav"
		"wave"		"physics/wood/wood_box_footstep4.wav"
	}
}


"Wood_Crate.ImpactSoft"
{
	"soundlevel"	"SNDLVL_NORM"
	"volume"		"0.6"
	"pitch"		"98,100"
	"rndwave"
	{
		"wave"	"physics/wood/wood_crate_impact_soft1.wav"
		"wave"	"physics/wood/wood_crate_impact_soft2.wav"
		"wave"	"physics/wood/wood_crate_impact_soft3.wav"
	}
}

"Wood_Crate.ImpactHard"
{
	"soundlevel"	"SNDLVL_NORM"
	"volume"		"0.6"
	"pitch"		"98,100"
	"rndwave"
	{
		"wave"	"physics/wood/wood_crate_impact_hard4.wav"
		"wave"	"physics/wood/wood_crate_impact_hard5.wav"
		"wave"	"physics/wood/wood_panel_impact_hard1.wav"
	}
}

"Wood_Crate.ScrapeRough"
{
	"soundlevel"	"SNDLVL_NORM"
	"volume"		"0.5"
	"pitch"		"96,104"
	"wave"		"physics/wood/wood_crate_scrape_rough_loop1.wav"
}

"Wood_Crate.ScrapeSmooth"
{
	"soundlevel"	"SNDLVL_NORM"
	"volume"		"0.5"
	"pitch"		"96,104"
	"wave"		"physics/wood/wood_box_scrape_smooth_loop1.wav"
}

"Wood_Crate.Break"
{
	"soundlevel"	"SNDLVL_NORM"
	"volume"		"0.8"
	"pitch"		"98,100"
	"rndwave"
	{
		"wave"	"physics/wood/wood_crate_break1.wav"
		"wave"	"physics/wood/wood_crate_break2.wav"
		"wave"	"physics/wood/wood_crate_break3.wav"
		"wave"	"physics/wood/wood_crate_break4.wav"
		"wave"	"physics/wood/wood_crate_break5.wav"
	}
}

//"Wood_Crate.Strain"
//{
//	"soundlevel"	"SNDLVL_NORM"
//	"volume"		"0.6"
//	"pitch"		"94,98"
//	"rndwave"
//	{
//		"wave"	"physics/wood/wood_strain3.wav"
//		"wave"	"physics/wood/wood_strain6.wav"
//		"wave"	"physics/wood/wood_strain8.wav"
//	}
//}

// wood plank


"Wood_Plank.BulletImpact"
{
	"soundlevel"	"SNDLVL_NORM"
	"volume"		"0.7"
	"pitch"			"PITCH_NORM"
	"rndwave"
	{
		"wave"	"physics/wood/wood_box_impact_bullet1.wav"
		"wave"	"physics/wood/wood_box_impact_bullet2.wav"
		"wave"	"physics/wood/wood_box_impact_bullet3.wav"
		"wave"	"physics/wood/wood_box_impact_bullet4.wav"
	}
}

"Wood_Plank.ImpactSoft"
{
	"soundlevel"	"SNDLVL_NORM"
	"volume"		"0.6"
	"pitch"		"98,100"
	"rndwave"
	{
		"wave"	"physics/wood/wood_plank_impact_soft1.wav"
		"wave"	"physics/wood/wood_plank_impact_soft2.wav"
		"wave"	"physics/wood/wood_plank_impact_soft3.wav"
	}
}


"Wood_Plank.ImpactHard"
{
	"soundlevel"	"SNDLVL_NORM"
	"volume"		"0.6"
	"pitch"		"98,100"
	"rndwave"
	{
		"wave"	"physics/wood/wood_plank_impact_hard1.wav"
		"wave"	"physics/wood/wood_plank_impact_hard2.wav"
		"wave"	"physics/wood/wood_plank_impact_hard3.wav"
		"wave"	"physics/wood/wood_plank_impact_hard4.wav"
		"wave"	"physics/wood/wood_plank_impact_hard5.wav"
	}
}

"Wood_Plank.ScrapeRough"
{
	"soundlevel"	"SNDLVL_NORM"
	"volume"		"0.5"
	"pitch"		"96,104"
	"wave"		"physics/wood/wood_plank_scrape_rough_loop1.wav"
}

"Wood_Plank.ScrapeSmooth"
{
	"soundlevel"	"SNDLVL_NORM"
	"volume"		"0.5"
	"pitch"		"96,104"
	"wave"		"physics/wood/wood_plank_scrape_smooth_loop1.wav"
}

"Wood_Plank.Break"
{
	"soundlevel"	"SNDLVL_NORM"
	"volume"		"0.8"
	"pitch"		"98,100"
	"rndwave"
	{
		"wave"	"physics/wood/wood_plank_break1.wav"
		"wave"	"physics/wood/wood_plank_break2.wav"
		"wave"	"physics/wood/wood_plank_break3.wav"
		"wave"	"physics/wood/wood_plank_break4.wav"
	}
}

//"Wood_Plank.Strain"
//{
//	"soundlevel"	"SNDLVL_NORM"
//	"volume"		"0.6"
//	"pitch"		"98,100"
//	"rndwave"
//	{
//		"wave"	"physics/wood/wood_strain1.wav"
//		"wave"	"physics/wood/wood_strain2.wav"
//		"wave"	"physics/wood/wood_strain4.wav"
//		"wave"	"physics/wood/wood_strain7.wav"
//	}
//}

// wood solid - small 6x6 or larger post


"Wood_Solid.BulletImpact"
{
	"soundlevel"	"SNDLVL_NORM"
	"volume"		"0.7"
	"pitch"			"PITCH_NORM"
	"rndwave"
	{
		"wave"	"physics/wood/wood_solid_impact_bullet1.wav"
		"wave"	"physics/wood/wood_solid_impact_bullet2.wav"
		"wave"	"physics/wood/wood_solid_impact_bullet3.wav"
		"wave"	"physics/wood/wood_solid_impact_bullet4.wav"
		"wave"	"physics/wood/wood_solid_impact_bullet5.wav"
	}
}

"Wood_Solid.ImpactSoft"
{
	"soundlevel"	"SNDLVL_NORM"
	"volume"		"0.6"
	"pitch"		"98,100"
	"rndwave"
	{
		"wave"	"physics/wood/wood_solid_impact_soft1.wav"
		"wave"	"physics/wood/wood_solid_impact_soft2.wav"
		"wave"	"physics/wood/wood_solid_impact_soft3.wav"
	}
}


"Wood_Solid.ImpactHard"
{
	"soundlevel"	"SNDLVL_NORM"
	"volume"		"0.6"
	"pitch"		"98,100"
	"rndwave"
	{
		"wave"	"physics/wood/wood_solid_impact_hard1.wav"
		"wave"	"physics/wood/wood_solid_impact_hard2.wav"
		"wave"	"physics/wood/wood_solid_impact_hard3.wav"
	}
}

"Wood_Solid.ScrapeRough"
{
	"soundlevel"	"SNDLVL_NORM"
	"volume"		"0.5"
	"pitch"		"96,104"
	"wave"		"physics/wood/wood_solid_scrape_rough_loop1.wav"
}

"Wood_Solid.ScrapeSmooth"
{
	"soundlevel"	"SNDLVL_NORM"
	"volume"		"0.5"
	"pitch"		"96,104"
	"wave"		"physics/wood/wood_plank_scrape_smooth_loop1.wav"
}

"Wood_Solid.Break"
{
	"soundlevel"	"SNDLVL_NORM"
	"volume"		"0.8"
	"pitch"		"90,98"
	"rndwave"
	{
		"wave"	"physics/wood/wood_plank_break1.wav"
		"wave"	"physics/wood/wood_plank_break3.wav"
	}
}

//"Wood_Solid.Strain"
//{
//	"soundlevel"	"SNDLVL_NORM"
//	"volume"		"0.6"
//	"pitch"		"90,98"
//	"rndwave"
//	{
//		"wave"	"physics/wood/wood_strain1.wav"
//		"wave"	"physics/wood/wood_strain5.wav"
//		"wave"	"physics/wood/wood_strain8.wav"
//	}
//}

// wood furniture - chairs, small tables


"Wood_Furniture.ImpactSoft"
{
	"soundlevel"	"SNDLVL_NORM"
	"volume"		"0.6"
	"pitch"		"98,100"
	"rndwave"
	{
		"wave"	"physics/wood/wood_furniture_impact_soft1.wav"
		"wave"	"physics/wood/wood_furniture_impact_soft2.wav"
		"wave"	"physics/wood/wood_furniture_impact_soft3.wav"
	}
}

"Wood_Furniture.Break"
{
	"soundlevel"	"SNDLVL_NORM"
	"volume"		"0.8"
	"pitch"		"98,100"
	"rndwave"
	{
		"wave"	"physics/wood/wood_furniture_break1.wav"
		"wave"	"physics/wood/wood_furniture_break2.wav"
	}
}

//"Wood_Furniture.Strain"
//{
//	"soundlevel"	"SNDLVL_NORM"
//	"volume"		"0.6"
//	"pitch"		"100,104"
//	"rndwave"
//	{
//		"wave"	"physics/wood/wood_strain4.wav"
//		"wave"	"physics/wood/wood_strain5.wav"
//		"wave"	"physics/wood/wood_strain6.wav"
//		"wave"	"physics/wood/wood_strain7.wav"
//	}
//}

// wood panel - plywood panel sheet



"Wood_Panel.BulletImpact"
{
	"soundlevel"	"SNDLVL_NORM"
	"volume"		"0.7"
	"pitch"			"PITCH_NORM"
	"rndwave"
	{
		"wave"	"physics/wood/wood_box_impact_bullet1.wav"
		"wave"	"physics/wood/wood_box_impact_bullet2.wav"
		"wave"	"physics/wood/wood_box_impact_bullet3.wav"
		"wave"	"physics/wood/wood_box_impact_bullet4.wav"
	}
}

"Wood_Panel.ImpactSoft"
{
	"soundlevel"	"SNDLVL_NORM"
	"volume"		"0.6"
	"pitch"		"98,100"
	"rndwave"
	{
		"wave"	"physics/wood/wood_box_impact_soft1.wav"
		"wave"	"physics/wood/wood_crate_impact_soft2.wav"
		"wave"	"physics/wood/wood_box_impact_soft3.wav"
	}
}


"Wood_Panel.ImpactHard"
{
	"soundlevel"	"SNDLVL_NORM"
	"volume"		"0.6"
	"pitch"		"98,100"
	"rndwave"
	{
		"wave"	"physics/wood/wood_crate_impact_hard2.wav"
		"wave"	"physics/wood/wood_crate_impact_hard3.wav"
		"wave"	"physics/wood/wood_panel_impact_hard1.wav"
	}
}

"Wood_Panel.ScrapeRough"
{
	"soundlevel"	"SNDLVL_NORM"
	"volume"		"0.5"
	"pitch"		"96,104"
	"wave"		"physics/wood/wood_box_scrape_rough_loop1.wav"
}

"Wood_Panel.ScrapeSmooth"
{
	"soundlevel"	"SNDLVL_NORM"
	"volume"		"0.5"
	"pitch"		"96,104"
	"wave"		"physics/wood/wood_box_scrape_smooth_loop1.wav"
}

"Wood_Panel.Break"
{
	"soundlevel"	"SNDLVL_NORM"
	"volume"		"0.8"
	"pitch"		"98,100"
	"rndwave"
	{
		"wave"	"physics/wood/wood_panel_break1.wav"
		"wave"	"physics/wood/wood_box_break1.wav"
	}
}

//"Wood_Panel.Strain"
//{
//	"soundlevel"	"SNDLVL_NORM"
//	"volume"		"0.6"
//	"pitch"		"98,100"
//	"rndwave"
//	{
//		"wave"	"physics/wood/wood_strain1.wav"
//		"wave"	"physics/wood/wood_strain2.wav"
//		"wave"	"physics/wood/wood_strain3.wav"
//		"wave"	"physics/wood/wood_strain4.wav"
//	}
//}


// metal box - smaller metal box (< 2' width/height/depth)

//"Metal_Box.StepLeft"
//{
//	"soundlevel"	"SNDLVL_NORM"
//	"volume"		".66"
//	"pitch"			"95,105"
//	"rndwave"
//	{
//		"wave"		"physics/metal/metal_box_footstep1.wav"
//		"wave"		"physics/metal/metal_box_footstep3.wav"
//	}
//}

//"Metal_Box.StepRight"
//{
//	"soundlevel"	"SNDLVL_NORM"
//	"volume"		".66"
//	"pitch"			"95,105"
//	"rndwave"
//	{
//		"wave"		"physics/metal/metal_box_footstep2.wav"
//		"wave"		"physics/metal/metal_box_footstep4.wav"
//	}
//}

"Metal_Box.BulletImpact"
{
	"soundlevel"	"SNDLVL_NORM"
	"volume"		"0.7"
	"pitch"			"PITCH_NORM"
	"rndwave"
	{
		"wave"	"physics/metal/metal_box_impact_bullet1.wav"
		"wave"	"physics/metal/metal_box_impact_bullet2.wav"
		"wave"	"physics/metal/metal_box_impact_bullet3.wav"
	}
}

"Metal_Box.ImpactSoft"
{
	"soundlevel"	"SNDLVL_NORM"
	"volume"		"0.6"
	"pitch"		"98,100"
	"rndwave"
	{
		"wave"	"physics/metal/metal_box_impact_soft1.wav"
		"wave"	"physics/metal/metal_box_impact_soft2.wav"
		"wave"	"physics/metal/metal_box_impact_soft3.wav"
	}
}


"Metal_Box.ImpactHard"
{
	"soundlevel"	"SNDLVL_NORM"
	"volume"		"0.6"
	"pitch"		"98,100"
	"rndwave"
	{
		"wave"	"physics/metal/metal_box_impact_hard1.wav"
		"wave"	"physics/metal/metal_box_impact_hard2.wav"
		"wave"	"physics/metal/metal_box_impact_hard3.wav"
	}
}

"Metal_Box.ScrapeRough"
{
	"soundlevel"	"SNDLVL_NORM"
	"volume"		"0.5"
	"pitch"		"96,104"
	"wave"		"physics/metal/metal_box_scrape_rough_loop1.wav"
}

"Metal_Box.ScrapeSmooth"
{
	"soundlevel"	"SNDLVL_NORM"
	"volume"		"0.5"
	"pitch"		"96,104"
	"wave"		"physics/metal/metal_box_scrape_smooth_loop1.wav"
}

"Metal_Box.Break"
{
	"soundlevel"	"SNDLVL_NORM"
	"volume"		"0.8"
	"pitch"		"98,100"
	"rndwave"
	{
		"wave"	"physics/metal/metal_box_break1.wav"
		"wave"	"physics/metal/metal_box_break2.wav"
	}
}

//"Metal_Box.Strain"
//{
//	"soundlevel"	"SNDLVL_NORM"
//	"volume"		"0.6"
//	"pitch"		"98,100"
//	"rndwave"
//	{
//		"wave"	"physics/metal/metal_box_strain1.wav"
//		"wave"	"physics/metal/metal_box_strain2.wav"
//		"wave"	"physics/metal/metal_box_strain3.wav"
//		"wave"	"physics/metal/metal_box_strain4.wav"
//	}
//}






// weapon body

"weapon.StepLeft"
{
	"soundlevel"	"SNDLVL_NORM"
	"volume"		".66"
	"pitch"			"95,105"
	"wave"		"physics/metal/weapon_footstep1.wav"
}

"weapon.StepRight"
{
	"soundlevel"	"SNDLVL_NORM"
	"volume"		".66"
	"pitch"			"95,105"
	"wave"		"physics/metal/weapon_footstep2.wav"

}

"weapon.ImpactSoft"
{
	"soundlevel"	"SNDLVL_NORM"
	"volume"		"0.6"
	"pitch"		"98,100"
	"rndwave"
	{
		"wave"	"physics/metal/weapon_impact_soft1.wav"
		"wave"	"physics/metal/weapon_impact_soft2.wav"
		"wave"	"physics/metal/weapon_impact_soft3.wav"
	}
}


"weapon.ImpactHard"
{
	"soundlevel"	"SNDLVL_NORM"
	"volume"		"0.6"
	"pitch"		"98,100"
	"rndwave"
	{
		"wave"	"physics/metal/weapon_impact_hard1.wav"
		"wave"	"physics/metal/weapon_impact_hard2.wav"
		"wave"	"physics/metal/weapon_impact_hard3.wav"
	}
}

"weapon.BulletImpact"
{
	"soundlevel"	"SNDLVL_NORM"
	"volume"		"0.7"
	"pitch"			"PITCH_NORM"
	"rndwave"
	{
		"wave"	"physics/plastic/plastic_box_impact_bullet5.wav"
		"wave"	"physics/metal/metal_computer_impact_bullet3.wav"
		"wave"	"physics/metal/metal_computer_impact_bullet1.wav"
	}
} 

"weapon.ScrapeRough"
{
	"soundlevel"	"SNDLVL_NORM"
	"volume"		"0.4"
	"pitch"		"75,85"
	"wave"		"physics/metal/soda_can_scrape_rough_loop1.wav"
}

"weapon.ScrapeSmooth"
{
	"soundlevel"	"SNDLVL_NORM"
	"volume"		"0.4"
	"pitch"		"96,104"
	"wave"		"physics/plastic/plastic_box_scrape_smooth_loop2.wav"
}

"Metal.SawbladeStick"
{
	"soundlevel"	"SNDLVL_NORM"
	"volume"			"1.0"
	"pitch"			"98,104"
	
	"rndwave"
	{
		"wave"		"physics/metal/sawblade_stick1.wav"
		"wave"		"physics/metal/sawblade_stick2.wav"
		"wave"		"physics/metal/sawblade_stick3.wav"
	}
}

//------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------//
//New Footfalls
//------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------//
//----------------------------------------------------------------------------------------------------------------------------------------//
//Survivor Run
//----------------------------------------------------------------------------------------------------------------------------------------//
"Survivor.Default.RunLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"			".66"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/survivor/run/concrete1.wav"
		"wave"		"player/footsteps/survivor/run/concrete3.wav"
	}
}

"Survivor.Default.RunRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"pitch"			"95,105"
	"volume"			".66"
	"rndwave"
	{
		"wave"		"player/footsteps/survivor/run/concrete2.wav"
		"wave"		"player/footsteps/survivor/run/concrete4.wav"
	}
}

"Survivor.SolidMetal.RunLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"pitch"			"95,105"
	"volume"		".66"
	"rndwave"
	{
		"wave"		"player/footsteps/survivor/run/metal1.wav"
		"wave"		"player/footsteps/survivor/run/metal3.wav"
	}
}

"Survivor.SolidMetal.RunRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"pitch"			"95,105"
	"volume"		".66"
	"rndwave"
	{
		"wave"		"player/footsteps/survivor/run/metal2.wav"
		"wave"		"player/footsteps/survivor/run/metal4.wav"
	}
}

"Survivor.Metalgrate.RunLeft"
{
	"channel"       "CHAN_BODY"


	"soundlevel"	"SNDLVL_NORM"
	"pitch"			"95,105"
	"volume"		".66"
	"rndwave"
	{
		"wave"		"player/footsteps/survivor/run/metalgrate1.wav"
		"wave"		"player/footsteps/survivor/run/metalgrate2.wav"

		
	}

}

"Survivor.Metalgrate.RunRight"
{
	"channel"       "CHAN_BODY"


	"soundlevel"	"SNDLVL_NORM"
	"pitch"			"95,105"
	"volume"		".66"
	"rndwave"
	{
		"wave"		"player/footsteps/survivor/run/metalgrate3.wav"
		"wave"		"player/footsteps/survivor/run/metalgrate4.wav"
		
	}

}

"Survivor.Snow.RunLeft"
{
	"channel"       "CHAN_BODY"


	"soundlevel"	"SNDLVL_NORM"
	"pitch"			"95,105"
	"volume"		".66"
	"rndwave"
	{
		"wave"		"player/footsteps/survivor/run/sand1.wav"
		"wave"		"player/footsteps/survivor/run/sand3.wav"
		
	}

}

"Survivor.Snow.RunRight"
{
	"channel"       "CHAN_BODY"


	"soundlevel"	"SNDLVL_NORM"
	"pitch"			"95,105"
	"volume"		".66"
	"rndwave"
	{
		"wave"		"player/footsteps/survivor/run/sand2.wav"
		"wave"		"player/footsteps/survivor/run/sand4.wav"
		
	}

}

"Survivor.Dirt.RunLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"pitch"			"95,105"
	"volume"		".66"
	"rndwave"
	{
		"wave"		"player/footsteps/survivor/run/dirt1.wav"
		"wave"		"player/footsteps/survivor/run/dirt3.wav"
	}
}

"Survivor.Dirt.RunRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"pitch"			"95,105"
	"volume"		".66"
	"rndwave"
	{
		"wave"		"player/footsteps/survivor/run/dirt2.wav"
		"wave"		"player/footsteps/survivor/run/dirt4.wav"
	}
}

"Survivor.Mud.RunLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".6"
	"pitch"			"90,105"
	"rndwave"
	{
		"wave"		"player/footsteps/survivor/run/mud1.wav"
		"wave"		"player/footsteps/survivor/run/mud3.wav"
	}
}

"Survivor.Mud.RunRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".6"
	"pitch"			"90,105"
	"rndwave"
	{
		"wave"		"player/footsteps/survivor/run/mud2.wav"
		"wave"		"player/footsteps/survivor/run/mud4.wav"
	}
}

"Survivor.SlipperySlime.RunLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		"0.6"
	"pitch"			"90,105"
	"rndwave"
	{
		"wave"		"player/footsteps/survivor/run/mud1.wav"
		"wave"		"player/footsteps/survivor/run/mud3.wav"
	}
}

"Survivor.SlipperySlime.RunRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		"0.6"
	"pitch"			"90,105"
	"rndwave"
	{
		"wave"		"player/footsteps/survivor/run/mud2.wav"
		"wave"		"player/footsteps/survivor/run/mud4.wav"
	}
}

"Survivor.Grass.RunLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".66"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/survivor/run/grass1.wav"
		"wave"		"player/footsteps/survivor/run/grass3.wav"
	}
}

"Survivor.Grass.RunRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".66"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/survivor/run/grass2.wav"
		"wave"		"player/footsteps/survivor/run/grass4.wav"
	}
}

"Survivor.MetalVent.RunLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".66"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/survivor/run/duct2.wav"
		"wave"		"player/footsteps/survivor/run/duct4.wav"
	}
}

"Survivor.MetalVent.RunRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".66"
	"rndwave"
	{
		"wave"		"player/footsteps/survivor/run/duct1.wav"
		"wave"		"player/footsteps/survivor/run/duct3.wav"
	}
}

"Survivor.Tile.RunLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".66"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/survivor/run/tile1.wav"
		"wave"		"player/footsteps/survivor/run/tile3.wav"
	}
}

"Survivor.Tile.RunRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".66"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/survivor/run/tile2.wav"
		"wave"		"player/footsteps/survivor/run/tile4.wav"
	}
}

"Survivor.Water.RunLeft"
{
	"channel"       "CHAN_AUTO"
	"soundlevel"	"SNDLVL_NORM"
	"volume"		"1"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/survivor/run/wade2.wav"
		"wave"		"player/footsteps/survivor/run/wade4.wav"
	}
}

"Survivor.Water.RunRight"
{
	"channel"       "CHAN_AUTO"
	"soundlevel"	"SNDLVL_NORM"
	"volume"		"1"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/survivor/run/wade1.wav"
		"wave"		"player/footsteps/survivor/run/wade3.wav"
	}
}

"Survivor.Wade.RunLeft"
{

	"channel"       "CHAN_AUTO"
	"soundlevel"	"SNDLVL_NORM"
	"volume"		"1"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/survivor/run/wade1.wav"
		"wave"		"player/footsteps/survivor/run/wade3.wav"
	}
}

"Survivor.Wade.RunRight"
{

	"channel"       "CHAN_AUTO"
	"soundlevel"	"SNDLVL_NORM"
	"volume"		"1"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/survivor/run/wade2.wav"
		"wave"		"player/footsteps/survivor/run/wade4.wav"
	}
}


"Survivor.Ladder.RunLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		"1"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/survivor/run/ladder1.wav"
		"wave"		"player/footsteps/survivor/run/ladder3.wav"
	}
}

"Survivor.Ladder.RunRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		"1"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/survivor/run/ladder2.wav"
		"wave"		"player/footsteps/survivor/run/ladder4.wav"
	}
}

"Survivor.Glass.RunLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".66"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/survivor/run/glass2.wav"
		"wave"		"player/footsteps/survivor/run/glass4.wav"
	}
}

"Survivor.Glass.RunRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".66"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/survivor/run/glass1.wav"
		"wave"		"player/footsteps/survivor/run/glass3.wav"
	}
}

"Survivor.Concrete.RunLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".66"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/survivor/run/concrete1.wav"
		"wave"		"player/footsteps/survivor/run/concrete3.wav"
	}
}

"Survivor.Concrete.RunRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".66"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/survivor/run/concrete2.wav"
		"wave"		"player/footsteps/survivor/run/concrete4.wav"
	}
}

"Survivor.Gravel.RunLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".66"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/survivor/run/gravel1.wav"
		"wave"		"player/footsteps/survivor/run/gravel3.wav"
	}
}

"Survivor.Gravel.RunRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".66"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/survivor/run/gravel2.wav"
		"wave"		"player/footsteps/survivor/run/gravel4.wav"
	}
}

"Survivor.ChainLink.RunLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".66"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/survivor/run/chainlink1.wav"
		"wave"		"player/footsteps/survivor/run/chainlink3.wav"
	}
}

"Survivor.ChainLink.RunRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".66"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/survivor/run/chainlink2.wav"
		"wave"		"player/footsteps/survivor/run/chainlink4.wav"
	}
}

"Survivor.Flesh.RunLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".66"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"	"player/footsteps/survivor/run/flesh1.wav"
		"wave"	"player/footsteps/survivor/run/flesh3.wav"
	}
}

"Survivor.Flesh.RunRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".66"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"	"player/footsteps/survivor/run/flesh2.wav"
		"wave"	"player/footsteps/survivor/run/flesh4.wav"
	}
}

"Survivor.Sand.RunLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".66"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/survivor/run/sand1.wav"
		"wave"		"player/footsteps/survivor/run/sand3.wav"
	}
}

"Survivor.Sand.RunRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".66"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/survivor/run/sand2.wav"
		"wave"		"player/footsteps/survivor/run/sand4.wav"
	}
}

"Survivor.GlassBottle.RunLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		"0.2"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"physics/glass/glass_impact_soft1.wav"
		"wave"		"physics/glass/glass_impact_soft2.wav"
	}
}

"Survivor.GlassBottle.RunRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		"0.2"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"physics/glass/glass_impact_soft2.wav"
		"wave"		"physics/glass/glass_impact_soft3.wav"
	}
}

"Survivor.ceiling_tile.RunLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".66"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/survivor/run/tile1.wav"
		"wave"		"player/footsteps/survivor/run/tile3.wav"
	}
}

"Survivor.ceiling_tile.RunRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".66"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/survivor/run/tile2.wav"
		"wave"		"player/footsteps/survivor/run/tile4.wav"
	}
}

"Survivor.drywall.RunLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".36"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/survivor/run/plaster1.wav"
		"wave"		"player/footsteps/survivor/run/plaster3.wav"
	}
}

"Survivor.drywall.RunRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".36"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/survivor/run/plaster2.wav"
		"wave"		"player/footsteps/survivor/run/plaster4.wav"
	}
}


"Survivor.Plaster.RunLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".36"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/survivor/run/plaster1.wav"
		"wave"		"player/footsteps/survivor/run/plaster3.wav"
	}
}

"Survivor.Plaster.RunRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".36"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/survivor/run/plaster2.wav"
		"wave"		"player/footsteps/survivor/run/plaster4.wav"
	}
}

"Survivor.Cardboard.RunLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"pitch"			"95,105"
	"volume"			".36"
	"rndwave"
	{
		"wave"		"player/footsteps/survivor/run/cardboard1.wav"
		"wave"		"player/footsteps/survivor/run/cardboard2.wav"
	}
}

"Survivor.Cardboard.RunRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"pitch"			"95,105"
	"volume"			".36"
	"rndwave"
	{
		"wave"		"player/footsteps/survivor/run/cardboard3.wav"
		"wave"		"player/footsteps/survivor/run/cardboard4.wav"
	}
}

"Survivor.Plastic_Barrel.RunLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"pitch"			"95,105"
	"volume"			"0.5"
	"rndwave"
	{
		"wave"		"physics/plastic/plastic_barrel_impact_soft1.wav"
		"wave"		"physics/plastic/plastic_barrel_impact_soft2.wav"
	}
}

"Survivor.Plastic_Barrel.RunRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"pitch"			"95,105"
	"volume"			"0.5"
	"rndwave"
	{
		"wave"		"physics/plastic/plastic_barrel_impact_soft3.wav"
		"wave"		"physics/plastic/plastic_barrel_impact_soft4.wav"
	}
}

"Survivor.Plastic_Box.RunLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"pitch"			"95,105"
	"volume"			"0.3"
	"rndwave"
	{
		"wave"		"physics/plastic/plastic_box_impact_soft1.wav"
		"wave"		"physics/plastic/plastic_box_impact_soft2.wav"
	}
}

"Survivor.Plastic_Box.RunRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"pitch"			"95,105"
	"volume"			"0.3"
	"rndwave"
	{
		"wave"		"physics/plastic/plastic_box_impact_soft3.wav"
		"wave"		"physics/plastic/plastic_box_impact_soft4.wav"
	}
}

"Survivor.Rubber.RunLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"pitch"			"95,105"
	"volume"			".36"
	"rndwave"
	{
		"wave"		"player/footsteps/survivor/run/cardboard1.wav"
		"wave"		"player/footsteps/survivor/run/cardboard2.wav"
	}
}

"Survivor.Rubber.RunRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"pitch"			"95,105"
	"volume"			".36"
	"rndwave"
	{
		"wave"		"player/footsteps/survivor/run/cardboard3.wav"
		"wave"		"player/footsteps/survivor/run/cardboard4.wav"
	}
}

"Survivor.Grenade.RunLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".66"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/survivor/run/gravel1.wav"
		"wave"		"player/footsteps/survivor/run/gravel3.wav"
	}
}
"Survivor.Grenade.RunRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".66"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/survivor/run/gravel2.wav"
		"wave"		"player/footsteps/survivor/run/gravel4.wav"
	}
}
"Survivor.Wood.RunLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".66"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/survivor/run/wood1.wav"
		"wave"		"player/footsteps/survivor/run/wood3.wav"
	}
}

"Survivor.Wood.RunRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".66"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/survivor/run/wood2.wav"
		"wave"		"player/footsteps/survivor/run/wood4.wav"
	}
}

"Survivor.Wood_Box.RunLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".66"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"physics/wood/wood_box_footstep1.wav"
		"wave"		"physics/wood/wood_box_footstep2.wav"
	}
}

"Survivor.Wood_Box.RunRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".66"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"physics/wood/wood_box_footstep3.wav"
		"wave"		"physics/wood/wood_box_footstep4.wav"
	}
}

"Survivor.Wood_Crate.RunLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".66"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"physics/wood/wood_box_footstep1.wav"
		"wave"		"physics/wood/wood_box_footstep2.wav"
	}
}

"Survivor.Wood_Crate.RunRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".66"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"physics/wood/wood_box_footstep3.wav"
		"wave"		"physics/wood/wood_box_footstep4.wav"
	}
}

"Survivor.Wood_Panel.RunLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".66"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/survivor/run/wood1.wav"
		"wave"		"player/footsteps/survivor/run/wood3.wav"
	}
}

"Survivor.Wood_Panel.RunRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".66"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/survivor/run/wood2.wav"
		"wave"		"player/footsteps/survivor/run/wood4.wav"
	}
}

"Survivor.Metal_Box.RunLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".66"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/survivor/run/gravel1.wav"
		"wave"		"player/footsteps/survivor/run/gravel3.wav"
	}
}
"Survivor.Metal_Box.RunRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".66"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/survivor/run/gravel2.wav"
		"wave"		"player/footsteps/survivor/run/gravel4.wav"
	}
}
"Survivor.weapon.RunLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".66"
	"pitch"			"95,105"
	"wave"		"physics/metal/weapon_footstep1.wav"
}

"Survivor.weapon.RunRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".66"
	"pitch"			"95,105"
	"wave"		"physics/metal/weapon_footstep2.wav"

}

"Survivor.SugarCane.RunLeft"
{
	"channel"       "CHAN_AUTO"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".66"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		")player/footsteps/survivor/run/foliage1.wav"
		"wave"		")player/footsteps/survivor/run/foliage3.wav"
	}
}

"Survivor.SugarCane.RunRight"
{
	"channel"       "CHAN_AUTO"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".66"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		")player/footsteps/survivor/run/foliage2.wav"
		"wave"		")player/footsteps/survivor/run/foliage4.wav"
	}
}

"Survivor.Foliage.RunLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".66"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		")player/footsteps/survivor/run/foliage1.wav"
		"wave"		")player/footsteps/survivor/run/foliage3.wav"
	}
}

"Survivor.Foliage.RunRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".66"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		")player/footsteps/survivor/run/foliage2.wav"
		"wave"		")player/footsteps/survivor/run/foliage4.wav"
	}
}


//---------------------------------------------------------------------------------------------------------------------------------//
//SurvivorWalk
//---------------------------------------------------------------------------------------------------------------------------------//

"Survivor.Default.WalkLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"			".15"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/survivor/walk/concrete1.wav"
		"wave"		"player/footsteps/survivor/walk/concrete3.wav"
	}
}

"Survivor.Default.WalkRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"pitch"			"95,105"
	"volume"			".15"
	"rndwave"
	{
		"wave"		"player/footsteps/survivor/walk/concrete2.wav"
		"wave"		"player/footsteps/survivor/walk/concrete4.wav"
	}
}

"Survivor.SolidMetal.WalkLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"pitch"			"95,105"
	"volume"		".15"
	"rndwave"
	{
		"wave"		"player/footsteps/survivor/walk/metal1.wav"
		"wave"		"player/footsteps/survivor/walk/metal3.wav"
	}
}

"Survivor.SolidMetal.WalkRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"pitch"			"95,105"
	"volume"		".15"
	"rndwave"
	{
		"wave"		"player/footsteps/survivor/walk/metal2.wav"
		"wave"		"player/footsteps/survivor/walk/metal4.wav"
	}
}

"Survivor.Metalgrate.WalkLeft"
{
	"channel"       "CHAN_BODY"


	"soundlevel"	"SNDLVL_NORM"
	"pitch"			"95,105"
	"volume"		".15"
	"rndwave"
	{
		"wave"		"player/footsteps/survivor/walk/metalgrate1.wav"
		"wave"		"player/footsteps/survivor/walk/metalgrate2.wav"

		
	}

}

"Survivor.Metalgrate.WalkRight"
{
	"channel"       "CHAN_BODY"


	"soundlevel"	"SNDLVL_NORM"
	"pitch"			"95,105"
	"volume"		".15"
	"rndwave"
	{
		"wave"		"player/footsteps/survivor/walk/metalgrate3.wav"
		"wave"		"player/footsteps/survivor/walk/metalgrate4.wav"
		
	}

}

"Survivor.Snow.WalkLeft"
{
	"channel"       "CHAN_BODY"


	"soundlevel"	"SNDLVL_NORM"
	"pitch"			"95,105"
	"volume"		".15"
	"rndwave"
	{
		"wave"		"player/footsteps/survivor/walk/sand1.wav"
		"wave"		"player/footsteps/survivor/walk/sand3.wav"
		
	}

}

"Survivor.Snow.WalkRight"
{
	"channel"       "CHAN_BODY"


	"soundlevel"	"SNDLVL_NORM"
	"pitch"			"95,105"
	"volume"		".15"
	"rndwave"
	{
		"wave"		"player/footsteps/survivor/walk/sand2.wav"
		"wave"		"player/footsteps/survivor/walk/sand4.wav"
		
	}

}

"Survivor.Dirt.WalkLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"pitch"			"95,105"
	"volume"		".15"
	"rndwave"
	{
		"wave"		"player/footsteps/survivor/walk/dirt1.wav"
		"wave"		"player/footsteps/survivor/walk/dirt3.wav"
	}
}

"Survivor.Dirt.WalkRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"pitch"			"95,105"
	"volume"		".15"
	"rndwave"
	{
		"wave"		"player/footsteps/survivor/walk/dirt2.wav"
		"wave"		"player/footsteps/survivor/walk/dirt4.wav"
	}
}

"Survivor.Mud.WalkLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".3"
	"pitch"			"90,105"
	"rndwave"
	{
		"wave"		"player/footsteps/survivor/walk/mud1.wav"
		"wave"		"player/footsteps/survivor/walk/mud3.wav"
	}
}

"Survivor.Mud.WalkRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".3"
	"pitch"			"90,105"
	"rndwave"
	{
		"wave"		"player/footsteps/survivor/walk/mud2.wav"
		"wave"		"player/footsteps/survivor/walk/mud4.wav"
	}
}

"Survivor.SlipperySlime.WalkLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		"0.3"
	"pitch"			"90,105"
	"rndwave"
	{
		"wave"		"player/footsteps/survivor/walk/mud1.wav"
		"wave"		"player/footsteps/survivor/walk/mud3.wav"
	}
}

"Survivor.SlipperySlime.WalkRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		"0.3"
	"pitch"			"90,105"
	"rndwave"
	{
		"wave"		"player/footsteps/survivor/walk/mud2.wav"
		"wave"		"player/footsteps/survivor/walk/mud4.wav"
	}
}

"Survivor.Grass.WalkLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".15"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/survivor/walk/grass1.wav"
		"wave"		"player/footsteps/survivor/walk/grass3.wav"
	}
}

"Survivor.Grass.WalkRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".15"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/survivor/walk/grass2.wav"
		"wave"		"player/footsteps/survivor/walk/grass4.wav"
	}
}

"Survivor.MetalVent.WalkLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".15"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/survivor/walk/duct2.wav"
		"wave"		"player/footsteps/survivor/walk/duct4.wav"
	}
}

"Survivor.MetalVent.WalkRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".15"
	"rndwave"
	{
		"wave"		"player/footsteps/survivor/walk/duct1.wav"
		"wave"		"player/footsteps/survivor/walk/duct3.wav"
	}
}

"Survivor.Tile.WalkLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".15"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/survivor/walk/tile1.wav"
		"wave"		"player/footsteps/survivor/walk/tile3.wav"
	}
}

"Survivor.Tile.WalkRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".15"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/survivor/walk/tile2.wav"
		"wave"		"player/footsteps/survivor/walk/tile4.wav"
	}
}

"Survivor.Water.WalkLeft"
{
	"channel"       "CHAN_AUTO"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".5"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/survivor/walk/wade2.wav"
		"wave"		"player/footsteps/survivor/walk/wade4.wav"
	}
}

"Survivor.Water.WalkRight"
{
	"channel"       "CHAN_AUTO"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".5"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/survivor/walk/wade1.wav"
		"wave"		"player/footsteps/survivor/walk/wade3.wav"
	}
}

"Survivor.Wade.WalkLeft"
{
	"channel"       "CHAN_AUTO"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		"0.5"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/survivor/walk/wade1.wav"
		"wave"		"player/footsteps/survivor/walk/wade3.wav"
	}
}

"Survivor.Wade.WalkRight"
{
	"channel"       "CHAN_AUTO"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		"0.5"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/survivor/walk/wade2.wav"
		"wave"		"player/footsteps/survivor/walk/wade4.wav"
	}
}


"Survivor.Ladder.WalkLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		"1"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/survivor/walk/ladder1.wav"
		"wave"		"player/footsteps/survivor/walk/ladder3.wav"
	}
}

"Survivor.Ladder.WalkRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		"1"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/survivor/walk/ladder2.wav"
		"wave"		"player/footsteps/survivor/walk/ladder4.wav"
	}
}

"Survivor.Glass.WalkLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".15"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/survivor/walk/glass2.wav"
		"wave"		"player/footsteps/survivor/walk/glass4.wav"
	}
}

"Survivor.Glass.WalkRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".15"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/survivor/walk/glass1.wav"
		"wave"		"player/footsteps/survivor/walk/glass3.wav"
	}
}

"Survivor.Concrete.WalkLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".15"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/survivor/walk/concrete1.wav"
		"wave"		"player/footsteps/survivor/walk/concrete3.wav"
	}
}

"Survivor.Concrete.WalkRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".15"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/survivor/walk/concrete2.wav"
		"wave"		"player/footsteps/survivor/walk/concrete4.wav"
	}
}

"Survivor.Gravel.WalkLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".15"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/survivor/walk/gravel1.wav"
		"wave"		"player/footsteps/survivor/walk/gravel3.wav"
	}
}

"Survivor.Gravel.WalkRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".15"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/survivor/walk/gravel2.wav"
		"wave"		"player/footsteps/survivor/walk/gravel4.wav"
	}
}

"Survivor.ChainLink.WalkLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".15"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/survivor/walk/chainlink1.wav"
		"wave"		"player/footsteps/survivor/walk/chainlink3.wav"
	}
}

"Survivor.ChainLink.WalkRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".15"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/survivor/walk/chainlink2.wav"
		"wave"		"player/footsteps/survivor/walk/chainlink4.wav"
	}
}

"Survivor.Flesh.WalkLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".15"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"	"player/footsteps/survivor/walk/flesh1.wav"
		"wave"	"player/footsteps/survivor/walk/flesh3.wav"
	}
}

"Survivor.Flesh.WalkRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".15"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"	"player/footsteps/survivor/walk/flesh2.wav"
		"wave"	"player/footsteps/survivor/walk/flesh4.wav"
	}
}

"Survivor.Sand.WalkLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".15"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/survivor/walk/sand1.wav"
		"wave"		"player/footsteps/survivor/walk/sand3.wav"
	}
}

"Survivor.Sand.WalkRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".15"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/survivor/walk/sand2.wav"
		"wave"		"player/footsteps/survivor/walk/sand4.wav"
	}
}

"Survivor.GlassBottle.WalkLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		"0.1"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"physics/glass/glass_impact_soft1.wav"
		"wave"		"physics/glass/glass_impact_soft2.wav"
	}
}

"Survivor.GlassBottle.WalkRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		"0.1"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"physics/glass/glass_impact_soft2.wav"
		"wave"		"physics/glass/glass_impact_soft3.wav"
	}
}

"Survivor.ceiling_tile.WalkLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".15"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/survivor/walk/tile1.wav"
		"wave"		"player/footsteps/survivor/walk/tile3.wav"
	}
}

"Survivor.ceiling_tile.WalkRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".15"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/survivor/walk/tile2.wav"
		"wave"		"player/footsteps/survivor/walk/tile4.wav"
	}
}

"Survivor.drywall.WalkLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".15"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/survivor/walk/plaster1.wav"
		"wave"		"player/footsteps/survivor/walk/plaster3.wav"
	}
}

"Survivor.drywall.WalkRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".15"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/survivor/walk/plaster2.wav"
		"wave"		"player/footsteps/survivor/walk/plaster4.wav"
	}
}

"Survivor.Plaster.WalkLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".15"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/survivor/run/plaster1.wav"
		"wave"		"player/footsteps/survivor/run/plaster3.wav"
	}
}

"Survivor.Plaster.WalkRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".15"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/survivor/run/plaster2.wav"
		"wave"		"player/footsteps/survivor/run/plaster4.wav"
	}
}

"Survivor.Cardboard.WalkLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"pitch"			"95,105"
	"volume"			".15"
	"rndwave"
	{
		"wave"		"player/footsteps/survivor/walk/cardboard1.wav"
		"wave"		"player/footsteps/survivor/walk/cardboard2.wav"
	}
}

"Survivor.Cardboard.WalkRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"pitch"			"95,105"
	"volume"			".15"
	"rndwave"
	{
		"wave"		"player/footsteps/survivor/walk/cardboard3.wav"
		"wave"		"player/footsteps/survivor/walk/cardboard4.wav"
	}
}

"Survivor.Plastic_Barrel.WalkLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"pitch"			"95,105"
	"volume"			"0.25"
	"rndwave"
	{
		"wave"		"physics/plastic/plastic_barrel_impact_soft1.wav"
		"wave"		"physics/plastic/plastic_barrel_impact_soft2.wav"
	}
}

"Survivor.Plastic_Barrel.WalkRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"pitch"			"95,105"
	"volume"			"0.25"
	"rndwave"
	{
		"wave"		"physics/plastic/plastic_barrel_impact_soft3.wav"
		"wave"		"physics/plastic/plastic_barrel_impact_soft4.wav"
	}
}

"Survivor.Plastic_Box.WalkLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"pitch"			"95,105"
	"volume"			"0.15"
	"rndwave"
	{
		"wave"		"physics/plastic/plastic_box_impact_soft1.wav"
		"wave"		"physics/plastic/plastic_box_impact_soft2.wav"
	}
}

"Survivor.Plastic_Box.WalkRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"pitch"			"95,105"
	"volume"			"0.15"
	"rndwave"
	{
		"wave"		"physics/plastic/plastic_box_impact_soft3.wav"
		"wave"		"physics/plastic/plastic_box_impact_soft4.wav"
	}
}

"Survivor.Rubber.WalkLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"pitch"			"95,105"
	"volume"			".36"
	"rndwave"
	{
		"wave"		"player/footsteps/survivor/run/cardboard1.wav"
		"wave"		"player/footsteps/survivor/run/cardboard2.wav"
	}
}

"Survivor.Rubber.WalkRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"pitch"			"95,105"
	"volume"			".36"
	"rndwave"
	{
		"wave"		"player/footsteps/survivor/run/cardboard3.wav"
		"wave"		"player/footsteps/survivor/run/cardboard4.wav"
	}
}

"Survivor.Grenade.WalkLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".15"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/survivor/walk/gravel1.wav"
		"wave"		"player/footsteps/survivor/walk/gravel3.wav"
	}
}

"Survivor.Grenade.WalkRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".15"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/survivor/walk/gravel2.wav"
		"wave"		"player/footsteps/survivor/walk/gravel4.wav"
	}
}

"Survivor.Wood.WalkLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".15"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/survivor/walk/wood1.wav"
		"wave"		"player/footsteps/survivor/walk/wood3.wav"
	}
}

"Survivor.Wood.WalkRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".15"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/survivor/walk/wood2.wav"
		"wave"		"player/footsteps/survivor/walk/wood4.wav"
	}
}

"Survivor.Wood_Box.WalkLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".15"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"physics/wood/wood_box_footstep1.wav"
		"wave"		"physics/wood/wood_box_footstep2.wav"
	}
}

"Survivor.Wood_Box.WalkRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".15"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"physics/wood/wood_box_footstep3.wav"
		"wave"		"physics/wood/wood_box_footstep4.wav"
	}
}

"Survivor.Wood_Crate.WalkLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".15"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"physics/wood/wood_box_footstep1.wav"
		"wave"		"physics/wood/wood_box_footstep2.wav"
	}
}

"Survivor.Wood_Crate.WalkRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".15"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"physics/wood/wood_box_footstep3.wav"
		"wave"		"physics/wood/wood_box_footstep4.wav"
	}
}

"Survivor.Wood_Panel.WalkLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".15"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/survivor/walk/wood1.wav"
		"wave"		"player/footsteps/survivor/walk/wood3.wav"
	}
}

"Survivor.Wood_Panel.WalkRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".15"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/survivor/walk/wood2.wav"
		"wave"		"player/footsteps/survivor/walk/wood4.wav"
	}
}

"Survivor.Metal_Box.WalkLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".15"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/survivor/walk/gravel2.wav"
		"wave"		"player/footsteps/survivor/walk/gravel4.wav"
	}
}

"Survivor.Metal_Box.WalkRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".15"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/survivor/walk/gravel2.wav"
		"wave"		"player/footsteps/survivor/walk/gravel4.wav"
	}
}

"Survivor.weapon.WalkLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".15"
	"pitch"			"95,105"
	"wave"		"physics/metal/weapon_footstep1.wav"
}

"Survivor.weapon.WalkRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".15"
	"pitch"			"95,105"
	"wave"		"physics/metal/weapon_footstep2.wav"

}

"Survivor.SugarCane.WalkLeft"
{
	"channel"       "CHAN_AUTO"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".66"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		")player/footsteps/survivor/run/foliage1.wav"
		"wave"		")player/footsteps/survivor/run/foliage3.wav"
	}
}

"Survivor.SugarCane.WalkRight"
{
	"channel"       "CHAN_AUTO"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".66"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		")player/footsteps/survivor/run/foliage2.wav"
		"wave"		")player/footsteps/survivor/run/foliage4.wav"
	}
}

"Survivor.Foliage.WalkLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".66"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		")player/footsteps/survivor/run/foliage1.wav"
		"wave"		")player/footsteps/survivor/run/foliage3.wav"
	}
}

"Survivor.Foliage.WalkRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".66"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		")player/footsteps/survivor/run/foliage2.wav"
		"wave"		")player/footsteps/survivor/run/foliage4.wav"
	}
}

//----------------------------------------------------------------------------------------------------------------------------------------//
//Infected Run
//----------------------------------------------------------------------------------------------------------------------------------------//
"Infected.Default.RunLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"        "1.0"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/infected/run/concrete1.wav"
		"wave"		"player/footsteps/infected/run/concrete3.wav"
	}
}

"Infected.Default.RunRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"pitch"			"95,105"
	"volume"        "1.0"
	"rndwave"
	{
		"wave"		"player/footsteps/infected/run/concrete2.wav"
		"wave"		"player/footsteps/infected/run/concrete4.wav"
	}
}

"Infected.SolidMetal.RunLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"pitch"			"95,105"
	"volume"        "1.0"
	"rndwave"
	{
		"wave"		"player/footsteps/infected/run/metal1.wav"
		"wave"		"player/footsteps/infected/run/metal3.wav"
	}
}

"Infected.SolidMetal.RunRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"pitch"			"95,105"
	"volume"        "1.0"
	"rndwave"
	{
		"wave"		"player/footsteps/infected/run/metal2.wav"
		"wave"		"player/footsteps/infected/run/metal4.wav"
	}
}

"Infected.Metalgrate.RunLeft"
{
	"channel"       "CHAN_BODY"


	"soundlevel"	"SNDLVL_NORM"
	"pitch"			"95,105"
	"volume"        "1.0"
	"rndwave"
	{
		"wave"		"player/footsteps/infected/run/metalgrate1.wav"
		"wave"		"player/footsteps/infected/run/metalgrate2.wav"

		
	}

}

"Infected.Metalgrate.RunRight"
{
	"channel"       "CHAN_BODY"


	"soundlevel"	"SNDLVL_NORM"
	"pitch"			"95,105"
	"volume"        "1.0"
	"rndwave"
	{
		"wave"		"player/footsteps/infected/run/metalgrate3.wav"
		"wave"		"player/footsteps/infected/run/metalgrate4.wav"
		
	}

}

"Infected.Snow.RunLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"        "1.0"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/infected/run/sand1.wav"
		"wave"		"player/footsteps/infected/run/sand3.wav"
	}
}

"Infected.Snow.RunRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"        "1.0"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/infected/run/sand2.wav"
		"wave"		"player/footsteps/infected/run/sand4.wav"
	}
}

"Infected.Dirt.RunLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"pitch"			"95,105"
	"volume"        "1.0"
	"rndwave"
	{
		"wave"		"player/footsteps/infected/run/dirt1.wav"
		"wave"		"player/footsteps/infected/run/dirt3.wav"
	}
}

"Infected.Dirt.RunRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"pitch"			"95,105"
	"volume"        "1.0"
	"rndwave"
	{
		"wave"		"player/footsteps/infected/run/dirt2.wav"
		"wave"		"player/footsteps/infected/run/dirt4.wav"
	}
}

"Infected.Mud.RunLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"        "1.0"
	"pitch"			"90,105"
	"rndwave"
	{
		"wave"		"player/footsteps/infected/run/mud1.wav"
		"wave"		"player/footsteps/infected/run/mud3.wav"
	}
}

"Infected.Mud.RunRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"        "1.0"
	"pitch"			"90,105"
	"rndwave"
	{
		"wave"		"player/footsteps/infected/run/mud2.wav"
		"wave"		"player/footsteps/infected/run/mud4.wav"
	}
}

"Infected.SlipperySlime.RunLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"        "1.0"
	"pitch"			"90,105"
	"rndwave"
	{
		"wave"		"player/footsteps/infected/run/mud1.wav"
		"wave"		"player/footsteps/infected/run/mud3.wav"
	}
}

"Infected.SlipperySlime.RunRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"        "1.0"
	"pitch"			"90,105"
	"rndwave"
	{
		"wave"		"player/footsteps/infected/run/mud2.wav"
		"wave"		"player/footsteps/infected/run/mud4.wav"
	}
}

"Infected.Grass.RunLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"        "1.0"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/infected/run/grass1.wav"
		"wave"		"player/footsteps/infected/run/grass3.wav"
	}
}

"Infected.Grass.RunRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"        "1.0"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/infected/run/grass2.wav"
		"wave"		"player/footsteps/infected/run/grass4.wav"
	}
}

"Infected.MetalVent.RunLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"        "1.0"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/infected/run/duct2.wav"
		"wave"		"player/footsteps/infected/run/duct4.wav"
	}
}

"Infected.MetalVent.RunRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"        "1.0"
	"rndwave"
	{
		"wave"		"player/footsteps/infected/run/duct1.wav"
		"wave"		"player/footsteps/infected/run/duct3.wav"
	}
}

"Infected.Tile.RunLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"        "1.0"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/infected/run/tile1.wav"
		"wave"		"player/footsteps/infected/run/tile3.wav"
	}
}

"Infected.Tile.RunRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"        "1.0"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/infected/run/tile2.wav"
		"wave"		"player/footsteps/infected/run/tile4.wav"
	}
}

"Infected.Water.RunLeft"
{
	"channel"       "CHAN_AUTO"

	"soundlevel"	"SNDLVL_NORM"
	"volume"        "1.0"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/infected/run/wade2.wav"
		"wave"		"player/footsteps/infected/run/wade4.wav"
	}
}

"Infected.Water.RunRight"
{
	"channel"       "CHAN_AUTO"

	"soundlevel"	"SNDLVL_NORM"
	"volume"        "1.0"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/infected/run/wade1.wav"
		"wave"		"player/footsteps/infected/run/wade3.wav"
	}
}

"Infected.Wade.RunLeft"
{
	"channel"       "CHAN_AUTO"

	"soundlevel"	"SNDLVL_NORM"
	"volume"        "1.0"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/infected/run/wade1.wav"
		"wave"		"player/footsteps/infected/run/wade3.wav"
	}
}

"Infected.Wade.RunRight"
{
	"channel"       "CHAN_AUTO"

	"soundlevel"	"SNDLVL_NORM"
	"volume"        "1.0"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/infected/run/wade2.wav"
		"wave"		"player/footsteps/infected/run/wade4.wav"
	}
}


"Infected.Ladder.RunLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"        "1.0"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/infected/run/ladder1.wav"
		"wave"		"player/footsteps/infected/run/ladder3.wav"
	}
}

"Infected.Ladder.RunRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"        "1.0"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/infected/run/ladder2.wav"
		"wave"		"player/footsteps/infected/run/ladder4.wav"
	}
}

"Infected.Glass.RunLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"        "1.0"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/infected/run/glass2.wav"
		"wave"		"player/footsteps/infected/run/glass4.wav"
	}
}

"Infected.Glass.RunRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"        "1.0"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/infected/run/glass1.wav"
		"wave"		"player/footsteps/infected/run/glass3.wav"
	}
}

"Infected.Concrete.RunLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"        "1.0"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/infected/run/concrete1.wav"
		"wave"		"player/footsteps/infected/run/concrete3.wav"
	}
}

"Infected.Concrete.RunRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"        "1.0"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/infected/run/concrete2.wav"
		"wave"		"player/footsteps/infected/run/concrete4.wav"
	}
}

"Infected.Gravel.RunLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"        "1.0"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/infected/run/gravel1.wav"
		"wave"		"player/footsteps/infected/run/gravel3.wav"
	}
}

"Infected.Gravel.RunRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"        "1.0"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/infected/run/gravel2.wav"
		"wave"		"player/footsteps/infected/run/gravel4.wav"
	}
}

"Infected.ChainLink.RunLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"        "1.0"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/infected/run/chainlink1.wav"
		"wave"		"player/footsteps/infected/run/chainlink3.wav"
	}
}

"Infected.ChainLink.RunRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"        "1.0"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/infected/run/chainlink2.wav"
		"wave"		"player/footsteps/infected/run/chainlink4.wav"
	}
}

"Infected.Flesh.RunLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"        "1.0"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"	"player/footsteps/infected/run/flesh1.wav"
		"wave"	"player/footsteps/infected/run/flesh3.wav"
	}
}

"Infected.Flesh.RunRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"        "1.0"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"	"player/footsteps/infected/run/flesh2.wav"
		"wave"	"player/footsteps/infected/run/flesh4.wav"
	}
}

"Infected.Sand.RunLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"        "1.0"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/infected/run/sand1.wav"
		"wave"		"player/footsteps/infected/run/sand3.wav"
	}
}

"Infected.Sand.RunRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"        "1.0"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/infected/run/sand2.wav"
		"wave"		"player/footsteps/infected/run/sand4.wav"
	}
}

"Infected.GlassBottle.RunLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		"0.2"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"physics/glass/glass_impact_soft1.wav"
		"wave"		"physics/glass/glass_impact_soft2.wav"
	}
}

"Infected.GlassBottle.RunRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		"0.2"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"physics/glass/glass_impact_soft2.wav"
		"wave"		"physics/glass/glass_impact_soft3.wav"
	}
}

"Infected.ceiling_tile.RunLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"        "1.0"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/infected/run/tile1.wav"
		"wave"		"player/footsteps/infected/run/tile3.wav"
	}
}

"Infected.ceiling_tile.RunRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"        "1.0"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/infected/run/tile2.wav"
		"wave"		"player/footsteps/infected/run/tile4.wav"
	}
}

"Infected.drywall.RunLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"        "1.0"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/infected/run/plaster1.wav"
		"wave"		"player/footsteps/infected/run/plaster3.wav"
	}
}

"Infected.drywall.RunRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"        "1.0"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/infected/run/plaster2.wav"
		"wave"		"player/footsteps/infected/run/plaster4.wav"
	}
}

"Infected.Plaster.RunLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"        "1.0"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/infected/run/plaster1.wav"
		"wave"		"player/footsteps/infected/run/plaster3.wav"
	}
}

"Infected.Plaster.RunRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"        "1.0"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/infected/run/plaster2.wav"
		"wave"		"player/footsteps/infected/run/plaster4.wav"
	}
}

"Infected.Cardboard.RunLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"pitch"			"95,105"
	"volume"        "1.0"
	"rndwave"
	{
		"wave"		"player/footsteps/infected/run/cardboard1.wav"
		"wave"		"player/footsteps/infected/run/cardboard2.wav"
	}
}

"Infected.Cardboard.RunRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"pitch"			"95,105"
	"volume"        "1.0"
	"rndwave"
	{
		"wave"		"player/footsteps/infected/run/cardboard3.wav"
		"wave"		"player/footsteps/infected/run/cardboard4.wav"
	}
}

"Infected.Plastic_Barrel.RunLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"pitch"			"95,105"
	"volume"			"0.5"
	"rndwave"
	{
		"wave"		"physics/plastic/plastic_barrel_impact_soft1.wav"
		"wave"		"physics/plastic/plastic_barrel_impact_soft2.wav"
	}
}

"Infected.Plastic_Barrel.RunRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"pitch"			"95,105"
	"volume"			"0.5"
	"rndwave"
	{
		"wave"		"physics/plastic/plastic_barrel_impact_soft3.wav"
		"wave"		"physics/plastic/plastic_barrel_impact_soft4.wav"
	}
}

"Infected.Plastic_Box.RunLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"pitch"			"95,105"
	"volume"			"0.3"
	"rndwave"
	{
		"wave"		"physics/plastic/plastic_box_impact_soft1.wav"
		"wave"		"physics/plastic/plastic_box_impact_soft2.wav"
	}
}

"Infected.Plastic_Box.RunRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"pitch"			"95,105"
	"volume"			"0.3"
	"rndwave"
	{
		"wave"		"physics/plastic/plastic_box_impact_soft3.wav"
		"wave"		"physics/plastic/plastic_box_impact_soft4.wav"
	}
}

"Infected.Rubber.RunLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"pitch"			"98,102"
	"volume"			"0.2"
	"wave"		"physics/rubber/rubber_tire_impact_soft1.wav"
}

"Infected.Rubber.RunRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"pitch"			"98,102"
	"volume"		"0.2"
	"wave"		"physics/rubber/rubber_tire_impact_soft1.wav"
}

"Infected.Grenade.RunLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"        "1.0"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/infected/run/gravel1.wav"
		"wave"		"player/footsteps/infected/run/gravel3.wav"
	}
}

"Infected.Grenade.RunRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"        "1.0"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/infected/run/gravel2.wav"
		"wave"		"player/footsteps/infected/run/gravel4.wav"
	}
}

"Infected.Wood.RunLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"        "1.0"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/infected/run/wood1.wav"
		"wave"		"player/footsteps/infected/run/wood3.wav"
	}
}

"Infected.Wood.RunRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"        "1.0"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/infected/run/wood2.wav"
		"wave"		"player/footsteps/infected/run/wood4.wav"
	}
}

"Infected.Wood_Box.RunLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"        "1.0"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"physics/wood/wood_box_footstep1.wav"
		"wave"		"physics/wood/wood_box_footstep2.wav"
	}
}

"Infected.Wood_Box.RunRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"        "1.0"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"physics/wood/wood_box_footstep3.wav"
		"wave"		"physics/wood/wood_box_footstep4.wav"
	}
}

"Infected.Wood_Crate.RunLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"        "1.0"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"physics/wood/wood_box_footstep1.wav"
		"wave"		"physics/wood/wood_box_footstep2.wav"
	}
}

"Infected.Wood_Crate.RunRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"        "1.0"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"physics/wood/wood_box_footstep3.wav"
		"wave"		"physics/wood/wood_box_footstep4.wav"
	}
}

"Infected.Wood_Panel.RunLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"        "1.0"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/infected/run/wood1.wav"
		"wave"		"player/footsteps/infected/run/wood3.wav"
	}
}

"Infected.Wood_Panel.RunRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"        "1.0"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/infected/run/wood2.wav"
		"wave"		"player/footsteps/infected/run/wood4.wav"
	}
}

"Infected.Metal_Box.RunLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"        "1.0"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/infected/run/gravel2.wav"
		"wave"		"player/footsteps/infected/run/gravel4.wav"
	}
}

"Infected.Metal_Box.RunRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"        "1.0"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/infected/run/gravel2.wav"
		"wave"		"player/footsteps/infected/run/gravel4.wav"
	}
}

"Infected.weapon.RunLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"        "1.0"
	"pitch"			"95,105"
	"wave"		"physics/metal/weapon_footstep1.wav"
}

"Infected.weapon.RunRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"        "1.0"
	"pitch"			"95,105"
	"wave"		"physics/metal/weapon_footstep2.wav"

}

"Infected.SugarCane.RunLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".66"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		")player/footsteps/survivor/run/foliage1.wav"
		"wave"		")player/footsteps/survivor/run/foliage3.wav"
	}
}

"Infected.SugarCane.RunRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".66"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		")player/footsteps/survivor/run/foliage2.wav"
		"wave"		")player/footsteps/survivor/run/foliage4.wav"
	}
}

"Infected.Foliage.RunLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".66"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		")player/footsteps/survivor/run/foliage1.wav"
		"wave"		")player/footsteps/survivor/run/foliage3.wav"
	}
}

"Infected.Foliage.RunRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".66"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		")player/footsteps/survivor/run/foliage2.wav"
		"wave"		")player/footsteps/survivor/run/foliage4.wav"
	}
}


//---------------------------------------------------------------------------------------------------------------------------------//
//InfectedWalk
//---------------------------------------------------------------------------------------------------------------------------------//

"Infected.Default.WalkLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"			".85"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/infected/walk/concrete1.wav"
		"wave"		"player/footsteps/infected/walk/concrete3.wav"
	}
}

"Infected.Default.WalkRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"pitch"			"95,105"
	"volume"			".85"
	"rndwave"
	{
		"wave"		"player/footsteps/infected/walk/concrete2.wav"
		"wave"		"player/footsteps/infected/walk/concrete4.wav"
	}
}

"Infected.SolidMetal.WalkLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"pitch"			"95,105"
	"volume"		".85"
	"rndwave"
	{
		"wave"		"player/footsteps/infected/walk/metal1.wav"
		"wave"		"player/footsteps/infected/walk/metal3.wav"
	}
}

"Infected.SolidMetal.WalkRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"pitch"			"95,105"
	"volume"		".85"
	"rndwave"
	{
		"wave"		"player/footsteps/infected/walk/metal2.wav"
		"wave"		"player/footsteps/infected/walk/metal4.wav"
	}
}

"Infected.Metalgrate.WalkLeft"
{
	"channel"       "CHAN_BODY"


	"soundlevel"	"SNDLVL_NORM"
	"pitch"			"95,105"
	"volume"		".85"
	"rndwave"
	{
		"wave"		"player/footsteps/infected/walk/metalgrate1.wav"
		"wave"		"player/footsteps/infected/walk/metalgrate2.wav"

		
	}

}

"Infected.Metalgrate.WalkRight"
{
	"channel"       "CHAN_BODY"


	"soundlevel"	"SNDLVL_NORM"
	"pitch"			"95,105"
	"volume"		".85"
	"rndwave"
	{
		"wave"		"player/footsteps/infected/walk/metalgrate3.wav"
		"wave"		"player/footsteps/infected/walk/metalgrate4.wav"
		
	}

}

"Infected.Snow.WalkLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".85"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/infected/walk/sand1.wav"
		"wave"		"player/footsteps/infected/walk/sand3.wav"
	}
}

"Infected.Snow.WalkRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".85"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/infected/walk/sand2.wav"
		"wave"		"player/footsteps/infected/walk/sand4.wav"
	}
}

"Infected.Dirt.WalkLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"pitch"			"95,105"
	"volume"		".85"
	"rndwave"
	{
		"wave"		"player/footsteps/infected/walk/dirt1.wav"
		"wave"		"player/footsteps/infected/walk/dirt3.wav"
	}
}

"Infected.Dirt.WalkRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"pitch"			"95,105"
	"volume"		".85"
	"rndwave"
	{
		"wave"		"player/footsteps/infected/walk/dirt2.wav"
		"wave"		"player/footsteps/infected/walk/dirt4.wav"
	}
}

"Infected.Mud.WalkLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".6"
	"pitch"			"90,105"
	"rndwave"
	{
		"wave"		"player/footsteps/infected/walk/mud1.wav"
		"wave"		"player/footsteps/infected/walk/mud3.wav"
	}
}

"Infected.Mud.WalkRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".6"
	"pitch"			"90,105"
	"rndwave"
	{
		"wave"		"player/footsteps/infected/walk/mud2.wav"
		"wave"		"player/footsteps/infected/walk/mud4.wav"
	}
}

"Infected.SlipperySlime.WalkLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		"0.6"
	"pitch"			"90,105"
	"rndwave"
	{
		"wave"		"player/footsteps/infected/walk/mud1.wav"
		"wave"		"player/footsteps/infected/walk/mud3.wav"
	}
}

"Infected.SlipperySlime.WalkRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		"0.6"
	"pitch"			"90,105"
	"rndwave"
	{
		"wave"		"player/footsteps/infected/walk/mud2.wav"
		"wave"		"player/footsteps/infected/walk/mud4.wav"
	}
}

"Infected.Grass.WalkLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".85"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/infected/walk/grass1.wav"
		"wave"		"player/footsteps/infected/walk/grass3.wav"
	}
}

"Infected.Grass.WalkRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".85"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/infected/walk/grass2.wav"
		"wave"		"player/footsteps/infected/walk/grass4.wav"
	}
}

"Infected.MetalVent.WalkLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".85"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/infected/walk/duct2.wav"
		"wave"		"player/footsteps/infected/walk/duct4.wav"
	}
}

"Infected.MetalVent.WalkRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".85"
	"rndwave"
	{
		"wave"		"player/footsteps/infected/walk/duct1.wav"
		"wave"		"player/footsteps/infected/walk/duct3.wav"
	}
}

"Infected.Tile.WalkLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".85"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/infected/walk/tile1.wav"
		"wave"		"player/footsteps/infected/walk/tile3.wav"
	}
}

"Infected.Tile.WalkRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".85"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/infected/walk/tile2.wav"
		"wave"		"player/footsteps/infected/walk/tile4.wav"
	}
}

"Infected.Water.WalkLeft"
{
	"channel"       "CHAN_AUTO"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".85"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/infected/walk/wade2.wav"
		"wave"		"player/footsteps/infected/walk/wade4.wav"
	}
}

"Infected.Water.WalkRight"
{
	"channel"       "CHAN_AUTO"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".85"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/infected/walk/wade1.wav"
		"wave"		"player/footsteps/infected/walk/wade3.wav"
	}
}

"Infected.Wade.WalkLeft"
{
	"channel"       "CHAN_AUTO"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		"0.85"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/infected/walk/wade1.wav"
		"wave"		"player/footsteps/infected/walk/wade3.wav"
	}
}

"Infected.Wade.WalkRight"
{
	"channel"       "CHAN_AUTO"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		"0.85"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/infected/walk/wade2.wav"
		"wave"		"player/footsteps/infected/walk/wade4.wav"
	}
}


"Infected.Ladder.WalkLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".85"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/infected/walk/ladder1.wav"
		"wave"		"player/footsteps/infected/walk/ladder3.wav"
	}
}

"Infected.Ladder.WalkRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".85"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/infected/walk/ladder2.wav"
		"wave"		"player/footsteps/infected/walk/ladder4.wav"
	}
}

"Infected.Glass.WalkLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".85"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/infected/walk/glass2.wav"
		"wave"		"player/footsteps/infected/walk/glass4.wav"
	}
}

"Infected.Glass.WalkRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".85"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/infected/walk/glass1.wav"
		"wave"		"player/footsteps/infected/walk/glass3.wav"
	}
}

"Infected.Concrete.WalkLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".85"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/infected/walk/concrete1.wav"
		"wave"		"player/footsteps/infected/walk/concrete3.wav"
	}
}

"Infected.Concrete.WalkRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".85"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/infected/walk/concrete2.wav"
		"wave"		"player/footsteps/infected/walk/concrete4.wav"
	}
}

"Infected.Gravel.WalkLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".85"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/infected/walk/gravel1.wav"
		"wave"		"player/footsteps/infected/walk/gravel3.wav"
	}
}

"Infected.Gravel.WalkRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".85"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/infected/walk/gravel2.wav"
		"wave"		"player/footsteps/infected/walk/gravel4.wav"
	}
}

"Infected.ChainLink.WalkLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".85"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/infected/walk/chainlink1.wav"
		"wave"		"player/footsteps/infected/walk/chainlink3.wav"
	}
}

"Infected.ChainLink.WalkRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".85"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/infected/walk/chainlink2.wav"
		"wave"		"player/footsteps/infected/walk/chainlink4.wav"
	}
}

"Infected.Flesh.WalkLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".85"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"	"player/footsteps/infected/walk/flesh1.wav"
		"wave"	"player/footsteps/infected/walk/flesh3.wav"
	}
}

"Infected.Flesh.WalkRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".85"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"	"player/footsteps/infected/walk/flesh2.wav"
		"wave"	"player/footsteps/infected/walk/flesh4.wav"
	}
}

"Infected.Sand.WalkLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".85"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/infected/walk/sand1.wav"
		"wave"		"player/footsteps/infected/walk/sand3.wav"
	}
}

"Infected.Sand.WalkRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".85"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/infected/walk/sand2.wav"
		"wave"		"player/footsteps/infected/walk/sand4.wav"
	}
}

"Infected.GlassBottle.WalkLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		"0.2"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"physics/glass/glass_impact_soft1.wav"
		"wave"		"physics/glass/glass_impact_soft2.wav"
	}
}

"Infected.GlassBottle.WalkRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		"0.2"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"physics/glass/glass_impact_soft2.wav"
		"wave"		"physics/glass/glass_impact_soft3.wav"
	}
}

"Infected.ceiling_tile.WalkLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".85"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/infected/walk/tile1.wav"
		"wave"		"player/footsteps/infected/walk/tile3.wav"
	}
}

"Infected.ceiling_tile.WalkRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".85"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/infected/walk/tile2.wav"
		"wave"		"player/footsteps/infected/walk/tile4.wav"
	}
}

"Infected.drywall.WalkLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".85"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/infected/walk/sand1.wav"
		"wave"		"player/footsteps/infected/walk/sand3.wav"
	}
}

"Infected.drywall.WalkRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".85"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/infected/walk/sand2.wav"
		"wave"		"player/footsteps/infected/walk/sand4.wav"
	}
}

"Infected.Plaster.WalkLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".85"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/infected/run/plaster1.wav"
		"wave"		"player/footsteps/infected/run/plaster3.wav"
	}
}

"Infected.Plaster.WalkRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".85"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/infected/run/plaster2.wav"
		"wave"		"player/footsteps/infected/run/plaster4.wav"
	}
}

"Infected.Cardboard.WalkLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"pitch"			"95,105"
	"volume"			".85"
	"rndwave"
	{
		"wave"		"player/footsteps/infected/walk/cardboard1.wav"
		"wave"		"player/footsteps/infected/walk/cardboard2.wav"
	}
}

"Infected.Cardboard.WalkRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"pitch"			"95,105"
	"volume"			".85"
	"rndwave"
	{
		"wave"		"player/footsteps/infected/walk/cardboard3.wav"
		"wave"		"player/footsteps/infected/walk/cardboard4.wav"
	}
}

"Infected.Plastic_Barrel.WalkLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"pitch"			"95,105"
	"volume"			"0.5"
	"rndwave"
	{
		"wave"		"physics/plastic/plastic_barrel_impact_soft1.wav"
		"wave"		"physics/plastic/plastic_barrel_impact_soft2.wav"
	}
}

"Infected.Plastic_Barrel.WalkRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"pitch"			"95,105"
	"volume"			"0.5"
	"rndwave"
	{
		"wave"		"physics/plastic/plastic_barrel_impact_soft3.wav"
		"wave"		"physics/plastic/plastic_barrel_impact_soft4.wav"
	}
}

"Infected.Plastic_Box.WalkLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"pitch"			"95,105"
	"volume"			"0.3"
	"rndwave"
	{
		"wave"		"physics/plastic/plastic_box_impact_soft1.wav"
		"wave"		"physics/plastic/plastic_box_impact_soft2.wav"
	}
}

"Infected.Plastic_Box.WalkRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"pitch"			"95,105"
	"volume"			"0.3"
	"rndwave"
	{
		"wave"		"physics/plastic/plastic_box_impact_soft3.wav"
		"wave"		"physics/plastic/plastic_box_impact_soft4.wav"
	}
}

"Infected.Rubber.WalkLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"pitch"			"98,102"
	"volume"			"0.2"
	"wave"		"physics/rubber/rubber_tire_impact_soft1.wav"
}

"Infected.Rubber.WalkRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"pitch"			"98,102"
	"volume"		"0.2"
	"wave"		"physics/rubber/rubber_tire_impact_soft1.wav"
}

"Infected.Grenade.WalkLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".85"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/infected/walk/sand1.wav"
		"wave"		"player/footsteps/infected/walk/sand3.wav"
	}
}

"Infected.Grenade.WalkRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".85"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/infected/walk/sand2.wav"
		"wave"		"player/footsteps/infected/walk/sand4.wav"
	}
}

"Infected.Wood.WalkLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".85"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/infected/walk/wood1.wav"
		"wave"		"player/footsteps/infected/walk/wood3.wav"
	}
}

"Infected.Wood.WalkRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".85"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/infected/walk/wood2.wav"
		"wave"		"player/footsteps/infected/walk/wood4.wav"
	}
}

"Infected.Wood_Box.WalkLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".85"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"physics/wood/wood_box_footstep1.wav"
		"wave"		"physics/wood/wood_box_footstep2.wav"
	}
}

"Infected.Wood_Box.WalkRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".85"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"physics/wood/wood_box_footstep3.wav"
		"wave"		"physics/wood/wood_box_footstep4.wav"
	}
}

"Infected.Wood_Crate.WalkLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".85"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"physics/wood/wood_box_footstep1.wav"
		"wave"		"physics/wood/wood_box_footstep2.wav"
	}
}

"Infected.Wood_Crate.WalkRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".85"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"physics/wood/wood_box_footstep3.wav"
		"wave"		"physics/wood/wood_box_footstep4.wav"
	}
}

"Infected.Wood_Panel.WalkLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".85"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/infected/walk/wood1.wav"
		"wave"		"player/footsteps/infected/walk/wood3.wav"
	}
}

"Infected.Wood_Panel.WalkRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".85"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/infected/walk/wood2.wav"
		"wave"		"player/footsteps/infected/walk/wood4.wav"
	}
}

"Infected.Metal_Box.WalkLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".85"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/infected/walk/sand1.wav"
		"wave"		"player/footsteps/infected/walk/sand3.wav"
	}
}

"Infected.Metal_Box.WalkRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".85"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/infected/walk/sand2.wav"
		"wave"		"player/footsteps/infected/walk/sand4.wav"
	}
}

"Infected.weapon.WalkLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".85"
	"pitch"			"95,105"
	"wave"		"physics/metal/weapon_footstep1.wav"
}

"Infected.weapon.WalkRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".85"
	"pitch"			"95,105"
	"wave"		"physics/metal/weapon_footstep2.wav"

}

"Infected.SugarCane.WalkLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".66"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		")player/footsteps/survivor/run/foliage1.wav"
		"wave"		")player/footsteps/survivor/run/foliage3.wav"
	}
}

"Infected.SugarCane.WalkRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".66"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		")player/footsteps/survivor/run/foliage2.wav"
		"wave"		")player/footsteps/survivor/run/foliage4.wav"
	}
}

"Infected.Foliage.WalkLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".66"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		")player/footsteps/survivor/run/foliage1.wav"
		"wave"		")player/footsteps/survivor/run/foliage3.wav"
	}
}

"Infected.Foliage.WalkRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".66"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		")player/footsteps/survivor/run/foliage2.wav"
		"wave"		")player/footsteps/survivor/run/foliage4.wav"
	}
}

//----------------------------------------------------------------------------------------------------------------------------------------//
//Boomer Run
//----------------------------------------------------------------------------------------------------------------------------------------//
"Boomer.Default.RunLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"			".96"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/boomer/run/concrete1.wav"
		"wave"		"player/footsteps/boomer/run/concrete3.wav"
	}
}

"Boomer.Default.RunRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"pitch"			"95,105"
	"volume"			".96"
	"rndwave"
	{
		"wave"		"player/footsteps/boomer/run/concrete2.wav"
		"wave"		"player/footsteps/boomer/run/concrete4.wav"
	}
}

"Boomer.SolidMetal.RunLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"pitch"			"95,105"
	"volume"		".96"
	"rndwave"
	{
		"wave"		"player/footsteps/boomer/run/metal1.wav"
		"wave"		"player/footsteps/boomer/run/metal3.wav"
	}
}

"Boomer.SolidMetal.RunRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"pitch"			"95,105"
	"volume"		".96"
	"rndwave"
	{
		"wave"		"player/footsteps/boomer/run/metal2.wav"
		"wave"		"player/footsteps/boomer/run/metal4.wav"
	}
}

"Boomer.Metalgrate.RunLeft"
{
	"channel"       "CHAN_BODY"


	"soundlevel"	"SNDLVL_NORM"
	"pitch"			"95,105"
	"volume"		".96"
	"rndwave"
	{
		"wave"		"player/footsteps/boomer/run/metalgrate1.wav"
		"wave"		"player/footsteps/boomer/run/metalgrate2.wav"

		
	}

}

"Boomer.Metalgrate.RunRight"
{
	"channel"       "CHAN_BODY"


	"soundlevel"	"SNDLVL_NORM"
	"pitch"			"95,105"
	"volume"		".96"
	"rndwave"
	{
		"wave"		"player/footsteps/boomer/run/metalgrate3.wav"
		"wave"		"player/footsteps/boomer/run/metalgrate4.wav"
		
	}

}

"Boomer.Snow.RunLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".96"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/boomer/run/sand1.wav"
		"wave"		"player/footsteps/boomer/run/sand3.wav"
	}
}

"Boomer.Snow.RunRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".96"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/boomer/run/sand2.wav"
		"wave"		"player/footsteps/boomer/run/sand4.wav"
	}
}

"Boomer.Dirt.RunLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"pitch"			"95,105"
	"volume"		".96"
	"rndwave"
	{
		"wave"		"player/footsteps/boomer/run/dirt1.wav"
		"wave"		"player/footsteps/boomer/run/dirt3.wav"
	}
}

"Boomer.Dirt.RunRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"pitch"			"95,105"
	"volume"		".96"
	"rndwave"
	{
		"wave"		"player/footsteps/boomer/run/dirt2.wav"
		"wave"		"player/footsteps/boomer/run/dirt4.wav"
	}
}

"Boomer.Mud.RunLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".6"
	"pitch"			"90,105"
	"rndwave"
	{
		"wave"		"player/footsteps/boomer/run/mud1.wav"
		"wave"		"player/footsteps/boomer/run/mud3.wav"
	}
}

"Boomer.Mud.RunRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".6"
	"pitch"			"90,105"
	"rndwave"
	{
		"wave"		"player/footsteps/boomer/run/mud2.wav"
		"wave"		"player/footsteps/boomer/run/mud4.wav"
	}
}

"Boomer.SlipperySlime.RunLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		"0.6"
	"pitch"			"90,105"
	"rndwave"
	{
		"wave"		"player/footsteps/boomer/run/mud1.wav"
		"wave"		"player/footsteps/boomer/run/mud3.wav"
	}
}

"Boomer.SlipperySlime.RunRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		"0.6"
	"pitch"			"90,105"
	"rndwave"
	{
		"wave"		"player/footsteps/boomer/run/mud2.wav"
		"wave"		"player/footsteps/boomer/run/mud4.wav"
	}
}

"Boomer.Grass.RunLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".96"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/boomer/run/grass1.wav"
		"wave"		"player/footsteps/boomer/run/grass3.wav"
	}
}

"Boomer.Grass.RunRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".96"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/boomer/run/grass2.wav"
		"wave"		"player/footsteps/boomer/run/grass4.wav"
	}
}

"Boomer.MetalVent.RunLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".96"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/boomer/run/duct2.wav"
		"wave"		"player/footsteps/boomer/run/duct4.wav"
	}
}

"Boomer.MetalVent.RunRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".96"
	"rndwave"
	{
		"wave"		"player/footsteps/boomer/run/duct1.wav"
		"wave"		"player/footsteps/boomer/run/duct3.wav"
	}
}

"Boomer.Tile.RunLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".96"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/boomer/run/tile1.wav"
		"wave"		"player/footsteps/boomer/run/tile3.wav"
	}
}

"Boomer.Tile.RunRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".96"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/boomer/run/tile2.wav"
		"wave"		"player/footsteps/boomer/run/tile4.wav"
	}
}

"Boomer.Water.RunLeft"
{
	"channel"       "CHAN_AUTO"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".96"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/boomer/run/wade2.wav"
		"wave"		"player/footsteps/boomer/run/wade4.wav"
	}
}

"Boomer.Water.RunRight"
{
	"channel"       "CHAN_AUTO"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".96"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/boomer/run/wade1.wav"
		"wave"		"player/footsteps/boomer/run/wade3.wav"
	}
}

"Boomer.Wade.RunLeft"
{
	"channel"       "CHAN_AUTO"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		"0.96"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/boomer/run/wade1.wav"
		"wave"		"player/footsteps/boomer/run/wade3.wav"
	}
}

"Boomer.Wade.RunRight"
{
	"channel"       "CHAN_AUTO"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		"0.96"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/boomer/run/wade2.wav"
		"wave"		"player/footsteps/boomer/run/wade4.wav"
	}
}


"Boomer.Ladder.RunLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".96"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/boomer/run/ladder1.wav"
		"wave"		"player/footsteps/boomer/run/ladder3.wav"
	}
}

"Boomer.Ladder.RunRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".96"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/boomer/run/ladder2.wav"
		"wave"		"player/footsteps/boomer/run/ladder4.wav"
	}
}

"Boomer.Glass.RunLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".96"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/boomer/run/glass2.wav"
		"wave"		"player/footsteps/boomer/run/glass4.wav"
	}
}

"Boomer.Glass.RunRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".96"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/boomer/run/glass1.wav"
		"wave"		"player/footsteps/boomer/run/glass3.wav"
	}
}

"Boomer.Concrete.RunLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".96"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/boomer/run/concrete1.wav"
		"wave"		"player/footsteps/boomer/run/concrete3.wav"
	}
}

"Boomer.Concrete.RunRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".96"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/boomer/run/concrete2.wav"
		"wave"		"player/footsteps/boomer/run/concrete4.wav"
	}
}

"Boomer.Gravel.RunLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".96"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/boomer/run/gravel1.wav"
		"wave"		"player/footsteps/boomer/run/gravel3.wav"
	}
}

"Boomer.Gravel.RunRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".96"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/boomer/run/gravel2.wav"
		"wave"		"player/footsteps/boomer/run/gravel4.wav"
	}
}

"Boomer.ChainLink.RunLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".96"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/boomer/run/chainlink1.wav"
		"wave"		"player/footsteps/boomer/run/chainlink3.wav"
	}
}

"Boomer.ChainLink.RunRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".96"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/boomer/run/chainlink2.wav"
		"wave"		"player/footsteps/boomer/run/chainlink4.wav"
	}
}

"Boomer.Flesh.RunLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".96"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"	"player/footsteps/boomer/run/flesh1.wav"
		"wave"	"player/footsteps/boomer/run/flesh3.wav"
	}
}

"Boomer.Flesh.RunRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".96"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"	"player/footsteps/boomer/run/flesh2.wav"
		"wave"	"player/footsteps/boomer/run/flesh4.wav"
	}
}

"Boomer.Sand.RunLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".96"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/boomer/run/sand1.wav"
		"wave"		"player/footsteps/boomer/run/sand3.wav"
	}
}

"Boomer.Sand.RunRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".96"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/boomer/run/sand2.wav"
		"wave"		"player/footsteps/boomer/run/sand4.wav"
	}
}

"Boomer.GlassBottle.RunLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		"0.2"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"physics/glass/glass_impact_soft1.wav"
		"wave"		"physics/glass/glass_impact_soft2.wav"
	}
}

"Boomer.GlassBottle.RunRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		"0.2"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"physics/glass/glass_impact_soft2.wav"
		"wave"		"physics/glass/glass_impact_soft3.wav"
	}
}

"Boomer.ceiling_tile.RunLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".96"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/boomer/run/tile1.wav"
		"wave"		"player/footsteps/boomer/run/tile3.wav"
	}
}

"Boomer.ceiling_tile.RunRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".96"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/boomer/run/tile2.wav"
		"wave"		"player/footsteps/boomer/run/tile4.wav"
	}
}

"Boomer.drywall.RunLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".96"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/boomer/run/plaster1.wav"
		"wave"		"player/footsteps/boomer/run/plaster3.wav"
	}
}

"Boomer.drywall.RunRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".96"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/boomer/run/plaster2.wav"
		"wave"		"player/footsteps/boomer/run/plaster4.wav"
	}
}

"Boomer.Plaster.RunLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".96"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/boomer/run/plaster1.wav"
		"wave"		"player/footsteps/boomer/run/plaster3.wav"
	}
}

"Boomer.Plaster.RunRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".96"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/boomer/run/plaster2.wav"
		"wave"		"player/footsteps/boomer/run/plaster4.wav"
	}
}

"Boomer.Cardboard.RunLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"pitch"			"95,105"
	"volume"			".96"
	"rndwave"
	{
		"wave"		"player/footsteps/boomer/run/cardboard1.wav"
		"wave"		"player/footsteps/boomer/run/cardboard2.wav"
	}
}

"Boomer.Cardboard.RunRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"pitch"			"95,105"
	"volume"			".96"
	"rndwave"
	{
		"wave"		"player/footsteps/boomer/run/cardboard3.wav"
		"wave"		"player/footsteps/boomer/run/cardboard4.wav"
	}
}

"Boomer.Plastic_Barrel.RunLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"pitch"			"95,105"
	"volume"			"0.5"
	"rndwave"
	{
		"wave"		"physics/plastic/plastic_barrel_impact_soft1.wav"
		"wave"		"physics/plastic/plastic_barrel_impact_soft2.wav"
	}
}

"Boomer.Plastic_Barrel.RunRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"pitch"			"95,105"
	"volume"			"0.5"
	"rndwave"
	{
		"wave"		"physics/plastic/plastic_barrel_impact_soft3.wav"
		"wave"		"physics/plastic/plastic_barrel_impact_soft4.wav"
	}
}

"Boomer.Plastic_Box.RunLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"pitch"			"95,105"
	"volume"			"0.3"
	"rndwave"
	{
		"wave"		"physics/plastic/plastic_box_impact_soft1.wav"
		"wave"		"physics/plastic/plastic_box_impact_soft2.wav"
	}
}

"Boomer.Plastic_Box.RunRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"pitch"			"95,105"
	"volume"			"0.3"
	"rndwave"
	{
		"wave"		"physics/plastic/plastic_box_impact_soft3.wav"
		"wave"		"physics/plastic/plastic_box_impact_soft4.wav"
	}
}

"Boomer.Rubber.RunLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"pitch"			"98,102"
	"volume"			"0.2"
	"wave"		"physics/rubber/rubber_tire_impact_soft1.wav"
}

"Boomer.Rubber.RunRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"pitch"			"98,102"
	"volume"		"0.2"
	"wave"		"physics/rubber/rubber_tire_impact_soft1.wav"
}

"Boomer.Grenade.RunLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".96"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/boomer/run/gravel1.wav"
		"wave"		"player/footsteps/boomer/run/gravel3.wav"
	}
}

"Boomer.Grenade.RunRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".96"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/boomer/run/gravel2.wav"
		"wave"		"player/footsteps/boomer/run/gravel4.wav"
	}
}

"Boomer.Wood.RunLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".96"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/boomer/run/wood1.wav"
		"wave"		"player/footsteps/boomer/run/wood3.wav"
	}
}

"Boomer.Wood.RunRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".96"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/boomer/run/wood2.wav"
		"wave"		"player/footsteps/boomer/run/wood4.wav"
	}
}

"Boomer.Wood_Box.RunLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".96"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"physics/wood/wood_box_footstep1.wav"
		"wave"		"physics/wood/wood_box_footstep2.wav"
	}
}

"Boomer.Wood_Box.RunRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".96"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"physics/wood/wood_box_footstep3.wav"
		"wave"		"physics/wood/wood_box_footstep4.wav"
	}
}

"Boomer.Wood_Crate.RunLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".96"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"physics/wood/wood_box_footstep1.wav"
		"wave"		"physics/wood/wood_box_footstep2.wav"
	}
}

"Boomer.Wood_Crate.RunRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".96"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"physics/wood/wood_box_footstep3.wav"
		"wave"		"physics/wood/wood_box_footstep4.wav"
	}
}

"Boomer.Wood_Panel.RunLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".96"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/boomer/run/wood1.wav"
		"wave"		"player/footsteps/boomer/run/wood3.wav"
	}
}

"Boomer.Wood_Panel.RunRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".96"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/boomer/run/wood2.wav"
		"wave"		"player/footsteps/boomer/run/wood4.wav"
	}
}

"Boomer.Metal_Box.RunLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".96"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/boomer/run/gravel1.wav"
		"wave"		"player/footsteps/boomer/run/gravel3.wav"
	}
}

"Boomer.Metal_Box.RunRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".96"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/boomer/run/gravel2.wav"
		"wave"		"player/footsteps/boomer/run/gravel4.wav"
	}
}

"Boomer.weapon.RunLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".96"
	"pitch"			"95,105"
	"wave"		"physics/metal/weapon_footstep1.wav"
}

"Boomer.weapon.RunRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".96"
	"pitch"			"95,105"
	"wave"		"physics/metal/weapon_footstep2.wav"

}

"Boomer.SugarCane.RunLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".66"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		")player/footsteps/survivor/run/foliage1.wav"
		"wave"		")player/footsteps/survivor/run/foliage3.wav"
	}
}

"Boomer.SugarCane.RunRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".66"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		")player/footsteps/survivor/run/foliage2.wav"
		"wave"		")player/footsteps/survivor/run/foliage4.wav"
	}
}

"Boomer.Foliage.RunLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".66"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		")player/footsteps/survivor/run/foliage1.wav"
		"wave"		")player/footsteps/survivor/run/foliage3.wav"
	}
}

"Boomer.Foliage.RunRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".66"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		")player/footsteps/survivor/run/foliage2.wav"
		"wave"		")player/footsteps/survivor/run/foliage4.wav"
	}
}

//---------------------------------------------------------------------------------------------------------------------------------//
//BoomerWalk
//---------------------------------------------------------------------------------------------------------------------------------//

"Boomer.Default.WalkLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"			".86"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/boomer/walk/concrete1.wav"
		"wave"		"player/footsteps/boomer/walk/concrete3.wav"
	}
}

"Boomer.Default.WalkRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"pitch"			"95,105"
	"volume"			".86"
	"rndwave"
	{
		"wave"		"player/footsteps/boomer/walk/concrete2.wav"
		"wave"		"player/footsteps/boomer/walk/concrete4.wav"
	}
}

"Boomer.SolidMetal.WalkLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"pitch"			"95,105"
	"volume"		".86"
	"rndwave"
	{
		"wave"		"player/footsteps/boomer/walk/metal1.wav"
		"wave"		"player/footsteps/boomer/walk/metal3.wav"
	}
}

"Boomer.SolidMetal.WalkRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"pitch"			"95,105"
	"volume"		".86"
	"rndwave"
	{
		"wave"		"player/footsteps/boomer/walk/metal2.wav"
		"wave"		"player/footsteps/boomer/walk/metal4.wav"
	}
}

"Boomer.Metalgrate.WalkLeft"
{
	"channel"       "CHAN_BODY"


	"soundlevel"	"SNDLVL_NORM"
	"pitch"			"95,105"
	"volume"		".86"
	"rndwave"
	{
		"wave"		"player/footsteps/boomer/walk/metalgrate1.wav"
		"wave"		"player/footsteps/boomer/walk/metalgrate2.wav"

		
	}

}

"Boomer.Metalgrate.WalkRight"
{
	"channel"       "CHAN_BODY"


	"soundlevel"	"SNDLVL_NORM"
	"pitch"			"95,105"
	"volume"		".86"
	"rndwave"
	{
		"wave"		"player/footsteps/boomer/walk/metalgrate3.wav"
		"wave"		"player/footsteps/boomer/walk/metalgrate4.wav"
		
	}

}

"Boomer.Snow.WalkLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".96"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/boomer/run/sand1.wav"
		"wave"		"player/footsteps/boomer/run/sand3.wav"
	}
}

"Boomer.Snow.WalkRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".96"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/boomer/run/sand2.wav"
		"wave"		"player/footsteps/boomer/run/sand4.wav"
	}
}

"Boomer.Dirt.WalkLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"pitch"			"95,105"
	"volume"		".86"
	"rndwave"
	{
		"wave"		"player/footsteps/boomer/walk/dirt1.wav"
		"wave"		"player/footsteps/boomer/walk/dirt3.wav"
	}
}

"Boomer.Dirt.WalkRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"pitch"			"95,105"
	"volume"		".86"
	"rndwave"
	{
		"wave"		"player/footsteps/boomer/walk/dirt2.wav"
		"wave"		"player/footsteps/boomer/walk/dirt4.wav"
	}
}

"Boomer.Mud.WalkLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".6"
	"pitch"			"90,105"
	"rndwave"
	{
		"wave"		"player/footsteps/boomer/walk/mud1.wav"
		"wave"		"player/footsteps/boomer/walk/mud3.wav"
	}
}

"Boomer.Mud.WalkRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".6"
	"pitch"			"90,105"
	"rndwave"
	{
		"wave"		"player/footsteps/boomer/walk/mud2.wav"
		"wave"		"player/footsteps/boomer/walk/mud4.wav"
	}
}

"Boomer.SlipperySlime.WalkLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		"0.6"
	"pitch"			"90,105"
	"rndwave"
	{
		"wave"		"player/footsteps/boomer/walk/mud1.wav"
		"wave"		"player/footsteps/boomer/walk/mud3.wav"
	}
}

"Boomer.SlipperySlime.WalkRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		"0.6"
	"pitch"			"90,105"
	"rndwave"
	{
		"wave"		"player/footsteps/boomer/walk/mud2.wav"
		"wave"		"player/footsteps/boomer/walk/mud4.wav"
	}
}

"Boomer.Grass.WalkLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".86"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/boomer/walk/grass1.wav"
		"wave"		"player/footsteps/boomer/walk/grass3.wav"
	}
}

"Boomer.Grass.WalkRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".86"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/boomer/walk/grass2.wav"
		"wave"		"player/footsteps/boomer/walk/grass4.wav"
	}
}

"Boomer.MetalVent.WalkLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".86"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/boomer/walk/duct2.wav"
		"wave"		"player/footsteps/boomer/walk/duct4.wav"
	}
}

"Boomer.MetalVent.WalkRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".86"
	"rndwave"
	{
		"wave"		"player/footsteps/boomer/walk/duct1.wav"
		"wave"		"player/footsteps/boomer/walk/duct3.wav"
	}
}

"Boomer.Tile.WalkLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".86"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/boomer/walk/tile1.wav"
		"wave"		"player/footsteps/boomer/walk/tile3.wav"
	}
}

"Boomer.Tile.WalkRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".86"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/boomer/walk/tile2.wav"
		"wave"		"player/footsteps/boomer/walk/tile4.wav"
	}
}

"Boomer.Water.WalkLeft"
{
	"channel"       "CHAN_AUTO"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".86"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/boomer/walk/wade2.wav"
		"wave"		"player/footsteps/boomer/walk/wade4.wav"
	}
}

"Boomer.Water.WalkRight"
{
	"channel"       "CHAN_AUTO"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".86"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/boomer/walk/wade1.wav"
		"wave"		"player/footsteps/boomer/walk/wade3.wav"
	}
}

"Boomer.Wade.WalkLeft"
{
	"channel"       "CHAN_AUTO"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		"0.86"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/boomer/walk/wade1.wav"
		"wave"		"player/footsteps/boomer/walk/wade3.wav"
	}
}

"Boomer.Wade.WalkRight"
{
	"channel"       "CHAN_AUTO"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		"0.86"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/boomer/walk/wade2.wav"
		"wave"		"player/footsteps/boomer/walk/wade4.wav"
	}
}


"Boomer.Ladder.WalkLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".86"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/boomer/walk/ladder1.wav"
		"wave"		"player/footsteps/boomer/walk/ladder3.wav"
	}
}

"Boomer.Ladder.WalkRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".86"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/boomer/walk/ladder2.wav"
		"wave"		"player/footsteps/boomer/walk/ladder4.wav"
	}
}

"Boomer.Glass.WalkLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".86"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/boomer/walk/glass2.wav"
		"wave"		"player/footsteps/boomer/walk/glass4.wav"
	}
}

"Boomer.Glass.WalkRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".86"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/boomer/walk/glass1.wav"
		"wave"		"player/footsteps/boomer/walk/glass3.wav"
	}
}

"Boomer.Concrete.WalkLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".86"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/boomer/walk/concrete1.wav"
		"wave"		"player/footsteps/boomer/walk/concrete3.wav"
	}
}

"Boomer.Concrete.WalkRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".86"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/boomer/walk/concrete2.wav"
		"wave"		"player/footsteps/boomer/walk/concrete4.wav"
	}
}

"Boomer.Gravel.WalkLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".86"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/boomer/walk/gravel1.wav"
		"wave"		"player/footsteps/boomer/walk/gravel3.wav"
	}
}

"Boomer.Gravel.WalkRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".86"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/boomer/walk/gravel2.wav"
		"wave"		"player/footsteps/boomer/walk/gravel4.wav"
	}
}

"Boomer.ChainLink.WalkLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".86"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/boomer/walk/chainlink1.wav"
		"wave"		"player/footsteps/boomer/walk/chainlink3.wav"
	}
}

"Boomer.ChainLink.WalkRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".86"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/boomer/walk/chainlink2.wav"
		"wave"		"player/footsteps/boomer/walk/chainlink4.wav"
	}
}

"Boomer.Flesh.WalkLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".86"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"	"player/footsteps/boomer/walk/flesh1.wav"
		"wave"	"player/footsteps/boomer/walk/flesh3.wav"
	}
}

"Boomer.Flesh.WalkRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".86"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"	"player/footsteps/boomer/walk/flesh2.wav"
		"wave"	"player/footsteps/boomer/walk/flesh4.wav"
	}
}

"Boomer.Sand.WalkLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".86"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/boomer/walk/sand1.wav"
		"wave"		"player/footsteps/boomer/walk/sand3.wav"
	}
}

"Boomer.Sand.WalkRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".86"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/boomer/walk/sand2.wav"
		"wave"		"player/footsteps/boomer/walk/sand4.wav"
	}
}

"Boomer.GlassBottle.WalkLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		"0.2"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"physics/glass/glass_impact_soft1.wav"
		"wave"		"physics/glass/glass_impact_soft2.wav"
	}
}

"Boomer.GlassBottle.WalkRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		"0.2"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"physics/glass/glass_impact_soft2.wav"
		"wave"		"physics/glass/glass_impact_soft3.wav"
	}
}

"Boomer.ceiling_tile.WalkLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".86"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/boomer/walk/tile1.wav"
		"wave"		"player/footsteps/boomer/walk/tile3.wav"
	}
}

"Boomer.ceiling_tile.WalkRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".86"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/boomer/walk/tile2.wav"
		"wave"		"player/footsteps/boomer/walk/tile4.wav"
	}
}

"Boomer.drywall.WalkLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".86"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/boomer/walk/gravel1.wav"
		"wave"		"player/footsteps/boomer/walk/gravel3.wav"
	}
}

"Boomer.drywall.WalkRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".86"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/boomer/walk/gravel2.wav"
		"wave"		"player/footsteps/boomer/walk/gravel4.wav"
	}
}

"Boomer.Plaster.WalkLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".86"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/boomer/run/plaster1.wav"
		"wave"		"player/footsteps/boomer/run/plaster3.wav"
	}
}

"Boomer.Plaster.WalkRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".86"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/boomer/run/plaster2.wav"
		"wave"		"player/footsteps/boomer/run/plaster4.wav"
	}
}

"Boomer.Cardboard.WalkLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"pitch"			"95,105"
	"volume"			".86"
	"rndwave"
	{
		"wave"		"player/footsteps/boomer/walk/cardboard1.wav"
		"wave"		"player/footsteps/boomer/walk/cardboard2.wav"
	}
}

"Boomer.Cardboard.WalkRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"pitch"			"95,105"
	"volume"			".86"
	"rndwave"
	{
		"wave"		"player/footsteps/boomer/walk/cardboard3.wav"
		"wave"		"player/footsteps/boomer/walk/cardboard4.wav"
	}
}

"Boomer.Plastic_Barrel.WalkLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"pitch"			"95,105"
	"volume"			"0.5"
	"rndwave"
	{
		"wave"		"physics/plastic/plastic_barrel_impact_soft1.wav"
		"wave"		"physics/plastic/plastic_barrel_impact_soft2.wav"
	}
}

"Boomer.Plastic_Barrel.WalkRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"pitch"			"95,105"
	"volume"			"0.5"
	"rndwave"
	{
		"wave"		"physics/plastic/plastic_barrel_impact_soft3.wav"
		"wave"		"physics/plastic/plastic_barrel_impact_soft4.wav"
	}
}

"Boomer.Plastic_Box.WalkLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"pitch"			"95,105"
	"volume"			"0.3"
	"rndwave"
	{
		"wave"		"physics/plastic/plastic_box_impact_soft1.wav"
		"wave"		"physics/plastic/plastic_box_impact_soft2.wav"
	}
}

"Boomer.Plastic_Box.WalkRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"pitch"			"95,105"
	"volume"			"0.3"
	"rndwave"
	{
		"wave"		"physics/plastic/plastic_box_impact_soft3.wav"
		"wave"		"physics/plastic/plastic_box_impact_soft4.wav"
	}
}

"Boomer.Rubber.WalkLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"pitch"			"98,102"
	"volume"			"0.2"
	"wave"		"physics/rubber/rubber_tire_impact_soft1.wav"
}

"Boomer.Rubber.WalkRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"pitch"			"98,102"
	"volume"		"0.2"
	"wave"		"physics/rubber/rubber_tire_impact_soft1.wav"
}

"Boomer.Grenade.WalkLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".86"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/boomer/walk/gravel1.wav"
		"wave"		"player/footsteps/boomer/walk/gravel3.wav"
	}
}

"Boomer.Grenade.WalkRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".86"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/boomer/walk/gravel2.wav"
		"wave"		"player/footsteps/boomer/walk/gravel4.wav"
	}
}

"Boomer.Wood.WalkLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".86"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/boomer/walk/wood1.wav"
		"wave"		"player/footsteps/boomer/walk/wood3.wav"
	}
}

"Boomer.Wood.WalkRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".86"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/boomer/walk/wood2.wav"
		"wave"		"player/footsteps/boomer/walk/wood4.wav"
	}
}

"Boomer.Wood_Box.WalkLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".86"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"physics/wood/wood_box_footstep1.wav"
		"wave"		"physics/wood/wood_box_footstep2.wav"
	}
}

"Boomer.Wood_Box.WalkRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".86"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"physics/wood/wood_box_footstep3.wav"
		"wave"		"physics/wood/wood_box_footstep4.wav"
	}
}

"Boomer.Wood_Crate.WalkLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".86"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"physics/wood/wood_box_footstep1.wav"
		"wave"		"physics/wood/wood_box_footstep2.wav"
	}
}

"Boomer.Wood_Crate.WalkRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".86"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"physics/wood/wood_box_footstep3.wav"
		"wave"		"physics/wood/wood_box_footstep4.wav"
	}
}

"Boomer.Wood_Panel.WalkLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".86"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/boomer/walk/wood1.wav"
		"wave"		"player/footsteps/boomer/walk/wood3.wav"
	}
}

"Boomer.Wood_Panel.WalkRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".86"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/boomer/walk/wood2.wav"
		"wave"		"player/footsteps/boomer/walk/wood4.wav"
	}
}

"Boomer.Metal_Box.WalkLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".86"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/boomer/walk/gravel1.wav"
		"wave"		"player/footsteps/boomer/walk/gravel3.wav"
	}
}

"Boomer.Metal_Box.WalkRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".86"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/boomer/walk/gravel2.wav"
		"wave"		"player/footsteps/boomer/walk/gravel4.wav"
	}
}

"Boomer.weapon.WalkLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".86"
	"pitch"			"95,105"
	"wave"		"physics/metal/weapon_footstep1.wav"
}

"Boomer.weapon.WalkRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".86"
	"pitch"			"95,105"
	"wave"		"physics/metal/weapon_footstep2.wav"

}

"Boomer.SugarCane.WalkLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".66"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		")player/footsteps/survivor/run/foliage1.wav"
		"wave"		")player/footsteps/survivor/run/foliage3.wav"
	}
}

"Boomer.SugarCane.WalkRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".66"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		")player/footsteps/survivor/run/foliage2.wav"
		"wave"		")player/footsteps/survivor/run/foliage4.wav"
	}
}

"Boomer.Foliage.WalkLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".66"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		")player/footsteps/survivor/run/foliage1.wav"
		"wave"		")player/footsteps/survivor/run/foliage3.wav"
	}
}

"Boomer.Foliage.WalkRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".66"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		")player/footsteps/survivor/run/foliage2.wav"
		"wave"		")player/footsteps/survivor/run/foliage4.wav"
	}
}

//----------------------------------------------------------------------------------------------------------------------------------------//
//Witch Run
//----------------------------------------------------------------------------------------------------------------------------------------//
"Witch.Default.RunLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"			".94"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/witch/run/concrete1.wav"
		"wave"		"player/footsteps/witch/run/concrete3.wav"
	}
}

"Witch.Default.RunRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"pitch"			"95,105"
	"volume"			".94"
	"rndwave"
	{
		"wave"		"player/footsteps/witch/run/concrete2.wav"
		"wave"		"player/footsteps/witch/run/concrete4.wav"
	}
}

"Witch.SolidMetal.RunLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"pitch"			"95,105"
	"volume"		".94"
	"rndwave"
	{
		"wave"		"player/footsteps/witch/run/metal1.wav"
		"wave"		"player/footsteps/witch/run/metal3.wav"
	}
}

"Witch.SolidMetal.RunRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"pitch"			"95,105"
	"volume"		".94"
	"rndwave"
	{
		"wave"		"player/footsteps/witch/run/metal2.wav"
		"wave"		"player/footsteps/witch/run/metal4.wav"
	}
}

"Witch.Metalgrate.RunLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"			".94"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/witch/run/concrete1.wav"
		"wave"		"player/footsteps/witch/run/concrete3.wav"
	}
}

"Witch.Metalgrate.RunRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"			".94"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/witch/run/concrete2.wav"
		"wave"		"player/footsteps/witch/run/concrete4.wav"
	}
}

"Witch.Snow.RunLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"pitch"			"95,105"
	"volume"		".94"
	"rndwave"
	{
		"wave"		"player/footsteps/witch/run/dirt1.wav"
		"wave"		"player/footsteps/witch/run/dirt3.wav"
	}
}

"Witch.Snow.RunRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"pitch"			"95,105"
	"volume"		".94"
	"rndwave"
	{
		"wave"		"player/footsteps/witch/run/dirt1.wav"
		"wave"		"player/footsteps/witch/run/dirt3.wav"
	}
}

"Witch.Dirt.RunLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"pitch"			"95,105"
	"volume"		".94"
	"rndwave"
	{
		"wave"		"player/footsteps/witch/run/dirt2.wav"
		"wave"		"player/footsteps/witch/run/dirt4.wav"
	}
}

"Witch.Dirt.RunRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"pitch"			"95,105"
	"volume"		".94"
	"rndwave"
	{
		"wave"		"player/footsteps/witch/run/dirt2.wav"
		"wave"		"player/footsteps/witch/run/dirt4.wav"
	}
}

"Witch.Mud.RunLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".6"
	"pitch"			"90,105"
	"rndwave"
	{
		"wave"		"player/footsteps/witch/run/mud1.wav"
		"wave"		"player/footsteps/witch/run/mud3.wav"
	}
}

"Witch.Mud.RunRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".6"
	"pitch"			"90,105"
	"rndwave"
	{
		"wave"		"player/footsteps/witch/run/mud1.wav"
		"wave"		"player/footsteps/witch/run/mud3.wav"
	}
}

"Witch.SlipperySlime.RunLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		"0.6"
	"pitch"			"90,105"
	"rndwave"
	{
		"wave"		"player/footsteps/witch/run/mud1.wav"
		"wave"		"player/footsteps/witch/run/mud3.wav"
	}
}

"Witch.SlipperySlime.RunRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		"0.6"
	"pitch"			"90,105"
	"rndwave"
	{
		"wave"		"player/footsteps/witch/run/mud1.wav"
		"wave"		"player/footsteps/witch/run/mud3.wav"
	}
}

"Witch.Grass.RunLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"pitch"			"95,105"
	"volume"		".94"
	"rndwave"
	{
		"wave"		"player/footsteps/witch/run/dirt1.wav"
		"wave"		"player/footsteps/witch/run/dirt3.wav"
	}
}

"Witch.Grass.RunRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"pitch"			"95,105"
	"volume"		".94"
	"rndwave"
	{
		"wave"		"player/footsteps/witch/run/dirt2.wav"
		"wave"		"player/footsteps/witch/run/dirt4.wav"
	}
}

"Witch.MetalVent.RunLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".94"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/witch/run/duct2.wav"
		"wave"		"player/footsteps/witch/run/duct4.wav"
	}
}

"Witch.MetalVent.RunRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".94"
	"rndwave"
	{
		"wave"		"player/footsteps/witch/run/duct1.wav"
		"wave"		"player/footsteps/witch/run/duct3.wav"
	}
}

"Witch.Tile.RunLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".94"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/witch/run/tile1.wav"
		"wave"		"player/footsteps/witch/run/tile3.wav"
	}
}

"Witch.Tile.RunRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".94"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/witch/run/tile2.wav"
		"wave"		"player/footsteps/witch/run/tile4.wav"
	}
}

"Witch.Water.RunLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".94"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/witch/run/wade2.wav"
		"wave"		"player/footsteps/witch/run/wade4.wav"
	}
}

"Witch.Water.RunRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".94"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/witch/run/wade1.wav"
		"wave"		"player/footsteps/witch/run/wade3.wav"
	}
}

"Witch.Wade.RunLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		"0.94"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/witch/run/wade1.wav"
		"wave"		"player/footsteps/witch/run/wade3.wav"
	}
}

"Witch.Wade.RunRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		"0.94"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/witch/run/wade2.wav"
		"wave"		"player/footsteps/witch/run/wade4.wav"
	}
}


"Witch.Ladder.RunLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"pitch"			"95,105"
	"volume"		".94"
	"rndwave"
	{
		"wave"		"player/footsteps/witch/run/dirt1.wav"
		"wave"		"player/footsteps/witch/run/dirt3.wav"
	}
}


"Witch.Ladder.RunRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"pitch"			"95,105"
	"volume"		".94"
	"rndwave"
	{
		"wave"		"player/footsteps/witch/run/dirt2.wav"
		"wave"		"player/footsteps/witch/run/dirt4.wav"
	}
}


"Witch.Glass.RunLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"pitch"			"95,105"
	"volume"		".94"
	"rndwave"
	{
		"wave"		"player/footsteps/witch/run/dirt1.wav"
		"wave"		"player/footsteps/witch/run/dirt3.wav"
	}
}


"Witch.Glass.RunRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"pitch"			"95,105"
	"volume"		".94"
	"rndwave"
	{
		"wave"		"player/footsteps/witch/run/dirt2.wav"
		"wave"		"player/footsteps/witch/run/dirt4.wav"
	}
}


"Witch.Concrete.RunLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".94"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/witch/run/concrete1.wav"
		"wave"		"player/footsteps/witch/run/concrete3.wav"
	}
}

"Witch.Concrete.RunRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".94"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/witch/run/concrete2.wav"
		"wave"		"player/footsteps/witch/run/concrete4.wav"
	}
}

"Witch.Gravel.RunLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"pitch"			"95,105"
	"volume"		".94"
	"rndwave"
	{
		"wave"		"player/footsteps/witch/run/dirt1.wav"
		"wave"		"player/footsteps/witch/run/dirt3.wav"
	}
}


"Witch.Gravel.RunRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"pitch"			"95,105"
	"volume"		".94"
	"rndwave"
	{
		"wave"		"player/footsteps/witch/run/dirt2.wav"
		"wave"		"player/footsteps/witch/run/dirt4.wav"
	}
}


"Witch.ChainLink.RunLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"pitch"			"95,105"
	"volume"		".94"
	"rndwave"
	{
		"wave"		"player/footsteps/witch/run/chainlink1.wav"
		"wave"		"player/footsteps/witch/run/chainlink3.wav"
	}
}


"Witch.ChainLink.RunRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".94"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/witch/run/chainlink2.wav"
		"wave"		"player/footsteps/witch/run/chainlink4.wav"
	}
}

"Witch.Flesh.RunLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"pitch"			"95,105"
	"volume"		".94"
	"rndwave"
	{
		"wave"		"player/footsteps/witch/run/dirt1.wav"
		"wave"		"player/footsteps/witch/run/dirt3.wav"
	}
}

"Witch.Flesh.RunRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"pitch"			"95,105"
	"volume"		".94"
	"rndwave"
	{
		"wave"		"player/footsteps/witch/run/dirt2.wav"
		"wave"		"player/footsteps/witch/run/dirt4.wav"
	}
}

"Witch.Sand.RunLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"pitch"			"95,105"
	"volume"		".94"
	"rndwave"
	{
		"wave"		"player/footsteps/witch/run/dirt1.wav"
		"wave"		"player/footsteps/witch/run/dirt3.wav"
	}
}

"Witch.Sand.RunRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"pitch"			"95,105"
	"volume"		".94"
	"rndwave"
	{
		"wave"		"player/footsteps/witch/run/dirt2.wav"
		"wave"		"player/footsteps/witch/run/dirt4.wav"
	}
}

"Witch.GlassBottle.RunLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		"0.2"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"physics/glass/glass_impact_soft1.wav"
		"wave"		"physics/glass/glass_impact_soft2.wav"
	}
}

"Witch.GlassBottle.RunRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		"0.2"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"physics/glass/glass_impact_soft2.wav"
		"wave"		"physics/glass/glass_impact_soft3.wav"
	}
}

"Witch.ceiling_tile.RunLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".94"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/witch/run/tile1.wav"
		"wave"		"player/footsteps/witch/run/tile3.wav"
	}
}

"Witch.ceiling_tile.RunRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".94"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/witch/run/tile2.wav"
		"wave"		"player/footsteps/witch/run/tile4.wav"
	}
}

"Witch.drywall.RunLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"pitch"			"95,105"
	"volume"		".94"
	"rndwave"
	{
		"wave"		"player/footsteps/witch/run/dirt1.wav"
		"wave"		"player/footsteps/witch/run/dirt3.wav"
	}
}

"Witch.drywall.RunRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"pitch"			"95,105"
	"volume"		".94"
	"rndwave"
	{
		"wave"		"player/footsteps/witch/run/dirt2.wav"
		"wave"		"player/footsteps/witch/run/dirt4.wav"
	}
}

"Witch.Plaster.RunLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"pitch"			"95,105"
	"volume"		".94"
	"rndwave"
	{
		"wave"		"player/footsteps/witch/run/dirt1.wav"
		"wave"		"player/footsteps/witch/run/dirt3.wav"
	}
}

"Witch.Plaster.RunRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"pitch"			"95,105"
	"volume"		".94"
	"rndwave"
	{
		"wave"		"player/footsteps/witch/run/dirt2.wav"
		"wave"		"player/footsteps/witch/run/dirt4.wav"
	}
}

"Witch.Cardboard.RunLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"pitch"			"95,105"
	"volume"			".94"
	"rndwave"
	{
		"wave"		"player/footsteps/witch/run/cardboard1.wav"
		"wave"		"player/footsteps/witch/run/cardboard2.wav"
	}
}

"Witch.Cardboard.RunRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"pitch"			"95,105"
	"volume"			".94"
	"rndwave"
	{
		"wave"		"player/footsteps/witch/run/cardboard3.wav"
		"wave"		"player/footsteps/witch/run/cardboard4.wav"
	}
}

"Witch.Plastic_Barrel.RunLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"pitch"			"95,105"
	"volume"			"0.5"
	"rndwave"
	{
		"wave"		"physics/plastic/plastic_barrel_impact_soft1.wav"
		"wave"		"physics/plastic/plastic_barrel_impact_soft2.wav"
	}
}

"Witch.Plastic_Barrel.RunRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"pitch"			"95,105"
	"volume"			"0.5"
	"rndwave"
	{
		"wave"		"physics/plastic/plastic_barrel_impact_soft3.wav"
		"wave"		"physics/plastic/plastic_barrel_impact_soft4.wav"
	}
}

"Witch.Plastic_Box.RunLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"pitch"			"95,105"
	"volume"			"0.3"
	"rndwave"
	{
		"wave"		"physics/plastic/plastic_box_impact_soft1.wav"
		"wave"		"physics/plastic/plastic_box_impact_soft2.wav"
	}
}

"Witch.Plastic_Box.RunRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"pitch"			"95,105"
	"volume"			"0.3"
	"rndwave"
	{
		"wave"		"physics/plastic/plastic_box_impact_soft3.wav"
		"wave"		"physics/plastic/plastic_box_impact_soft4.wav"
	}
}

"Witch.Rubber.RunLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"pitch"			"98,102"
	"volume"			"0.2"
	"wave"		"physics/rubber/rubber_tire_impact_soft1.wav"
}

"Witch.Rubber.RunRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"pitch"			"98,102"
	"volume"		"0.2"
	"wave"		"physics/rubber/rubber_tire_impact_soft1.wav"
}

"Witch.Grenade.RunLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"pitch"			"95,105"
	"volume"		".94"
	"rndwave"
	{
		"wave"		"player/footsteps/witch/run/dirt1.wav"
		"wave"		"player/footsteps/witch/run/dirt3.wav"
	}
}

"Witch.Grenade.RunRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"pitch"			"95,105"
	"volume"		".94"
	"rndwave"
	{
		"wave"		"player/footsteps/witch/run/dirt2.wav"
		"wave"		"player/footsteps/witch/run/dirt4.wav"
	}
}

"Witch.Wood.RunLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".94"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/witch/run/wood1.wav"
		"wave"		"player/footsteps/witch/run/wood3.wav"
	}
}

"Witch.Wood.RunRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".94"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/witch/run/wood2.wav"
		"wave"		"player/footsteps/witch/run/wood4.wav"
	}
}

"Witch.Wood_Box.RunLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".94"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"physics/wood/wood_box_footstep1.wav"
		"wave"		"physics/wood/wood_box_footstep2.wav"
	}
}

"Witch.Wood_Box.RunRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".94"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"physics/wood/wood_box_footstep3.wav"
		"wave"		"physics/wood/wood_box_footstep4.wav"
	}
}

"Witch.Wood_Crate.RunLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".94"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"physics/wood/wood_box_footstep1.wav"
		"wave"		"physics/wood/wood_box_footstep2.wav"
	}
}

"Witch.Wood_Crate.RunRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".94"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"physics/wood/wood_box_footstep3.wav"
		"wave"		"physics/wood/wood_box_footstep4.wav"
	}
}

"Witch.Wood_Panel.RunLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".94"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/witch/run/wood1.wav"
		"wave"		"player/footsteps/witch/run/wood3.wav"
	}
}

"Witch.Wood_Panel.RunRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".94"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/witch/run/wood2.wav"
		"wave"		"player/footsteps/witch/run/wood4.wav"
	}
}

"Witch.Metal_Box.RunLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"pitch"			"95,105"
	"volume"		".94"
	"rndwave"
	{
		"wave"		"player/footsteps/witch/run/dirt1.wav"
		"wave"		"player/footsteps/witch/run/dirt3.wav"
	}
}

"Witch.Metal_Box.RunRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"pitch"			"95,105"
	"volume"		".94"
	"rndwave"
	{
		"wave"		"player/footsteps/witch/run/dirt2.wav"
		"wave"		"player/footsteps/witch/run/dirt4.wav"
	}
}

"Witch.weapon.RunLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".94"
	"pitch"			"95,105"
	"wave"		"physics/metal/weapon_footstep1.wav"
}

"Witch.weapon.RunRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".94"
	"pitch"			"95,105"
	"wave"		"physics/metal/weapon_footstep2.wav"

}

"Witch.SugarCane.RunLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".66"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		")player/footsteps/survivor/run/foliage1.wav"
		"wave"		")player/footsteps/survivor/run/foliage3.wav"
	}
}

"Witch.SugarCane.RunRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".66"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		")player/footsteps/survivor/run/foliage2.wav"
		"wave"		")player/footsteps/survivor/run/foliage4.wav"
	}
}

"Witch.Foliage.RunLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".66"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		")player/footsteps/survivor/run/foliage1.wav"
		"wave"		")player/footsteps/survivor/run/foliage3.wav"
	}
}

"Witch.Foliage.RunRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".66"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		")player/footsteps/survivor/run/foliage2.wav"
		"wave"		")player/footsteps/survivor/run/foliage4.wav"
	}
}

//---------------------------------------------------------------------------------------------------------------------------------//
//WitchWalk
//---------------------------------------------------------------------------------------------------------------------------------//
"Witch.Default.WalkLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"			".94"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/witch/run/concrete1.wav"
		"wave"		"player/footsteps/witch/run/concrete3.wav"
	}
}

"Witch.Default.WalkRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"pitch"			"95,105"
	"volume"			".94"
	"rndwave"
	{
		"wave"		"player/footsteps/witch/run/concrete2.wav"
		"wave"		"player/footsteps/witch/run/concrete4.wav"
	}
}

"Witch.SolidMetal.WalkLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"pitch"			"95,105"
	"volume"		".94"
	"rndwave"
	{
		"wave"		"player/footsteps/witch/run/metal1.wav"
		"wave"		"player/footsteps/witch/run/metal3.wav"
	}
}

"Witch.SolidMetal.WalkRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"pitch"			"95,105"
	"volume"		".94"
	"rndwave"
	{
		"wave"		"player/footsteps/witch/run/metal2.wav"
		"wave"		"player/footsteps/witch/run/metal4.wav"
	}
}

"Witch.Metalgrate.WalkLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"			".94"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/witch/run/concrete1.wav"
		"wave"		"player/footsteps/witch/run/concrete3.wav"
	}
}

"Witch.Metalgrate.WalkRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"			".94"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/witch/run/concrete2.wav"
		"wave"		"player/footsteps/witch/run/concrete4.wav"
	}
}

"Witch.Snow.WalkLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"pitch"			"95,105"
	"volume"		".94"
	"rndwave"
	{
		"wave"		"player/footsteps/witch/run/dirt1.wav"
		"wave"		"player/footsteps/witch/run/dirt3.wav"
	}
}

"Witch.Snow.WalkRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"pitch"			"95,105"
	"volume"		".94"
	"rndwave"
	{
		"wave"		"player/footsteps/witch/run/dirt1.wav"
		"wave"		"player/footsteps/witch/run/dirt3.wav"
	}
}

"Witch.Dirt.WalkLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"pitch"			"95,105"
	"volume"		".94"
	"rndwave"
	{
		"wave"		"player/footsteps/witch/run/dirt2.wav"
		"wave"		"player/footsteps/witch/run/dirt4.wav"
	}
}

"Witch.Dirt.WalkRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"pitch"			"95,105"
	"volume"		".94"
	"rndwave"
	{
		"wave"		"player/footsteps/witch/run/dirt2.wav"
		"wave"		"player/footsteps/witch/run/dirt4.wav"
	}
}

"Witch.Mud.WalkLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".6"
	"pitch"			"90,105"
	"rndwave"
	{
		"wave"		"player/footsteps/witch/run/mud1.wav"
		"wave"		"player/footsteps/witch/run/mud3.wav"
	}
}

"Witch.Mud.WalkRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".6"
	"pitch"			"90,105"
	"rndwave"
	{
		"wave"		"player/footsteps/witch/run/mud1.wav"
		"wave"		"player/footsteps/witch/run/mud3.wav"
	}
}

"Witch.SlipperySlime.WalkLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		"0.6"
	"pitch"			"90,105"
	"rndwave"
	{
		"wave"		"player/footsteps/witch/run/mud1.wav"
		"wave"		"player/footsteps/witch/run/mud3.wav"
	}
}

"Witch.SlipperySlime.WalkRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		"0.6"
	"pitch"			"90,105"
	"rndwave"
	{
		"wave"		"player/footsteps/witch/run/mud1.wav"
		"wave"		"player/footsteps/witch/run/mud3.wav"
	}
}

"Witch.Grass.WalkLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"pitch"			"95,105"
	"volume"		".94"
	"rndwave"
	{
		"wave"		"player/footsteps/witch/run/dirt1.wav"
		"wave"		"player/footsteps/witch/run/dirt3.wav"
	}
}

"Witch.Grass.WalkRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"pitch"			"95,105"
	"volume"		".94"
	"rndwave"
	{
		"wave"		"player/footsteps/witch/run/dirt2.wav"
		"wave"		"player/footsteps/witch/run/dirt4.wav"
	}
}

"Witch.MetalVent.WalkLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".94"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/witch/run/duct2.wav"
		"wave"		"player/footsteps/witch/run/duct4.wav"
	}
}

"Witch.MetalVent.WalkRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".94"
	"rndwave"
	{
		"wave"		"player/footsteps/witch/run/duct1.wav"
		"wave"		"player/footsteps/witch/run/duct3.wav"
	}
}

"Witch.Tile.WalkLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".94"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/witch/run/tile1.wav"
		"wave"		"player/footsteps/witch/run/tile3.wav"
	}
}

"Witch.Tile.WalkRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".94"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/witch/run/tile2.wav"
		"wave"		"player/footsteps/witch/run/tile4.wav"
	}
}

"Witch.Water.WalkLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".94"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/witch/run/wade2.wav"
		"wave"		"player/footsteps/witch/run/wade4.wav"
	}
}

"Witch.Water.WalkRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".94"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/witch/run/wade1.wav"
		"wave"		"player/footsteps/witch/run/wade3.wav"
	}
}

"Witch.Wade.WalkLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		"0.94"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/witch/run/wade1.wav"
		"wave"		"player/footsteps/witch/run/wade3.wav"
	}
}

"Witch.Wade.WalkRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		"0.94"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/witch/run/wade2.wav"
		"wave"		"player/footsteps/witch/run/wade4.wav"
	}
}


"Witch.Ladder.WalkLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"pitch"			"95,105"
	"volume"		".94"
	"rndwave"
	{
		"wave"		"player/footsteps/witch/run/dirt1.wav"
		"wave"		"player/footsteps/witch/run/dirt3.wav"
	}
}


"Witch.Ladder.WalkRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"pitch"			"95,105"
	"volume"		".94"
	"rndwave"
	{
		"wave"		"player/footsteps/witch/run/dirt2.wav"
		"wave"		"player/footsteps/witch/run/dirt4.wav"
	}
}


"Witch.Glass.WalkLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"pitch"			"95,105"
	"volume"		".94"
	"rndwave"
	{
		"wave"		"player/footsteps/witch/run/dirt1.wav"
		"wave"		"player/footsteps/witch/run/dirt3.wav"
	}
}


"Witch.Glass.WalkRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"pitch"			"95,105"
	"volume"		".94"
	"rndwave"
	{
		"wave"		"player/footsteps/witch/run/dirt2.wav"
		"wave"		"player/footsteps/witch/run/dirt4.wav"
	}
}


"Witch.Concrete.WalkLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".94"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/witch/run/concrete1.wav"
		"wave"		"player/footsteps/witch/run/concrete3.wav"
	}
}

"Witch.Concrete.WalkRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".94"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/witch/run/concrete2.wav"
		"wave"		"player/footsteps/witch/run/concrete4.wav"
	}
}

"Witch.Gravel.WalkLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"pitch"			"95,105"
	"volume"		".94"
	"rndwave"
	{
		"wave"		"player/footsteps/witch/run/dirt1.wav"
		"wave"		"player/footsteps/witch/run/dirt3.wav"
	}
}


"Witch.Gravel.WalkRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"pitch"			"95,105"
	"volume"		".94"
	"rndwave"
	{
		"wave"		"player/footsteps/witch/run/dirt2.wav"
		"wave"		"player/footsteps/witch/run/dirt4.wav"
	}
}


"Witch.ChainLink.WalkLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"pitch"			"95,105"
	"volume"		".94"
	"rndwave"
	{
		"wave"		"player/footsteps/witch/run/chainlink1.wav"
		"wave"		"player/footsteps/witch/run/chainlink3.wav"
	}
}


"Witch.ChainLink.WalkRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".94"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/witch/run/chainlink2.wav"
		"wave"		"player/footsteps/witch/run/chainlink4.wav"
	}
}

"Witch.Flesh.WalkLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"pitch"			"95,105"
	"volume"		".94"
	"rndwave"
	{
		"wave"		"player/footsteps/witch/run/dirt1.wav"
		"wave"		"player/footsteps/witch/run/dirt3.wav"
	}
}

"Witch.Flesh.WalkRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"pitch"			"95,105"
	"volume"		".94"
	"rndwave"
	{
		"wave"		"player/footsteps/witch/run/dirt2.wav"
		"wave"		"player/footsteps/witch/run/dirt4.wav"
	}
}

"Witch.Sand.WalkLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"pitch"			"95,105"
	"volume"		".94"
	"rndwave"
	{
		"wave"		"player/footsteps/witch/run/dirt1.wav"
		"wave"		"player/footsteps/witch/run/dirt3.wav"
	}
}

"Witch.Sand.WalkRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"pitch"			"95,105"
	"volume"		".94"
	"rndwave"
	{
		"wave"		"player/footsteps/witch/run/dirt2.wav"
		"wave"		"player/footsteps/witch/run/dirt4.wav"
	}
}

"Witch.GlassBottle.WalkLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		"0.2"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"physics/glass/glass_impact_soft1.wav"
		"wave"		"physics/glass/glass_impact_soft2.wav"
	}
}

"Witch.GlassBottle.WalkRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		"0.2"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"physics/glass/glass_impact_soft2.wav"
		"wave"		"physics/glass/glass_impact_soft3.wav"
	}
}

"Witch.ceiling_tile.WalkLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".94"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/witch/run/tile1.wav"
		"wave"		"player/footsteps/witch/run/tile3.wav"
	}
}

"Witch.ceiling_tile.WalkRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".94"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/witch/run/tile2.wav"
		"wave"		"player/footsteps/witch/run/tile4.wav"
	}
}

"Witch.drywall.WalkLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"pitch"			"95,105"
	"volume"		".94"
	"rndwave"
	{
		"wave"		"player/footsteps/witch/run/dirt1.wav"
		"wave"		"player/footsteps/witch/run/dirt3.wav"
	}
}

"Witch.drywall.WalkRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"pitch"			"95,105"
	"volume"		".94"
	"rndwave"
	{
		"wave"		"player/footsteps/witch/run/dirt2.wav"
		"wave"		"player/footsteps/witch/run/dirt4.wav"
	}
}

"Witch.Plaster.WalkLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"pitch"			"95,105"
	"volume"		".94"
	"rndwave"
	{
		"wave"		"player/footsteps/witch/run/dirt1.wav"
		"wave"		"player/footsteps/witch/run/dirt3.wav"
	}
}

"Witch.Plaster.WalkRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"pitch"			"95,105"
	"volume"		".94"
	"rndwave"
	{
		"wave"		"player/footsteps/witch/run/dirt2.wav"
		"wave"		"player/footsteps/witch/run/dirt4.wav"
	}
}

"Witch.Cardboard.WalkLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"pitch"			"95,105"
	"volume"			".94"
	"rndwave"
	{
		"wave"		"player/footsteps/witch/run/cardboard1.wav"
		"wave"		"player/footsteps/witch/run/cardboard2.wav"
	}
}

"Witch.Cardboard.WalkRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"pitch"			"95,105"
	"volume"			".94"
	"rndwave"
	{
		"wave"		"player/footsteps/witch/run/cardboard3.wav"
		"wave"		"player/footsteps/witch/run/cardboard4.wav"
	}
}

"Witch.Plastic_Barrel.WalkLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"pitch"			"95,105"
	"volume"			"0.5"
	"rndwave"
	{
		"wave"		"physics/plastic/plastic_barrel_impact_soft1.wav"
		"wave"		"physics/plastic/plastic_barrel_impact_soft2.wav"
	}
}

"Witch.Plastic_Barrel.WalkRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"pitch"			"95,105"
	"volume"			"0.5"
	"rndwave"
	{
		"wave"		"physics/plastic/plastic_barrel_impact_soft3.wav"
		"wave"		"physics/plastic/plastic_barrel_impact_soft4.wav"
	}
}

"Witch.Plastic_Box.WalkLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"pitch"			"95,105"
	"volume"			"0.3"
	"rndwave"
	{
		"wave"		"physics/plastic/plastic_box_impact_soft1.wav"
		"wave"		"physics/plastic/plastic_box_impact_soft2.wav"
	}
}

"Witch.Plastic_Box.WalkRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"pitch"			"95,105"
	"volume"			"0.3"
	"rndwave"
	{
		"wave"		"physics/plastic/plastic_box_impact_soft3.wav"
		"wave"		"physics/plastic/plastic_box_impact_soft4.wav"
	}
}

"Witch.Rubber.WalkLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"pitch"			"98,102"
	"volume"			"0.2"
	"wave"		"physics/rubber/rubber_tire_impact_soft1.wav"
}

"Witch.Rubber.WalkRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"pitch"			"98,102"
	"volume"		"0.2"
	"wave"		"physics/rubber/rubber_tire_impact_soft1.wav"
}

"Witch.Grenade.WalkLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"pitch"			"95,105"
	"volume"		".94"
	"rndwave"
	{
		"wave"		"player/footsteps/witch/run/dirt1.wav"
		"wave"		"player/footsteps/witch/run/dirt3.wav"
	}
}

"Witch.Grenade.WalkRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"pitch"			"95,105"
	"volume"		".94"
	"rndwave"
	{
		"wave"		"player/footsteps/witch/run/dirt2.wav"
		"wave"		"player/footsteps/witch/run/dirt4.wav"
	}
}

"Witch.Wood.WalkLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".94"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/witch/run/wood1.wav"
		"wave"		"player/footsteps/witch/run/wood3.wav"
	}
}

"Witch.Wood.WalkRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".94"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/witch/run/wood2.wav"
		"wave"		"player/footsteps/witch/run/wood4.wav"
	}
}

"Witch.Wood_Box.WalkLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".94"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"physics/wood/wood_box_footstep1.wav"
		"wave"		"physics/wood/wood_box_footstep2.wav"
	}
}

"Witch.Wood_Box.WalkRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".94"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"physics/wood/wood_box_footstep3.wav"
		"wave"		"physics/wood/wood_box_footstep4.wav"
	}
}

"Witch.Wood_Crate.WalkLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".94"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"physics/wood/wood_box_footstep1.wav"
		"wave"		"physics/wood/wood_box_footstep2.wav"
	}
}

"Witch.Wood_Crate.WalkRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".94"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"physics/wood/wood_box_footstep3.wav"
		"wave"		"physics/wood/wood_box_footstep4.wav"
	}
}

"Witch.Wood_Panel.WalkLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".94"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/witch/run/wood1.wav"
		"wave"		"player/footsteps/witch/run/wood3.wav"
	}
}

"Witch.Wood_Panel.WalkRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".94"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/witch/run/wood2.wav"
		"wave"		"player/footsteps/witch/run/wood4.wav"
	}
}

"Witch.Metal_Box.WalkLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"pitch"			"95,105"
	"volume"		".94"
	"rndwave"
	{
		"wave"		"player/footsteps/witch/run/dirt1.wav"
		"wave"		"player/footsteps/witch/run/dirt3.wav"
	}
}

"Witch.Metal_Box.WalkRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"pitch"			"95,105"
	"volume"		".94"
	"rndwave"
	{
		"wave"		"player/footsteps/witch/run/dirt2.wav"
		"wave"		"player/footsteps/witch/run/dirt4.wav"
	}
}

"Witch.weapon.WalkLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".94"
	"pitch"			"95,105"
	"wave"		"physics/metal/weapon_footstep1.wav"
}

"Witch.weapon.WalkRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".94"
	"pitch"			"95,105"
	"wave"		"physics/metal/weapon_footstep2.wav"

}

"Witch.SugarCane.WalkLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".66"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		")player/footsteps/survivor/run/foliage1.wav"
		"wave"		")player/footsteps/survivor/run/foliage3.wav"
	}
}

"Witch.SugarCane.WalkRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".66"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		")player/footsteps/survivor/run/foliage2.wav"
		"wave"		")player/footsteps/survivor/run/foliage4.wav"
	}
}

"Witch.Foliage.WalkLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".66"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		")player/footsteps/survivor/run/foliage1.wav"
		"wave"		")player/footsteps/survivor/run/foliage3.wav"
	}
}

"Witch.Foliage.WalkRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".66"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		")player/footsteps/survivor/run/foliage2.wav"
		"wave"		")player/footsteps/survivor/run/foliage4.wav"
	}
}


//----------------------------------------------------------------------------------------------------------------------------------------
// Charger Run
//----------------------------------------------------------------------------------------------------------------------------------------
"Charger.Default.RunLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_90dB"
	"volume"			".9"
	"pitch"			"PITCH_NORM"
	"rndwave"
	{
		"wave"		"player/footsteps/charger/run/charger_run_left_01.wav"
		"wave"		"player/footsteps/charger/run/charger_run_left_02.wav"
		"wave"		"player/footsteps/charger/run/charger_run_left_03.wav"
		"wave"		"player/footsteps/charger/run/charger_run_left_04.wav"
	}
}

"Charger.Default.RunRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_90dB"
	"pitch"			"PITCH_NORM"
	"volume"		".9"
	"rndwave"
	{
		"wave"		"player/footsteps/charger/run/charger_run_right_01.wav"
		"wave"		"player/footsteps/charger/run/charger_run_right_02.wav"
		"wave"		"player/footsteps/charger/run/charger_run_right_03.wav"
		"wave"		"player/footsteps/charger/run/charger_run_right_04.wav"
	}
}


//----------------------------------------------------------------------------------------------------------------------------------------
//Tank Run
//----------------------------------------------------------------------------------------------------------------------------------------
"Tank.Default.RunLeft"
{
	"channel"       "CHAN_AUTO"

	"soundlevel"	"SNDLVL_120dB"
	"volume"			"1.0"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/tank/walk/Tank_walk01.wav"
		"wave"		"player/footsteps/tank/walk/Tank_walk02.wav"
		"wave"		"player/footsteps/tank/walk/Tank_walk03.wav"
	}
}

"Tank.Default.RunRight"
{
	"channel"       "CHAN_AUTO"

	"soundlevel"	"SNDLVL_120dB"
	"pitch"			"95,105"
	"volume"			"1.0"
	"rndwave"
	{
		"wave"		"player/footsteps/tank/walk/Tank_walk04.wav"
		"wave"		"player/footsteps/tank/walk/Tank_walk05.wav"
		"wave"		"player/footsteps/tank/walk/Tank_walk06.wav"
	}
}

"Tank.SugarCane.WalkLeft"
{
	"channel"       "CHAN_AUTO"

	"soundlevel"	"SNDLVL_120dB"
	"volume"			"1.0"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/tank/walk/Tank_walk01.wav"
		"wave"		"player/footsteps/tank/walk/Tank_walk02.wav"
		"wave"		"player/footsteps/tank/walk/Tank_walk03.wav"
	}
}

"Tank.SugarCane.WalkRight"
{
	"channel"       "CHAN_AUTO"

	"soundlevel"	"SNDLVL_120dB"
	"pitch"			"95,105"
	"volume"			"1.0"
	"rndwave"
	{
		"wave"		"player/footsteps/tank/walk/Tank_walk04.wav"
		"wave"		"player/footsteps/tank/walk/Tank_walk05.wav"
		"wave"		"player/footsteps/tank/walk/Tank_walk06.wav"
	}
}

"Tank.Foliage.WalkLeft"
{
	"channel"       "CHAN_AUTO"

	"soundlevel"	"SNDLVL_120dB"
	"volume"			"1.0"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/tank/walk/Tank_walk01.wav"
		"wave"		"player/footsteps/tank/walk/Tank_walk02.wav"
		"wave"		"player/footsteps/tank/walk/Tank_walk03.wav"
	}
}

"Tank.Foliage.WalkRight"
{
	"channel"       "CHAN_AUTO"

	"soundlevel"	"SNDLVL_120dB"
	"pitch"			"95,105"
	"volume"			"1.0"
	"rndwave"
	{
		"wave"		"player/footsteps/tank/walk/Tank_walk04.wav"
		"wave"		"player/footsteps/tank/walk/Tank_walk05.wav"
		"wave"		"player/footsteps/tank/walk/Tank_walk06.wav"
	}
}

"Tank.SugarCane.RunLeft"
{
	"channel"       "CHAN_AUTO"

	"soundlevel"	"SNDLVL_120dB"
	"volume"			"1.0"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/tank/walk/Tank_walk01.wav"
		"wave"		"player/footsteps/tank/walk/Tank_walk02.wav"
		"wave"		"player/footsteps/tank/walk/Tank_walk03.wav"
	}
}

"Tank.SugarCane.RunRight"
{
	"channel"       "CHAN_AUTO"

	"soundlevel"	"SNDLVL_120dB"
	"pitch"			"95,105"
	"volume"			"1.0"
	"rndwave"
	{
		"wave"		"player/footsteps/tank/walk/Tank_walk04.wav"
		"wave"		"player/footsteps/tank/walk/Tank_walk05.wav"
		"wave"		"player/footsteps/tank/walk/Tank_walk06.wav"
	}
}

"Tank.Foliage.RunLeft"
{
	"channel"       "CHAN_AUTO"

	"soundlevel"	"SNDLVL_120dB"
	"volume"			"1.0"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/tank/walk/Tank_walk01.wav"
		"wave"		"player/footsteps/tank/walk/Tank_walk02.wav"
		"wave"		"player/footsteps/tank/walk/Tank_walk03.wav"
	}
}

"Tank.Foliage.RunRight"
{
	"channel"       "CHAN_AUTO"

	"soundlevel"	"SNDLVL_120dB"
	"pitch"			"95,105"
	"volume"			"1.0"
	"rndwave"
	{
		"wave"		"player/footsteps/tank/walk/Tank_walk04.wav"
		"wave"		"player/footsteps/tank/walk/Tank_walk05.wav"
		"wave"		"player/footsteps/tank/walk/Tank_walk06.wav"
	}
}

"Tank.SolidMetal.RunLeft"
{
	"channel"       "CHAN_AUTO"

	"soundlevel"	"SNDLVL_120dB"
	"pitch"			"95,105"
	"volume"		"1.0"
	"rndwave"
	{
		"wave"		"player/footsteps/tank/walk/Tank_walk01.wav"
		"wave"		"player/footsteps/tank/walk/Tank_walk02.wav"
		"wave"		"player/footsteps/tank/walk/Tank_walk03.wav"
	}
}

"Tank.SolidMetal.RunRight"
{
	"channel"       "CHAN_AUTO"

	"soundlevel"	"SNDLVL_120dB"
	"pitch"			"95,105"
	"volume"		"1.0"
	"rndwave"
	{
		"wave"		"player/footsteps/tank/walk/Tank_walk04.wav"
		"wave"		"player/footsteps/tank/walk/Tank_walk05.wav"
		"wave"		"player/footsteps/tank/walk/Tank_walk06.wav"
	}
}

"Tank.Metalgrate.RunLeft"
{
	"channel"       "CHAN_AUTO"


	"soundlevel"	"SNDLVL_120dB"
	"pitch"			"95,105"
	"volume"		"1.0"
	"rndwave"
	{
		"wave"		"player/footsteps/tank/walk/Tank_walk01.wav"
		"wave"		"player/footsteps/tank/walk/Tank_walk02.wav"
		"wave"		"player/footsteps/tank/walk/Tank_walk03.wav"
	}

}

"Tank.Metalgrate.RunRight"
{
	"channel"       "CHAN_AUTO"


	"soundlevel"	"SNDLVL_120dB"
	"pitch"			"95,105"
	"volume"		"1.0"
	"rndwave"
	{
		"wave"		"player/footsteps/tank/walk/Tank_walk04.wav"
		"wave"		"player/footsteps/tank/walk/Tank_walk05.wav"
		"wave"		"player/footsteps/tank/walk/Tank_walk06.wav"
		
	}

}

"Tank.Snow.RunLeft"
{
	"channel"       "CHAN_AUTO"


	"soundlevel"	"SNDLVL_120dB"
	"pitch"			"95,105"
	"volume"		"1.0"
	"rndwave"
	{
		"wave"		"player/footsteps/tank/walk/Tank_walk01.wav"
		"wave"		"player/footsteps/tank/walk/Tank_walk02.wav"
		"wave"		"player/footsteps/tank/walk/Tank_walk03.wav"
		
	}

}

"Tank.Snow.RunRight"
{
	"channel"       "CHAN_AUTO"


	"soundlevel"	"SNDLVL_120dB"
	"pitch"			"95,105"
	"volume"		"1.0"
	"rndwave"
	{
		"wave"		"player/footsteps/tank/walk/Tank_walk04.wav"
		"wave"		"player/footsteps/tank/walk/Tank_walk05.wav"
		"wave"		"player/footsteps/tank/walk/Tank_walk06.wav"
		
	}

}

"Tank.Dirt.RunLeft"
{
	"channel"       "CHAN_AUTO"

	"soundlevel"	"SNDLVL_120dB"
	"pitch"			"95,105"
	"volume"		"1.0"
	"rndwave"
	{
		"wave"		"player/footsteps/tank/walk/Tank_walk01.wav"
		"wave"		"player/footsteps/tank/walk/Tank_walk02.wav"
		"wave"		"player/footsteps/tank/walk/Tank_walk03.wav"
	}
}

"Tank.Dirt.RunRight"
{
	"channel"       "CHAN_AUTO"

	"soundlevel"	"SNDLVL_120dB"
	"pitch"			"95,105"
	"volume"		"1.0"
	"rndwave"
	{
		"wave"		"player/footsteps/tank/walk/Tank_walk04.wav"
		"wave"		"player/footsteps/tank/walk/Tank_walk05.wav"
		"wave"		"player/footsteps/tank/walk/Tank_walk06.wav"
	}
}

"Tank.Mud.RunLeft"
{
	"channel"       "CHAN_AUTO"

	"soundlevel"	"SNDLVL_120dB"
	"volume"		"1.0"
	"pitch"			"90,105"
	"rndwave"
	{
		"wave"		"player/footsteps/tank/walk/Tank_walk01.wav"
		"wave"		"player/footsteps/tank/walk/Tank_walk02.wav"
		"wave"		"player/footsteps/tank/walk/Tank_walk03.wav"
	}
}

"Tank.Mud.RunRight"
{
	"channel"       "CHAN_AUTO"

	"soundlevel"	"SNDLVL_120dB"
	"volume"		"1.0"
	"pitch"			"90,105"
	"rndwave"
	{
		"wave"		"player/footsteps/tank/walk/Tank_walk04.wav"
		"wave"		"player/footsteps/tank/walk/Tank_walk05.wav"
		"wave"		"player/footsteps/tank/walk/Tank_walk06.wav"
	}
}

"Tank.SlipperySlime.RunLeft"
{
	"channel"       "CHAN_AUTO"

	"soundlevel"	"SNDLVL_120dB"
	"volume"		"1.0"
	"pitch"			"90,105"
	"rndwave"
	{
		"wave"		"player/footsteps/tank/walk/Tank_walk01.wav"
		"wave"		"player/footsteps/tank/walk/Tank_walk02.wav"
		"wave"		"player/footsteps/tank/walk/Tank_walk03.wav"
	}
}

"Tank.SlipperySlime.RunRight"
{
	"channel"       "CHAN_AUTO"

	"soundlevel"	"SNDLVL_120dB"
	"volume"		"1.0"
	"pitch"			"90,105"
	"rndwave"
	{
		"wave"		"player/footsteps/tank/walk/Tank_walk04.wav"
		"wave"		"player/footsteps/tank/walk/Tank_walk05.wav"
		"wave"		"player/footsteps/tank/walk/Tank_walk06.wav"
	}
}

"Tank.Grass.RunLeft"
{
	"channel"       "CHAN_AUTO"

	"soundlevel"	"SNDLVL_120dB"
	"volume"		"1.0"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/tank/walk/Tank_walk01.wav"
		"wave"		"player/footsteps/tank/walk/Tank_walk02.wav"
		"wave"		"player/footsteps/tank/walk/Tank_walk03.wav"
	}
}

"Tank.Grass.RunRight"
{
	"channel"       "CHAN_AUTO"

	"soundlevel"	"SNDLVL_120dB"
	"volume"		"1.0"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/tank/walk/Tank_walk04.wav"
		"wave"		"player/footsteps/tank/walk/Tank_walk05.wav"
		"wave"		"player/footsteps/tank/walk/Tank_walk06.wav"
	}
}

"Tank.MetalVent.RunLeft"
{
	"channel"       "CHAN_AUTO"

	"soundlevel"	"SNDLVL_120dB"
	"volume"		"1.0"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/tank/walk/Tank_walk01.wav"
		"wave"		"player/footsteps/tank/walk/Tank_walk02.wav"
		"wave"		"player/footsteps/tank/walk/Tank_walk03.wav"
	}
}

"Tank.MetalVent.RunRight"
{
	"channel"       "CHAN_AUTO"

	"soundlevel"	"SNDLVL_120dB"
	"volume"		"1.0"
	"rndwave"
	{
		"wave"		"player/footsteps/tank/walk/Tank_walk04.wav"
		"wave"		"player/footsteps/tank/walk/Tank_walk05.wav"
		"wave"		"player/footsteps/tank/walk/Tank_walk06.wav"
	}
}

"Tank.Tile.RunLeft"
{
	"channel"       "CHAN_AUTO"

	"soundlevel"	"SNDLVL_120dB"
	"volume"		"1.0"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/tank/walk/Tank_walk01.wav"
		"wave"		"player/footsteps/tank/walk/Tank_walk02.wav"
		"wave"		"player/footsteps/tank/walk/Tank_walk03.wav"
	}
}

"Tank.Tile.RunRight"
{
	"channel"       "CHAN_AUTO"

	"soundlevel"	"SNDLVL_120dB"
	"volume"		"1.0"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/tank/walk/Tank_walk04.wav"
		"wave"		"player/footsteps/tank/walk/Tank_walk05.wav"
		"wave"		"player/footsteps/tank/walk/Tank_walk06.wav"
	}
}

"Tank.Water.RunLeft"
{
	"channel"       "CHAN_AUTO"

	"soundlevel"	"SNDLVL_120dB"
	"volume"		"1.0"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/tank/walk/tank_walk_water_01.wav"
		"wave"		"player/footsteps/tank/walk/tank_walk_water_02.wav"
		"wave"		"player/footsteps/tank/walk/tank_walk_water_03.wav"
	}
}

"Tank.Water.RunRight"
{
	"channel"       "CHAN_AUTO"

	"soundlevel"	"SNDLVL_120dB"
	"volume"		"1.0"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/tank/walk/tank_walk_water_04.wav"
		"wave"		"player/footsteps/tank/walk/tank_walk_water_05.wav"
		"wave"		"player/footsteps/tank/walk/tank_walk_water_06.wav"
	}
}

"Tank.Wade.RunLeft"
{
	"channel"       "CHAN_AUTO"

	"soundlevel"	"SNDLVL_120dB"
	"volume"		"1.0"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/tank/walk/tank_walk_water_01.wav"
		"wave"		"player/footsteps/tank/walk/tank_walk_water_02.wav"
		"wave"		"player/footsteps/tank/walk/tank_walk_water_03.wav"
	}
}

"Tank.Wade.RunRight"
{
	"channel"       "CHAN_AUTO"

	"soundlevel"	"SNDLVL_120dB"
	"volume"		"1.0"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/tank/walk/tank_walk_water_04.wav"
		"wave"		"player/footsteps/tank/walk/tank_walk_water_05.wav"
		"wave"		"player/footsteps/tank/walk/tank_walk_water_06.wav"
	}
}


"Tank.Ladder.RunLeft"
{
	"channel"       "CHAN_AUTO"

	"soundlevel"	"SNDLVL_120dB"
	"volume"		"1.0"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/tank/walk/Tank_walk01.wav"
		"wave"		"player/footsteps/tank/walk/Tank_walk02.wav"
		"wave"		"player/footsteps/tank/walk/Tank_walk03.wav"
	}
}

"Tank.Ladder.RunRight"
{
	"channel"       "CHAN_AUTO"

	"soundlevel"	"SNDLVL_120dB"
	"volume"		"1.0"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/tank/walk/Tank_walk04.wav"
		"wave"		"player/footsteps/tank/walk/Tank_walk05.wav"
		"wave"		"player/footsteps/tank/walk/Tank_walk06.wav"
	}
}

"Tank.Glass.RunLeft"
{
	"channel"       "CHAN_AUTO"

	"soundlevel"	"SNDLVL_120dB"
	"volume"		"1.0"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/tank/walk/Tank_walk01.wav"
		"wave"		"player/footsteps/tank/walk/Tank_walk02.wav"
		"wave"		"player/footsteps/tank/walk/Tank_walk03.wav"
	}
}

"Tank.Glass.RunRight"
{
	"channel"       "CHAN_AUTO"

	"soundlevel"	"SNDLVL_120dB"
	"volume"		"1.0"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/tank/walk/Tank_walk04.wav"
		"wave"		"player/footsteps/tank/walk/Tank_walk05.wav"
		"wave"		"player/footsteps/tank/walk/Tank_walk06.wav"
	}
}

"Tank.Concrete.RunLeft"
{
	"channel"       "CHAN_AUTO"

	"soundlevel"	"SNDLVL_120dB"
	"volume"		"1.0"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/tank/walk/Tank_walk01.wav"
		"wave"		"player/footsteps/tank/walk/Tank_walk02.wav"
		"wave"		"player/footsteps/tank/walk/Tank_walk03.wav"
	}
}

"Tank.Concrete.RunRight"
{
	"channel"       "CHAN_AUTO"

	"soundlevel"	"SNDLVL_120dB"
	"volume"		"1.0"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/tank/walk/Tank_walk04.wav"
		"wave"		"player/footsteps/tank/walk/Tank_walk05.wav"
		"wave"		"player/footsteps/tank/walk/Tank_walk06.wav"
	}
}

"Tank.Gravel.RunLeft"
{
	"channel"       "CHAN_AUTO"

	"soundlevel"	"SNDLVL_120dB"
	"volume"		"1.0"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/tank/walk/Tank_walk01.wav"
		"wave"		"player/footsteps/tank/walk/Tank_walk02.wav"
		"wave"		"player/footsteps/tank/walk/Tank_walk03.wav"
	}
}

"Tank.Gravel.RunRight"
{
	"channel"       "CHAN_AUTO"

	"soundlevel"	"SNDLVL_120dB"
	"volume"		"1.0"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/tank/walk/Tank_walk04.wav"
		"wave"		"player/footsteps/tank/walk/Tank_walk05.wav"
		"wave"		"player/footsteps/tank/walk/Tank_walk06.wav"
	}
}

"Tank.ChainLink.RunLeft"
{
	"channel"       "CHAN_AUTO"

	"soundlevel"	"SNDLVL_120dB"
	"volume"		"1.0"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/tank/walk/Tank_walk01.wav"
		"wave"		"player/footsteps/tank/walk/Tank_walk02.wav"
		"wave"		"player/footsteps/tank/walk/Tank_walk03.wav"
	}
}

"Tank.ChainLink.RunRight"
{
	"channel"       "CHAN_AUTO"

	"soundlevel"	"SNDLVL_120dB"
	"volume"		"1.0"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/tank/walk/Tank_walk04.wav"
		"wave"		"player/footsteps/tank/walk/Tank_walk05.wav"
		"wave"		"player/footsteps/tank/walk/Tank_walk06.wav"
	}
}

"Tank.Flesh.RunLeft"
{
	"channel"       "CHAN_AUTO"

	"soundlevel"	"SNDLVL_120dB"
	"volume"		"1.0"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/tank/walk/Tank_walk01.wav"
		"wave"		"player/footsteps/tank/walk/Tank_walk02.wav"
		"wave"		"player/footsteps/tank/walk/Tank_walk03.wav"
	}
}

"Tank.Flesh.RunRight"
{
	"channel"       "CHAN_AUTO"

	"soundlevel"	"SNDLVL_120dB"
	"volume"		"1.0"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/tank/walk/Tank_walk04.wav"
		"wave"		"player/footsteps/tank/walk/Tank_walk05.wav"
		"wave"		"player/footsteps/tank/walk/Tank_walk06.wav"
	}
}

"Tank.Sand.RunLeft"
{
	"channel"       "CHAN_AUTO"

	"soundlevel"	"SNDLVL_120dB"
	"volume"		"1.0"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/tank/walk/Tank_walk01.wav"
		"wave"		"player/footsteps/tank/walk/Tank_walk02.wav"
		"wave"		"player/footsteps/tank/walk/Tank_walk03.wav"
	}
}

"Tank.Sand.RunRight"
{
	"channel"       "CHAN_AUTO"

	"soundlevel"	"SNDLVL_120dB"
	"volume"		"1.0"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/tank/walk/Tank_walk04.wav"
		"wave"		"player/footsteps/tank/walk/Tank_walk05.wav"
		"wave"		"player/footsteps/tank/walk/Tank_walk06.wav"
	}
}

"Tank.GlassBottle.RunLeft"
{
	"channel"       "CHAN_AUTO"

	"soundlevel"	"SNDLVL_120dB"
	"volume"		"1.0"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/tank/walk/Tank_walk01.wav"
		"wave"		"player/footsteps/tank/walk/Tank_walk02.wav"
		"wave"		"player/footsteps/tank/walk/Tank_walk03.wav"
	}
}

"Tank.GlassBottle.RunRight"
{
	"channel"       "CHAN_AUTO"

	"soundlevel"	"SNDLVL_120dB"
	"volume"		"1.0"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/tank/walk/Tank_walk04.wav"
		"wave"		"player/footsteps/tank/walk/Tank_walk05.wav"
		"wave"		"player/footsteps/tank/walk/Tank_walk06.wav"
	}
}

"Tank.ceiling_tile.RunLeft"
{
	"channel"       "CHAN_AUTO"

	"soundlevel"	"SNDLVL_120dB"
	"volume"		"1.0"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/tank/walk/Tank_walk01.wav"
		"wave"		"player/footsteps/tank/walk/Tank_walk02.wav"
		"wave"		"player/footsteps/tank/walk/Tank_walk03.wav"
	}
}

"Tank.ceiling_tile.RunRight"
{
	"channel"       "CHAN_AUTO"

	"soundlevel"	"SNDLVL_120dB"
	"volume"		"1.0"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/tank/walk/Tank_walk04.wav"
		"wave"		"player/footsteps/tank/walk/Tank_walk05.wav"
		"wave"		"player/footsteps/tank/walk/Tank_walk06.wav"
	}
}

"Tank.drywall.RunLeft"
{
	"channel"       "CHAN_AUTO"

	"soundlevel"	"SNDLVL_120dB"
	"volume"		"1.0"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/tank/walk/Tank_walk01.wav"
		"wave"		"player/footsteps/tank/walk/Tank_walk02.wav"
		"wave"		"player/footsteps/tank/walk/Tank_walk03.wav"
	}
}

"Tank.drywall.RunRight"
{
	"channel"       "CHAN_AUTO"

	"soundlevel"	"SNDLVL_120dB"
	"volume"		"1.0"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/tank/walk/Tank_walk04.wav"
		"wave"		"player/footsteps/tank/walk/Tank_walk05.wav"
		"wave"		"player/footsteps/tank/walk/Tank_walk06.wav"
	}
}

"Tank.Plaster.RunLeft"
{
	"channel"       "CHAN_AUTO"

	"soundlevel"	"SNDLVL_120dB"
	"volume"		"1.0"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/tank/walk/Tank_walk01.wav"
		"wave"		"player/footsteps/tank/walk/Tank_walk02.wav"
		"wave"		"player/footsteps/tank/walk/Tank_walk03.wav"
	}
}

"Tank.Plaster.RunRight"
{
	"channel"       "CHAN_AUTO"

	"soundlevel"	"SNDLVL_120dB"
	"volume"		"1.0"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/tank/walk/Tank_walk04.wav"
		"wave"		"player/footsteps/tank/walk/Tank_walk05.wav"
		"wave"		"player/footsteps/tank/walk/Tank_walk06.wav"
	}
}

"Tank.Cardboard.RunLeft"
{
	"channel"       "CHAN_AUTO"

	"soundlevel"	"SNDLVL_120dB"
	"pitch"			"95,105"
	"volume"			"1.0"
	"rndwave"
	{
		"wave"		"player/footsteps/tank/walk/Tank_walk01.wav"
		"wave"		"player/footsteps/tank/walk/Tank_walk02.wav"
		"wave"		"player/footsteps/tank/walk/Tank_walk03.wav"
	}
}

"Tank.Cardboard.RunRight"
{
	"channel"       "CHAN_AUTO"

	"soundlevel"	"SNDLVL_120dB"
	"pitch"			"95,105"
	"volume"			"1.0"
	"rndwave"
	{
		"wave"		"player/footsteps/tank/walk/Tank_walk04.wav"
		"wave"		"player/footsteps/tank/walk/Tank_walk05.wav"
		"wave"		"player/footsteps/tank/walk/Tank_walk06.wav"
	}
}

"Tank.Plastic_Barrel.RunLeft"
{
	"channel"       "CHAN_AUTO"

	"soundlevel"	"SNDLVL_120dB"
	"pitch"			"95,105"
	"volume"			"1.0"
	"rndwave"
	{
		"wave"		"player/footsteps/tank/walk/Tank_walk01.wav"
		"wave"		"player/footsteps/tank/walk/Tank_walk02.wav"
		"wave"		"player/footsteps/tank/walk/Tank_walk03.wav"
	}
}

"Tank.Plastic_Barrel.RunRight"
{
	"channel"       "CHAN_AUTO"

	"soundlevel"	"SNDLVL_120dB"
	"pitch"			"95,105"
	"volume"			"1.0"
	"rndwave"
	{
		"wave"		"player/footsteps/tank/walk/Tank_walk04.wav"
		"wave"		"player/footsteps/tank/walk/Tank_walk05.wav"
		"wave"		"player/footsteps/tank/walk/Tank_walk06.wav"
	}
}

"Tank.Plastic_Box.RunLeft"
{
	"channel"       "CHAN_AUTO"

	"soundlevel"	"SNDLVL_120dB"
	"pitch"			"95,105"
	"volume"			"1.0"
	"rndwave"
	{
		"wave"		"player/footsteps/tank/walk/Tank_walk01.wav"
		"wave"		"player/footsteps/tank/walk/Tank_walk02.wav"
		"wave"		"player/footsteps/tank/walk/Tank_walk03.wav"
	}
}

"Tank.Plastic_Box.RunRight"
{
	"channel"       "CHAN_AUTO"

	"soundlevel"	"SNDLVL_120dB"
	"pitch"			"95,105"
	"volume"			"1.0"
	"rndwave"
	{
		"wave"		"player/footsteps/tank/walk/Tank_walk04.wav"
		"wave"		"player/footsteps/tank/walk/Tank_walk05.wav"
		"wave"		"player/footsteps/tank/walk/Tank_walk06.wav"
	}
}

"Tank.Rubber.RunLeft"
{
	"channel"       "CHAN_AUTO"

	"soundlevel"	"SNDLVL_120dB"
	"pitch"			"98,102"
	"volume"			"1.0"
	"rndwave"
	{
		"wave"		"player/footsteps/tank/walk/Tank_walk01.wav"
		"wave"		"player/footsteps/tank/walk/Tank_walk02.wav"
		"wave"		"player/footsteps/tank/walk/Tank_walk03.wav"
	}
}

"Tank.Rubber.RunRight"
{
	"channel"       "CHAN_AUTO"

	"soundlevel"	"SNDLVL_120dB"
	"pitch"			"98,102"
	"volume"		"1.0"
	"rndwave"
	{
		"wave"		"player/footsteps/tank/walk/Tank_walk04.wav"
		"wave"		"player/footsteps/tank/walk/Tank_walk05.wav"
		"wave"		"player/footsteps/tank/walk/Tank_walk06.wav"
	}
}

"Tank.Grenade.RunLeft"
{
	"channel"       "CHAN_AUTO"

	"soundlevel"	"SNDLVL_120dB"
	"pitch"			"95,105"
	"volume"			"1.0"
	"rndwave"
	{
		"wave"		"player/footsteps/tank/walk/Tank_walk01.wav"
		"wave"		"player/footsteps/tank/walk/Tank_walk02.wav"
		"wave"		"player/footsteps/tank/walk/Tank_walk03.wav"
	}
}

"Tank.Grenade.RunRight"
{
	"channel"       "CHAN_AUTO"

	"soundlevel"	"SNDLVL_120dB"
	"pitch"			"95,105"
	"volume"			"1.0"
	"rndwave"
	{
		"wave"		"player/footsteps/tank/walk/Tank_walk04.wav"
		"wave"		"player/footsteps/tank/walk/Tank_walk05.wav"
		"wave"		"player/footsteps/tank/walk/Tank_walk06.wav"
	}
}

"Tank.Wood.RunLeft"
{
	"channel"       "CHAN_AUTO"

	"soundlevel"	"SNDLVL_120dB"
	"volume"		"1.0"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/tank/walk/Tank_walk01.wav"
		"wave"		"player/footsteps/tank/walk/Tank_walk02.wav"
		"wave"		"player/footsteps/tank/walk/Tank_walk03.wav"
	}
}

"Tank.Wood.RunRight"
{
	"channel"       "CHAN_AUTO"

	"soundlevel"	"SNDLVL_120dB"
	"volume"		"1.0"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/tank/walk/Tank_walk04.wav"
		"wave"		"player/footsteps/tank/walk/Tank_walk05.wav"
		"wave"		"player/footsteps/tank/walk/Tank_walk06.wav"
	}
}

"Tank.Wood_Box.RunLeft"
{
	"channel"       "CHAN_AUTO"

	"soundlevel"	"SNDLVL_120dB"
	"volume"		"1.0"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/tank/walk/Tank_walk01.wav"
		"wave"		"player/footsteps/tank/walk/Tank_walk02.wav"
		"wave"		"player/footsteps/tank/walk/Tank_walk03.wav"
	}
}

"Tank.Wood_Box.RunRight"
{
	"channel"       "CHAN_AUTO"

	"soundlevel"	"SNDLVL_120dB"
	"volume"		"1.0"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/tank/walk/Tank_walk04.wav"
		"wave"		"player/footsteps/tank/walk/Tank_walk05.wav"
		"wave"		"player/footsteps/tank/walk/Tank_walk06.wav"
	}
}

"Tank.Wood_Crate.RunLeft"
{
	"channel"       "CHAN_AUTO"

	"soundlevel"	"SNDLVL_120dB"
	"volume"		"1.0"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/tank/walk/Tank_walk01.wav"
		"wave"		"player/footsteps/tank/walk/Tank_walk02.wav"
		"wave"		"player/footsteps/tank/walk/Tank_walk03.wav"
	}
}

"Tank.Wood_Crate.RunRight"
{
	"channel"       "CHAN_AUTO"

	"soundlevel"	"SNDLVL_120dB"
	"volume"		"1.0"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/tank/walk/Tank_walk04.wav"
		"wave"		"player/footsteps/tank/walk/Tank_walk05.wav"
		"wave"		"player/footsteps/tank/walk/Tank_walk06.wav"
	}
}

"Tank.Wood_Panel.RunLeft"
{
	"channel"       "CHAN_AUTO"

	"soundlevel"	"SNDLVL_120dB"
	"volume"		"1.0"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/tank/walk/Tank_walk01.wav"
		"wave"		"player/footsteps/tank/walk/Tank_walk02.wav"
		"wave"		"player/footsteps/tank/walk/Tank_walk03.wav"
	}
}

"Tank.Wood_Panel.RunRight"
{
	"channel"       "CHAN_AUTO"

	"soundlevel"	"SNDLVL_120dB"
	"volume"		"1.0"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/tank/walk/Tank_walk04.wav"
		"wave"		"player/footsteps/tank/walk/Tank_walk05.wav"
		"wave"		"player/footsteps/tank/walk/Tank_walk06.wav"
	}
}

"Tank.Metal_Box.RunLeft"
{
	"channel"       "CHAN_AUTO"

	"soundlevel"	"SNDLVL_120dB"
	"volume"		"1.0"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/tank/walk/Tank_walk01.wav"
		"wave"		"player/footsteps/tank/walk/Tank_walk02.wav"
		"wave"		"player/footsteps/tank/walk/Tank_walk03.wav"
	}
}

"Tank.Metal_Box.RunRight"
{
	"channel"       "CHAN_AUTO"

	"soundlevel"	"SNDLVL_120dB"
	"volume"		"1.0"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/tank/walk/Tank_walk04.wav"
		"wave"		"player/footsteps/tank/walk/Tank_walk05.wav"
		"wave"		"player/footsteps/tank/walk/Tank_walk06.wav"
	}
}

"Tank.weapon.RunLeft"
{
	"channel"       "CHAN_AUTO"

	"soundlevel"	"SNDLVL_120dB"
	"volume"		"1.0"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/tank/walk/Tank_walk01.wav"
		"wave"		"player/footsteps/tank/walk/Tank_walk02.wav"
		"wave"		"player/footsteps/tank/walk/Tank_walk03.wav"
	}
}

"Tank.weapon.RunRight"
{
	"channel"       "CHAN_AUTO"

	"soundlevel"	"SNDLVL_120dB"
	"volume"		"1.0"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/tank/walk/Tank_walk04.wav"
		"wave"		"player/footsteps/tank/walk/Tank_walk05.wav"
		"wave"		"player/footsteps/tank/walk/Tank_walk06.wav"
	}

}

//---------------------------------------------------------------------------------------------------------------------------------
//TankWalk
//---------------------------------------------------------------------------------------------------------------------------------

"Tank.Default.WalkLeft"
{
	"channel"       "CHAN_AUTO"

	"soundlevel"	"SNDLVL_120dB"
	"volume"			"1.0"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/tank/walk/Tank_walk01.wav"
		"wave"		"player/footsteps/tank/walk/Tank_walk02.wav"
		"wave"		"player/footsteps/tank/walk/Tank_walk03.wav"
	}
}

"Tank.Default.WalkRight"
{
	"channel"       "CHAN_AUTO"

	"soundlevel"	"SNDLVL_120dB"
	"pitch"			"95,105"
	"volume"			"1.0"
	"rndwave"
	{
		"wave"		"player/footsteps/tank/walk/Tank_walk04.wav"
		"wave"		"player/footsteps/tank/walk/Tank_walk05.wav"
		"wave"		"player/footsteps/tank/walk/Tank_walk06.wav"
	}
}

"Tank.SolidMetal.WalkLeft"
{
	"channel"       "CHAN_AUTO"

	"soundlevel"	"SNDLVL_120dB"
	"pitch"			"95,105"
	"volume"		"1.0"
	"rndwave"
	{
		"wave"		"player/footsteps/tank/walk/Tank_walk01.wav"
		"wave"		"player/footsteps/tank/walk/Tank_walk02.wav"
		"wave"		"player/footsteps/tank/walk/Tank_walk03.wav"
	}
}

"Tank.SolidMetal.WalkRight"
{
	"channel"       "CHAN_AUTO"

	"soundlevel"	"SNDLVL_120dB"
	"pitch"			"95,105"
	"volume"		"1.0"
	"rndwave"
	{
		"wave"		"player/footsteps/tank/walk/Tank_walk04.wav"
		"wave"		"player/footsteps/tank/walk/Tank_walk05.wav"
		"wave"		"player/footsteps/tank/walk/Tank_walk06.wav"
	}
}

"Tank.Metalgrate.WalkLeft"
{
	"channel"       "CHAN_AUTO"


	"soundlevel"	"SNDLVL_120dB"
	"pitch"			"95,105"
	"volume"		"1.0"
	"rndwave"
	{
		"wave"		"player/footsteps/tank/walk/Tank_walk01.wav"
		"wave"		"player/footsteps/tank/walk/Tank_walk02.wav"
		"wave"		"player/footsteps/tank/walk/Tank_walk03.wav"
	}
}

"Tank.Metalgrate.WalkRight"
{
	"channel"       "CHAN_AUTO"


	"soundlevel"	"SNDLVL_120dB"
	"pitch"			"95,105"
	"volume"		"1.0"
	"rndwave"
	{
		"wave"		"player/footsteps/tank/walk/Tank_walk04.wav"
		"wave"		"player/footsteps/tank/walk/Tank_walk05.wav"
		"wave"		"player/footsteps/tank/walk/Tank_walk06.wav"
	}
}

"Tank.Snow.WalkLeft"
{
	"channel"       "CHAN_AUTO"


	"soundlevel"	"SNDLVL_120dB"
	"pitch"			"95,105"
	"volume"		"1.0"
	"rndwave"
	{
		"wave"		"player/footsteps/tank/walk/Tank_walk01.wav"
		"wave"		"player/footsteps/tank/walk/Tank_walk02.wav"
		"wave"		"player/footsteps/tank/walk/Tank_walk03.wav"
	}
}

"Tank.Snow.WalkRight"
{
	"channel"       "CHAN_AUTO"


	"soundlevel"	"SNDLVL_120dB"
	"pitch"			"95,105"
	"volume"		"1.0"
	"rndwave"
	{
		"wave"		"player/footsteps/tank/walk/Tank_walk04.wav"
		"wave"		"player/footsteps/tank/walk/Tank_walk05.wav"
		"wave"		"player/footsteps/tank/walk/Tank_walk06.wav"
	}
}

"Tank.Dirt.WalkLeft"
{
	"channel"       "CHAN_AUTO"

	"soundlevel"	"SNDLVL_120dB"
	"pitch"			"95,105"
	"volume"		"1.0"
	"rndwave"
	{
		"wave"		"player/footsteps/tank/walk/Tank_walk01.wav"
		"wave"		"player/footsteps/tank/walk/Tank_walk02.wav"
		"wave"		"player/footsteps/tank/walk/Tank_walk03.wav"
	}
}

"Tank.Dirt.WalkRight"
{
	"channel"       "CHAN_AUTO"

	"soundlevel"	"SNDLVL_120dB"
	"pitch"			"95,105"
	"volume"		"1.0"
	"rndwave"
	{
		"wave"		"player/footsteps/tank/walk/Tank_walk04.wav"
		"wave"		"player/footsteps/tank/walk/Tank_walk05.wav"
		"wave"		"player/footsteps/tank/walk/Tank_walk06.wav"
	}
}

"Tank.Mud.WalkLeft"
{
	"channel"       "CHAN_AUTO"

	"soundlevel"	"SNDLVL_120dB"
	"volume"		"1.0"
	"pitch"			"90,105"
	"rndwave"
	{
		"wave"		"player/footsteps/tank/walk/Tank_walk01.wav"
		"wave"		"player/footsteps/tank/walk/Tank_walk02.wav"
		"wave"		"player/footsteps/tank/walk/Tank_walk03.wav"
	}
}

"Tank.Mud.WalkRight"
{
	"channel"       "CHAN_AUTO"

	"soundlevel"	"SNDLVL_120dB"
	"volume"		"1.0"
	"pitch"			"90,105"
	"rndwave"
	{
		"wave"		"player/footsteps/tank/walk/Tank_walk04.wav"
		"wave"		"player/footsteps/tank/walk/Tank_walk05.wav"
		"wave"		"player/footsteps/tank/walk/Tank_walk06.wav"
	}
}

"Tank.SlipperySlime.WalkLeft"
{
	"channel"       "CHAN_AUTO"

	"soundlevel"	"SNDLVL_120dB"
	"volume"		"1.0"
	"pitch"			"90,105"
	"rndwave"
	{
		"wave"		"player/footsteps/tank/walk/Tank_walk01.wav"
		"wave"		"player/footsteps/tank/walk/Tank_walk02.wav"
		"wave"		"player/footsteps/tank/walk/Tank_walk03.wav"
	}
}

"Tank.SlipperySlime.WalkRight"
{
	"channel"       "CHAN_AUTO"

	"soundlevel"	"SNDLVL_120dB"
	"volume"		"1.0"
	"pitch"			"90,105"
	"rndwave"
	{
		"wave"		"player/footsteps/tank/walk/Tank_walk04.wav"
		"wave"		"player/footsteps/tank/walk/Tank_walk05.wav"
		"wave"		"player/footsteps/tank/walk/Tank_walk06.wav"
	}
}

"Tank.Grass.WalkLeft"
{
	"channel"       "CHAN_AUTO"

	"soundlevel"	"SNDLVL_120dB"
	"volume"		"1.0"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/tank/walk/Tank_walk01.wav"
		"wave"		"player/footsteps/tank/walk/Tank_walk02.wav"
		"wave"		"player/footsteps/tank/walk/Tank_walk03.wav"
	}
}

"Tank.Grass.WalkRight"
{
	"channel"       "CHAN_AUTO"

	"soundlevel"	"SNDLVL_120dB"
	"volume"		"1.0"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/tank/walk/Tank_walk04.wav"
		"wave"		"player/footsteps/tank/walk/Tank_walk05.wav"
		"wave"		"player/footsteps/tank/walk/Tank_walk06.wav"
	}
}

"Tank.MetalVent.WalkLeft"
{
	"channel"       "CHAN_AUTO"

	"soundlevel"	"SNDLVL_120dB"
	"volume"		"1.0"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/tank/walk/Tank_walk01.wav"
		"wave"		"player/footsteps/tank/walk/Tank_walk02.wav"
		"wave"		"player/footsteps/tank/walk/Tank_walk03.wav"
	}
}

"Tank.MetalVent.WalkRight"
{
	"channel"       "CHAN_AUTO"

	"soundlevel"	"SNDLVL_120dB"
	"volume"		"1.0"
	"rndwave"
	{
		"wave"		"player/footsteps/tank/walk/Tank_walk04.wav"
		"wave"		"player/footsteps/tank/walk/Tank_walk05.wav"
		"wave"		"player/footsteps/tank/walk/Tank_walk06.wav"
	}
}

"Tank.Tile.WalkLeft"
{
	"channel"       "CHAN_AUTO"

	"soundlevel"	"SNDLVL_120dB"
	"volume"		"1.0"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/tank/walk/Tank_walk01.wav"
		"wave"		"player/footsteps/tank/walk/Tank_walk02.wav"
		"wave"		"player/footsteps/tank/walk/Tank_walk03.wav"
	}
}

"Tank.Tile.WalkRight"
{
	"channel"       "CHAN_AUTO"

	"soundlevel"	"SNDLVL_120dB"
	"volume"		"1.0"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/tank/walk/Tank_walk04.wav"
		"wave"		"player/footsteps/tank/walk/Tank_walk05.wav"
		"wave"		"player/footsteps/tank/walk/Tank_walk06.wav"
	}
}

"Tank.Water.WalkLeft"
{
	"channel"       "CHAN_AUTO"

	"soundlevel"	"SNDLVL_120dB"
	"volume"		"1.0"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/tank/walk/tank_walk_water_01.wav"
		"wave"		"player/footsteps/tank/walk/tank_walk_water_02.wav"
		"wave"		"player/footsteps/tank/walk/tank_walk_water_03.wav"
	}
}

"Tank.Water.WalkRight"
{
	"channel"       "CHAN_AUTO"

	"soundlevel"	"SNDLVL_120dB"
	"volume"		"1.0"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/tank/walk/tank_walk_water_04.wav"
		"wave"		"player/footsteps/tank/walk/tank_walk_water_05.wav"
		"wave"		"player/footsteps/tank/walk/tank_walk_water_06.wav"
	}
}

"Tank.Wade.WalkLeft"
{
	"channel"       "CHAN_AUTO"

	"soundlevel"	"SNDLVL_120dB"
	"volume"		"1.0"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/tank/walk/tank_walk_water_01.wav"
		"wave"		"player/footsteps/tank/walk/tank_walk_water_02.wav"
		"wave"		"player/footsteps/tank/walk/tank_walk_water_03.wav"
	}
}

"Tank.Wade.WalkRight"
{
	"channel"       "CHAN_AUTO"

	"soundlevel"	"SNDLVL_120dB"
	"volume"		"1.0"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/tank/walk/tank_walk_water_04.wav"
		"wave"		"player/footsteps/tank/walk/tank_walk_water_05.wav"
		"wave"		"player/footsteps/tank/walk/tank_walk_water_06.wav"
	}
}


"Tank.Ladder.WalkLeft"
{
	"channel"       "CHAN_AUTO"

	"soundlevel"	"SNDLVL_120dB"
	"volume"		"1.0"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/tank/walk/Tank_walk01.wav"
		"wave"		"player/footsteps/tank/walk/Tank_walk02.wav"
		"wave"		"player/footsteps/tank/walk/Tank_walk03.wav"
	}
}

"Tank.Ladder.WalkRight"
{
	"channel"       "CHAN_AUTO"

	"soundlevel"	"SNDLVL_120dB"
	"volume"		"1.0"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/tank/walk/Tank_walk04.wav"
		"wave"		"player/footsteps/tank/walk/Tank_walk05.wav"
		"wave"		"player/footsteps/tank/walk/Tank_walk06.wav"
	}
}

"Tank.Glass.WalkLeft"
{
	"channel"       "CHAN_AUTO"

	"soundlevel"	"SNDLVL_120dB"
	"volume"		"1.0"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/tank/walk/Tank_walk01.wav"
		"wave"		"player/footsteps/tank/walk/Tank_walk02.wav"
		"wave"		"player/footsteps/tank/walk/Tank_walk03.wav"
	}
}

"Tank.Glass.WalkRight"
{
	"channel"       "CHAN_AUTO"

	"soundlevel"	"SNDLVL_120dB"
	"volume"		"1.0"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/tank/walk/Tank_walk04.wav"
		"wave"		"player/footsteps/tank/walk/Tank_walk05.wav"
		"wave"		"player/footsteps/tank/walk/Tank_walk06.wav"
	}
}

"Tank.Concrete.WalkLeft"
{
	"channel"       "CHAN_AUTO"

	"soundlevel"	"SNDLVL_120dB"
	"volume"		"1.0"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/tank/walk/Tank_walk01.wav"
		"wave"		"player/footsteps/tank/walk/Tank_walk02.wav"
		"wave"		"player/footsteps/tank/walk/Tank_walk03.wav"
	}
}

"Tank.Concrete.WalkRight"
{
	"channel"       "CHAN_AUTO"

	"soundlevel"	"SNDLVL_120dB"
	"volume"		"1.0"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/tank/walk/Tank_walk04.wav"
		"wave"		"player/footsteps/tank/walk/Tank_walk05.wav"
		"wave"		"player/footsteps/tank/walk/Tank_walk06.wav"
	}
}

"Tank.Gravel.WalkLeft"
{
	"channel"       "CHAN_AUTO"

	"soundlevel"	"SNDLVL_120dB"
	"volume"		"1.0"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/tank/walk/Tank_walk01.wav"
		"wave"		"player/footsteps/tank/walk/Tank_walk02.wav"
		"wave"		"player/footsteps/tank/walk/Tank_walk03.wav"
	}
}

"Tank.Gravel.WalkRight"
{
	"channel"       "CHAN_AUTO"

	"soundlevel"	"SNDLVL_120dB"
	"volume"		"1.0"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/tank/walk/Tank_walk04.wav"
		"wave"		"player/footsteps/tank/walk/Tank_walk05.wav"
		"wave"		"player/footsteps/tank/walk/Tank_walk06.wav"
	}
}

"Tank.ChainLink.WalkLeft"
{
	"channel"       "CHAN_AUTO"

	"soundlevel"	"SNDLVL_120dB"
	"volume"		"1.0"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/tank/walk/Tank_walk01.wav"
		"wave"		"player/footsteps/tank/walk/Tank_walk02.wav"
		"wave"		"player/footsteps/tank/walk/Tank_walk03.wav"
	}
}

"Tank.ChainLink.WalkRight"
{
	"channel"       "CHAN_AUTO"

	"soundlevel"	"SNDLVL_120dB"
	"volume"		"1.0"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/tank/walk/Tank_walk04.wav"
		"wave"		"player/footsteps/tank/walk/Tank_walk05.wav"
		"wave"		"player/footsteps/tank/walk/Tank_walk06.wav"
	}
}

"Tank.Flesh.WalkLeft"
{
	"channel"       "CHAN_AUTO"

	"soundlevel"	"SNDLVL_120dB"
	"volume"		"1.0"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/tank/walk/Tank_walk01.wav"
		"wave"		"player/footsteps/tank/walk/Tank_walk02.wav"
		"wave"		"player/footsteps/tank/walk/Tank_walk03.wav"
	}
}

"Tank.Flesh.WalkRight"
{
	"channel"       "CHAN_AUTO"

	"soundlevel"	"SNDLVL_120dB"
	"volume"		"1.0"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/tank/walk/Tank_walk04.wav"
		"wave"		"player/footsteps/tank/walk/Tank_walk05.wav"
		"wave"		"player/footsteps/tank/walk/Tank_walk06.wav"
	}
}

"Tank.Sand.WalkLeft"
{
	"channel"       "CHAN_AUTO"

	"soundlevel"	"SNDLVL_120dB"
	"volume"		"1.0"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/tank/walk/Tank_walk01.wav"
		"wave"		"player/footsteps/tank/walk/Tank_walk02.wav"
		"wave"		"player/footsteps/tank/walk/Tank_walk03.wav"
	}
}

"Tank.Sand.WalkRight"
{
	"channel"       "CHAN_AUTO"

	"soundlevel"	"SNDLVL_120dB"
	"volume"		"1.0"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/tank/walk/Tank_walk04.wav"
		"wave"		"player/footsteps/tank/walk/Tank_walk05.wav"
		"wave"		"player/footsteps/tank/walk/Tank_walk06.wav"
	}
}

"Tank.GlassBottle.WalkLeft"
{
	"channel"       "CHAN_AUTO"

	"soundlevel"	"SNDLVL_120dB"
	"volume"		"1.0"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/tank/walk/Tank_walk01.wav"
		"wave"		"player/footsteps/tank/walk/Tank_walk02.wav"
		"wave"		"player/footsteps/tank/walk/Tank_walk03.wav"
	}
}

"Tank.GlassBottle.WalkRight"
{
	"channel"       "CHAN_AUTO"

	"soundlevel"	"SNDLVL_120dB"
	"volume"		"1.0"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/tank/walk/Tank_walk04.wav"
		"wave"		"player/footsteps/tank/walk/Tank_walk05.wav"
		"wave"		"player/footsteps/tank/walk/Tank_walk06.wav"
	}
}

"Tank.ceiling_tile.WalkLeft"
{
	"channel"       "CHAN_AUTO"

	"soundlevel"	"SNDLVL_120dB"
	"volume"		"1.0"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/tank/walk/Tank_walk01.wav"
		"wave"		"player/footsteps/tank/walk/Tank_walk02.wav"
		"wave"		"player/footsteps/tank/walk/Tank_walk03.wav"
	}
}

"Tank.ceiling_tile.WalkRight"
{
	"channel"       "CHAN_AUTO"

	"soundlevel"	"SNDLVL_120dB"
	"volume"		"1.0"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/tank/walk/Tank_walk04.wav"
		"wave"		"player/footsteps/tank/walk/Tank_walk05.wav"
		"wave"		"player/footsteps/tank/walk/Tank_walk06.wav"
	}
}

"Tank.drywall.WalkLeft"
{
	"channel"       "CHAN_AUTO"

	"soundlevel"	"SNDLVL_120dB"
	"volume"		"1.0"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/tank/walk/Tank_walk01.wav"
		"wave"		"player/footsteps/tank/walk/Tank_walk02.wav"
		"wave"		"player/footsteps/tank/walk/Tank_walk03.wav"
	}
}

"Tank.drywall.WalkRight"
{
	"channel"       "CHAN_AUTO"

	"soundlevel"	"SNDLVL_120dB"
	"volume"		"1.0"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/tank/walk/Tank_walk04.wav"
		"wave"		"player/footsteps/tank/walk/Tank_walk05.wav"
		"wave"		"player/footsteps/tank/walk/Tank_walk06.wav"
	}
}

"Tank.Plaster.WalkLeft"
{
	"channel"       "CHAN_AUTO"

	"soundlevel"	"SNDLVL_120dB"
	"volume"		"1.0"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/tank/walk/Tank_walk01.wav"
		"wave"		"player/footsteps/tank/walk/Tank_walk02.wav"
		"wave"		"player/footsteps/tank/walk/Tank_walk03.wav"
	}
}

"Tank.Plaster.WalkRight"
{
	"channel"       "CHAN_AUTO"

	"soundlevel"	"SNDLVL_120dB"
	"volume"		"1.0"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/tank/walk/Tank_walk03.wav"
		"wave"		"player/footsteps/tank/walk/Tank_walk04.wav"
		"wave"		"player/footsteps/tank/walk/Tank_walk05.wav"


	}
}

"Tank.Cardboard.WalkLeft"
{
	"channel"       "CHAN_AUTO"

	"soundlevel"	"SNDLVL_120dB"
	"pitch"			"95,105"
	"volume"			"1.0"
	"rndwave"
	{
		"wave"		"player/footsteps/tank/walk/Tank_walk01.wav"
		"wave"		"player/footsteps/tank/walk/Tank_walk02.wav"
		"wave"		"player/footsteps/tank/walk/Tank_walk03.wav"
	}
}

"Tank.Cardboard.WalkRight"
{
	"channel"       "CHAN_AUTO"

	"soundlevel"	"SNDLVL_120dB"
	"pitch"			"95,105"
	"volume"			"1.0"
	"rndwave"
	{
		"wave"		"player/footsteps/tank/walk/Tank_walk04.wav"
		"wave"		"player/footsteps/tank/walk/Tank_walk05.wav"
		"wave"		"player/footsteps/tank/walk/Tank_walk06.wav"
	}
}

"Tank.Plastic_Barrel.WalkLeft"
{
	"channel"       "CHAN_AUTO"

	"soundlevel"	"SNDLVL_120dB"
	"pitch"			"95,105"
	"volume"			"1.0"
	"rndwave"
	{
		"wave"		"player/footsteps/tank/walk/Tank_walk01.wav"
		"wave"		"player/footsteps/tank/walk/Tank_walk02.wav"
		"wave"		"player/footsteps/tank/walk/Tank_walk03.wav"
	}
}

"Tank.Plastic_Barrel.WalkRight"
{
	"channel"       "CHAN_AUTO"

	"soundlevel"	"SNDLVL_120dB"
	"pitch"			"95,105"
	"volume"			"1.0"
	"rndwave"
	{
		"wave"		"player/footsteps/tank/walk/Tank_walk04.wav"
		"wave"		"player/footsteps/tank/walk/Tank_walk05.wav"
		"wave"		"player/footsteps/tank/walk/Tank_walk06.wav"
	}
}

"Tank.Plastic_Box.WalkLeft"
{
	"channel"       "CHAN_AUTO"

	"soundlevel"	"SNDLVL_120dB"
	"pitch"			"95,105"
	"volume"			"1.0"
	"rndwave"
	{
		"wave"		"player/footsteps/tank/walk/Tank_walk01.wav"
		"wave"		"player/footsteps/tank/walk/Tank_walk02.wav"
		"wave"		"player/footsteps/tank/walk/Tank_walk03.wav"
	}
}

"Tank.Plastic_Box.WalkRight"
{
	"channel"       "CHAN_AUTO"

	"soundlevel"	"SNDLVL_120dB"
	"pitch"			"95,105"
	"volume"			"1.0"
	"rndwave"
	{
		"wave"		"player/footsteps/tank/walk/Tank_walk04.wav"
		"wave"		"player/footsteps/tank/walk/Tank_walk05.wav"
		"wave"		"player/footsteps/tank/walk/Tank_walk06.wav"
	}
}

"Tank.Rubber.WalkLeft"
{
	"channel"       "CHAN_AUTO"

	"soundlevel"	"SNDLVL_120dB"
	"pitch"			"98,102"
	"volume"			"1.0"
	"rndwave"
	{
		"wave"		"player/footsteps/tank/walk/Tank_walk01.wav"
		"wave"		"player/footsteps/tank/walk/Tank_walk02.wav"
		"wave"		"player/footsteps/tank/walk/Tank_walk03.wav"
	}
}

"Tank.Rubber.WalkRight"
{
	"channel"       "CHAN_AUTO"

	"soundlevel"	"SNDLVL_120dB"
	"pitch"			"98,102"
	"volume"		"1.0"
	"rndwave"
	{
		"wave"		"player/footsteps/tank/walk/Tank_walk04.wav"
		"wave"		"player/footsteps/tank/walk/Tank_walk05.wav"
		"wave"		"player/footsteps/tank/walk/Tank_walk06.wav"
	}
}

"Tank.Grenade.WalkLeft"
{
	"channel"       "CHAN_AUTO"

	"soundlevel"	"SNDLVL_120dB"
	"pitch"			"95,105"
	"volume"			"1.0"
	"rndwave"
	{
		"wave"		"player/footsteps/tank/walk/Tank_walk01.wav"
		"wave"		"player/footsteps/tank/walk/Tank_walk02.wav"
		"wave"		"player/footsteps/tank/walk/Tank_walk03.wav"
	}
}

"Tank.Grenade.WalkRight"
{
	"channel"       "CHAN_AUTO"

	"soundlevel"	"SNDLVL_120dB"
	"pitch"			"95,105"
	"volume"			"1.0"
	"rndwave"
	{
		"wave"		"player/footsteps/tank/walk/Tank_walk04.wav"
		"wave"		"player/footsteps/tank/walk/Tank_walk05.wav"
		"wave"		"player/footsteps/tank/walk/Tank_walk06.wav"
	}
}

"Tank.Wood.WalkLeft"
{
	"channel"       "CHAN_AUTO"

	"soundlevel"	"SNDLVL_120dB"
	"volume"		"1.0"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/tank/walk/Tank_walk01.wav"
		"wave"		"player/footsteps/tank/walk/Tank_walk02.wav"
		"wave"		"player/footsteps/tank/walk/Tank_walk03.wav"
	}
}

"Tank.Wood.WalkRight"
{
	"channel"       "CHAN_AUTO"

	"soundlevel"	"SNDLVL_120dB"
	"volume"		"1.0"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/tank/walk/Tank_walk04.wav"
		"wave"		"player/footsteps/tank/walk/Tank_walk05.wav"
		"wave"		"player/footsteps/tank/walk/Tank_walk06.wav"
	}
}

"Tank.Wood_Box.WalkLeft"
{
	"channel"       "CHAN_AUTO"

	"soundlevel"	"SNDLVL_120dB"
	"volume"		"1.0"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/tank/walk/Tank_walk01.wav"
		"wave"		"player/footsteps/tank/walk/Tank_walk02.wav"
		"wave"		"player/footsteps/tank/walk/Tank_walk03.wav"
	}
}

"Tank.Wood_Box.WalkRight"
{
	"channel"       "CHAN_AUTO"

	"soundlevel"	"SNDLVL_120dB"
	"volume"		"1.0"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/tank/walk/Tank_walk04.wav"
		"wave"		"player/footsteps/tank/walk/Tank_walk05.wav"
		"wave"		"player/footsteps/tank/walk/Tank_walk06.wav"
	}
}

"Tank.Wood_Crate.WalkLeft"
{
	"channel"       "CHAN_AUTO"

	"soundlevel"	"SNDLVL_120dB"
	"volume"		"1.0"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/tank/walk/Tank_walk01.wav"
		"wave"		"player/footsteps/tank/walk/Tank_walk02.wav"
		"wave"		"player/footsteps/tank/walk/Tank_walk03.wav"
	}
}

"Tank.Wood_Crate.WalkRight"
{
	"channel"       "CHAN_AUTO"

	"soundlevel"	"SNDLVL_120dB"
	"volume"		"1.0"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/tank/walk/Tank_walk04.wav"
		"wave"		"player/footsteps/tank/walk/Tank_walk05.wav"
		"wave"		"player/footsteps/tank/walk/Tank_walk06.wav"
	}
}

"Tank.Wood_Panel.WalkLeft"
{
	"channel"       "CHAN_AUTO"

	"soundlevel"	"SNDLVL_120dB"
	"volume"		"1.0"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/tank/walk/Tank_walk01.wav"
		"wave"		"player/footsteps/tank/walk/Tank_walk02.wav"
		"wave"		"player/footsteps/tank/walk/Tank_walk03.wav"
	}
}

"Tank.Wood_Panel.WalkRight"
{
	"channel"       "CHAN_AUTO"

	"soundlevel"	"SNDLVL_120dB"
	"volume"		"1.0"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/tank/walk/Tank_walk04.wav"
		"wave"		"player/footsteps/tank/walk/Tank_walk05.wav"
		"wave"		"player/footsteps/tank/walk/Tank_walk06.wav"
	}
}

"Tank.Metal_Box.WalkLeft"
{
	"channel"       "CHAN_AUTO"

	"soundlevel"	"SNDLVL_120dB"
	"volume"		"1.0"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/tank/walk/Tank_walk01.wav"
		"wave"		"player/footsteps/tank/walk/Tank_walk02.wav"
		"wave"		"player/footsteps/tank/walk/Tank_walk03.wav"
	}
}

"Tank.Metal_Box.WalkRight"
{
	"channel"       "CHAN_AUTO"

	"soundlevel"	"SNDLVL_120dB"
	"volume"		"1.0"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/tank/walk/Tank_walk04.wav"
		"wave"		"player/footsteps/tank/walk/Tank_walk05.wav"
		"wave"		"player/footsteps/tank/walk/Tank_walk06.wav"
	}
}

"Tank.weapon.WalkLeft"
{
	"channel"       "CHAN_AUTO"

	"soundlevel"	"SNDLVL_120dB"
	"volume"		"1.0"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/tank/walk/Tank_walk01.wav"
		"wave"		"player/footsteps/tank/walk/Tank_walk02.wav"
		"wave"		"player/footsteps/tank/walk/Tank_walk03.wav"
	}
}

"Tank.weapon.WalkRight"
{
	"channel"       "CHAN_AUTO"

	"soundlevel"	"SNDLVL_120dB"
	"volume"		"1.0"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/tank/walk/Tank_walk04.wav"
		"wave"		"player/footsteps/tank/walk/Tank_walk05.wav"
		"wave"		"player/footsteps/tank/walk/Tank_walk06.wav"
	}

}

//----------------------------------------------------------------------------------------------------------------------------------------//
//Clown
//----------------------------------------------------------------------------------------------------------------------------------------//

"Clown.Default.RunLeft"
{
	"channel"       "CHAN_AUTO"

	"soundlevel"	"SNDLVL_120dB"
	"volume"		"1.0"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/clown/concrete5.wav"
		"wave"		"player/footsteps/clown/concrete6.wav"
		"wave"		"player/footsteps/clown/concrete7.wav"
		"wave"		"player/footsteps/clown/concrete8.wav"
	}
}

"Clown.Default.RunRight"
{
	"channel"       "CHAN_AUTO"

	"soundlevel"	"SNDLVL_120dB"
	"volume"		"1.0"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		")player/footsteps/clown/concrete1.wav"
		"wave"		")player/footsteps/clown/concrete2.wav"
		"wave"		")player/footsteps/clown/concrete3.wav"
		"wave"		")player/footsteps/clown/concrete4.wav"
	}

}

//----------------------------------------------------------------------------------------------------------------------------------------//
//Jockey Run
//----------------------------------------------------------------------------------------------------------------------------------------//
"Jockey.Default.RunLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"			".96"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/boomer/run/concrete1.wav"
		"wave"		"player/footsteps/boomer/run/concrete3.wav"
	}
}

"Jockey.Default.RunRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"pitch"			"95,105"
	"volume"			".96"
	"rndwave"
	{
		"wave"		"player/footsteps/boomer/run/concrete2.wav"
		"wave"		"player/footsteps/boomer/run/concrete4.wav"
	}
}

"Jockey.SolidMetal.RunLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"pitch"			"95,105"
	"volume"		".96"
	"rndwave"
	{
		"wave"		"player/footsteps/boomer/run/metal1.wav"
		"wave"		"player/footsteps/boomer/run/metal3.wav"
	}
}

"Jockey.SolidMetal.RunRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"pitch"			"95,105"
	"volume"		".96"
	"rndwave"
	{
		"wave"		"player/footsteps/boomer/run/metal2.wav"
		"wave"		"player/footsteps/boomer/run/metal4.wav"
	}
}

"Jockey.Metalgrate.RunLeft"
{
	"channel"       "CHAN_BODY"


	"soundlevel"	"SNDLVL_NORM"
	"pitch"			"95,105"
	"volume"		".96"
	"rndwave"
	{
		"wave"		"player/footsteps/boomer/run/metalgrate1.wav"
		"wave"		"player/footsteps/boomer/run/metalgrate2.wav"

		
	}

}

"Jockey.Metalgrate.RunRight"
{
	"channel"       "CHAN_BODY"


	"soundlevel"	"SNDLVL_NORM"
	"pitch"			"95,105"
	"volume"		".96"
	"rndwave"
	{
		"wave"		"player/footsteps/boomer/run/metalgrate3.wav"
		"wave"		"player/footsteps/boomer/run/metalgrate4.wav"
		
	}

}

"Jockey.Snow.RunLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".96"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/boomer/run/sand1.wav"
		"wave"		"player/footsteps/boomer/run/sand3.wav"
	}
}

"Jockey.Snow.RunRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".96"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/boomer/run/sand2.wav"
		"wave"		"player/footsteps/boomer/run/sand4.wav"
	}
}

"Jockey.Dirt.RunLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"pitch"			"95,105"
	"volume"		".96"
	"rndwave"
	{
		"wave"		"player/footsteps/boomer/run/dirt1.wav"
		"wave"		"player/footsteps/boomer/run/dirt3.wav"
	}
}

"Jockey.Dirt.RunRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"pitch"			"95,105"
	"volume"		".96"
	"rndwave"
	{
		"wave"		"player/footsteps/boomer/run/dirt2.wav"
		"wave"		"player/footsteps/boomer/run/dirt4.wav"
	}
}

"Jockey.Mud.RunLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".6"
	"pitch"			"90,105"
	"rndwave"
	{
		"wave"		"player/footsteps/boomer/run/mud1.wav"
		"wave"		"player/footsteps/boomer/run/mud3.wav"
	}
}

"Jockey.Mud.RunRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".6"
	"pitch"			"90,105"
	"rndwave"
	{
		"wave"		"player/footsteps/boomer/run/mud2.wav"
		"wave"		"player/footsteps/boomer/run/mud4.wav"
	}
}

"Jockey.SlipperySlime.RunLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		"0.6"
	"pitch"			"90,105"
	"rndwave"
	{
		"wave"		"player/footsteps/boomer/run/mud1.wav"
		"wave"		"player/footsteps/boomer/run/mud3.wav"
	}
}

"Jockey.SlipperySlime.RunRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		"0.6"
	"pitch"			"90,105"
	"rndwave"
	{
		"wave"		"player/footsteps/boomer/run/mud2.wav"
		"wave"		"player/footsteps/boomer/run/mud4.wav"
	}
}

"Jockey.Grass.RunLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".96"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/boomer/run/grass1.wav"
		"wave"		"player/footsteps/boomer/run/grass3.wav"
	}
}

"Jockey.Grass.RunRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".96"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/boomer/run/grass2.wav"
		"wave"		"player/footsteps/boomer/run/grass4.wav"
	}
}

"Jockey.MetalVent.RunLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".96"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/boomer/run/duct2.wav"
		"wave"		"player/footsteps/boomer/run/duct4.wav"
	}
}

"Jockey.MetalVent.RunRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".96"
	"rndwave"
	{
		"wave"		"player/footsteps/boomer/run/duct1.wav"
		"wave"		"player/footsteps/boomer/run/duct3.wav"
	}
}

"Jockey.Tile.RunLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".96"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/boomer/run/tile1.wav"
		"wave"		"player/footsteps/boomer/run/tile3.wav"
	}
}

"Jockey.Tile.RunRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".96"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/boomer/run/tile2.wav"
		"wave"		"player/footsteps/boomer/run/tile4.wav"
	}
}

"Jockey.Water.RunLeft"
{
	"channel"       "CHAN_AUTO"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".96"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/boomer/run/wade2.wav"
		"wave"		"player/footsteps/boomer/run/wade4.wav"
	}
}

"Jockey.Water.RunRight"
{
	"channel"       "CHAN_AUTO"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".96"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/boomer/run/wade1.wav"
		"wave"		"player/footsteps/boomer/run/wade3.wav"
	}
}

"Jockey.Wade.RunLeft"
{
	"channel"       "CHAN_AUTO"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		"0.96"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/boomer/run/wade1.wav"
		"wave"		"player/footsteps/boomer/run/wade3.wav"
	}
}

"Jockey.Wade.RunRight"
{
	"channel"       "CHAN_AUTO"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		"0.96"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/boomer/run/wade2.wav"
		"wave"		"player/footsteps/boomer/run/wade4.wav"
	}
}


"Jockey.Ladder.RunLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".96"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/boomer/run/ladder1.wav"
		"wave"		"player/footsteps/boomer/run/ladder3.wav"
	}
}

"Jockey.Ladder.RunRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".96"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/boomer/run/ladder2.wav"
		"wave"		"player/footsteps/boomer/run/ladder4.wav"
	}
}

"Jockey.Glass.RunLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".96"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/boomer/run/glass2.wav"
		"wave"		"player/footsteps/boomer/run/glass4.wav"
	}
}

"Jockey.Glass.RunRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".96"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/boomer/run/glass1.wav"
		"wave"		"player/footsteps/boomer/run/glass3.wav"
	}
}

"Jockey.Concrete.RunLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".96"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/boomer/run/concrete1.wav"
		"wave"		"player/footsteps/boomer/run/concrete3.wav"
	}
}

"Jockey.Concrete.RunRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".96"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/boomer/run/concrete2.wav"
		"wave"		"player/footsteps/boomer/run/concrete4.wav"
	}
}

"Jockey.Gravel.RunLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".96"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/boomer/run/gravel1.wav"
		"wave"		"player/footsteps/boomer/run/gravel3.wav"
	}
}

"Jockey.Gravel.RunRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".96"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/boomer/run/gravel2.wav"
		"wave"		"player/footsteps/boomer/run/gravel4.wav"
	}
}

"Jockey.ChainLink.RunLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".96"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/boomer/run/chainlink1.wav"
		"wave"		"player/footsteps/boomer/run/chainlink3.wav"
	}
}

"Jockey.ChainLink.RunRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".96"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/boomer/run/chainlink2.wav"
		"wave"		"player/footsteps/boomer/run/chainlink4.wav"
	}
}

"Jockey.Flesh.RunLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".96"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"	"player/footsteps/boomer/run/flesh1.wav"
		"wave"	"player/footsteps/boomer/run/flesh3.wav"
	}
}

"Jockey.Flesh.RunRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".96"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"	"player/footsteps/boomer/run/flesh2.wav"
		"wave"	"player/footsteps/boomer/run/flesh4.wav"
	}
}

"Jockey.Sand.RunLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".96"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/boomer/run/sand1.wav"
		"wave"		"player/footsteps/boomer/run/sand3.wav"
	}
}

"Jockey.Sand.RunRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".96"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/boomer/run/sand2.wav"
		"wave"		"player/footsteps/boomer/run/sand4.wav"
	}
}

"Jockey.GlassBottle.RunLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		"0.2"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"physics/glass/glass_impact_soft1.wav"
		"wave"		"physics/glass/glass_impact_soft2.wav"
	}
}

"Jockey.GlassBottle.RunRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		"0.2"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"physics/glass/glass_impact_soft2.wav"
		"wave"		"physics/glass/glass_impact_soft3.wav"
	}
}

"Jockey.ceiling_tile.RunLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".96"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/boomer/run/tile1.wav"
		"wave"		"player/footsteps/boomer/run/tile3.wav"
	}
}

"Jockey.ceiling_tile.RunRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".96"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/boomer/run/tile2.wav"
		"wave"		"player/footsteps/boomer/run/tile4.wav"
	}
}

"Jockey.drywall.RunLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".96"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/boomer/run/plaster1.wav"
		"wave"		"player/footsteps/boomer/run/plaster3.wav"
	}
}

"Jockey.drywall.RunRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".96"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/boomer/run/plaster2.wav"
		"wave"		"player/footsteps/boomer/run/plaster4.wav"
	}
}

"Jockey.Plaster.RunLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".96"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/boomer/run/plaster1.wav"
		"wave"		"player/footsteps/boomer/run/plaster3.wav"
	}
}

"Jockey.Plaster.RunRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".96"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/boomer/run/plaster2.wav"
		"wave"		"player/footsteps/boomer/run/plaster4.wav"
	}
}

"Jockey.Cardboard.RunLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"pitch"			"95,105"
	"volume"			".96"
	"rndwave"
	{
		"wave"		"player/footsteps/boomer/run/cardboard1.wav"
		"wave"		"player/footsteps/boomer/run/cardboard2.wav"
	}
}

"Jockey.Cardboard.RunRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"pitch"			"95,105"
	"volume"			".96"
	"rndwave"
	{
		"wave"		"player/footsteps/boomer/run/cardboard3.wav"
		"wave"		"player/footsteps/boomer/run/cardboard4.wav"
	}
}

"Jockey.Plastic_Barrel.RunLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"pitch"			"95,105"
	"volume"			"0.5"
	"rndwave"
	{
		"wave"		"physics/plastic/plastic_barrel_impact_soft1.wav"
		"wave"		"physics/plastic/plastic_barrel_impact_soft2.wav"
	}
}

"Boomer.Plastic_Barrel.RunRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"pitch"			"95,105"
	"volume"			"0.5"
	"rndwave"
	{
		"wave"		"physics/plastic/plastic_barrel_impact_soft3.wav"
		"wave"		"physics/plastic/plastic_barrel_impact_soft4.wav"
	}
}

"Jockey.Plastic_Box.RunLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"pitch"			"95,105"
	"volume"			"0.3"
	"rndwave"
	{
		"wave"		"physics/plastic/plastic_box_impact_soft1.wav"
		"wave"		"physics/plastic/plastic_box_impact_soft2.wav"
	}
}

"Jockey.Plastic_Box.RunRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"pitch"			"95,105"
	"volume"			"0.3"
	"rndwave"
	{
		"wave"		"physics/plastic/plastic_box_impact_soft3.wav"
		"wave"		"physics/plastic/plastic_box_impact_soft4.wav"
	}
}

"Jockey.Rubber.RunLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"pitch"			"98,102"
	"volume"			"0.2"
	"wave"		"physics/rubber/rubber_tire_impact_soft1.wav"
}

"Jockey.Rubber.RunRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"pitch"			"98,102"
	"volume"		"0.2"
	"wave"		"physics/rubber/rubber_tire_impact_soft1.wav"
}

"Jockey.Grenade.RunLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".96"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/boomer/run/gravel1.wav"
		"wave"		"player/footsteps/boomer/run/gravel3.wav"
	}
}

"Jockey.Grenade.RunRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".96"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/boomer/run/gravel2.wav"
		"wave"		"player/footsteps/boomer/run/gravel4.wav"
	}
}

"Jockey.Wood.RunLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".96"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/boomer/run/wood1.wav"
		"wave"		"player/footsteps/boomer/run/wood3.wav"
	}
}

"Jockey.Wood.RunRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".96"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/boomer/run/wood2.wav"
		"wave"		"player/footsteps/boomer/run/wood4.wav"
	}
}

"Jockey.Wood_Box.RunLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".96"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"physics/wood/wood_box_footstep1.wav"
		"wave"		"physics/wood/wood_box_footstep2.wav"
	}
}

"Jockey.Wood_Box.RunRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".96"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"physics/wood/wood_box_footstep3.wav"
		"wave"		"physics/wood/wood_box_footstep4.wav"
	}
}

"Jockey.Wood_Crate.RunLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".96"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"physics/wood/wood_box_footstep1.wav"
		"wave"		"physics/wood/wood_box_footstep2.wav"
	}
}

"Jockey.Wood_Crate.RunRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".96"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"physics/wood/wood_box_footstep3.wav"
		"wave"		"physics/wood/wood_box_footstep4.wav"
	}
}

"Jockey.Wood_Panel.RunLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".96"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/boomer/run/wood1.wav"
		"wave"		"player/footsteps/boomer/run/wood3.wav"
	}
}

"Jockey.Wood_Panel.RunRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".96"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/boomer/run/wood2.wav"
		"wave"		"player/footsteps/boomer/run/wood4.wav"
	}
}

"Jockey.Metal_Box.RunLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".96"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/boomer/run/gravel1.wav"
		"wave"		"player/footsteps/boomer/run/gravel3.wav"
	}
}

"Jockey.Metal_Box.RunRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".96"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/boomer/run/gravel2.wav"
		"wave"		"player/footsteps/boomer/run/gravel4.wav"
	}
}

"Jockey.weapon.RunLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".96"
	"pitch"			"95,105"
	"wave"		"physics/metal/weapon_footstep1.wav"
}

"Jockey.weapon.RunRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".96"
	"pitch"			"95,105"
	"wave"		"physics/metal/weapon_footstep2.wav"

}

"Jockey.SugarCane.RunLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".66"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		")player/footsteps/survivor/run/foliage1.wav"
		"wave"		")player/footsteps/survivor/run/foliage3.wav"
	}
}

"Jockey.SugarCane.RunRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".66"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		")player/footsteps/survivor/run/foliage2.wav"
		"wave"		")player/footsteps/survivor/run/foliage4.wav"
	}
}

"Jockey.Foliage.RunLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".66"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		")player/footsteps/survivor/run/foliage1.wav"
		"wave"		")player/footsteps/survivor/run/foliage3.wav"
	}
}

"Jockey.Foliage.RunRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".66"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		")player/footsteps/survivor/run/foliage2.wav"
		"wave"		")player/footsteps/survivor/run/foliage4.wav"
	}
}

//---------------------------------------------------------------------------------------------------------------------------------//
//JockeyWalk
//---------------------------------------------------------------------------------------------------------------------------------//

"Jockey.Default.WalkLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"			".86"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/boomer/walk/concrete1.wav"
		"wave"		"player/footsteps/boomer/walk/concrete3.wav"
	}
}

"Jockey.Default.WalkRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"pitch"			"95,105"
	"volume"			".86"
	"rndwave"
	{
		"wave"		"player/footsteps/boomer/walk/concrete2.wav"
		"wave"		"player/footsteps/boomer/walk/concrete4.wav"
	}
}

"Jockey.SolidMetal.WalkLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"pitch"			"95,105"
	"volume"		".86"
	"rndwave"
	{
		"wave"		"player/footsteps/boomer/walk/metal1.wav"
		"wave"		"player/footsteps/boomer/walk/metal3.wav"
	}
}

"Jockey.SolidMetal.WalkRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"pitch"			"95,105"
	"volume"		".86"
	"rndwave"
	{
		"wave"		"player/footsteps/boomer/walk/metal2.wav"
		"wave"		"player/footsteps/boomer/walk/metal4.wav"
	}
}

"Jockey.Metalgrate.WalkLeft"
{
	"channel"       "CHAN_BODY"


	"soundlevel"	"SNDLVL_NORM"
	"pitch"			"95,105"
	"volume"		".86"
	"rndwave"
	{
		"wave"		"player/footsteps/boomer/walk/metalgrate1.wav"
		"wave"		"player/footsteps/boomer/walk/metalgrate2.wav"

		
	}

}

"Jockey.Metalgrate.WalkRight"
{
	"channel"       "CHAN_BODY"


	"soundlevel"	"SNDLVL_NORM"
	"pitch"			"95,105"
	"volume"		".86"
	"rndwave"
	{
		"wave"		"player/footsteps/boomer/walk/metalgrate3.wav"
		"wave"		"player/footsteps/boomer/walk/metalgrate4.wav"
		
	}

}

"Jockey.Snow.WalkLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".96"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/boomer/run/sand1.wav"
		"wave"		"player/footsteps/boomer/run/sand3.wav"
	}
}

"Jockey.Snow.WalkRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".96"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/boomer/run/sand2.wav"
		"wave"		"player/footsteps/boomer/run/sand4.wav"
	}
}

"Jockey.Dirt.WalkLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"pitch"			"95,105"
	"volume"		".86"
	"rndwave"
	{
		"wave"		"player/footsteps/boomer/walk/dirt1.wav"
		"wave"		"player/footsteps/boomer/walk/dirt3.wav"
	}
}

"Jockey.Dirt.WalkRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"pitch"			"95,105"
	"volume"		".86"
	"rndwave"
	{
		"wave"		"player/footsteps/boomer/walk/dirt2.wav"
		"wave"		"player/footsteps/boomer/walk/dirt4.wav"
	}
}

"Jockey.Mud.WalkLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".6"
	"pitch"			"90,105"
	"rndwave"
	{
		"wave"		"player/footsteps/boomer/walk/mud1.wav"
		"wave"		"player/footsteps/boomer/walk/mud3.wav"
	}
}

"Jockey.Mud.WalkRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".6"
	"pitch"			"90,105"
	"rndwave"
	{
		"wave"		"player/footsteps/boomer/walk/mud2.wav"
		"wave"		"player/footsteps/boomer/walk/mud4.wav"
	}
}

"Jockey.SlipperySlime.WalkLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		"0.6"
	"pitch"			"90,105"
	"rndwave"
	{
		"wave"		"player/footsteps/boomer/walk/mud1.wav"
		"wave"		"player/footsteps/boomer/walk/mud3.wav"
	}
}

"Jockey.SlipperySlime.WalkRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		"0.6"
	"pitch"			"90,105"
	"rndwave"
	{
		"wave"		"player/footsteps/boomer/walk/mud2.wav"
		"wave"		"player/footsteps/boomer/walk/mud4.wav"
	}
}

"Jockey.Grass.WalkLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".86"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/boomer/walk/grass1.wav"
		"wave"		"player/footsteps/boomer/walk/grass3.wav"
	}
}

"Jockey.Grass.WalkRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".86"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/boomer/walk/grass2.wav"
		"wave"		"player/footsteps/boomer/walk/grass4.wav"
	}
}

"Jockey.MetalVent.WalkLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".86"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/boomer/walk/duct2.wav"
		"wave"		"player/footsteps/boomer/walk/duct4.wav"
	}
}

"Jockey.MetalVent.WalkRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".86"
	"rndwave"
	{
		"wave"		"player/footsteps/boomer/walk/duct1.wav"
		"wave"		"player/footsteps/boomer/walk/duct3.wav"
	}
}

"Jockey.Tile.WalkLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".86"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/boomer/walk/tile1.wav"
		"wave"		"player/footsteps/boomer/walk/tile3.wav"
	}
}

"Jockey.Tile.WalkRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".86"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/boomer/walk/tile2.wav"
		"wave"		"player/footsteps/boomer/walk/tile4.wav"
	}
}

"Jockey.Water.WalkLeft"
{
	"channel"       "CHAN_AUTO"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".86"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/boomer/walk/wade2.wav"
		"wave"		"player/footsteps/boomer/walk/wade4.wav"
	}
}

"Jockey.Water.WalkRight"
{
	"channel"       "CHAN_AUTO"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".86"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/boomer/walk/wade1.wav"
		"wave"		"player/footsteps/boomer/walk/wade3.wav"
	}
}

"Jockey.Wade.WalkLeft"
{
	"channel"       "CHAN_AUTO"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		"0.86"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/boomer/walk/wade1.wav"
		"wave"		"player/footsteps/boomer/walk/wade3.wav"
	}
}

"Jockey.Wade.WalkRight"
{
	"channel"       "CHAN_AUTO"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		"0.86"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/boomer/walk/wade2.wav"
		"wave"		"player/footsteps/boomer/walk/wade4.wav"
	}
}


"Jockey.Ladder.WalkLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".86"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/boomer/walk/ladder1.wav"
		"wave"		"player/footsteps/boomer/walk/ladder3.wav"
	}
}

"Jockey.Ladder.WalkRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".86"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/boomer/walk/ladder2.wav"
		"wave"		"player/footsteps/boomer/walk/ladder4.wav"
	}
}

"Jockey.Glass.WalkLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".86"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/boomer/walk/glass2.wav"
		"wave"		"player/footsteps/boomer/walk/glass4.wav"
	}
}

"Jockey.Glass.WalkRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".86"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/boomer/walk/glass1.wav"
		"wave"		"player/footsteps/boomer/walk/glass3.wav"
	}
}

"Jockey.Concrete.WalkLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".86"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/boomer/walk/concrete1.wav"
		"wave"		"player/footsteps/boomer/walk/concrete3.wav"
	}
}

"Jockey.Concrete.WalkRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".86"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/boomer/walk/concrete2.wav"
		"wave"		"player/footsteps/boomer/walk/concrete4.wav"
	}
}

"Jockey.Gravel.WalkLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".86"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/boomer/walk/gravel1.wav"
		"wave"		"player/footsteps/boomer/walk/gravel3.wav"
	}
}

"Jockey.Gravel.WalkRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".86"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/boomer/walk/gravel2.wav"
		"wave"		"player/footsteps/boomer/walk/gravel4.wav"
	}
}

"Jockey.ChainLink.WalkLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".86"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/boomer/walk/chainlink1.wav"
		"wave"		"player/footsteps/boomer/walk/chainlink3.wav"
	}
}

"Jockey.ChainLink.WalkRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".86"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/boomer/walk/chainlink2.wav"
		"wave"		"player/footsteps/boomer/walk/chainlink4.wav"
	}
}

"Jockey.Flesh.WalkLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".86"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"	"player/footsteps/boomer/walk/flesh1.wav"
		"wave"	"player/footsteps/boomer/walk/flesh3.wav"
	}
}

"Jockey.Flesh.WalkRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".86"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"	"player/footsteps/boomer/walk/flesh2.wav"
		"wave"	"player/footsteps/boomer/walk/flesh4.wav"
	}
}

"Jockey.Sand.WalkLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".86"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/boomer/walk/sand1.wav"
		"wave"		"player/footsteps/boomer/walk/sand3.wav"
	}
}

"Jockey.Sand.WalkRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".86"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/boomer/walk/sand2.wav"
		"wave"		"player/footsteps/boomer/walk/sand4.wav"
	}
}

"Jockey.GlassBottle.WalkLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		"0.2"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"physics/glass/glass_impact_soft1.wav"
		"wave"		"physics/glass/glass_impact_soft2.wav"
	}
}

"Jockey.GlassBottle.WalkRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		"0.2"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"physics/glass/glass_impact_soft2.wav"
		"wave"		"physics/glass/glass_impact_soft3.wav"
	}
}

"Jockey.ceiling_tile.WalkLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".86"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/boomer/walk/tile1.wav"
		"wave"		"player/footsteps/boomer/walk/tile3.wav"
	}
}

"Jockey.ceiling_tile.WalkRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".86"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/boomer/walk/tile2.wav"
		"wave"		"player/footsteps/boomer/walk/tile4.wav"
	}
}

"Jockey.drywall.WalkLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".86"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/boomer/walk/gravel1.wav"
		"wave"		"player/footsteps/boomer/walk/gravel3.wav"
	}
}

"Jockey.drywall.WalkRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".86"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/boomer/walk/gravel2.wav"
		"wave"		"player/footsteps/boomer/walk/gravel4.wav"
	}
}

"Jockey.Plaster.WalkLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".86"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/boomer/run/plaster1.wav"
		"wave"		"player/footsteps/boomer/run/plaster3.wav"
	}
}

"Jockey.Plaster.WalkRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".86"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/boomer/run/plaster2.wav"
		"wave"		"player/footsteps/boomer/run/plaster4.wav"
	}
}

"Jockey.Cardboard.WalkLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"pitch"			"95,105"
	"volume"			".86"
	"rndwave"
	{
		"wave"		"player/footsteps/boomer/walk/cardboard1.wav"
		"wave"		"player/footsteps/boomer/walk/cardboard2.wav"
	}
}

"Jockey.Cardboard.WalkRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"pitch"			"95,105"
	"volume"			".86"
	"rndwave"
	{
		"wave"		"player/footsteps/boomer/walk/cardboard3.wav"
		"wave"		"player/footsteps/boomer/walk/cardboard4.wav"
	}
}

"Jockey.Plastic_Barrel.WalkLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"pitch"			"95,105"
	"volume"			"0.5"
	"rndwave"
	{
		"wave"		"physics/plastic/plastic_barrel_impact_soft1.wav"
		"wave"		"physics/plastic/plastic_barrel_impact_soft2.wav"
	}
}

"Jockey.Plastic_Barrel.WalkRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"pitch"			"95,105"
	"volume"			"0.5"
	"rndwave"
	{
		"wave"		"physics/plastic/plastic_barrel_impact_soft3.wav"
		"wave"		"physics/plastic/plastic_barrel_impact_soft4.wav"
	}
}

"Jockey.Plastic_Box.WalkLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"pitch"			"95,105"
	"volume"			"0.3"
	"rndwave"
	{
		"wave"		"physics/plastic/plastic_box_impact_soft1.wav"
		"wave"		"physics/plastic/plastic_box_impact_soft2.wav"
	}
}

"Jockey.Plastic_Box.WalkRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"pitch"			"95,105"
	"volume"			"0.3"
	"rndwave"
	{
		"wave"		"physics/plastic/plastic_box_impact_soft3.wav"
		"wave"		"physics/plastic/plastic_box_impact_soft4.wav"
	}
}

"Jockey.Rubber.WalkLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"pitch"			"98,102"
	"volume"			"0.2"
	"wave"		"physics/rubber/rubber_tire_impact_soft1.wav"
}

"Jockey.Rubber.WalkRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"pitch"			"98,102"
	"volume"		"0.2"
	"wave"		"physics/rubber/rubber_tire_impact_soft1.wav"
}

"Jockey.Grenade.WalkLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".86"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/boomer/walk/gravel1.wav"
		"wave"		"player/footsteps/boomer/walk/gravel3.wav"
	}
}

"Jockey.Grenade.WalkRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".86"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/boomer/walk/gravel2.wav"
		"wave"		"player/footsteps/boomer/walk/gravel4.wav"
	}
}

"Jockey.Wood.WalkLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".86"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/boomer/walk/wood1.wav"
		"wave"		"player/footsteps/boomer/walk/wood3.wav"
	}
}

"Jockey.Wood.WalkRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".86"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/boomer/walk/wood2.wav"
		"wave"		"player/footsteps/boomer/walk/wood4.wav"
	}
}

"Jockey.Wood_Box.WalkLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".86"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"physics/wood/wood_box_footstep1.wav"
		"wave"		"physics/wood/wood_box_footstep2.wav"
	}
}

"Jockey.Wood_Box.WalkRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".86"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"physics/wood/wood_box_footstep3.wav"
		"wave"		"physics/wood/wood_box_footstep4.wav"
	}
}

"Jockey.Wood_Crate.WalkLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".86"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"physics/wood/wood_box_footstep1.wav"
		"wave"		"physics/wood/wood_box_footstep2.wav"
	}
}

"Jockey.Wood_Crate.WalkRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".86"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"physics/wood/wood_box_footstep3.wav"
		"wave"		"physics/wood/wood_box_footstep4.wav"
	}
}

"Jockey.Wood_Panel.WalkLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".86"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/boomer/walk/wood1.wav"
		"wave"		"player/footsteps/boomer/walk/wood3.wav"
	}
}

"Jockey.Wood_Panel.WalkRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".86"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/boomer/walk/wood2.wav"
		"wave"		"player/footsteps/boomer/walk/wood4.wav"
	}
}

"Jockey.Metal_Box.WalkLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".86"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/boomer/walk/gravel1.wav"
		"wave"		"player/footsteps/boomer/walk/gravel3.wav"
	}
}

"Jockey.Metal_Box.WalkRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".86"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/boomer/walk/gravel2.wav"
		"wave"		"player/footsteps/boomer/walk/gravel4.wav"
	}
}

"Jockey.weapon.WalkLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".86"
	"pitch"			"95,105"
	"wave"		"physics/metal/weapon_footstep1.wav"
}

"Jockey.weapon.WalkRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".86"
	"pitch"			"95,105"
	"wave"		"physics/metal/weapon_footstep2.wav"

}

"Jockey.SugarCane.WalkLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".66"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		")player/footsteps/survivor/run/foliage1.wav"
		"wave"		")player/footsteps/survivor/run/foliage3.wav"
	}
}

"Jockey.SugarCane.WalkRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".66"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		")player/footsteps/survivor/run/foliage2.wav"
		"wave"		")player/footsteps/survivor/run/foliage4.wav"
	}
}

"Jockey.Foliage.WalkLeft"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".66"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		")player/footsteps/survivor/run/foliage1.wav"
		"wave"		")player/footsteps/survivor/run/foliage3.wav"
	}
}

"Jockey.Foliage.WalkRight"
{
	"channel"       "CHAN_BODY"

	"soundlevel"	"SNDLVL_NORM"
	"volume"		".66"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		")player/footsteps/survivor/run/foliage2.wav"
		"wave"		")player/footsteps/survivor/run/foliage4.wav"
	}
}

