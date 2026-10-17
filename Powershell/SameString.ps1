#!/usr/bin/env powershell
<#
-------------------------------------
AUTHOR: Robert DiCicco
DATE  : 2023-10-16
Challenge 239 Task 01 Same String ( Powershell )
------------------------------------
 #>
$myarr1 = @( ("ab", "c"),("ab", "c"),("ab", "cd", "e") )
$myarr2 = @( ("a", "bc"),("ac", "b"),("abcde") )
$cnt = 0

while ($cnt -lt $myarr1.count) {
    write-output "Input: @arr1 =  [",$myarr1[$cnt],"]"
    write-output "`t@arr2 = [",$myarr2[$cnt],"]"
    if (-join($myarr1[$cnt]) -eq -join($myarr2[$cnt])){
        write-output "Output: true`n"
    } else {
        write-output "Output: false`n"
    }
    $cnt += 1
}