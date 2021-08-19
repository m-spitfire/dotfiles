/* See LICENSE file for copyright and license details. */

/* appearance */
static const unsigned int borderpx  = 2;        /* border pixel of windows */
static const unsigned int snap      = 32;       /* snap pixel */
static const unsigned int gappih    = 6;       /* horiz inner gap between windows */
static const unsigned int gappiv    = 6;       /* vert inner gap between windows */
static const unsigned int gappoh    = 0;       /* horiz outer gap between windows and screen edge */
static const unsigned int gappov    = 0;       /* vert outer gap between windows and screen edge */
static       int smartgaps          = 1;        /* 1 means no outer gap when there is only one window */
static const int showbar            = 1;        /* 0 means no bar */
static const int topbar             = 1;        /* 0 means bottom bar */
static const char *fonts[]          = { "JetBrains Mono:size=10", "Font Awesome 5 Free Solid:size=10", "JoyPixels:size=10:antialias=true:autohint=true" };
static const char dmenufont[]       = "JetBrains Mono:size=10";
static const char col_norm_fg[]     = "#{color/foreground/hex}";
static const char col_norm_bg[]     = "#{color/background/hex}";
static const char col_norm_border[] = "#{color/background/hex}";
static const char col_sel_fg[]      = "#{color/base00/hex}";
static const char col_sel_bg[]      = "#{color/base08/hex}";
static const char col_sel_border[]  = "#{color/base09/hex}";
static const char *colors[][3]      = {
	/*               fg           bg           border   */
	[SchemeNorm] = { col_norm_fg, col_norm_bg, col_norm_border },
	[SchemeSel]  = { col_sel_fg,  col_sel_bg,  col_sel_border  },
};

/* tagging */
static const char *tags[] = { "1", "2", "3", "4", "5", "6", "7", "8", "9" };

static const Rule rules[] = {
	/* xprop(1):
	 *	WM_CLASS(STRING) = instance, class
	 *	WM_NAME(STRING) = title
	 */
	/* class               instance    title       tags mask     isfloating   monitor */
	{ "Anki",              NULL,       NULL,       0,            1,           -1 },
	{ "{app/web_browser}", NULL,       NULL,       1 << 1,       0,           -1 },
	{ "zoom",              NULL,       NULL,       1 << 0,       0,           -1 },
	{ "discord",           NULL,       NULL,       1 << 7,       0,           -1 },
};

/* window swallowing */
static const int swaldecay = 3;
static const int swalretroactive = 1;
static const char swalsymbol[] = "👅";

/* layout(s) */
static const float mfact     = 0.55; /* factor of master area size [0.05..0.95] */
static const int nmaster     = 1;    /* number of clients in master area */
static const int resizehints = 1;    /* 1 means respect size hints in tiled resizals */

static const Layout layouts[] = {
	/* symbol     arrange function */
	{ "[]=",      tile },    /* first entry is default */
	{ "><>",      NULL },    /* no layout function means floating behavior */
	{ "[M]",      monocle },
	{ NULL,       NULL },
};

/* key definitions */
#define MODKEY Mod4Mask
#define TAGKEYS(KEY,TAG) \
	{ MODKEY,                       KEY,      view,           {.ui = 1 << TAG} }, \
	{ MODKEY|ControlMask,           KEY,      toggleview,     {.ui = 1 << TAG} }, \
	{ MODKEY|ShiftMask,             KEY,      tag,            {.ui = 1 << TAG} }, \
	{ MODKEY|ControlMask|ShiftMask, KEY,      toggletag,      {.ui = 1 << TAG} },
