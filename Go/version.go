package main

import (
    "database/sql"
    "fmt"
    "log"

    _ "github.com/go-sql-driver/mysql"
)


type Moto struct {
    Id         int
    Tapahtuma       string    
}

func main() {

    db, err := sql.Open("mysql", "root:@tcp(127.0.0.1:3306)/jrla")
	if err != nil {
		log.Fatal(err)
	}
	
    defer db.Close()


    var version string

    err2 := db.QueryRow("SELECT VERSION()").Scan(&version)

    if err2 != nil {
        log.Fatal(err2)
    }

    fmt.Println(version)

	getRows, selError := db.Query("SELECT Tapahtuma from moto")
	defer getRows.Close()

	if (selError != nil){
		log.Fatal(selError)
	}

	var m Moto

	for getRows.Next(){
		selError := getRows.Scan(&m.Tapahtuma)

		if (selError != nil){
			log.Fatal(selError)
		}

		fmt.Printf("%v", m)
	}
}