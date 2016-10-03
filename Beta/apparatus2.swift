//
//  apparatus2.swift
//  Beta
//
//  Created by Sachin Saxena on 8/14/15.
//  Copyright (c) 2015 pi. All rights reserved.
//

import UIKit
import Parse


class apparatus2: UIViewController {
    
    @IBOutlet var apparatus: UILabel!
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        var query = PFQuery(className:"eotdPage")
        query.getObjectInBackgroundWithId("qm8INsJEPU") {
            (object: PFObject?, error: NSError?) -> Void in
            if error == nil && object != nil
            {
                
                if let object = object
                {
                    self.apparatus.text = object["apparatus2"] as? String
                    
                    
                }
                
            }
                
            else
            {
                println(error)
            }
            
            
        }
        
    }
    
    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    

}
