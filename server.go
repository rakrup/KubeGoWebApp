package main

import (
	"fmt"
	"net/http"
)

func main() {
	// Handling / endpoint with function helloServer "
	http.HandleFunc("/", HelloServer)
	// starting to listen to port 8080
	http.ListenAndServe(":8080", nil)
}

// Function def for func that gets called by http.HandlFunc
func HelloServer(w http.ResponseWriter, r *http.Request) {
	// Dummy return
	fmt.Fprintf(w, "Hello TriFork !!")
}
