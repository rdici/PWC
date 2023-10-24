#!/usr/bin/env powershell
<# 
-----------------------------------
AUTHOR: Robert DiCicco
DATE  : 23-OCT-2023
Challenge 240 Task 02 Build Array ( Powershell )
 #>
 
$myints = @(( 0, 2, 1, 5, 3, 4),(5, 0, 1, 2, 3, 4))

foreach ($mints in $myints ) {
    $out = @()
    write-host "Input: @ints = [$mints]"
    $cnt = 0
    while ( $cnt -lt $mints.Count) {
        $out += $mints[$mints[$cnt]]
        $cnt += 1
    }
    write-host "Output: [$out]`n"
}

<# 
-----------------------------------
SAMPLE OUTPUT
.\BuildArray.ps1

Input: @ints = [0 2 1 5 3 4]
Output: [0 1 2 4 5 3]

Input: @ints = [5 0 1 2 3 4]
Output: [4 5 0 1 2 3]
 #>