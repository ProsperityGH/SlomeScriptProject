MAKE STRING name "Prosper";
MAKE NUMBER counter 100;
DO "TIME" :counter,name:;
END 0;
DEFINE FUNC VOID TIME :c,n:;
    MAKE NUMBER i 0;
    SKIP LOCATION loop;
        DO SET i :i+1:;
        DO SAY i;
        DO SAY ".\s";
        DO SAY n;
        DO SAY "\n";
    SKIP TO "loop" WHEN @i<c@;
ENDFUNC;