//
//  ViewController.swift
//  ios-permanent-storage
//
//  Created by Lucas Le on 6/3/16.
//  Copyright © 2016 Lucas Le. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        NSUserDefaults.standardUserDefaults().setObject("Lucas", forKey: "name")
        let name = NSUserDefaults.standardUserDefaults().objectForKey("name") as! String
        
        print(name)
        
        let arr = [1,2,3]
        
        NSUserDefaults.standardUserDefaults().setObject(arr, forKey: "array")
        
        let recalledArray = NSUserDefaults.standardUserDefaults().objectForKey("array") as! NSArray
        
        print(recalledArray[2])
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

