//
//  troubleshoot.swift
//  Science in Ten - Upload
//
//  Created by Sachin Saxena on 8/26/15.
//  Copyright (c) 2015 WLFRM Studios. All rights reserved.
//

import UIKit
import Parse

class troubleshoot: UIViewController
{
    @IBOutlet var fault1: UILabel!
    
    @IBOutlet var fault2: UILabel!
    
    @IBOutlet var fault3: UILabel!
    
 
    override func viewDidLoad()
    {
        
        fault1.text = f1
    
    }
    
    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
}
