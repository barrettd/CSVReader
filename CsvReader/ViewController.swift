//
//  ViewController.swift
//  CsvReader
//
//  Created by Barrett Davis on 7/6/18.
//  Copyright © 2018 Tree Frog Software. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let data = Data( url: Bundle.main.url(forResource: "data", withExtension: "csv"))
        let count = data.name.count;
        if( count > 1 ) {
            for index in 1...(count-1) {    // Skipping header: "Fruit","Number"
                print( "\(index) \(data.name[index]), \(data.value[index])" )

            }
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

