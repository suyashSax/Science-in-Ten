//
//  details.swift
//  Science in Ten - Upload
//
//  Created by Suyash Saxena on 8/14/15.
//  Copyright (c) 2015 WLFRM Studios. All rights reserved.
//

import UIKit
import Parse

var result = ""

var reasonTit = ""
var reasonEasy = ""
var reasonMed = ""
var reasonHard = ""
var f1 = ""


class details: UIViewController {
    
    @IBOutlet var introText: UILabel!
    
    @IBOutlet var detailTitle: UILabel!
    
    func displayAlert(title:String, error:String)
    {
        let alert = UIAlertController(title: title, message: error, preferredStyle: UIAlertControllerStyle.Alert)
        
        alert.addAction(UIAlertAction(title: "Retry", style: .Default, handler: {action in
            self.dismissViewControllerAnimated(true, completion: nil)
        }))
        
        
        self.presentViewController(alert, animated: true, completion: nil)
        
    }
    
    var error = ""
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        let query = PFQuery(className:"eotdPage")
        query.getObjectInBackgroundWithId(objectID) {
            (object: PFObject?, error: NSError?) -> Void in
            if error == nil && object != nil
            {
                
                if let object = object
                {
                    
                    print(object["title"])
                    print(objectID)
                        
                    self.introText.text = object["details"] as? String
                    self.detailTitle.text = object["title"] as? String
                    
                    result = (object["result"] as? String)!
                    
                    
                    reasonTit = (object["reasonTitle"] as? String)!
                    
                    
                    reasonEasy = (object["reasonEasy"] as? String)!
                    
                    reasonMed = (object["reasonMed"] as? String)!
                    
                    reasonHard = (object["reasonHard"] as? String)!
                    
                    f1 = (object["fault1"] as? String)!
                }
                
            }
                
            else
            {
                print(error)
                self.error = "Please Check Your Internet Connection"
                self.displayAlert("Hmm...", error: self.error)
                
            }
            
            
        }
    
        
    }
    

    
    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    

}
