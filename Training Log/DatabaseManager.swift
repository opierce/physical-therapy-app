//
//  DatabaseManager.swift
//  Training Log
//
//  Created by Owen Pierce on 2/24/19.
//  Copyright © 2019 Owen Pierce. All rights reserved.
//

import UIKit
import SQLite3

class DatabaseManager: NSObject {
    static let instance: DatabaseManager = DatabaseManager()
    
    private static let dbPath = Bundle.main.path(forResource: "training", ofType: "sqlite")
    
    func openDatabase() -> OpaquePointer? {
        var db: OpaquePointer? = nil
        if sqlite3_open(DatabaseManager.dbPath, &db) == SQLITE_OK {
            print("Successfully opened connection to database at \(String(describing: DatabaseManager.dbPath))")
            return db
        } else {
            fatalError("Unable to open database. Verify that you created the directory described.")
        }
    }
    
    func readExercises() {
        if let db = openDatabase() {
            let selectExercises =
            """
            SELECT * FROM exercises;
            """
            
            var statementPointer: OpaquePointer? = nil
            if sqlite3_prepare_v2(db, selectExercises, -1, &statementPointer, nil) == SQLITE_OK {
                if sqlite3_step(statementPointer) == SQLITE_DONE {
                    print("Select statement executed successfully!")
                    
                    let id = sqlite3_column_int(statementPointer, 0)
                    
                    // 4
                    let queryResultCol1 = sqlite3_column_text(statementPointer, 1)
                    let name = String(cString: queryResultCol1!)
                    
                    // 5
                    print("Query Result:")
                    print("\(id) | \(name)")
                    
                    sqlite3_finalize(statementPointer)
                    
                } else {
                    print("Select statement could not be executed.")
                }
            } else {
                print("SQL Statement could not compile: \(selectExercises)")
            }
        }
//        executeSql(sqlStatement: "SELECT * FROM exercises;") { (content, err) in
//            print("Content: \(String(describing: content))")
//            print("Error: \(String(describing: err))")
//        }
    }
    
    fileprivate func executeSql(sqlStatement: String, callback: (String?, String?) -> Void) {
        if let db = openDatabase() {
            var statementPointer: OpaquePointer? = nil
            if sqlite3_prepare_v2(db, sqlStatement, -1, &statementPointer, nil) == SQLITE_OK {
                if sqlite3_step(statementPointer) == SQLITE_DONE {
                    print("Statement executed successfully!")
                    
                } else {
                    print("Contact table could not be created.")
                }
            } else {
                print("SQL Statement could not compile: \(sqlStatement)")
            }
        }
    }
    
//    fileprivate func createTables() {
//        let createTableString =
//"""
//CREATE TABLE IF NOT EXISTS Exercises(
//id INT PRIMARY KEY NOT NULL,
//name CHAR(255),
//exercise_description CHAR(255),
//movement CHAR(255),
//);
//"""
//        executeSql(sqlStatement: createTableString, callback: <#T##(String, String) -> Void#>)
//    }
}
