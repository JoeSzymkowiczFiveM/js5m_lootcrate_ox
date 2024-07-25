fx_version   'cerulean'
use_experimental_fxv2_oal 'yes'
lua54        'yes'
game         'gta5'

shared_scripts {
    'shared/config.lua',
}

client_script "client/main.lua"

server_scripts {
    "server/main.lua"
}

ui_page "html/index.html"

files {
    'html/index.html',
    'html/index.js',
    'html/index.css',
    'html/reset.css',
    'html/img/*.*'
}