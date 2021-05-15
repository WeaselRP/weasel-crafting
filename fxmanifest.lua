description "Weasel Crafting System"

client_scripts {
    'config.lua',
    'client/main.lua',
}

ui_page 'html/page.html'

server_scripts {
    'config.lua',
    'server/main.lua',
}

files({
    'html/page.html',
    'html/script.js',
    'html/styles.css'
})

fx_version 'cerulean'
game 'gta5'