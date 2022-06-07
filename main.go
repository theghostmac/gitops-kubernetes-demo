package main

import (
	"fmt"
	"log"
	"net/http"
)

func main() {
	http.HandleFunc("/", func(writer http.ResponseWriter, request *http.Request) {
		fmt.Fprintf(writer, "This is a demo app for GitOps implementation.")
	})

	log.Fatalf("error: %s", http.ListenAndServe(":8080", nil))
}