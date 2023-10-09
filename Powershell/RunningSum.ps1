#!/usr/bin/env tclsh
<#
---------------------------------
AUTHOR: Robert DiCicco
DATE  : 2023-10-09
Challenge 238 Task 01 Running Sum ( Powershell )
---------------------------------
#>

$myints = @( (1, 2, 3, 4, 5),(1, 1, 1, 1, 1),(0, -1, 1, 2))

foreach ($mints in $myints) {
    write-host "Input: @int = [$mints]"
    $sum = 0
    $out = @()
    foreach ($i in $mints) {
        $out += $i + $sum
        $sum +=  $i
    }
    write-host "Output: [$out]`n"
}
<# 
---------------------------------
SAMPLE OUTPUT

.\RunningSum.ps1

Input: @int = [1 2 3 4 5]
Output: [1 3 6 10 15]

Input: @int = [1 1 1 1 1]
Output: [1 2 3 4 5]

Input: @int = [0 -1 1 2]
Output: [0 -1 0 2]
---------------------------------
 #>