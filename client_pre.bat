@ECHO OFF 
::%1 start mshta vbscript:createobject("wscript.shell").run("""%~0"" ::",0)(window.close)&&exit
::cd c:\udp
start /b speederv2.exe -c -l 0.0.0.0:2099 -r 127.0.0.1:9999 -f2:4 --mode 0 --timeout 0 --report 10 
start /b udp2raw.exe -c -r 103.102.45.151:9898 -l 127.0.0.1:9999 --raw-mode faketcp -k passwd
