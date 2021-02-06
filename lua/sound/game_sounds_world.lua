//*******************************************************
// HL2 World sounds
// 	doors, buttons, levers, platforms, beams


"FuncTrackChange.Blocking"
{
	"channel"	"CHAN_VOICE"
	"volume"	"1"
	"soundlevel"  "SNDLVL_75dB"
	"wave"	"buttons/button11.wav"
}

//"TriggerSuperArmor.StartCharging"
//{
//	"channel"	"CHAN_ITEM"
//	"volume"	"0.85"
//	"soundlevel"  "SNDLVL_75dB"
//
//	"wave"	"items/suitchargeok1.wav"
//}

//"TriggerSuperArmor.Charging"
//{
//	"channel"	"CHAN_ITEM"
//	"volume"	"0.85"
//	"soundlevel"  "SNDLVL_75dB"
//
//	"wave"	"items/suitcharge1.wav"
//}

//"TriggerSuperArmor.DoneCharging"
//{
//	"channel"	"CHAN_ITEM"
//	"volume"	"0.85"
//	"soundlevel"  "SNDLVL_75dB"
//
//	"wave"	"items/suitchargeno1.wav"
//}

// *********************************************************
// Doors
//"Door.Locked1"
//{
//	"channel"	"CHAN_VOICE"
//	"volume"	"1"
//	"soundlevel"  "SNDLVL_75dB"
//	"wave"	"doors/door_locked1.wav"
//}

//"Door.Locked2"
//{
//	"channel"	"CHAN_VOICE"
//	"volume"	"1"
//	"soundlevel"  "SNDLVL_75dB"
//	"wave"	"doors/door_locked2.wav"
//}

"DoorSound.Null"
{
	"channel"		"CHAN_BODY"
	"volume"		"1.0"
	"pitch"			"100"
	"soundlevel"	"SNDLVL_NORM"
	"wave"	"common/null.wav" 
}

"DoorSound.DefaultMove"
{
	"channel"		"CHAN_BODY"
	"volume"		"0.2"
	"soundlevel"	"SNDLVL_75dB"
	"wave"	"doors/default_move.wav" 
}

"DoorSound.DefaultArrive"
{
	"channel"		"CHAN_BODY"
	"volume"		"0.2"
	"soundlevel"	"SNDLVL_75dB"
	"wave"	"common/null.wav" 
}

"DoorSound.DefaultLocked"
{
	"channel"		"CHAN_BODY"
	"volume"		"0.2"
	"soundlevel"	"SNDLVL_75dB"
	"wave"	"doors/default_locked.wav" 
}

"RotDoorSound.DefaultMove"
{
	"channel"		"CHAN_BODY"
	"volume"		"0.2"
	"soundlevel"	"SNDLVL_75dB"
	"wave"	"doors/default_move.wav" 
}

"RotDoorSound.DefaultArrive"
{
	"channel"		"CHAN_BODY"
	"volume"		"0.2"
	"soundlevel"	"SNDLVL_75dB"
	"wave"	"common/null.wav" 
}

"RotDoorSound.DefaultLocked"
{
	"channel"		"CHAN_BODY"
	"volume"		"0.2"
	"soundlevel"	"SNDLVL_75dB"
	"wave"	"doors/default_locked.wav" 
}

// 1 Metal Door

"Doors.Move1"
{
	"channel"	"CHAN_BODY"
	"volume"	"0.2"
	"soundlevel"  "SNDLVL_75dB"
	"pitch"		"90,110"
	"rndwave"
	{
		"wave"	"doors/door_metal_rusty_move1.wav"
		"wave"	"doors/door_squeek1.wav"
	}
}

"Doors.FullOpen1"
{
	"channel"	"CHAN_BODY"
	"volume"	"0.5"
	"soundlevel"  "SNDLVL_75dB"
	"pitch"		"90,110"
	"wave"	"doors/door_metal_medium_open1.wav"
}

"Doors.FullClose1"
{
	"channel"	"CHAN_BODY"
	"volume"	"0.7"
	"soundlevel"  "SNDLVL_75dB"
	"pitch"		"90,110"
	"rndwave"
	{
		"wave"	"doors/door_metal_medium_close1.wav"
		"wave"	"doors/default_stop.wav"
	}
}

// 2 Rusty Metal Door

"Doors.Move2"
{
	"channel"	"CHAN_BODY"
	"volume"	"0.5"
	"soundlevel"  "SNDLVL_75dB"
	"pitch"		"90,110"
	"rndwave"
	{
		"wave"	"doors/door_metal_rusty_move1.wav"
		"wave"	"doors/metal_move1.wav"
	}
}

"Doors.FullOpen2"
{
	"channel"	"CHAN_BODY"
	"volume"	"0.7"
	"soundlevel"  "SNDLVL_75dB"
	"pitch"		"90,110"
	"wave"	"doors/door_metal_large_open1.wav"
}

"Doors.FullClose2"
{
	"channel"	"CHAN_BODY"
	"volume"	"0.7"
	"soundlevel"  "SNDLVL_75dB"
	"pitch"		"90,110"
	"rndwave"
	{
		"wave"	"doors/door_metal_large_close2.wav"
		"wave"	"doors/metal_stop1.wav"
	}
}

// 3 Wood door

"Doors.Move3"
{
	"channel"	"CHAN_BODY"
	"volume"	"0.5"
	"soundlevel"  "SNDLVL_75dB"
	"pitch"		"90,110"
	"rndwave"
	{
		"wave"	"doors/door1_move.wav"
		"wave"	"doors/wood_move1.wav"
	}
}

"Doors.FullOpen3"
{
	"channel"	"CHAN_BODY"
	"volume"	"0.7"
	"soundlevel"  "SNDLVL_75dB"
	"pitch"		"90,110"
	"wave"	"doors/door1_stop.wav"
}

"Doors.FullClose3"
{
	"channel"	"CHAN_BODY"
	"volume"	"0.7"
	"soundlevel"  "SNDLVL_75dB"
	"pitch"		"90,110"
	"rndwave"
	{
		"wave"	"doors/door_wood_close1.wav"
		"wave"	"doors/wood_stop1.wav"
	}
}

// 4 Old Wood door

"Doors.Move4"
{
	"channel"	"CHAN_BODY"
	"volume"	"0.5"
	"soundlevel"  "SNDLVL_75dB"
	"pitch"		"90,110"
	"rndwave"
	{
		"wave"	"doors/door1_move.wav"
		"wave"	"doors/wood_move1.wav"
	}
}

"Doors.FullOpen4"
{
	"channel"	"CHAN_BODY"
	"volume"	"0.7"
	"soundlevel"  "SNDLVL_75dB"
	"pitch"		"90,110"
	"wave"	"doors/door1_stop.wav"
}

"Doors.FullClose4"
{
	"channel"	"CHAN_BODY"
	"volume"	"0.7"
	"soundlevel"  "SNDLVL_75dB"
	"pitch"		"90,110"
	"rndwave"
	{
		"wave"	"doors/door_wood_close1.wav"
		"wave"	"doors/wood_stop1.wav"
	}
}


// 5 screen door with spring

//"Doors.Move5"
//{
//	"channel"	"CHAN_BODY"
//	"volume"	"0.5"
//	"soundlevel"  "SNDLVL_75dB"
//	"pitch"		"90,110"
//	"wave"	"doors/door_screen_move1.wav"
//}

//"Doors.FullOpen5"
//{
//	"channel"	"CHAN_BODY"
//	"volume"	"0.7"
//	"soundlevel"  "SNDLVL_75dB"
//	"pitch"		"90,110"
//	"wave"	"doors/door_screen_open1.wav"
//}

//"Doors.FullClose5"
//{
//	"channel"	"CHAN_BODY"
//	"volume"	"0.7"
//	"soundlevel"  "SNDLVL_75dB"
//	"pitch"		"90,110"
//	"wave"	"doors/door_screen_close1.wav"
//}	

// 6 chainlink door

"Doors.Move6"
{
	"channel"	"CHAN_BODY"
	"volume"	"0.6"
	"soundlevel"  "SNDLVL_75dB"
	"pitch"		"90,110"
	"wave"	"doors/door_chainlink_move1.wav"
}

"Doors.FullOpen6"
{
	"channel"	"CHAN_BODY"
	"volume"	"0.7"
	"soundlevel"  "SNDLVL_75dB"
	"pitch"		"90,110"
	"wave"	"doors/door_chainlink_close1.wav"
}

//"Doors.FullClose6"
//{
//	"channel"	"CHAN_BODY"
//	"volume"	"0.7"
//	"soundlevel"  "SNDLVL_75dB"
//	"pitch"		"90,110"
//	"wave"	"doors/door_chainlink_close2.wav"
//}

// 7 metal gate

//"Doors.Move7"
//{
//	"channel"	"CHAN_BODY"
//	"volume"	"0.6"
//	"soundlevel"  "SNDLVL_75dB"
//	"pitch"		"90,110"
//	"wave"	"doors/door_metal_gate_move1.wav"
//}

"Doors.FullOpen7"
{
	"channel"	"CHAN_BODY"
	"volume"	"0.7"
	"soundlevel"  "SNDLVL_75dB"
	"pitch"		"90,110"
	"wave"	"doors/door_metal_gate_close1.wav"
}

"Doors.FullClose7"
{
	"channel"	"CHAN_BODY"
	"volume"	"0.7"
	"soundlevel"  "SNDLVL_75dB"
	"pitch"		"90,110"
	"wave"	"doors/door_metal_large_close2.wav"
}

// 8 locker/metal box/vent door

"Doors.Move8"
{
	"channel"	"CHAN_BODY"
	"volume"	"0.5"
	"soundlevel"  "SNDLVL_75dB"
	"pitch"		"90,110"
	"wave"	"doors/door_metal_thin_move1.wav"
}

