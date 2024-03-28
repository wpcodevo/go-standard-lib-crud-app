package main

import (
	"encoding/json"
	"log"
	"net/http"
)

func main() {
	router := http.NewServeMux()
	router.HandleFunc("/api/healthchecker", func(w http.ResponseWriter, r *http.Request) {
		response := map[string]string{
			"status":  "ok",
			"message": "Welcome to Go standard library",
		}
		w.Header().Set("Content-Type", "application/json")
		json.NewEncoder(w).Encode(response)
	})

	server := http.Server{
		Addr:    ":8000",
		Handler: router,
	}

	log.Println("Starting server on port :8000")

	server.ListenAndServe()
}
