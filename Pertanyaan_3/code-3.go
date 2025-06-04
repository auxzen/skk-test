package main

import (
	"fmt"
	"sort"
)

func main() {
	n := []int{12, 9, 13, 6, 10, 4, 7, 2}

	var filtered []int
	for _, x := range n {
		if x%3 != 0 {
			filtered = append(filtered, x)
		}
	}

	sort.Ints(filtered)

	fmt.Println("Hasil filter kelipatan 3 dan mengurutkan secara ascending: ")
	fmt.Println(filtered)
}
