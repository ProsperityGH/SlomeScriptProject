MAKE NUMBER what 3;
MAKE NUMBER input 2;
MAKE NUMBER factor 16;
MAKE NUMBER intMax 0;
MAKE STRING epicName "Sebastiaan";
DO "sayFancy" :epicName:;
DO "pow" :input,factor: TO intMax;
DO SET intMax :intMax/2:;
DO SAY "The\sinterger\slimit\sis:\s";
DO SAY intMax;
END 0;
DEFINE FUNC DOUBLE pow :in,fac:;
    MAKE NUMBER one 1;
    MAKE NUMBER startNum 0;
    DO SET startNum in;
    SKIP LOCATION returnLoop;
        DO SET in :in*startNum:;
        DO SET fac :fac-1:;
    SKIP TO "returnLoop" WHEN @fac>one@;
    DO RETURN in;
ENDFUNC;
DEFINE FUNC VOID sayFancy :str:;
    DO SAY "Epic\sstring:\s";
    DO SAY str;
    DO SAY "\n";
    DO RETURN;
ENDFUNC;