"Doors.FullOpen8"
{
	"channel"	"CHAN_BODY"
	"volume"	"0.7"
	"soundlevel"  "SNDLVL_75dB"
	"pitch"		"90,110"
	"wave"	"doors/door_metal_thin_open1.wav"
}

"Doors.FullClose8"
{
	"channel"	"CHAN_BODY"
	"volume"	"0.7"
	"soundlevel"  "SNDLVL_75dB"
	"pitch"		"90,110"
	"wave"	"doors/door_metal_thin_close2.wav"
}

// 9 large metal door

"Doors.Move9"
{
	"channel"	"CHAN_BODY"
	"volume"	"0.9"
	"soundlevel"  "SNDLVL_85dB"
	"pitch"		"75,85"
	"rndwave"
	{
		"wave"	"doors/metal_move1.wav"
	}
}

"Doors.FullOpen9"
{
	"channel"	"CHAN_BODY"
	"volume"	"0.9"
	"soundlevel"  "SNDLVL_85dB"
	"pitch"		"90,110"
	"wave"	"doors/door_metal_large_close2.wav"
}

//"Doors.FullClose9"
//{
//	"channel"	"CHAN_BODY"
//	"volume"	"0.9"
//	"soundlevel"  "SNDLVL_85dB"
//	"pitch"		"90,110"
//	"wave"	"doors/door_metal_large_chamber_close1.wav"
//}

// 10 huge metal door

//"Doors.Move10"
//{
//	"channel"	"CHAN_BODY"
//	"volume"	"0.8"
//	"soundlevel"  "SNDLVL_100dB"
//	"pitch"		"100"
//	"wave"	"plats/hall_elev_move.wav"
//}

"Doors.FullOpen10"
{
	"channel"	"CHAN_BODY"
	"volume"	"1.0"
	"soundlevel"  "SNDLVL_100dB"
	"pitch"		"70,80"
	"wave"	"plats/hall_elev_stop.wav"
}

"Doors.FullClose10"
{
	"channel"	"CHAN_BODY"
	"volume"	"0.7"
	"soundlevel"  "SNDLVL_100dB"
	"pitch"		"70,80"
	"wave"	"plats/hall_elev_stop.wav"
}

"Elevator.Stop"
{
	"channel"	"CHAN_STATIC"
	"volume"	"0.7"
	"soundlevel"  "SNDLVL_100dB"
	"pitch"		"70,80"
	"wave"	"plats/hall_elev_stop.wav"
}
"Elevator.Stuck"
{
	"channel"	"CHAN_STATIC"
	"volume"	"0.7"
	"soundlevel"  "SNDLVL_100dB"
	"pitch"		"70,80"
	"wave"	"plats/ttrain_brake1.wav"
}

"Elevator.PowerOff"
{
	"channel"	"CHAN_STATIC"
	"volume"	"1.0"
	"soundlevel"  "SNDLVL_NONE"
	"pitch"		"100"
	"wave"	"plats/elevator_emergency_power_off_01.wav"
}

"Elevator.NoisyMove"
{
	"channel"	"CHAN_STATIC"
	"volume"	"0.9"
	"soundlevel"  "SNDLVL_100dB"
	"pitch"		"100"
	"wave"	"plats/noisy_elevator_travel_lp_01.wav"
}

"Elevator.Squeek"
{
	"channel"	"CHAN_STATIC"
	"volume"	"0.3"
	"soundlevel"  "SNDLVL_100dB"
	"pitch"		"70,80"
	"wave"	"plats/squeekmove1.wav"
}

"Elevator.Squeak_Loud"
{
	"channel"	"CHAN_STATIC"
	"volume"	"0.2"
	"soundlevel"  "SNDLVL_150dB"
	"pitch"		"70,80"
	"wave"	"plats/squeekmove1.wav"
}

// 11 large metal rollup door

"Doors.Move11"
{
	"channel"	"CHAN_BODY"
	"volume"	"0.65"
	"soundlevel"  "SNDLVL_100dB"
	"pitch"		"90,110"
	"wave"	"doors/garage_move1.wav"
}

//"Doors.FullOpen11"
//{
//	"channel"	"CHAN_BODY"
//	"volume"	"0.7"
//	"soundlevel"  "SNDLVL_100dB"
//	"pitch"		"90,110"
//	"wave"	"doors/garage_stop1.wav"
//}

//"Doors.FullClose11"
//{
//	"channel"	"CHAN_BODY"
//	"volume"	"0.7"
//	"soundlevel"  "SNDLVL_100dB"
//	"pitch"		"90,110"
//	"wave"	"doors/garage_stop1.wav"
//}

// 12 large motorized door1

//"Doors.Move12"
//{
//	"channel"	"CHAN_BODY"
//	"volume"	"0.9"
//	"soundlevel"  "SNDLVL_85dB"
//	"pitch"		"100"
//	"wave"	"doors/doormove1.wav"
//}

//"Doors.FullOpen12"
//{
//	"channel"	"CHAN_BODY"
//	"volume"	"0.9"
//	"soundlevel"  "SNDLVL_85dB"
//	"pitch"		"100"
//	"wave"	"doors/doorstop6.wav"
//}

//"Doors.FullClose12"
//{
//	"channel"	"CHAN_BODY"
//	"volume"	"0.9"
//	"soundlevel"  "SNDLVL_85dB"
//	"pitch"		"100"
//	"wave"		"doors/doorstop6.wav"
//}

// 13 large motorized door2

//"Doors.Move13"
//{
//	"channel"	"CHAN_BODY"
//	"volume"	"0.9"
//	"soundlevel"  "SNDLVL_85dB"
//	"pitch"		"100"
//	"wave"	"doors/doormove7.wav"
//}

//"Doors.FullOpen13"
//{
//	"channel"	"CHAN_BODY"
//	"volume"	"0.9"
//	"soundlevel"  "SNDLVL_85dB"
//	"pitch"		"100"
//	"wave"	"doors/doorstop2.wav"
//}

//"Doors.FullClose13"
//{
//	"channel"	"CHAN_BODY"
//	"volume"	"0.9"
//	"soundlevel"  "SNDLVL_85dB"
//	"pitch"		"100"
//	"wave"	"doors/doorstop2.wav"
//}
// 14 pressurized door

"Doors.Move14"
{
	"channel"	"CHAN_BODY"
	"volume"	"0.7"
	"soundlevel"  "SNDLVL_75dB"
	"pitch"		"100"
	"wave"	"doors/doormove2.wav"
}

//"Doors.FullOpen14"
//{
//	"channel"	"CHAN_BODY"
//	"volume"	"0.7"
//	"soundlevel"  "SNDLVL_75dB"
//	"pitch"		"100"
//	"wave"	"doors/doorstop1.wav"
//}

//"Doors.FullClose14"
//{
//	"channel"	"CHAN_BODY"
//	"volume"	"0.4"
//	"soundlevel"  "SNDLVL_75dB"
//	"pitch"		"100"
//	"wave"		"doors/doorstop1.wav"
//}

// 15 high tech glass/plastic door

//"Doors.Move15"
//{
//	"channel"	"CHAN_BODY"
//	"volume"	"0.7"
//	"soundlevel"  "SNDLVL_75dB"
//	"pitch"		"100"
//	"wave"	"doors/doormove4.wav"
//}

//"Doors.FullOpen15"
//{
//	"channel"	"CHAN_BODY"
//	"volume"	"0.4"
//	"soundlevel"  "SNDLVL_75dB"
//	"pitch"		"100"
//	"wave"	"doors/doorstop4.wav"
//}

//"Doors.FullClose15"
//{
//	"channel"	"CHAN_BODY"
//	"volume"	"0.4"
//	"soundlevel"  "SNDLVL_75dB"
//	"pitch"		"100"
//	"wave"	"doors/doorstop4.wav"
//}

// 16 gigantic floodgate door

"Doors.Move16"
{
	"channel"	"CHAN_BODY"
	"volume"	"1.0"
	"soundlevel"  "SNDLVL_100dB"
	"pitch"		"100"
	"wave"	"ambient/machines/wall_move4.wav"
}

//"Doors.FullOpen16"
//{
//	"channel"	"CHAN_BODY"
//	"volume"	"1.0"
//	"soundlevel"  "SNDLVL_100dB"
//	"pitch"		"100"
//	"wave"	"plats/bigstop1.wav"
//}

//"Doors.FullClose16"
//{
//	"channel"	"CHAN_BODY"
//	"volume"	"1.0"
//	"soundlevel"  "SNDLVL_100dB"
//	"pitch"		"100"
//	"wave"	"plats/bigstop1.wav"
//}

// 17 combine barrier/gate door large

//"Doors.Move17"
//{
//	"channel"	"CHAN_BODY"
//	"volume"	"1.0"
//	"soundlevel"  "SNDLVL_100dB"
//	"pitch"		"100"
//	"wave"	"ambient/machines/wall_ambient1.wav"
//}

//"Doors.FullOpen17"
//{
//	"channel"	"CHAN_BODY"
//	"volume"	"1.0"
//	"soundlevel"  "SNDLVL_100dB"
//	"pitch"		"100"
//	"wave"	"plats/platstop1.wav"
//}

//"Doors.FullClose17"
//{
//	"channel"	"CHAN_BODY"
//	"volume"	"1.0"
//	"soundlevel"  "SNDLVL_100dB"
//	"pitch"		"100"
//	"wave"	"plats/platstop1.wav"
//}

// 18 combine barrier/gate door medium

//"Doors.Move18"
//{
//	"channel"	"CHAN_BODY"
//	"volume"	"0.8"
//	"soundlevel"  "SNDLVL_90dB"
//	"pitch"		"120"
//	"wave"	"ambient/machines/wall_move5.wav"
//}

//"Doors.FullOpen18"
//{
//	"channel"	"CHAN_BODY"
//	"volume"	"0.8"
//	"soundlevel"  "SNDLVL_90dB"
//	"pitch"		"120"
//	"wave"	"plats/platstop1.wav"
//}

