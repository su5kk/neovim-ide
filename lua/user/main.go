package main

import "fmt"

type A struct {
	ID string `json:"id"`
}

func main() {
  a := &A{}
  fmt.Println(a)
}
