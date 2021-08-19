# fonts
c.fonts.completion.category       = "bold 10pt monospace"
c.fonts.completion.entry          = "10pt monospace"
c.fonts.contextmenu               = "9 IBM Plex Sans"
c.fonts.default_family            = "JetBrains Mono"
c.fonts.default_size              = "10pt"
c.fonts.debug_console             = "10pt monospace"
c.fonts.downloads                 = "10pt IBM Plex Sans"
c.fonts.hints                     = "bold 10pt monospace"
c.fonts.keyhint                   = "10pt monospace"
c.fonts.messages.error            = "10pt IBM Plex Sans"
c.fonts.messages.info             = "10pt IBM Plex Sans"
c.fonts.messages.warning          = "10pt IBM Plex Sans"
c.fonts.prompts                   = "10pt IBM Plex Sans"
c.fonts.statusbar                 = "10pt monospace"
c.fonts.tabs.selected             = "10pt IBM Plex Sans"
c.fonts.tabs.unselected           = "10pt IBM Plex Sans"
c.fonts.web.family.cursive        = ""
c.fonts.web.family.fantasy        = ""
c.fonts.web.family.fixed          = "JetBrains Mono"
c.fonts.web.family.sans_serif     = "IBM Plex Serif"
c.fonts.web.family.serif          = "IBM Plex Serif"
c.fonts.web.family.standard       = "IBM Plex Sans"
c.fonts.web.size.default          = 15
c.fonts.web.size.default_fixed    = 12
c.fonts.web.size.minimum          = 0
c.fonts.web.size.minimum_logical  = 6

# colors
colors = {
    'error'                  : '#{color/error/hex}',
    'warning'                : '#{color/warning/hex}',
    'notice'                 : '#{color/notice/hex}',
    'info'                   : '#{color/info/hex}',
    'success'                : '#{color/success/hex}',
    'background'             : '#{color/background/hex}',
    'foreground'             : '#{color/foreground/hex}',
    'popup_background'       : '#{color/popup_background/hex}',
    'popup_foreground'       : '#{color/popup_foreground/hex}',
    'popup_group_background' : '#{color/popup_group_background/hex}',
    'popup_group_foreground' : '#{color/popup_group_foreground/hex}',
    'current_item'           : '#{color/current_item/hex}'
}

c.colors.completion.category.bg                 = colors['popup_group_background']
c.colors.completion.category.border.bottom      = colors['popup_group_background']
c.colors.completion.category.border.top         = colors['popup_group_background']
c.colors.completion.category.fg                 = colors['popup_group_foreground']
c.colors.completion.even.bg                     = colors['popup_background']
c.colors.completion.fg                          = colors['popup_foreground']
c.colors.completion.item.selected.bg            = colors['current_item']
c.colors.completion.item.selected.border.bottom = colors['current_item']
c.colors.completion.item.selected.border.top    = colors['current_item']
c.colors.completion.odd.bg                      = colors['popup_background']
c.colors.completion.scrollbar.bg                = colors['popup_background']
c.colors.completion.scrollbar.fg                = colors['popup_foreground']

c.colors.contextmenu.menu.bg                    = colors['popup_background']
c.colors.contextmenu.menu.fg                    = colors['popup_foreground']
c.colors.contextmenu.disabled.bg                = colors['popup_background']
c.colors.contextmenu.selected.bg                = colors['current_item']

c.colors.downloads.bar.bg                       = colors['background']
c.colors.downloads.error.bg                     = colors['error']
c.colors.downloads.system.bg                    = "none"
c.colors.downloads.system.fg                    = "none"



c.colors.messages.error.bg                      = colors['error']
c.colors.messages.error.border                  = colors['error']
c.colors.messages.info.bg                       = colors['info']
c.colors.messages.info.border                   = colors['info']
c.colors.messages.warning.bg                    = colors['warning']
c.colors.messages.warning.border                = colors['warning']

c.colors.prompts.selected.bg                    = colors['current_item']

c.colors.statusbar.caret.bg                     = colors['background']
c.colors.statusbar.caret.fg                     = colors['notice']
c.colors.statusbar.caret.selection.bg           = colors['background']
c.colors.statusbar.caret.selection.fg           = colors['notice']
c.colors.statusbar.command.bg                   = colors['background']
c.colors.statusbar.command.fg                   = colors['foreground']
c.colors.statusbar.command.private.bg           = colors['background']
c.colors.statusbar.command.private.fg           = colors['notice']
c.colors.statusbar.insert.bg                    = colors['background']
c.colors.statusbar.insert.fg                    = colors['notice']
c.colors.statusbar.normal.bg                    = colors['background']
c.colors.statusbar.normal.fg                    = colors['foreground']
c.colors.statusbar.passthrough.bg               = colors['background']
c.colors.statusbar.passthrough.fg               = colors['notice']


c.colors.tabs.bar.bg                            = colors['background']
c.colors.tabs.even.bg                           = colors['background']
c.colors.tabs.even.fg                           = colors['foreground']
c.colors.tabs.indicator.error                   = colors['error']
c.colors.tabs.indicator.system                  = "none"
c.colors.tabs.odd.bg                            = colors['background']
c.colors.tabs.odd.fg                            = colors['foreground']
c.colors.tabs.pinned.even.bg                    = colors['background']
c.colors.tabs.pinned.even.fg                    = colors['foreground']
c.colors.tabs.pinned.odd.bg                     = colors['background']
c.colors.tabs.pinned.odd.fg                     = colors['foreground']

# on the assumption that the background is always white...
c.colors.webpage.bg                             = 'white'

# bars position
c.statusbar.position = 'bottom'
c.downloads.position = 'bottom'
c.tabs.position      = 'top'

c.tabs.max_width = 1000