//"Doors.FullClose18"
//{
//	"channel"	"CHAN_BODY"
//	"volume"	"0.8"
//	"soundlevel"  "SNDLVL_90dB"
//	"pitch"		"100"
//	"wave"	"plats/platstop1.wav"
//}

//"doors.locker_shut"
//{
//	"channel"	"CHAN_STATIC"
//	"volume"	"0.15,0.25"
//	"soundlevel"  "SNDLVL_75dB"
//                "pitch"       "120,135"
//                "rndwave"
//                {
//	   		        "wave"	"doors/vent_open2.wav"
//                    "wave"	"doors/vent_open3.wav"
//                }
//}


// **************************************************************
// Combine Door (combine_gate_**)

// combine gate citizen

//"Doors.CombineGate_citizen_unlock1"
//{
//	"channel"	"CHAN_STATIC"
//	"volume"	"0.65"
//	"soundlevel"  "SNDLVL_70dB"
//	"pitch"		"100"
//	"wave"	"plats/hall_elev_door.wav"
//}

//"Doors.CombineGate_citizen_move1"
//{
//	"channel"	"CHAN_BODY"
//	"volume"	"0.65"
//	"soundlevel"  "SNDLVL_70dB"
//	"pitch"		"100"
//	"wave"	"plats/hall_elev_move.wav"
//}

//"Doors.CombineGate_citizen_stop1"
//{
//	"channel"	"CHAN_STATIC"
//	"volume"	"0.7"
//	"soundlevel"  "SNDLVL_70dB"
//	"pitch"		"100"
//	"wave"	"plats/elevator_stop1.wav"
//}

//"Doors.CombineGate_citizen_stop2"
//{
//	"channel"	"CHAN_STATIC"
//	"volume"	"0.7"
//	"soundlevel"  "SNDLVL_70dB"
//	"pitch"		"100"
//	"wave"	"plats/elevator_stop2.wav"
//}

// **************************************************************
// Door Handles

// 1 latch

"DoorHandles.Unlocked1"
{
	"channel"	"CHAN_ITEM"
	"volume"	"0.7"
	"soundlevel"  "SNDLVL_75dB"
	"pitch"		"90,110"
	"rndwave"
	{
		"wave"	"doors/latchunlocked1.wav"
		"wave"	"doors/door_latch3.wav"
	}
}

"DoorHandles.Locked1"
{
	"channel"	"CHAN_ITEM"
	"volume"	"0.7"
	"soundlevel"  "SNDLVL_75dB"
	"pitch"		"90,110"
	"wave"	"doors/latchlocked2.wav"
}

// 2 pushbar

//"DoorHandles.Unlocked2"
//{
//	"channel"	"CHAN_ITEM"
//	"volume"	"0.7"
//	"soundlevel"  "SNDLVL_75dB"
//	"pitch"		"90,110"
//	"wave"	"doors/handle_pushbar_open1.wav"
//}

//"DoorHandles.Locked2"
//{
//	"channel"	"CHAN_ITEM"
//	"volume"	"0.7"
//	"soundlevel"  "SNDLVL_75dB"
//	"pitch"		"90,110"
//	"wave"	"doors/handle_pushbar_locked1.wav"
//}

// 3 knob

"DoorHandles.Unlocked3"
{
	"channel"	"CHAN_ITEM"
	"volume"	"0.7"
	"soundlevel"  "SNDLVL_75dB"
	"pitch"		"90,110"
	"wave"	"doors/latchunlocked1.wav"
}

//"DoorHandles.Locked3"
//{
//	"channel"	"CHAN_ITEM"
//	"volume"	"0.7"
//	"soundlevel"  "SNDLVL_75dB"
//	"pitch"		"90,110"
//	"wave"	"doors/handle_knob_locked2.wav"
//}

// 4 metal locker

//"DoorHandles.Unlocked4"
//{
//	"channel"	"CHAN_ITEM"
//	"volume"	"0.7"
//	"soundlevel"  "SNDLVL_75dB"
//	"pitch"		"90,110"
//	"wave"	"doors/latchunlocked2.wav"
//}

//"DoorHandles.Locked4"
//{
//	"channel"	"CHAN_ITEM"
//	"volume"	"0.7"
//	"soundlevel"  "SNDLVL_75dB"
//	"pitch"		"90,110"
//	"wave"	"doors/handle_locker_locked1.wav"
//}


// **********************************************************
// UNDONE: Platforms

// 1 clean elevator
//doors/door_elevator1.wav
//doors/door_elevator_loop1.wav

// 2 industrial elevator
//doors/garage_move1.wav
//doors/garage_stop1.wav

// 3 extension bridge
//doors/drawbridge_move1.wav
//doors/drawbridge_stop1.wav



// **********************************************************
// Buttons

"Buttons.snd0"
{
	"channel"	"CHAN_ITEM"
	"volume"	"0.7"
	"soundlevel"  "SNDLVL_75dB"
	"wave"	"common/null.wav"

}

//"Buttons.snd1"
//{
//	"channel"	"CHAN_ITEM"
//	"volume"	"0.7"
//	"soundlevel"  "SNDLVL_75dB"
//	"pitch"		"100"
//	"wave"	"buttons/button1.wav"
//}

//"Buttons.snd2"
//{
//	"channel"	"CHAN_ITEM"
//	"volume"	"0.7"
//	"soundlevel"  "SNDLVL_75dB"
//	"pitch"		"100"
//	"wave"	"buttons/button2.wav"
//}

//"Buttons.snd3"
//{
//	"channel"	"CHAN_ITEM"
//	"volume"	"0.7"
//	"soundlevel"  "SNDLVL_75dB"
//	"pitch"		"100"
//	"wave"	"buttons/button3.wav"
//}

"Buttons.snd4"
{
	"channel"	"CHAN_ITEM"
	"volume"	"0.7"
	"soundlevel"  "SNDLVL_75dB"
	"pitch"		"100"
	"wave"	"buttons/button4.wav"
}

//"Buttons.snd5"
//{
//	"channel"	"CHAN_ITEM"
//	"volume"	"0.7"
//	"soundlevel"  "SNDLVL_75dB"
//	"pitch"		"100"
//	"wave"	"buttons/button5.wav"
//}

//"Buttons.snd6"
//{
//	"channel"	"CHAN_ITEM"
//	"volume"	"0.7"
//	"soundlevel"  "SNDLVL_75dB"
//	"pitch"		"100"
//	"wave"	"buttons/button6.wav"
//}

//"Buttons.snd7"
//{
//	"channel"	"CHAN_ITEM"
//	"volume"	"0.7"
//	"soundlevel"  "SNDLVL_75dB"
//	"pitch"		"100"
//	"wave"	"buttons/button7.wav"
//}

//"Buttons.snd8"
//{
//	"channel"	"CHAN_ITEM"
//	"volume"	"0.7"
//	"soundlevel"  "SNDLVL_75dB"
//	"pitch"		"100"
//	"wave"	"buttons/button8.wav"
//}

//"Buttons.snd9"
//{
//	"channel"	"CHAN_ITEM"
//	"volume"	"0.7"
//	"soundlevel"  "SNDLVL_75dB"
//	"pitch"		"100"
//	"wave"	"buttons/button9.wav"
//}

"Buttons.snd10"
{
	"channel"	"CHAN_ITEM"
	"volume"	"0.7"
	"soundlevel"  "SNDLVL_75dB"
	"pitch"		"100"
	"wave"	"buttons/button10.wav"
}

"Buttons.snd11"
{
	"channel"	"CHAN_ITEM"
	"volume"	"0.7"
	"soundlevel"  "SNDLVL_75dB"
	"pitch"		"100"
	"wave"	"buttons/button11.wav"
}

"Buttons.snd12"
{
	"channel"	"CHAN_ITEM"
	"volume"	"0.7"
	"soundlevel"  "SNDLVL_75dB"
	"pitch"		"100"
	"wave"	"doors/latchlocked2.wav"
}

"Buttons.snd13"
{
	"channel"	"CHAN_ITEM"
	"volume"	"0.7"
	"soundlevel"  "SNDLVL_75dB"
	"pitch"		"100"
	"wave"	"doors/latchunlocked1.wav"
}

//"Buttons.snd14"
//{
//	"channel"	"CHAN_ITEM"
//	"volume"	"0.7"
//	"soundlevel"  "SNDLVL_75dB"
//	"pitch"		"100"
//	"wave"	"buttons/lightswitch2.wav"
//}

//"Buttons.snd15"
//{
//	"channel"	"CHAN_ITEM"
//	"volume"	"0.7"
//	"soundlevel"  "SNDLVL_75dB"
//	"pitch"		"100"
//	"wave"	"buttons/button15.wav"
//}

//"Buttons.snd16"
//{
//	"channel"	"CHAN_ITEM"
//	"volume"	"0.7"
//	"soundlevel"  "SNDLVL_75dB"
//	"pitch"		"100"
//	"wave"	"buttons/button16.wav"
//}

//"Buttons.snd17"
//{
//	"channel"	"CHAN_ITEM"
//	"volume"	"0.7"
//	"soundlevel"  "SNDLVL_75dB"
//	"pitch"		"100"
//	"wave"	"buttons/button17.wav"
//}

//"Buttons.snd18"
//{
//	"channel"	"CHAN_ITEM"
//	"volume"	"0.7"
//	"soundlevel"  "SNDLVL_75dB"
//	"pitch"		"100"
//	"wave"	"buttons/button18.wav"
//}

//"Buttons.snd19"
//{
//	"channel"	"CHAN_ITEM"
//	"volume"	"0.7"
//	"soundlevel"  "SNDLVL_75dB"
//	"pitch"		"100"
//	"wave"	"buttons/button19.wav"
//}

