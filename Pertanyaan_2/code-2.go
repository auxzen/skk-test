package main

import "fmt"

// pola a
func patternA(n int) {
	for i := 1; i <= n; i++ {
		for j := 1; j <= i; j++ {
			fmt.Print(i)
		}
		fmt.Println()
	}
}

// pola b
func patternB(n int) {
	for i := 1; i <= n; i++ {
		for j := i; j >= 1; j-- {
			fmt.Print(j)
		}
		fmt.Println()
	}
}

// pola c
func patternC(n int) {
	mid := (n + 1) / 2

	for i := 1; i <= n; i++ {
		if i == 1 {
			fmt.Println("1")
			continue
		}

		if i%2 == 1 {
			// Baris ganjil: palindrom, n di tengah
			half := (i - 1) / 2
			for j := n - half; j <= n; j++ {
				fmt.Print(j)
			}
			for j := n - 1; j >= n-half; j-- {
				fmt.Print(j)
			}
			fmt.Println()
		} else {
			// Baris genap: turun ke 1 lalu naik lagi
			var start int
			if i <= mid {
				start = i
			} else {
				start = n - i + 2
			}

			count := 0
			for j := start; j >= 1; j-- {
				fmt.Print(j)
				count++
				if count == i {
					break
				}
			}

			// Jika belum cukup i elemen, lanjut naik
			nextUp := 2
			for count < i {
				fmt.Print(nextUp)
				nextUp++
				count++
			}
			fmt.Println()
		}
	}
}

// pola d
func patternD(n int) {
	M := make([][]int, n)
	for i := 0; i < n; i++ {
		M[i] = make([]int, n)
	}

	current := 1
	for j := 0; j < n; j++ {
		if (j+1)%2 == 1 {
			for i := 0; i < n; i++ {
				M[i][j] = current
				current++
			}
		} else {
			for i := n - 1; i >= 0; i-- {
				M[i][j] = current
				current++
			}
		}
	}

	for i := 0; i < n; i++ {
		for j := 0; j < n; j++ {
			fmt.Printf("%-3d", M[i][j])
		}
		fmt.Println()
	}
}

func main() {
	var n int

	fmt.Print("masukan nilai n: ")
	_, err := fmt.Scan(&n)
	if err != nil {
		fmt.Println("Error pembacaan input n: ", err)
		return
	}

	fmt.Println("\nPola A: ")
	patternA(n)

	fmt.Println("\nPola B: ")
	patternB(n)

	fmt.Println("\nPola C: ")
	patternC(n)

	fmt.Println("\nPola D: ")
	patternD(n)

}
