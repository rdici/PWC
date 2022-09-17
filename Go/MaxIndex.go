package main

/*
AUTHOR: Robert DiCicco
DATE: 2022-09-17
Challenge 182 Max Index ( Go )
*/

import (
	"fmt"
	"sort"
)

var n_arr = []int{5, 2, 9, 1, 7, 6}
var n_ndx = make(map[int]int)
var count = 0

func main() {
	fmt.Println("Input: @n = ", n_arr)
	for i := 0; i < len(n_arr); i++ {
		n_ndx[n_arr[i]] = i
	}
	sort.Sort(sort.Reverse(sort.IntSlice(n_arr)))
	fmt.Println("Output: ", n_ndx[n_arr[0]])
}

/*
---------------------------------------
SAMPLE OUTPUT
PS G:\Projects\Perl\Challenges> go run .\MaxIndex.go
Input: @n =  [5 2 9 1 7 6]
Output:  2
*/
