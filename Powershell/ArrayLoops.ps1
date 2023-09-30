<#
---------------------------------------------
AUTHOR: Robert DiCicco
DATE  : 09-30-2023
Challenge 236 Task 02 Array Loops ( Powershell )
---------------------------------------------
#>

$myints = @( (4,6,3,8,15,0,13,18,7,16,14,19,17,5,11,1,12,2,9,10 ), (0,1,13,7,6,8,10,11,2,14,16,4,12,9,17,5,3,18,15,1),  (9,8,3,11,5,7,13,19,12,4,14,10,18,2,16,1,0,15,6,17 ))
$global:seen = @()
$global:lps = 0
function WalkLoop {
    param (
        $m,
        $s
    )
    $outloop = @()
    $start = $m[$s]
    $v = $m[$start]
    if ($v -eq $start) {
        $seen += $s
        $outloop += $s
        $ol = $outloop.Count
        if ($ol -eq 1 ) {
            write-host "`tLoop: [$outloop]"
            $global:lps += 1
        }
        return
    } else {
        $global:seen += $start
        $outloop += $start
        $global:seen += $v
        $outloop += $v
    }
    while (1) {
        $v = $m[$v]
        if ($global:seen -contains $v) {
            break
        }
        if ( $v -eq $start) {
            break
        } else {
            $global:seen += $v
            $outloop += $v
        }
    }
    #}
    $ol = $outloop.Count
    if (($ol -gt 2)-or ($ol -eq 1 )) {
        write-host "`tLoop: [$outloop]"
        $global:lps += 1
    }
}
          
foreach ($mints in $myints) {
     write-host "Input: [@ints = $mints]"
     $global:seen = @()
     $global:lps = 0
     $cnt = 0
     while ($cnt -lt 20 ) {
         WalkLoop $mints $cnt
         $cnt += 1
     }
     write-host "`n`tOutput: $global:lps"
     write-host "----------------------------------------------------"
}

<#
SAMPLE OUTPUT
.\ArrayLoops.ps1
Input: [@ints = 4 6 3 8 15 0 13 18 7 16 14 19 17 5 11 1 12 2 9 10]
        Loop: [4 15 1 6 13 5 0]
        Loop: [3 8 7 18 9 16 12 17 2]
        Loop: [14 11 19 10]

        Output: 3
----------------------------------------------------
Input: [@ints = 0 1 13 7 6 8 10 11 2 14 16 4 12 9 17 5 3 18 15 1]
        Loop: [0]
        Loop: [1]
        Loop: [13 9 14 17 18 15 5 8 2]
        Loop: [7 11 4 6 10 16 3]
        Loop: [12]
        Loop: [19]

        Output: 6
----------------------------------------------------
Input: [@ints = 9 8 3 11 5 7 13 19 12 4 14 10 18 2 16 1 0 15 6 17]
        Loop: [9 4 5 7 19 17 15 1 8 12 18 6 13 2 3 11 10 14 16 0]

        Output: 1
----------------------------------------------------
#>