set x = WScript.CreateObject("WScript.Shell")
message = inputbox("Decrypter")
message = StrReverse(message)
x.Run "%windir%\notepad"
wscript.sleep 1000
x.sendkeys encode(message)
function encode(s)
For i = 1 To Len(s)
newtxt = Mid(s, i, 1)
newtxt = Chr(Asc(newtxt)-3)
coded = coded & newtxt
Next
encode = coded
End Function