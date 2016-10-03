//
//  eotdPage.swift
//  Science in Ten - Upload
//
//  Created by Suyash Saxena on 8/14/15.
//  Copyright (c) 2015 WLFRM Studios. All rights reserved.
//


import UIKit
import Parse
import CoreData
import SystemConfiguration
import Foundation

class eotdPage: UIViewController
{
    var experiment = [PFObject]()
    
    @IBOutlet var eotdTitle: UILabel!
    
    var urlString = ""
    
    @IBOutlet var imageURL: UIImageView!
    
    var errors = false
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
  
        do
        {
            let query = PFQuery(className:"eotdPage")
            query.whereKey("EOTD", equalTo: true)
        
            try experiment = query.findObjects()
            
            objectID = experiment[0].objectId!
            query.getObjectInBackgroundWithId(objectID) {
                (object: PFObject?, error: NSError?) -> Void in
                
                if error == nil && object != nil
                {
                    
                    if let object = object
                    {
                        print(object["title"])
                        self.eotdTitle.text = object["title"] as? String
                        
                        self.urlString = "titleURL"
                        
                        let userImageFile = object["titleURL"] as! PFFile
                        
                        userImageFile.getDataInBackgroundWithBlock { (imageData: NSData?, error: NSError?) -> Void in
                            
                            if let imageData = imageData where error == nil
                            {
                                
                                self.imageURL.contentMode = UIViewContentMode.ScaleAspectFit
                                self.imageURL.image = UIImage(data: imageData)
                                self.imageURL.frame = CGRectMake(25, 280, 326, 241)
                            }
                        }
                        
                    }
                    
                }
                
            }
            
        }
        catch
        {

            self.errors = true
            
        }
        
        if errors
        {
            print("Try Again")
        }
        
    }
    
    @IBAction func onClick(sender: AnyObject)
    {
        print(objectID)
    }
    
    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}
