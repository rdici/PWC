#!/usr/bin/env powershell
<#
------------------------------------
AUTHOR: Robert DiCicco
DATE  : 2023-10-21
Challenge 240 Task 01 Acronym ( Powershell )
------------------------------------
 #>
$mystr = @(("Perl", "Python", "Pascal"),("Perl", "Raku"),("Oracle", "Awk", "C"))
$mychk = @(("ppp","rp","oac"))
$cnt = 0
$Script:val = ""

function GetFirstLetters($wds) {
    $acronym = ""
    foreach ($w in $wds) {
        $w = $w.ToLower()
        $acronym += $w[0]
    }
    return $acronym
}

foreach ($str in $mystr) {
    write-output "Input: @str = [$str]"
	$val = $mychk[$cnt]
    #write-output "check = ["$mychk[$cnt]"]"
	write-output "check = [$val]"
    $retval = GetFirstLetters($mystr[$cnt])
    if ( $retval -eq $mychk[$cnt]) {
        write-output "Output: true`n"
    } else {
        write-output "Output: false`n"
    }
    $cnt += 1
}

<#
------------------------------------
SAMPLE OUTPUT
xxxxxxxxxxxxxxxxxxxx
.\Acronym.ps1

Input: @str = [Perl Python Pascal]
check = [ ppp ]
Output: true

Input: @str = [Perl Raku]
check = [ rp ]
Output: false

Input: @str = [Oracle Awk C]
check = [ oac ]
Output: true
------------------------------------
 #>