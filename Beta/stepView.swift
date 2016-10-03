//
//  stepView.swift
//  Science in Ten - Upload
//
//  Created by Suyash Saxena on 8/14/15.
//  Copyright (c) 2015 WLFRM Studios. All rights reserved.
//

import UIKit
import Parse

class stepView: UIViewController {
    
    var count:Int = 1
    var urlString = ""
    
    @IBOutlet var stepText: UILabel!
    
    @IBOutlet var stepNumber: UILabel!
    
    
    @IBOutlet var nText: UIButton!
    
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
                    
                    
                    self.urlString = "step1URL"
                    
                    let userImageFile = object[self.urlString] as! PFFile
                    
                    userImageFile.getDataInBackgroundWithBlock { (imageData: NSData?, error: NSError?) -> Void in
                        
                        if let imageData = imageData where error == nil
                        {
                            self.imageURL.contentMode = UIViewContentMode.ScaleAspectFit
                            self.imageURL.image = UIImage(data: imageData)
                            self.stepNumber.text = "Step \(self.count)"
                            self.stepText.text = object["step1"] as? String
                        }
                    }
                    
                    
                    
                    
                }
                
            }
                
            else
            {
                print(error)
            }
            
            
        }

        
    }
    
    
    var x:Int = 0
    
    @IBAction func onClickNext(sender: AnyObject)
    {
        count++
        
        x = count + 1
        
        let query = PFQuery(className:"eotdPage")
        query.getObjectInBackgroundWithId(objectID) {
            (object: PFObject?, error: NSError?) -> Void in
            if error == nil && object != nil
            {
                
                if let object = object
                {
                    if object["step\(self.count)"] as? String != "nil"
                    {
                        self.urlString = "step\(self.count)URL"
                        
                        let userImageFile = object[self.urlString] as! PFFile
                        
                        userImageFile.getDataInBackgroundWithBlock { (imageData: NSData?, error: NSError?) -> Void in
                            
                            if let imageData = imageData where error == nil
                            {
                                self.imageURL.contentMode = UIViewContentMode.ScaleAspectFit
                                self.imageURL.image = UIImage(data: imageData)
                                self.stepNumber.text = "Step \(self.count)"
                                self.stepText.text = object["step\(self.count)"] as? String

                            }
                        }
                        
                        if object["step\(self.x)"] as? String == "nil"
                        {
                            self.nText.setTitle("What you'll See", forState: .Normal)
                        }
                    }
                        
                    else
                    {
                        self.performSegueWithIdentifier("goToResult", sender: self)
                    }
                }
            }
            else
            {
                print(error)
                let alertView = UIAlertView();
                alertView.addButtonWithTitle("Retry");
                alertView.title = "Cannot Fetch Experiments";
                alertView.message = "Please Connect to the Internet";
                alertView.show();
            }
        } 
    }
    
    
    @IBAction func onClickBack(sender: AnyObject)
    {
        count--
        
        let query = PFQuery(className:"eotdPage")
        query.getObjectInBackgroundWithId(objectID) {
            (object: PFObject?, error: NSError?) -> Void in
            if error == nil && object != nil
            {
                
                if let object = object
                {
                    
                    if self.count == 0
                    {
                        self.performSegueWithIdentifier("goToApparatus", sender: self)
                    }
                    
                    if object["apparatus\(self.count)"] as? String != "nil"
                    {
                        if(self.count != 0)
                        {
                            self.urlString = "step\(self.count)URL"
                            
                            let userImageFile = object[self.urlString] as! PFFile
                            
                            userImageFile.getDataInBackgroundWithBlock { (imageData: NSData?, error: NSError?) -> Void in
                                
                                if let imageData = imageData where error == nil
                                {
                                    self.imageURL.contentMode = UIViewContentMode.ScaleAspectFit
                                    self.imageURL.image = UIImage(data: imageData)
                                    self.stepNumber.text = "Step \(self.count)"
                                    self.stepText.text = object["step\(self.count)"] as? String
                                }
                            }
                        }
                    }
                    else
                    {
                        self.performSegueWithIdentifier("goStep", sender: self)
                    }
                    
                }
                
            }
            
        }
    }
    @IBOutlet var imageURL: UIImageView!
    
    
    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