//"Buttons.snd20"
//{
//	"channel"	"CHAN_ITEM"
//	"volume"	"0.7"
//	"soundlevel"  "SNDLVL_75dB"
//	"pitch"		"100"
//	"wave"	"buttons/button20.wav"
//}

// ******************************************************
// Levers

//"Buttons.snd21"
//{
//	"channel"	"CHAN_ITEM"
//	"volume"	"0.7"
//	"soundlevel"  "SNDLVL_75dB"
//	"wave"	"buttons/lever1.wav"
//
//}

//"Buttons.snd22"
//{
//	"channel"	"CHAN_ITEM"
//	"volume"	"0.7"
//	"soundlevel"  "SNDLVL_75dB"
//	"wave"	"buttons/lever2.wav"
//
//}

//"Buttons.snd23"
//{
//	"channel"	"CHAN_ITEM"
//	"volume"	"0.7"
//	"soundlevel"  "SNDLVL_75dB"
//	"wave"	"buttons/lever3.wav"
//
//}

//"Buttons.snd24"
//{
//	"channel"	"CHAN_ITEM"
//	"volume"	"0.7"
//	"soundlevel"  "SNDLVL_75dB"
//	"wave"	"buttons/lever4.wav"
//
//}

//"Buttons.snd25"
//{
//	"channel"	"CHAN_ITEM"
//	"volume"	"0.7"
//	"soundlevel"  "SNDLVL_75dB"
//	"wave"	"buttons/lever5.wav"
//
//}

//"Buttons.snd26"
//{
//	"channel"	"CHAN_STATIC"
//	"volume"	"0.7"
//	"soundlevel"  "SNDLVL_75dB"
//	"pitch"		"100"
//	"wave"	"buttons/Lever6.wav"
//}

//"Buttons.snd27"
//{
//	"channel"	"CHAN_STATIC"
//	"volume"	"0.7"
//	"soundlevel"  "SNDLVL_75dB"
//	"pitch"		"100"
//	"wave"	"buttons/Lever7.wav"
//}

//"Buttons.snd28"
//{
//	"channel"	"CHAN_STATIC"
//	"volume"	"0.7"
//	"soundlevel"  "SNDLVL_75dB"
//	"pitch"		"100"
//	"wave"	"buttons/Lever8.wav"
//}


// ******************************************************
// New buttons

//"Buttons.snd31"
//{
//	"channel"	"CHAN_ITEM"
//	"volume"	"0.7"
//	"soundlevel"  "SNDLVL_75dB"
//	"pitch"		"100"
//	"wave"	"buttons/button21.wav"
//}

"Buttons.snd32"
{
	"channel"	"CHAN_ITEM"
	"volume"	"0.7"
	"soundlevel"  "SNDLVL_75dB"
	"pitch"		"100"
	"wave"	"buttons/button22.wav"
}

//"Buttons.snd33"
//{
//	"channel"	"CHAN_ITEM"
//	"volume"	"0.7"
//	"soundlevel"  "SNDLVL_75dB"
//	"pitch"		"100"
//	"wave"	"buttons/button23.wav"
//}

//"Buttons.snd34"
//{
//	"channel"	"CHAN_ITEM"
//	"volume"	"0.7"
//	"soundlevel"  "SNDLVL_75dB"
//	"pitch"		"100"
//	"wave"	"buttons/button24.wav"
//}

//"Buttons.snd35"
//{
//	"channel"	"CHAN_ITEM"
//	"volume"	"0.7"
//	"soundlevel"  "SNDLVL_75dB"
//	"pitch"		"100"
//	"wave"	"buttons/button12.wav"
//}

//"Buttons.snd36"
//{
//	"channel"	"CHAN_ITEM"
//	"volume"	"0.7"
//	"soundlevel"  "SNDLVL_75dB"
//	"pitch"		"100"
//	"wave"	"buttons/button13.wav"
//}

"Buttons.snd37"
{
	"channel"	"CHAN_ITEM"
	"volume"	"0.7"
	"soundlevel"  "SNDLVL_75dB"
	"pitch"		"100"
	"wave"	"buttons/button14.wav"
}


// ************************************************
// Combine Buttons

//"Buttons.snd40"
//{
//	"channel"	"CHAN_ITEM"
//	"volume"	"0.7"
//	"soundlevel"  "SNDLVL_75dB"
//	"pitch"		"100"
//	"wave"	"buttons/combine_button_locked.wav"
//}

//"Buttons.snd41"
//{
//	"channel"	"CHAN_ITEM"
//	"volume"	"0.7"
//	"soundlevel"  "SNDLVL_75dB"
//	"pitch"		"100"
//	"wave"	"buttons/combine_button1.wav"
//}

//"Buttons.snd42"
//{
//	"channel"	"CHAN_ITEM"
//	"volume"	"0.7"
//	"soundlevel"  "SNDLVL_75dB"
//	"pitch"		"100"
//	"wave"	"buttons/combine_button2.wav"
//}
//"Buttons.snd43"
//{
//	"channel"	"CHAN_ITEM"
//	"volume"	"0.7"
//	"soundlevel"  "SNDLVL_75dB"
//	"pitch"		"100"
//	"wave"	"buttons/combine_button3.wav"
//}

//"Buttons.snd44"
//{
//	"channel"	"CHAN_ITEM"
//	"volume"	"0.7"
//	"soundlevel"  "SNDLVL_75dB"
//	"pitch"		"100"
//	"wave"	"buttons/combine_button4.wav"
//}
//"Buttons.snd45"
//{
//	"channel"	"CHAN_ITEM"
//	"volume"	"0.7"
//	"soundlevel"  "SNDLVL_75dB"
//	"pitch"		"100"
//	"wave"	"buttons/combine_button5.wav"
//}
//"Buttons.snd46"
//{
//	"channel"	"CHAN_ITEM"
//	"volume"	"0.7"
//	"soundlevel"  "SNDLVL_75dB"
//	"pitch"		"100"
//	"wave"	"buttons/combine_button6.wav"
//}

//"Buttons.snd47"
//{
//	"channel"	"CHAN_ITEM"
//	"volume"	"0.7"
//	"soundlevel"  "SNDLVL_75dB"
//	"pitch"		"100"
//	"wave"	"buttons/combine_button7.wav"
//}


//"WeaponDissolve.Dissolve"
//{
//	"channel"	"CHAN_ITEM"
//	"volume"	"0.7"
//	"pitch"		"90,110"
//	"soundlevel"	"SNDLVL_100db"
//	"rndwave"
//	{
//		"wave"		"ambient/levels/citadel/weapon_disintegrate1.wav"
//		"wave"		"ambient/levels/citadel/weapon_disintegrate2.wav"
//		"wave"		"ambient/levels/citadel/weapon_disintegrate3.wav"
//		"wave"		"ambient/levels/citadel/weapon_disintegrate4.wav"
//	}
//}

//"WeaponDissolve.Charge"
//{
//	"channel"	"CHAN_ITEM"
//	"volume"	"0.45"
//	"pitch"		"90,110"
//	"soundlevel"	"SNDLVL_90db"
//	"wave"		"ambient/energy/electric_loop.wav"
//}

//"WeaponDissolve.Beam"
//{
//	"channel"	"CHAN_VOICE"
//	"volume"	"0.8"
//	"pitch"		"100"
//	"soundlevel"	"SNDLVL_100db"
//
//	"rndwave"
//	{
//		"wave"		"ambient/levels/citadel/zapper_loop1.wav"
//		"wave"		"ambient/levels/citadel/zapper_loop2.wav"
//	}
//}

"PropaneTank.Burst"
{
	"channel"	"CHAN_WEAPON"
	"volume"	"1.0"
	"pitch"		"95,105"
	"soundlevel"	"SNDLVL_90db"
	"wave"		"ambient/fire/gascan_ignite1.wav"
}

//"BrassBell.C"
//{
//	"channel"	"CHAN_STATIC"
//	"volume"	"1.0"
//	"pitch"		"100,100"
//	"soundlevel"	"SNDLVL_80db"
//	"wave"		"ambient/misc/brass_bell_C.wav"
//}

//"BrassBell.D"
//{
//	"channel"	"CHAN_STATIC"
//	"volume"	"1.0"
//	"pitch"		"100,100"
//	"soundlevel"	"SNDLVL_80db"
//	"wave"		"ambient/misc/brass_bell_D.wav"
//}

//"BrassBell.E"
//{
//	"channel"	"CHAN_STATIC"
//	"volume"	"1.0"
//	"pitch"		"100,100"
//	"soundlevel"	"SNDLVL_80db"
//	"wave"		"ambient/misc/brass_bell_E.wav"
//}

//"BrassBell.F"
//{
//	"channel"	"CHAN_STATIC"
//	"volume"	"1.0"
//	"pitch"		"100,100"
//	"soundlevel"	"SNDLVL_80db"
//	"wave"		"ambient/misc/brass_bell_F.wav"
//}

//"Door.GateInferno"
//{
//	"channel"	"CHAN_BODY"
//	"volume"	"1"
//	"soundlevel"  "SNDLVL_75dB"
//	"pitch"		"90,110"
//	"wave"	"doors/door_metal_gate_move2.wav"
//}


//*******************************************************
// L4D World sounds
// Dynamic Objects


"Objects.TV_Static"
{
	"channel"	"CHAN_STATIC"
	"volume"	".8"
	"pitch"		"100"
	"soundlevel"  	"SNDLVL_70dB"
	"wave"		"ambient/Ambience/tv_static_loop2.wav"
}

"Objects.AlarmClock_Blink"
{
	"channel"	"CHAN_STATIC"
	"volume"	".9"
	"pitch"		"100"
	"soundlevel"  	"SNDLVL_55dB"
	"wave"		"ambient/Spacial_Loops/BlinkingAlarmClock.wav"
}

