/*
	Single-Player Info Boxes ~ Kevin-Reinke

	This program is free software: you can redistribute it and/or modify
	it under the terms of the GNU General Public License as published by
	the Free Software Foundation, either version 3 of the License, or
	(at your option) any later version.

	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with this program. If not, see <http://www.gnu.org/licenses/>.
*/

// ** INCLUDES

#include <a_samp>
#include <zcmd>
#include <single_player_info_boxes>

// ** MAIN

main()
{
	print("Loaded \"single_player_info_boxes_example.amx\".");
}

// ** CALLBACKS

public OnGameModeInit()
{
	return 1;
}

public OnGameModeExit()
{
	return 1;
}

public OnPlayerSpawn(playerid)
{
	new string[144], name[MAX_PLAYER_NAME];
	GetPlayerName(playerid, name, sizeof(name));

	format(string, sizeof(string), "Welcome to the server, ~b~%s~w~! We hope you enjoy your stay!", name);
	ShowInfoBox(playerid, 0xFF000080, 10, string);
	return 1;
}

// ** COMMANDS

CMD:rules(playerid, params[])
{
	ShowInfoBox(playerid, 0xE7991160, 5, "~r~Server Rules: ~w~Everything is allowed, except hacking!");
	return 1;
}