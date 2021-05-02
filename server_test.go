package main

import (
	"net/http"
	"net/http/httptest"
	"testing"
)

// Unit test code for HelloServer function.
func Test_HelloServer(t *testing.T) {
	req, err := http.NewRequest("GET", "http://example.com/test", nil)
	if err != nil {
		t.Fatal(err)
	}

	res := httptest.NewRecorder()
	HelloServer(res, req)

	exp := "Hello TriFork !!"
	act := res.Body.String()
	if exp != act {
		t.Fatalf("Expected %s but got %s", exp, act)
	}
}
