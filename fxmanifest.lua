-- FX Specifications
fx_version "cerulean"
game "gta5"
lua54 "yes"

-- Script Info
name "changeme"
author "kowatt"
version "0.1"
description "changeme"


shared_scripts {
    "shared/*.lua",
    "@ox_lib/init.lua",
    "@es_extended/imports.lua"
}

ui_page "ui/dist/index.html"

files {
    "ui/dist/*.js",
    "ui/dist/*.css",
    "ui/dist/**/*.js",
    "ui/dist/**/*.css"
}

client_scripts {
    "cl/*.lua"
}

server_scripts {
    "@oxmysql/lib/MySQL.lua",
    "sv/*.lua"
}