#define STACKKEYS(MOD,ACTION) \
	{ MOD, XK_j,     ACTION##stack, {.i = INC(+1) } }, \
	{ MOD, XK_k,     ACTION##stack, {.i = INC(-1) } }, \
	{ MOD, XK_grave, ACTION##stack, {.i = PREVSEL } }, \
	{ MOD, XK_q,     ACTION##stack, {.i = 0 } }, \
	{ MOD, XK_a,     ACTION##stack, {.i = 1 } }, \
	{ MOD, XK_z,     ACTION##stack, {.i = 2 } }, \
	{ MOD, XK_x,     ACTION##stack, {.i = -1 } },

/* helper for spawning shell commands in the pre dwm-5.0 fashion */
#define SHCMD(cmd) { .v = (const char*[]){ "/bin/sh", "-c", cmd, NULL } }

/* commands */
static char dmenumon[2] = "0"; /* component of dmenucmd, manipulated in spawn() */
static const char *dmenucmd[] = { "dmenu_run", "-m", dmenumon, "-fn", dmenufont, "-nb", col_norm_bg, "-nf", col_norm_fg, "-sb", col_sel_bg, "-sf", col_sel_fg, NULL };
static const char *termcmd[]  = { "{app/terminal_emulator}", NULL };
static const char scratchpadname[] = "scratchpad";
static const char *scratchpadcmd[] = { "{app/terminal_emulator}", "-t", scratchpadname, "-o", "window.dimensions.columns: 120", "-o", "window.dimensions.lines: 34", NULL };

#include "mpdcontrol.c"

static Key keys[] = {
	/* modifier                     key           function        argument */
	{ MODKEY|ControlMask,           XK_q,         spawn,          SHCMD("pkill xinit") },
	{ MODKEY|ShiftMask,             XK_r,         quit,           {0} },
	{ MODKEY,                       XK_BackSpace, spawn,          SHCMD("system-menu") },
	{ MODKEY,                       XK_s,         spawn,          SHCMD("maim -s pic-$(date +'%Y%m%d%H%M%S')") },
	/* Commands */
	{ MODKEY,                       XK_p,         spawn,          {.v = dmenucmd } },
	{ MODKEY|ShiftMask,             XK_Return,    spawn,          {.v = termcmd } },
	{ MODKEY,                       XK_s,         spawn,          SHCMD("{app/system_monitor}") },
	{ MODKEY,                       XK_w,         spawn,          SHCMD("{app/web_browser}") },
	{ MODKEY,                       XK_grave,     togglescratch,  {.v = scratchpadcmd } },
	/* Volume */
	{ MODKEY,                       XK_minus,     spawn,          SHCMD("pamixer --allow-boost -d 5; pkill -x -RTMIN+2 dwmblocks") },
	{ MODKEY|ShiftMask,             XK_minus,     spawn,          SHCMD("pamixer --allow-boost -d 15; pkill -x -RTMIN+2 dwmblocks") },
	{ MODKEY,                       XK_plus,      spawn,          SHCMD("pamixer --allow-boost -i 5; pkill -x -RTMIN+2 dwmblocks") },
	{ MODKEY|ShiftMask,             XK_plus,      spawn,          SHCMD("pamixer --allow-boost -i 15; pkill -x -RTMIN+2 dwmblocks")  },
	{ MODKEY|ShiftMask,             XK_m,         spawn,          SHCMD("pamixer -t; pkill -x -RTMIN+2 dwmblocks")  },
	/* Microphone */
	{ MODKEY|ControlMask,           XK_m,         spawn,          SHCMD("pulsemixer --id source-0 --toggle-mute; pkill -x -RTMIN+7 dwmblocks") },
	/* MPD */
	{ MODKEY,                       XK_comma,     mpdchange,      {.i = -1} },
	{ MODKEY,                       XK_period,    mpdchange,      {.i = +1} },
	{ MODKEY|ControlMask,           XK_p,         mpdcontrol,     {0} },
	STACKKEYS(MODKEY,                             focus)
	STACKKEYS(MODKEY|ShiftMask,                   push)
	{ MODKEY,                       XK_i,         incnmaster,     {.i = +1 } },
	{ MODKEY,                       XK_d,         incnmaster,     {.i = -1 } },
	{ MODKEY,                       XK_h,         setmfact,       {.f = -0.05} },
	{ MODKEY,                       XK_l,         setmfact,       {.f = +0.05} },
	{ MODKEY|ShiftMask,             XK_h,         setcfact,       {.f = +0.25} },
	{ MODKEY|ShiftMask,             XK_l,         setcfact,       {.f = -0.25} },
	{ MODKEY|ShiftMask,             XK_o,         setcfact,       {.f =  0.00} },
	{ MODKEY,                       XK_Return,    zoom,           {0} },
	{ MODKEY,                       XK_Tab,       view,           {0} },
	{ MODKEY|ShiftMask,             XK_c,         killclient,     {0} },
	{ MODKEY,                       XK_t,         setlayout,      {.v = &layouts[0]} },
	{ MODKEY,                       XK_f,         setlayout,      {.v = &layouts[1]} },
	{ MODKEY,                       XK_m,         setlayout,      {.v = &layouts[2]} },
	{ MODKEY|ShiftMask,             XK_space,     togglefloating, {0} },
	{ MODKEY,                       XK_b,         togglebar,      {0} },
	{ MODKEY|ShiftMask,             XK_f,         togglefullscr,  {0} },
	{ MODKEY,                       XK_0,         view,           {.ui = ~0 } },
	{ MODKEY|ShiftMask,             XK_0,         tag,            {.ui = ~0 } },
	{ MODKEY,                       XK_comma,     focusmon,       {.i = -1 } },
	{ MODKEY,                       XK_period,    focusmon,       {.i = +1 } },
	{ MODKEY|ShiftMask,             XK_comma,     tagmon,         {.i = -1 } },
	{ MODKEY|ShiftMask,             XK_period,    tagmon,         {.i = +1 } },
	{ MODKEY,                       XK_u,         swalstopsel,    {0} },
	TAGKEYS(                        XK_1,                         0)
	TAGKEYS(                        XK_2,                         1)
	TAGKEYS(                        XK_3,                         2)
	TAGKEYS(                        XK_4,                         3)
	TAGKEYS(                        XK_5,                         4)
	TAGKEYS(                        XK_6,                         5)
	TAGKEYS(                        XK_7,                         6)
	TAGKEYS(                        XK_8,                         7)
	TAGKEYS(                        XK_9,                         8)
};

/* button definitions */
/* click can be ClkTagBar, ClkLtSymbol, ClkStatusText, ClkWinTitle, ClkClientWin, or ClkRootWin */
static Button buttons[] = {
	/* click                event mask        button          function        argument */
	{ ClkLtSymbol,          0,                Button1,        setlayout,      {0} },
	{ ClkLtSymbol,          0,                Button3,        setlayout,      {.v = &layouts[2]} },
	{ ClkWinTitle,          0,                Button2,        zoom,           {0} },
	{ ClkStatusText,        0,                Button2,        spawn,          {.v = termcmd } },
	{ ClkClientWin,         MODKEY,           Button1,        movemouse,      {0} },
	{ ClkClientWin,         MODKEY,           Button2,        togglefloating, {0} },
	{ ClkClientWin,         MODKEY,           Button3,        resizemouse,    {0} },
	{ ClkClientWin,         MODKEY|ShiftMask, Button1,      swalmouse,      {0} },
	{ ClkTagBar,            0,                Button1,        view,           {0} },
	{ ClkTagBar,            0,                Button3,        toggleview,     {0} },
	{ ClkTagBar,            MODKEY,           Button1,        tag,            {0} },
	{ ClkTagBar,            MODKEY,           Button3,        toggletag,      {0} },
};

