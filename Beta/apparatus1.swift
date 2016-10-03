//
//  apparatus1.swift
//  Science in Ten - Upload
//
//  Created by Suyash Saxena on 8/14/15.
//  Copyright (c) 2015 WLFRM Studios. All rights reserved.
//

import UIKit
import Parse


class apparatus1: UIViewController {
    
    var count:Int = 1
    var urlString = ""
    
    @IBOutlet var apparatus: UILabel!
    
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
                    self.urlString = "app1URL"
                    
                    let userImageFile = object[self.urlString] as! PFFile
                    
                    userImageFile.getDataInBackgroundWithBlock { (imageData: NSData?, error: NSError?) -> Void in
                        
                        if let imageData = imageData where error == nil
                        {
                            self.imageURL.contentMode = UIViewContentMode.ScaleAspectFit
                            self.imageURL.image = UIImage(data: imageData)
                            self.apparatus.text = object["apparatus1"] as? String
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
    
    @IBOutlet var nextButton: UIButton!
    
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
                    if object["apparatus\(self.count)"] as? String != "nil"
                    {
                        
                        self.urlString = "app\(self.count)URL"
                        
                        let userImageFile = object[self.urlString] as! PFFile
                        
                        userImageFile.getDataInBackgroundWithBlock { (imageData: NSData?, error: NSError?) -> Void in
                            
                            if let imageData = imageData where error == nil
                            {
                                self.imageURL.contentMode = UIViewContentMode.ScaleAspectFit
                                self.imageURL.image = UIImage(data: imageData)
                                self.apparatus.text = object["apparatus\(self.count)"] as? String
                            }
                        }
                        
                        

                        
                        if object["apparatus\(self.x)"] as? String == "nil"
                        {
                            self.nText.setTitle("What to Do", forState: .Normal)
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
                       self.performSegueWithIdentifier("goToIntro", sender: self)
                        
                    }
                    
                    if object["apparatus\(self.count)"] as? String != "nil"
                    {
                        
                        if(self.count != 0)
                        {
                        self.urlString = "app\(self.count)URL"
                        
                        
                            let userImageFile = object[self.urlString] as! PFFile
                            
                            userImageFile.getDataInBackgroundWithBlock { (imageData: NSData?, error: NSError?) -> Void in
                                
                                if let imageData = imageData where error == nil
                                {
                                    self.imageURL.contentMode = UIViewContentMode.ScaleAspectFit
                                    self.imageURL.image = UIImage(data: imageData)
                                    self.apparatus.text = object["apparatus\(self.count)"] as? String

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
