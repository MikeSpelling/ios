//
//  DYNStartViewController.swift
//  dynomike
//
//  Created by Michael Spelling on 26/10/2014.
//  Copyright (c) 2014 Michael Atkins-Spelling. All rights reserved.
//

import UIKit
import Alamofire

class DYNStartViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        Alamofire.request(.GET, "http://127.0.0.1:3000/api")
            .responseString { (_, _, string, _) in
                println(string)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

