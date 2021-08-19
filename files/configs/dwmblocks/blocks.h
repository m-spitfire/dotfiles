//Modify this file to change what commands output to your statusbar, and recompile using the make command.
static const Block blocks[] = {
    /*Icon*/    /*Command*/      /*Update Interval*/    /*Update Signal*/
    {"",        "dwmblocks-music",          0,                      4},
    {"",        "dwmblocks-torrent",        20,                     6},
    {"",        "dwmblocks-microphone",     10,                     7},
    {"",        "dwmblocks-webcam",         10,                     0},
    {"",        "dwmblocks-volume",         10,                     2},
    {"",        "dwmblocks-power",          5,                      0},
    {"",        "dwmblocks-network",        5,                      0},
    {"",        "dwmblocks-date",           60,                     0},
};

//sets delimeter between status commands. NULL character ('\0') means no delimeter.
static char delim[] = " | ";
static unsigned int delimLen = 5;
