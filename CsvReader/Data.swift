//
//  Data.swift
//  CsvReader
//
//  Created by Barrett Davis on 7/6/18.
//  Copyright © 2018 Tree Frog Software. All rights reserved.
//

import Foundation

class Data {
    let fileName = "data.csv"
    var name = [String]()
    var value = [String]()
    
    init( url: URL! ) {
        do {
            let str = try String(contentsOf: url)
            try process(string: str)
        } catch {
            print( "Error processing \(url)" )
        }
    }
    
    func process(string: String ) throws {
        let lines = string.split(separator: "\r\n")
        for line in lines {
            let columns = line.split(separator: ",", omittingEmptySubsequences: true)
            if( columns.count == 2 ) {
                name.append( String(columns[0]))
                value.append( String(columns[1]))
            }
        }
    }
    
}   // class Data
