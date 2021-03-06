#include <sourcemod>

#pragma newdecls required
#pragma semicolon 1

public Plugin myinfo =
{
	name = "Force sv_full_alltalk",
	author = "Not Nairda", // stole snippet from KiD
	description = "Volvo™ sucks",
	url = "https://steamcommunity.com/id/nairda1339/"
};

public void OnPluginStart()
{
	FindConVar("sv_alltalk").AddChangeHook(OnConVarChanged);
	FindConVar("sv_deadtalk").AddChangeHook(OnConVarChanged);
	FindConVar("sv_full_alltalk").AddChangeHook(OnConVarChanged);
	FindConVar("sv_talk_enemy_dead").AddChangeHook(OnConVarChanged);
	FindConVar("sv_talk_enemy_living").AddChangeHook(OnConVarChanged);
}

public void OnConVarChanged(ConVar convar, const char[] oldValue, const char[] newValue)
{
	convar.IntValue = 1;
}