//"Objects.fridge_loop"
//{
//	"channel"	"CHAN_STATIC"
//	"volume"	"1"
//	"pitch"		"100"
//	"soundlevel"  	"SNDLVL_70dB"
//	"wave"		"ambient\Spacial_Loops\Fridge_loop.wav"
//}

"Objects.generator_start"
{
	"channel"	"CHAN_STATIC"
	"volume"	"1"
	"pitch"		"100"
	"soundlevel"  	"SNDLVL_70dB"
	"wave"		"ambient\machines\hydraulic_1.wav"
}

//"Objects.generator_loop"
//{
//	"channel"	"CHAN_STATIC"
//	"volume"	"1"
//	"pitch"		"100"
//	"soundlevel"  	"SNDLVL_70dB"
//	"wave"		"ambient\Ambience\Big_Generator_Loop.wav"
//}

"Objects.tarp_blow_away"
{
	"channel"	"CHAN_STATIC"
	"volume"	"1"
	"pitch"		"100"
	"soundlevel"  	"SNDLVL_80dB"
	"wave"		"animation\TARP_Blow_Away.wav"
}

"Objects.gas_station_explosion"
{
	"channel"	"CHAN_STATIC"
	"volume"	"1"
	"pitch"		"100"
	"soundlevel"  	"SNDLVL_150dB"
	"wave"		"animation\Gas_Station_Explosion.wav"
}

"Objects.emergency_alarm_loop"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"pitch"			"100"

	"soundlevel"	"SNDLVL_150dB"

	"wave"			"ambient/alarms/alarm1.wav"
}


//*******************************************************
// L4D World sounds
// Weather


"Weather.lightning_strike_1"
{
	"channel"	"CHAN_STATIC"
	"volume"	"1"
	"pitch"		"100"
	"soundlevel"  	"SNDLVL_NONE"
	"wave"		"ambient/weather/thunderstorm/lightning_strike_1.wav"
}


"Weather.lightning_strike_2"
{
	"channel"	"CHAN_STATIC"
	"volume"	"1"
	"pitch"		"100"
	"soundlevel"  	"SNDLVL_NONE"
	"wave"		"ambient/weather/thunderstorm/lightning_strike_2.wav"
}


"Weather.lightning_strike_3"
{
	"channel"	"CHAN_STATIC"
	"volume"	"1"
	"pitch"		"100"
	"soundlevel"  	"SNDLVL_NONE"
	"wave"		"ambient/weather/thunderstorm/lightning_strike_3.wav"
}


"Weather.lightning_strike_4"
{
	"channel"	"CHAN_STATIC"
	"volume"	"1"
	"pitch"		"100"
	"soundlevel"  	"SNDLVL_NONE"
	"wave"		"ambient/weather/thunderstorm/lightning_strike_4.wav"
}


"Weather.thunder_1"
{
	"channel"	"CHAN_STATIC"
	"volume"	"1"
	"pitch"		"100"
	"soundlevel"  	"SNDLVL_70dB"
	"wave"		"ambient/weather/thunderstorm/thunder_1.wav"
}


"Weather.thunder_2"
{
	"channel"	"CHAN_STATIC"
	"volume"	"1"
	"pitch"		"100"
	"soundlevel"  	"SNDLVL_70dB"
	"wave"		"ambient/weather/thunderstorm/thunder_2.wav"
}


"Weather.thunder_3"
{
	"channel"	"CHAN_STATIC"
	"volume"	"1"
	"pitch"		"100"
	"soundlevel"  	"SNDLVL_70dB"
	"wave"		"ambient/weather/thunderstorm/thunder_3.wav"
}


"Weather.thunder_far_away_1"
{
	"channel"	"CHAN_STATIC"
	"volume"	"1"
	"pitch"		"100"
	"soundlevel"  	"SNDLVL_70dB"
	"wave"		"ambient/weather/thunderstorm/thunder_far_away_1.wav"
}


"Weather.thunder_far_away_2"
{
	"channel"	"CHAN_STATIC"
	"volume"	"1"
	"pitch"		"100"
	"soundlevel"  	"SNDLVL_70dB"
	"wave"		"ambient/weather/thunderstorm/thunder_far_away_2.wav"
}

"Weather.thunder_close_1"
{
	"channel"	"CHAN_STATIC"
	"volume"	"1"
	"pitch"		"100"
	"soundlevel"  	"SNDLVL_NONE"
	"wave"		"ambient/ambience/rainscapes/Thunder_close01.wav"
}


"Weather.thunder_close_2"
{
	"channel"	"CHAN_STATIC"
	"volume"	"1"
	"pitch"		"100"
	"soundlevel"  	"SNDLVL_NONE"
	"wave"		"ambient/ambience/rainscapes/Thunder_close02.wav"
}

"Weather.thunder_close_3"
{
	"channel"	"CHAN_STATIC"
	"volume"	"1"
	"pitch"		"100"
	"soundlevel"  	"SNDLVL_NONE"
	"wave"		"ambient/ambience/rainscapes/Thunder_close03.wav"
}

"Weather.thunder_close_4"
{
	"channel"	"CHAN_STATIC"
	"volume"	"1"
	"pitch"		"100"
	"soundlevel"  	"SNDLVL_NONE"
	"wave"		"ambient/ambience/rainscapes/Thunder_close04.wav"
}


//------------------------------------------
//Campaign 4 - Close thunder as one entry
//------------------------------------------


"Weather.thunder_close_all_4"
{
	"channel"	"CHAN_STATIC"
	"volume"	"1"
	"pitch"		"100"
	"soundlevel"  	"SNDLVL_NONE"
	"rndwave"
	{
		"wave"		"ambient/ambience/rainscapes/Thunder_close01.wav"
		"wave"		"ambient/ambience/rainscapes/Thunder_close02.wav"
		"wave"		"ambient/ambience/rainscapes/Thunder_close03.wav"
		// "wave"		"ambient/ambience/rainscapes/Thunder_close04.wav"
	}
}

// --------------------------------------------------------------------
// --------------------------------------------------------------------
// Looping audio specific to the spawned church zombie.
// This plays after the mini-finale has ended and loops until the survivors
// open the door.  At this point, the sound stops and the zombie spawns playing
// it's own sounds.  This is just a radio show that emits from an ambient_generic.
"Church_Zombie_Alert_Loop"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1.0"
	"soundlevel"	"SNDLVL_90dB"
	"pitch"			"95, 105"

	"rndwave"
	{
		"wave"	"npc/infected/alert/alert/alert22.wav"
		"wave"	"npc/infected/alert/alert/alert26.wav"
		"wave"	"npc/infected/alert/alert/alert27.wav"
		"wave"	"npc/infected/alert/alert/alert39.wav"
		"wave"	"npc/infected/alert/alert/alert41.wav"
		"wave"	"npc/infected/alert/alert/alert44.wav"

		"wave"	"npc/churchguy/RadioCombatColor16.wav"
		"wave"	"npc/churchguy/RadioCombatColor15.wav"
		"wave"	"npc/churchguy/RadioCombatColor13.wav"
		"wave"	"npc/churchguy/RadioCombatColor12.wav"
		"wave"	"npc/churchguy/RadioCombatColor11.wav"
		"wave"	"npc/churchguy/RadioCombatColor09.wav"
	}
}

// Looping audio specific to the spawned church zombie.
// looping smashing sounds as part of the radio show 
// put on by the zombie behind the church in smalltown03
"Church_Zombie_Smash_Loop"
{
	"channel"		"CHAN_STATIC"
	"volume"		"0.8"
	"soundlevel"	"SNDLVL_90dB"
	"pitch"			"95, 105"

	"rndwave"
	{
		"wave" "physics/cardboard/cardboard_box_break1.wav"
		"wave" "physics/cardboard/cardboard_box_break2.wav"
		"wave" "physics/cardboard/cardboard_box_break3.wav"
		"wave"	"physics/wood/wood_crate_impact_hard4.wav"
		"wave"	"physics/wood/wood_crate_impact_hard5.wav"
		"wave"	"physics/wood/wood_crate_break4.wav"
		"wave"	"physics/wood/wood_crate_impact_soft1.wav"
		"wave"	"physics/wood/wood_crate_impact_soft3.wav"
		"wave"	"physics/wood/wood_solid_impact_soft1.wav"
		"wave"	"physics/wood/wood_solid_impact_soft2.wav"
		"wave"	"physics/wood/wood_solid_impact_soft3.wav"
	}
}

//------------------------------------------------------------------
"Churchbell.StartLoop"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"soundlevel"	"SNDLVL_100dB"
	"pitch"			"100"

	"wave"	"plats/churchbell_begin_loop.wav"

}
"Churchbell.End"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"soundlevel"	"SNDLVL_100dB"
	"pitch"			"100"

	"wave"	"plats/churchbell_end.wav"
}
//------------------------------------------------------------------

"Piano.TwangHit0"
{
	"channel"		"CHAN_STATIC"
	"volume"		"0.7"
	"soundlevel"	"SNDLVL_70dB"
	"pitch"		"80,120"

	"wave"	"plats/piano.wav"

}

"Piano.TwangHit1"
{
	"channel"		"CHAN_STATIC"
	"volume"		"0.7"
	"soundlevel"	"SNDLVL_70dB"
	"pitch"		"85,95"

	"wave"	"plats/piano.wav"

}

"Piano.TwangHit2"
{
	"channel"		"CHAN_STATIC"
	"volume"		"0.7"
	"soundlevel"	"SNDLVL_70dB"
	"pitch"		"95,105"

	"wave"	"plats/piano.wav"

}

"Piano.TwangHit3"
{
	"channel"		"CHAN_STATIC"
	"volume"		"0.7"
	"soundlevel"	"SNDLVL_70dB"
	"pitch"		"105,115"

	"wave"	"plats/piano.wav"

}

"Boat.Horn"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"soundlevel"	"SNDLVL_150dB"
	"pitch"			"100"

	"wave"	"vehicles/boat/boat_horn_1.wav"

}

