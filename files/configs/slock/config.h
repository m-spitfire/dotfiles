#ifndef HAVE_PAM
/* user and group to drop privileges to */
static const char *user  = "spitfire";
static const char *group = "wheel";
#endif // HAVE_PAM

static const char *colorname[NUMCOLS] = {
	[INIT] =   "#{color/foreground/hex}",     /* after initialization */
	[INPUT] =  "#{color/base08/hex}",   /* during input */
	[FAILED] = "#{color/error/hex}",   /* wrong password */
};

/* treat a cleared input like a wrong password (color) */
static const int failonclear = 1;

/* time in seconds before the monitor shuts down */
static const int monitortime = 30;

/* insert grid pattern with scale 1:1, the size can be changed with logosize */
static const int logosize = 75;
/* grid width and height for right center alignment */
static const int logow = 12;
static const int logoh = 6;

static XRectangle rectangles[9] = {
	/* x    y       w       h */
	{ 0,    3,      1,      3 },
	{ 1,    3,      2,      1 },
	{ 0,    5,      8,      1 },
	{ 3,    0,      1,      5 },
	{ 5,    3,      1,      2 },
	{ 7,    3,      1,      2 },
	{ 8,    3,      4,      1 },
	{ 9,    4,      1,      2 },
	{ 11,   4,      1,      2 },
};

/*Enable blur*/
#define BLUR
/*Set blur radius*/
static const int blurRadius=5;
/*Enable Pixelation*/
//#define PIXELATION
/*Set pixelation radius*/
static const int pixelSize=0;

/* time in seconds to cancel lock with mouse movement */
static const int timetocancel = 4;
/* PAM service that's used for authentication */
static const char* pam_service = "login";