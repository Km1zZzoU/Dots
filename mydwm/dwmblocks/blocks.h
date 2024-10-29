//Modify this file to change what commands output to your statusbar, and recompile using the make command.
static const Block blocks[] = {
	/*Icon*/	/*Command*/		/*Update Interval*/	/*Update Signal*/
  {"", "echo \"Welcome to the Void! \uf32e \"", 60, 0},

  {"", "xset -q|grep LED| awk '{ if (substr ($10,5,1) == 1) print \"[RU]\"; else print \"[EN]\"; }'", 1, 0},

  {"", "~ezhe/tools/myDwm/dwmblocks/battery.sh", 1, 0},

  {"󰍛 ", "free -h | awk '/^Mem/ { print $3\"/\"$2 }' | sed s/i//g", 30, 0},
  
  {"󱄠 ", "pactl list sinks | awk '/Volume/ {print $5}' | awk 'BEGIN{RS=\"\";FS=\"\\n\"}{print $7}'", 1, 0},

  {" " , "date '+%d.%m'", 60, 0},
  
  {" ", "date '+%H:%M  '", 5, 0},

};

//sets delimiter between status commands. NULL character ('\0') means no delimiter.
static char delim[] = " / ";
static unsigned int delimLen = 11;