"Boat.Start"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"soundlevel"	"SNDLVL_150dB"
	"pitch"			"80"

	"wave"	"vehicles/v8/v8_start_loop1.wav"

}

"Boat.Stop"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"soundlevel"	"SNDLVL_150dB"
	"pitch"			"80"

	"wave"	"vehicles/airboat/pontoon_stopped_water_loop1.wav"

}

"Boat.Move"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"soundlevel"	"SNDLVL_150dB"
	"pitch"			"100"

	"wave"	"vehicles/airboat/pontoon_fast_water_loop1.wav"

}

// --------------------------------------------------------------------
// tractor
"Tractor.Start"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"soundlevel"	"SNDLVL_150dB"
	"pitch"			"100"

	"wave"	"vehicles/tractor/tractor_start_loop.wav"

}

"Tractor.Stop"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"soundlevel"	"SNDLVL_150dB"
	"pitch"			"100"

	"wave"	"vehicles/tractor/tractor_stop.wav"

}

//---------------------------------------------------------------
// Van Inside
//---------------------------------------------------------------

"VanInside.Start"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"soundlevel"	"SNDLVL_110dB"
	"pitch"			"100"

	"wave"	"animation/van_inside_start.wav"

}

"VanInside.Roll"
{
	"channel"		"CHAN_ITEM"
	"volume"		"1"
	"soundlevel"	"SNDLVL_110dB"
	"pitch"			"100"

	"wave"	"animation/van_inside_roll.wav"

}

"VanInside.Scrape"
{
	"channel"		"CHAN_STATIC"
	"volume"		".55"
	"soundlevel"	"SNDLVL_96dB"
	"pitch"			"100"

	"wave"	")animation/van_inside_scrape.wav"

}

"VanInside.Debris"
{
	"channel"		"CHAN_AUTO"
	"volume"		"1"
	"soundlevel"	"SNDLVL_140dB"
	"pitch"			"100"

	"wave"	")animation/van_inside_debris.wav"

}

"VanInside.HitFence"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"soundlevel"	"SNDLVL_140dB"
	"pitch"			"100"

	"wave"	")animation/van_inside_hit_fence.wav"

}

"VanInside.HitWall"
{
	"channel"		"CHAN_ITEM"
	"volume"		"1"
	"soundlevel"	"SNDLVL_140dB"
	"pitch"			"100"

	"wave"	")animation/van_inside_hit_wall.wav"

//---------------------------------------------------------------
// End Van Inside
//---------------------------------------------------------------

//---------------------------------------------------------------
// C130
//---------------------------------------------------------------

}

"C130.Idle"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"soundlevel"  	"SNDLVL_150dB"
	"pitch"			"PITCH_NORM"
	"wave"			")animation/c130_idle.wav"
}


"C130.FlyBy"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"soundlevel"  		"SNDLVL_140dB"
	"pitch"			"PITCH_NORM"
	"wave"			"animation/c130_flyby.wav"
}

"C130.DoorOpen"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"soundlevel"  	"SNDLVL_140dB"
	"pitch"			"PITCH_NORM"
	"wave"			"animation/c130_door_open.wav"
}

//---------------------------------------------------------------
// C130 end
//---------------------------------------------------------------

"FuelTruck.Engage"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"soundlevel"  		"SNDLVL_94dB"
	"pitch"			"PITCH_NORM"
	"wave"			")animation/fuel_truck_engage.wav"
}

"Forklift.Move"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"soundlevel"  		"SNDLVL_87dB"
	"pitch"			"PITCH_NORM"
	"wave"			"ambient/machines/forklift.wav"
}



//---------------------------------------------------------------
// farm bridge collapse
//---------------------------------------------------------------


"BridgeCollapse.Crash"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"soundlevel"  		"SNDLVL_NONE"
	"pitch"			"PITCH_NORM"
	"wave"			"animation/Farm05_Train_Bridge_Crash.wav"
}


//---------------------------------------------------------------
// plane crash airport
//---------------------------------------------------------------


"airport.planecrash"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"soundlevel"  		"SNDLVL_NONE"
	"pitch"			"PITCH_NORM"
	"wave"			"@#animation/Airport_ROUGH_Crash_Seq.wav"
}

"airport.crashfire"
{
	"channel"		"CHAN_STATIC"
	"volume"		".85"
	"soundlevel"  		"SNDLVL_85db"
	"pitch"			"PITCH_NORM"
	"wave"			"ambient/fire/fire_big_loop1.wav"
}



//---------------------------------------------------------------
// apc farmhouse
//---------------------------------------------------------------


"apc.arrive"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"soundlevel"  		"SNDLVL_140dB"
	"pitch"			"PITCH_NORM"
	"wave"			"@#animation/APC_Enter.wav"
}

"apc.idle"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"soundlevel"  	"SNDLVL_140dB"
	"pitch"			"PITCH_NORM"
	"wave"			"@#animation/APC_Idle_Loop.wav"
}

"apc.leave"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"soundlevel"  		"SNDLVL_140dB"
	"pitch"			"PITCH_NORM"
	"wave"			"@#animation/APC_Exit.wav"
}

"apc.horn"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"soundlevel"  	"SNDLVL_150dB"
	"pitch"			"PITCH_NORM"
	"wave"			"vehicles/Humvee_Horn.wav"
}

"apc.skid"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"soundlevel"  		"SNDLVL_140dB"
	"pitch"			"PITCH_NORM"
	"wave"			"vehicles/v8/skid_lowfriction.wav"
}


//---------------------------------------------------------------
// farmhouse crows
//---------------------------------------------------------------


"farm.crowflock"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"soundlevel"  		"SNDLVL_140dB"
	"pitch"			"PITCH_NORM"
	"wave"			"animation/Crow_Flock_Farm_05.wav"
}

//---------------------------------------------------------------
// flies
//---------------------------------------------------------------


"farm.flies_loop"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"soundlevel"  		"SNDLVL_75dB"
	"pitch"			"PITCH_NORM"
	"wave"			"ambient/creatures/flies_loop.wav"
}

//---------------------------------------------------------------
// Campaign 5 - map 4: Quarter
//---------------------------------------------------------------

// Interior flybys:
"bombing.distant_explos"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"soundlevel"  		"SNDLVL_NONE"
//	"soundlevel"  		"SNDLVL_150dB"
	"pitch"			"PITCH_NORM"
	"rndwave"
        {
		"wave"	"ambient\random_amb_sfx\dist_explosion_01.wav"
		"wave"	"ambient\random_amb_sfx\dist_explosion_02.wav"
		"wave"	"ambient\random_amb_sfx\dist_explosion_03.wav"
		"wave"	"ambient\random_amb_sfx\dist_explosion_04.wav"
        }
}

"bombing.distant_jets"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"soundlevel"  	    "SNDLVL_NONE"
	"pitch"			"PITCH_NORM"
	"rndwave"
        {
		"wave"	"ambient/overhead/plane1.wav"
		"wave"	"ambient/overhead/plane2.wav"
		"wave"	"ambient/overhead/plane3.wav"
        }
}


"bombing.close_explos"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"pitch"			"95, 105"
	"soundlevel"	    "SNDLVL_140dB"
	"rndwave"
        {
		"wave"	"ambient/explosions/explode_1.wav"
		"wave"	"ambient/explosions/explode_2.wav"
		"wave"	"ambient/explosions/explode_3.wav"
		"wave"	"weapons\hegrenade\explode3.wav"
		"wave"	"weapons\hegrenade\explode5.wav"
        }
}



"bombing.close_jetsflyby"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"soundlevel"  	"SNDLVL_NONE"
	"pitch"			"PITCH_NORM"
	"rndwave"
	{
		"wave"	"(animation/jets/jet_by_01_LR.wav"
		"wave"	"(animation/jets/Jet_by_02_LR.wav"
 		"wave"	"(animation/jets/Jet_by_03_LR.wav"
		"wave"	"(animation/jets/Jet_by_04_LR.wav"
		"wave"	"(animation/jets/Jet_by_05_LR.wav"
		"wave"	"animation/jets/Jet_by_01_mono.wav"
	}
}



//---------------------------------------------------------------
// Campaign 5 - map 5: Draw Bridge Gauntlet
//---------------------------------------------------------------


"bridge.lower1bridge"
{
	"channel"		"CHAN_STATIC"
	"volume"		"0.24"
	"soundlevel"  		"SNDLVL_140dB"
	"pitch"			"PITCH_NORM"
	"wave"			"animation/c5_Bridge_Lower_seg01.wav"
}

"bridge.lower2gate"
{
	"channel"		"CHAN_STATIC"
	"volume"		"0.23"
	"soundlevel"  		"SNDLVL_90dB"
	"pitch"			"PITCH_NORM"
	"wave"			"animation/c5_Bridge_Lower_seg02.wav"
}


// older bridge:
"bridge.start01"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"soundlevel"  		"SNDLVL_140dB"
	"pitch"			"PITCH_NORM"
	"wave"			"plats/elevator_move_loop1.wav"
}

"bridge.stop01"
{
	"channel"		"CHAN_STATIC"
	"volume"		"10"
	"soundlevel"  		"SNDLVL_140dB"
	"pitch"			"PITCH_NORM"
	"wave"			"ambient/random_amb_sfx/binhit01.wav"
}

"bridge.gatemechanism"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"soundlevel"  		"SNDLVL_75dB"
	"pitch"			"PITCH_NORM"
	"wave"			"ambient/machines/hydraulic_1.wav"
}

"bridge.gate_slam"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"soundlevel"  		"SNDLVL_150dB"
	"pitch"			"PITCH_NORM"
	"wave"			"doors/heavy_metal_stop1.wav"
}


// Broken sections:

"bridge.groan00"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"soundlevel"  		"SNDLVL_150dB"
	"pitch"			"PITCH_NORM"
	"wave"			"ambient/machines/floodgate_move_short1.wav"
}

