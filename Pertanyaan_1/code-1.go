package main

import "fmt"

func main() {
	var n int

	// 1. membaca input dari n
	fmt.Print("Masukan nilai n: ")
	_, err := fmt.Scan(&n)
	if err != nil {
		fmt.Println("Error pembacaan input n: ", err)
		return
	}

	// 2. loop dari i = 1 sampai n
	for i := 1; i <= n; i++ {
		if i%12 == 0 {
			fmt.Print("OKYES")
		} else if i%4 == 0 {
			fmt.Print("YES")
		} else if i%3 == 0 {
			fmt.Print("OK")
		} else {
			fmt.Print(i)
		}

		// membuat spasi antar output
		if i < n {
			fmt.Print(" ")
		}
	}

	fmt.Println()

}
