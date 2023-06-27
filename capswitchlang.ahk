SetStoreCapsLockMode(false)
StartTime := ""
CapsLock::
{ ; V1toV2: Added bracket
global
if StartTime
   return
StartTime := A_TickCount
return
} ; V1toV2: Added Bracket before hotkey or Hotstring

CapsLock up::
{ ; V1toV2: Added bracket
global StartTime
TimeLength := A_TickCount - StartTime
if (TimeLength >= 1 and TimeLength < 200)
{
    Send("#{Space}")
}
else if (TimeLength >= 200)
{
    Send("{CapsLock}")
}
StartTime := ""
return
} ; V1toV2: Added bracket in the end