"bridge.groan01"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"soundlevel"  		"SNDLVL_150dB"
	"pitch"			"PITCH_NORM"
	"wave"			"ambient/materials/metal_stress1.wav"
}

"bridge.groan02"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"soundlevel"  		"SNDLVL_150dB"
	"pitch"			"PITCH_NORM"
	"wave"			"ambient/materials/metal_stress2.wav"
}



"bridge.jetflyby01"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"soundlevel"  	"SNDLVL_NONE"
	"pitch"			"PITCH_NORM"
	"wave"			"(animation/jets/jet_by_01_LR.wav"
}



"bridge.jetflyby01mono"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"soundlevel"  	"SNDLVL_150dB"
	"pitch"			"PITCH_NORM"
	"wave"			"animation/jets/Jet_by_01_mono.wav"
}

"bridge.jetflyby02"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"soundlevel"  	"SNDLVL_NONE"
	"pitch"			"PITCH_NORM"
	"wave"			"(animation/jets/Jet_by_02_LR.wav"
}

"bridge.jetflyby02mono"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"soundlevel"  	"SNDLVL_NONE"
	"pitch"			"PITCH_NORM"
	"wave"			"animation/jets/Jet_by_02_mono.wav"
}

"bridge.jetflyby03"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"soundlevel"  	"SNDLVL_NONE"
	"pitch"			"PITCH_NORM"
	"wave"			"(animation/jets/Jet_by_03_LR.wav"
}

"bridge.jetflyby04"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"soundlevel"  	"SNDLVL_NONE"
	"pitch"			"PITCH_NORM"
	"wave"			"(animation/jets/Jet_by_04_LR.wav"
}

"bridge.jetflyby05"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"soundlevel"  	"SNDLVL_NONE"
	"pitch"			"PITCH_NORM"
	"wave"			"animation/jets/Jet_by_05_LR.wav"
}

"bridge.jetdistant01"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"soundlevel"  	"SNDLVL_150dB"
	"pitch"			"PITCH_NORM"
	"wave"			"ambient/overhead/plane1.wav"
}

"bridge.jetdistant02"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"soundlevel"  		"SNDLVL_150dB"
	"pitch"			"PITCH_NORM"
	"wave"			"ambient/overhead/plane2.wav"
}

"bridge.jetdistant03"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"soundlevel"  		"SNDLVL_150dB"
	"pitch"			"PITCH_NORM"
	"wave"			"ambient/overhead/plane3.wav"
}


"bridge.chopper_startup_and_loop"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"soundlevel"  		"SNDLVL_150dB"
	"pitch"			"PITCH_NORM"
	"wave"			"animation/Chopper_startup_looped.wav"
}

"bridge.chopper_takeoff"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"soundlevel"  		"SNDLVL_150dB"
	"pitch"			"PITCH_NORM"
	"wave"			"ambient\machines\heli_pass_quick1.wav"
}

"bridge.chopper_loop"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"soundlevel"  		"SNDLVL_150dB"
	"pitch"			"PITCH_NORM"
	"wave"			"vehicles\helicopter\helicopter_loop09louder.wav"
}

"c5m2.missile_explosion"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"soundlevel"  	"SNDLVL_NONE"
	"pitch"			"PITCH_NORM"
	"wave"			"(animation/overpass_jets.wav"
}

"c5m2.missile_explosion_sweeten"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"soundlevel"  	"SNDLVL_NONE"
	"pitch"			"PITCH_NORM"
	"wave"			"(animation/bridge_destruct_swt_01.wav"
}


"c5.bombing.run01"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"soundlevel"  	"SNDLVL_NONE"
	"pitch"			"85,105"
	"wave"			"animation/Bombing_Run_01.wav"
}

//bridge finale sounds

"bridge.outro01"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"soundlevel"  		"SNDLVL_NONE"
	"pitch"			"PITCH_NORM"
	"wave"			"animation/C5M5_Finale_V1.wav"
}

"bridge.outro02"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"soundlevel"  		"SNDLVL_NONE"
	"pitch"			"PITCH_NORM"
	"wave"			"animation/C5M5_Finale_V2.wav"
}

"bridge.outro03"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"soundlevel"  		"SNDLVL_NONE"
	"pitch"			"PITCH_NORM"
	"wave"			"animation/C5M5_Finale_V3.wav"
}

//------------------------------------------
//Campaign 2 - Carousel
//------------------------------------------



"c2m2.chainlink_fence_open"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"soundlevel"  		"SNDLVL_120dB"
	"pitch"			"PITCH_NORM"
	"wave"			"animation\Chainlink_fence_open.wav"
}

//------------------------------------------
//Campaign 2.3
//------------------------------------------
"c2m3.chopper_sounds"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"soundlevel"  	"SNDLVL_150db"
	"pitch"			"PITCH_NORM"
	"wave"			")vehicles/helicopter/LOUD_helicopter_lp_01.wav"
}

//------------------------------------------
//Campaign 2 - Concert
//------------------------------------------


"c2m4.PA_feedback01"
{
	"channel"		"CHAN_STATIC"
	"volume"		"0.16"
	"soundlevel"  		"SNDLVL_120dB"
	"pitch"			"PITCH_NORM"
	"wave"			"animation/feedback/feedback01.wav"
}


"c2m4.PA_feedback02"
{
	"channel"		"CHAN_STATIC"
	"volume"		"0.16"
	"soundlevel"  		"SNDLVL_120dB"
	"pitch"			"PITCH_NORM"
	"wave"			"animation/feedback/feedback02.wav"
}


"c2m4.PA_feedback03"
{
	"channel"		"CHAN_STATIC"
	"volume"		"0.16"
	"soundlevel"  		"SNDLVL_120dB"
	"pitch"			"PITCH_NORM"
	"wave"			"animation/feedback/feedback03.wav"
}


"c2m5.turning_on_stage_lights"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"soundlevel"  	"SNDLVL_75dB"
	"pitch"			"PITCH_NORM"
	"rndwave"
	{
		"wave"	"buttons/arena_switch_press_01.wav"
		"wave"	"buttons/arena_switch_press_02.wav"
	}
}

"c2m5.house_light_off"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"soundlevel"  	"SNDLVL_75dB"
	"pitch"			"PITCH_NORM"
	"rndwave"
	{
		"wave"	"ambient/atmosphere/arena_lights_off_01.wav"
		"wave"	"ambient/atmosphere/arena_lights_off_02.wav"
		"wave"	"ambient/atmosphere/arena_lights_off_03.wav"
		"wave"	"ambient/atmosphere/arena_lights_off_04.wav"
		"wave"	"ambient/atmosphere/arena_lights_off_05.wav"
		"wave"	"ambient/atmosphere/arena_lights_off_06.wav"
	}
}

"c2m5.stage_light_on"
{
	"channel"		"CHAN_STATIC"
	"volume"		"0.7"
	"soundlevel"  	"SNDLVL_120dB"
	"pitch"			"PITCH_NORM"
	"rndwave"
	{
		"wave"	")ambient/atmosphere/arena_lights_on_01.wav"
		"wave"	")ambient/atmosphere/arena_lights_on_02.wav"
		"wave"	")ambient/atmosphere/arena_lights_on_03.wav"
		"wave"	")ambient/atmosphere/arena_lights_on_04.wav"
		"wave"	")ambient/atmosphere/arena_lights_on_05.wav"
		"wave"	")ambient/atmosphere/arena_lights_on_06.wav"
	}
}

"c2m5.start_concert"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"soundlevel"  	"SNDLVL_75dB"
	"pitch"			"PITCH_NORM"
	"rndwave"
	{
		"wave"	"buttons/arena_switch_press_01.wav"
		"wave"	"buttons/arena_switch_press_02.wav"
	}
}

"c2m5.burn_baby_burn"
{
	"channel"		"CHAN_STATIC"
	"volume"		"0.75"
	"soundlevel"  	"SNDLVL_80dB"
	"pitch"			"PITCH_NORM"
	"wave"			")ambient/atmosphere/firewerks_stage_pyro_01.wav"
}

"c2m5.start_light_effects"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"soundlevel"  	"SNDLVL_75dB"
	"pitch"			"PITCH_NORM"
	"rndwave"
	{
		"wave"	"buttons/arena_switch_press_01.wav"
		"wave"	"buttons/arena_switch_press_02.wav"
	}
}

"c2m5.start_main_light_show"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"soundlevel"  	"SNDLVL_75dB"
	"pitch"			"PITCH_NORM"
	"rndwave"
	{
		"wave"	"buttons/arena_switch_press_01.wav"
		"wave"	"buttons/arena_switch_press_02.wav"
	}
}

"c2m5.turning_on_mic_light"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"soundlevel"  	"SNDLVL_75dB"
	"pitch"			"PITCH_NORM"
	"rndwave"
	{
		"wave"	"buttons/arena_switch_press_01.wav"
		"wave"	"buttons/arena_switch_press_02.wav"
	}
}

"c2m5.fireworks_launch"
{
	"channel"		"CHAN_STATIC"
	"volume"		"0.55"
	"soundlevel"  	"SNDLVL_120dB"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"	")ambient/atmosphere/firewerks_launch_01.wav"
		"wave"	")ambient/atmosphere/firewerks_launch_02.wav"
		"wave"	")ambient/atmosphere/firewerks_launch_03.wav"
		"wave"	")ambient/atmosphere/firewerks_launch_04.wav"
		"wave"	")ambient/atmosphere/firewerks_launch_05.wav"
		"wave"	")ambient/atmosphere/firewerks_launch_06.wav"
	}
}

