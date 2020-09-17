// Package main provides ...
package main

import (
	"fmt"
	"math"
	"math/rand"
	"time"
)

func main() {
	rand.Seed(int64(time.Now().Nanosecond()))
	N := 1000000000000000
	IN := 0

	for i := 0; i < N; i++ {
		x := rand.Float64()
		y := rand.Float64()
		if math.Sqrt(x*x+y*y) <= 1 {
			IN++
		}
	}

	fmt.Printf("%f\n", 4.0*float64(IN)/float64(N))
}
