fx_version 'cerulean'
games { 'gta5' }

name 'SimpleVehicleControl'
author 'Fadin_laws'
description 'A simple system to allow people to control their vehicle doors + windows!'
version '1.0.1'

client_scripts {
    'client/client.lua'
}

server_scripts {
    'server/versionChecker.lua',
    'server/server.lua'
}

shared_script 'config.lua'