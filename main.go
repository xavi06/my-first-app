package main

import (
	"net/http"
)

func MyFirstApp(w http.ResponseWriter, req *http.Request) {
	w.Write([]byte("Hello, This is my first app!!!"))
}

func main() {
	http.HandleFunc("/", MyFirstApp)
	http.ListenAndServe(":8088", nil)

}
