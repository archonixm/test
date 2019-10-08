Function Get-Bits(){
Switch ([System.Runtime.InterOpServices.Marshal]::SizeOf([System.IntPtr]::Zero)) {
4 {
Return "32-bit"
}

8 {
Return "64-bit"
}

default {
Return "Unknown Type"
}
}
}

Get-Bits
