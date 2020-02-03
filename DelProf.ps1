$filepath = "hostnames.csv"
$runpath = "C:\PathTo\DelProf2.exe"

Import-CSV $filepath -Header SERIAL | Foreach-Object{

    $name = $_.SERIAL
    $arguments = "/u","/d:14","/c:$name"
    
    $out = Start-Process -filepath $runpath -ArgumentList $arguments -NoNewWindow -Wait
}