"c2m5.fireworks_burst"
{
	"channel"		"CHAN_STATIC"
	"volume"		"0.6"
	"soundlevel"  	"SNDLVL_150dB"
	"pitch"			"100"
	"rndwave"
	{
		"wave"	"ambient/atmosphere/firewerks_burst_01.wav"
		"wave"	"ambient/atmosphere/firewerks_burst_02.wav"
		"wave"	"ambient/atmosphere/firewerks_burst_03.wav"
		"wave"	"ambient/atmosphere/firewerks_burst_04.wav"
	}
}

"c2m5.chopper_sounds"
{
	"channel"		"CHAN_STATIC"
	"volume"		"0.97"
	"soundlevel"  	"SNDLVL_150db"
	"pitch"			"PITCH_NORM"
	"wave"			")vehicles/helicopter/LOUD_helicopter_lp_01.wav"
}

"c2m5.chopper_sounds_sweeten"
{
	"channel"		"CHAN_STATIC"
	"volume"		"0.97"
	"soundlevel"  	"SNDLVL_100db"
	"pitch"			"PITCH_NORM"
	"wave"			")vehicles/helicopter/LOUD_helicopter_sweeten_lp_01.wav"
}


//------------------------------------------
//Campaign 3 - Swamp Stuff
//------------------------------------------

"c3m1.riverbarge_loop"
{
	"channel"		"CHAN_STATIC"
	"volume"		"0.65"
	"soundlevel"  	"SNDLVL_70dB"
	"pitch"			"PITCH_NORM"
	"wave"			"animation/riverbarge_electric_motor.wav"
}

"c3m1.riverbarge_stop"
{
	"channel"		"CHAN_STATIC"
	"volume"		"0.65"
	"soundlevel"  	"SNDLVL_70dB"
	"pitch"			"PITCH_NORM"
	"wave"			"animation/riverbarge_electric_motor_stop.wav"
}

"c4.RainTrigger"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"soundlevel"  		"SNDLVL_120dB"
	"pitch"			"PITCH_NORM"
	"wave"		"triggers/rain_loop.wav"

}

"c3.plantation_explode"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"soundlevel"  		"SNDLVL_NONE"
	"pitch"			"PITCH_NORM"
	"wave"			"animation/Plantation_Exlposion.wav"

}






//------------------------------------------
//Campaign 1 - Hotel Fire Loops 
//------------------------------------------


"c1m1.Fireloop01"
{
 "channel"  "CHAN_STATIC"
 "volume"  "1"
 "soundlevel"    "SNDLVL_120dB"
 "pitch"   "PITCH_NORM"
 "wave"   "ambient\fire\Interior_FireClose01_mono.wav"
}
"c1m1.Fireloop02"
{
 "channel"  "CHAN_STATIC"
 "volume"  "1"
 "soundlevel"    "SNDLVL_120dB"
 "pitch"   "PITCH_NORM"
 "wave"   "ambient\fire\Interior_FireClose02_mono.wav"
}
"c1m1.Fireloop03"
{
 "channel"  "CHAN_STATIC"
 "volume"  "1"
 "soundlevel"    "SNDLVL_120dB"
 "pitch"   "PITCH_NORM"
 "wave"   "ambient\fire\Interior_FireClose03_mono.wav"
}

//------------------------------------------
//Campaign 1 - Hotel debris 
//------------------------------------------

"c1.fire.debris.01"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"soundlevel"  		"SNDLVL_140db"
	"pitch"			"80,100"
	"rndwave"
	{
		"wave"	"animation/TimedDebris_Fall_01.wav"
		"wave"	"animation/TimedDebris_Fall_02.wav"
		"wave"	"animation/TimedDebris_Fall_03.wav"
	}
}

"c1.fire.debris.lite"
{
	"channel"		"CHAN_STATIC"
	"volume"		".6"
	"soundlevel"  		"SNDLVL_120db"
	"pitch"			"115"
	"rndwave"
	{
		"wave"	"animation/TimedDebris_Fall_01.wav"
		"wave"	"animation/TimedDebris_Fall_02.wav"
		"wave"	"animation/TimedDebris_Fall_03.wav"
	}
}

"c1.fire.debris.long"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"soundlevel"  		"SNDLVL_140db"
	"pitch"			"90,110"
	"rndwave"
	{
		"wave"	"animation/TimedDebris_Fall_04.wav"
		"wave"	"animation/TimedDebris_Fall_05.wav"
	}
}



//------------------------------------------
//Campaign 1 - Hotel Intro Chopper
//------------------------------------------

"c1.intro.chopperleave"
{
	"channel"		"CHAN_STATIC"
	"volume"		"0.9"
	"soundlevel"  		"SNDLVL_NONE"
	"pitch"			"PITCH_NORM"
	"wave"			"animation/C1_intro_chopper_leave.wav"
}

//------------------------------------------
//Campaign 2 -  Chopper leaves Concert
//------------------------------------------

"c2.outro.chopperleave"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"soundlevel"  		"SNDLVL_NONE"
	"pitch"			"PITCH_NORM"
	"wave"			"animation/Concert_Chopper_Exit.wav"
}

//------------------------------------------
//Campaign 2 -  Chopper leaves Concert right exit
//------------------------------------------

"c2.outro.chopperleave.right"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"soundlevel"  		"SNDLVL_NONE"
	"pitch"			"PITCH_NORM"
	"wave"			"animation/Concert_Chopper_Exit_right.wav"
}



//------------------------------------------
//Campaign 4 -  Boat leaves milltown
//------------------------------------------

"c4.outro.boatleave"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"soundlevel"  		"SNDLVL_NONE"
	"pitch"			"PITCH_NORM"
	"wave"			"animation/c4m5_boat_depart.wav"
}


//------------------------------------------
//Campaign 5 - Waterfront Intro Boat drop off
//------------------------------------------

"c5.intro.boatleave"
{
	"channel"		"CHAN_STATIC"
	"volume"		".25"
	"soundlevel"  		"SNDLVL_NONE"
	"pitch"			"PITCH_NORM"
	"wave"			"animation/c5_waterfront_intro_boat.wav"
}


//------------------------------------------
//Campaign 1 - Mall Stuff
//------------------------------------------


"c1m2.TankerExplosion"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"soundlevel"  		"SNDLVL_NONE"
	"pitch"			"PITCH_NORM"
	"wave"			"animation\Tanker_Explosion.wav"
}


"c1m4.ElevatorJingle"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"soundlevel"		"SNDLVL_150dB"
	"pitch"			"100"
		
	// "wave"	"*)ambient/mall/elevator.wav"
	"wave"                 "common/null.wav"
	// GameData
	// {
		// "MusicDuckTrackList"    "zombat, zombat2, zombat3, ambient"
    // }
}

"c1m4.Racecar.exit"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"soundlevel"  		"SNDLVL_NONE"
	"pitch"			"PITCH_NORM"
	"wave"			"animation/RaceCar_Exit01.wav"
}

"c1m4.Racecar.exit2"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"soundlevel"  		"SNDLVL_NONE"
	"pitch"			"PITCH_NORM"
	"wave"			"animation/RaceCar_Exit02.wav"
}

//------------------------------------------
//DAVE'S PLACEHOLDER EVENTS
//------------------------------------------

"c1m1.elevator_doors_opening"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"soundlevel"  	"SNDLVL_120dB"
	"pitch"			"PITCH_NORM"
	"wave"	"common/null.wav"
}

"c1m2.store_alarm"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"soundlevel"  	"SNDLVL_120dB"
	"pitch"			"PITCH_NORM"
	"wave"	"common/null.wav"
}

"c1m3.security_alarm"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"soundlevel"  	"SNDLVL_120dB"
	"pitch"			"PITCH_NORM"
	"wave"	"common/null.wav"
}

"c2m3.rollerCoaster_sfx" 
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"soundlevel"  	"SNDLVL_120dB"
	"pitch"			"PITCH_NORM"
	"wave"	"common/null.wav"
}

"c2m3.rollerCoaster_rock_break" 
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"soundlevel"  	"SNDLVL_120dB"
	"pitch"			"PITCH_NORM"
	"wave"	"common/null.wav"
}

"c2m4.turnstile_gate"
{
	"channel"		"CHAN_STATIC"
	"volume"		"0.6"
	"soundlevel"	"SNDLVL_130dB"
	"pitch"			"100"

	"wave"	"plats/squeekmove1.wav"

}

"c2m4.gatesopen_music"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"soundlevel"  	"SNDLVL_120dB"
	"pitch"			"PITCH_NORM"
	"wave"	"common/null.wav"
}

"c3m2.airplane_door_alarm" 
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"soundlevel"  	"SNDLVL_120dB"
	"pitch"			"PITCH_NORM"
	"wave"	"common/null.wav"
}
 
"c3m3.plankbridge_mechanism" 
{
	"channel"		"CHAN_STATIC"
	"volume"		"1.000000"
	"pitch"			"100"

	"soundlevel"	"SNDLVL_130dB"

	"wave"			"ambient/machines/train_freight_loop1.wav"
}

"c3m4.gate_explosion"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"soundlevel"  	"SNDLVL_120dB"
	"pitch"			"PITCH_NORM"
	"wave"	"common/null.wav"
}

"c4m2.elevator_motor"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"soundlevel"  	"SNDLVL_120dB"
	"pitch"			"PITCH_NORM"
	"wave"	"common/null.wav"
}

"c4.thunder" 
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"soundlevel"  	"SNDLVL_120dB"
	"pitch"			"PITCH_NORM"
	"wave"	"common/null.wav"
}

"c5m2.Security_alarm"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"soundlevel"	"SNDLVL_130dB"
	"pitch"			"100"

	"wave"	"ambient/alarms/perimeter_alarm.wav"

}

"c5m4.float_tractor_motor"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"soundlevel"	"SNDLVL_150dB"
	"pitch"			"100"

	"wave"	"vehicles/tractor/tractor_start_loop.wav"

}

"c5m4.float_music"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"soundlevel"  	"SNDLVL_120dB"
	"pitch"			"PITCH_NORM"
	"wave"	"common/null.wav"
}
