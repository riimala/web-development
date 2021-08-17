package main

import (
	"database/sql"
	"fmt"
	"log"

	_ "github.com/go-sql-driver/mysql"
)

type Moto struct {
	ID        int
	Tapahtuma string
	KM	int
	PVM string
	Selite string
	Kertyma	int
}

func main() {

	db, err := sql.Open("mysql", "root:@tcp(127.0.0.1:3306)/jrla")
	if err != nil {
		log.Fatal(err)
	}
	
	getRows, selError := db.Query("SELECT * from moto")
	defer getRows.Close()

	if selError != nil {
		log.Fatal(selError)
	}

	var m Moto

	for getRows.Next() {
		selError := getRows.Scan(&m.ID, &m.Tapahtuma, &m.KM, &m.PVM, &m.Selite, &m.Selite)

		if selError != nil {
			log.Fatal(selError)
		}

		fmt.Printf("%v\n", m)
	}
}
