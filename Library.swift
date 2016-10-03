//
//  Library.swift
//  Science in Ten - Upload
//
//  Created by Suyash Saxena on 8/28/15.
//  Copyright (c) 2015 WLFRM Studios. All rights reserved.
//

import UIKit
import Parse
import Bolts

class Library: UIViewController {
    
    @IBOutlet var imageOne: UIImageView!
    
    @IBOutlet var imageTwo: UIImageView!
    
    @IBOutlet var imageThree: UIImageView!
    
    @IBOutlet var imageFour: UIImageView!
    
    @IBOutlet var imageFive: UIImageView!
    
    @IBOutlet var imageSix: UIImageView!
    
    @IBOutlet var imageSeven: UIImageView!
    
    @IBOutlet var imageEight: UIImageView!
    
    @IBOutlet var imageNine: UIImageView!
    
    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
        
        do
        {
            
            let query = PFQuery(className:"eotdPage")
            query.getObjectInBackgroundWithId("ZBHBabDXqp"){
                (object: PFObject?, error: NSError?) -> Void in
                if error == nil && object != nil
                {
                    if let object = object
                    {
                        let userImageFile = object["libPic"] as! PFFile
                        
                        userImageFile.getDataInBackgroundWithBlock { (imageData: NSData?, error: NSError?) -> Void in
                            
                            if let imageData = imageData where error == nil
                            {
                                self.imageOne.contentMode = UIViewContentMode.ScaleAspectFit
                                self.imageOne.image = UIImage(data: imageData)
                            }
                        }
                    }
                }
                
        }
            let queryB = PFQuery(className:"eotdPage")
            queryB.getObjectInBackgroundWithId("5kqoDqYZgj"){
                (object: PFObject?, error: NSError?) -> Void in
                if error == nil && object != nil
                {
                    if let object = object
                    {
                        let userImageFile = object["libPic"] as! PFFile
                        
                        userImageFile.getDataInBackgroundWithBlock { (imageData: NSData?, error: NSError?) -> Void in
                            
                            if let imageData = imageData where error == nil
                            {
                                self.imageTwo.contentMode = UIViewContentMode.ScaleAspectFit
                                self.imageTwo.image = UIImage(data: imageData)
                            }
                        }
                    }
                }
                
            }
            
            let queryC = PFQuery(className:"eotdPage")
            queryC.getObjectInBackgroundWithId("BxsXniDHBf"){
                (object: PFObject?, error: NSError?) -> Void in
                if error == nil && object != nil
                {
                    if let object = object
                    {
                        let userImageFile = object["libPic"] as! PFFile
                        
                        userImageFile.getDataInBackgroundWithBlock { (imageData: NSData?, error: NSError?) -> Void in
                            
                            if let imageData = imageData where error == nil
                            {
                                self.imageThree.contentMode = UIViewContentMode.ScaleAspectFit
                                self.imageThree.image = UIImage(data: imageData)
                            }
                        }
                    }
                }
                
            }
            
            
            let queryD = PFQuery(className:"eotdPage")
            queryD.getObjectInBackgroundWithId("NqGr109ZD4"){
                (object: PFObject?, error: NSError?) -> Void in
                if error == nil && object != nil
                {
                    if let object = object
                    {
                        let userImageFile = object["libPic"] as! PFFile
                        
                        userImageFile.getDataInBackgroundWithBlock { (imageData: NSData?, error: NSError?) -> Void in
                            
                            if let imageData = imageData where error == nil
                            {
                                self.imageFour.contentMode = UIViewContentMode.ScaleAspectFit
                                self.imageFour.image = UIImage(data: imageData)
                            }
                        }
                    }
                }
                
            }
            
            
            
            let queryE = PFQuery(className:"eotdPage")
            queryE.getObjectInBackgroundWithId("e2qW3gxf7r"){
                (object: PFObject?, error: NSError?) -> Void in
                if error == nil && object != nil
                {
                    if let object = object
                    {
                        let userImageFile = object["libPic"] as! PFFile
                        
                        userImageFile.getDataInBackgroundWithBlock { (imageData: NSData?, error: NSError?) -> Void in
                            
                            if let imageData = imageData where error == nil
                            {
                                self.imageFive.contentMode = UIViewContentMode.ScaleAspectFit
                                self.imageFive.image = UIImage(data: imageData)
                            }
                        }
                    }
                }
                
            }
            
            
            let queryF = PFQuery(className:"eotdPage")
            queryF.getObjectInBackgroundWithId("Xw1oNaYj1N"){
                (object: PFObject?, error: NSError?) -> Void in
                if error == nil && object != nil
                {
                    if let object = object
                    {
                        let userImageFile = object["libPic"] as! PFFile
                        
                        userImageFile.getDataInBackgroundWithBlock { (imageData: NSData?, error: NSError?) -> Void in
                            
                            if let imageData = imageData where error == nil
                            {
                                self.imageSix.contentMode = UIViewContentMode.ScaleAspectFit
                                self.imageSix.image = UIImage(data: imageData)
                            }
                        }
                    }
                }
                
            }

            
            let queryG = PFQuery(className:"eotdPage")
            queryG.getObjectInBackgroundWithId("K9INyvEgOs"){
                (object: PFObject?, error: NSError?) -> Void in
                if error == nil && object != nil
                {
                    if let object = object
                    {
                        let userImageFile = object["libPic"] as! PFFile
                        
                        userImageFile.getDataInBackgroundWithBlock { (imageData: NSData?, error: NSError?) -> Void in
                            
                            if let imageData = imageData where error == nil
                            {
                                self.imageSeven.contentMode = UIViewContentMode.ScaleAspectFit
                                self.imageSeven.image = UIImage(data: imageData)
                            }
                        }
                    }
                }
                
            }
            
            let queryH = PFQuery(className:"eotdPage")
            queryH.getObjectInBackgroundWithId("sZ2aler2H6"){
                (object: PFObject?, error: NSError?) -> Void in
                if error == nil && object != nil
                {
                    if let object = object
                    {
                        let userImageFile = object["libPic"] as! PFFile
                        
                        userImageFile.getDataInBackgroundWithBlock { (imageData: NSData?, error: NSError?) -> Void in
                            
                            if let imageData = imageData where error == nil
                            {
                                self.imageEight.contentMode = UIViewContentMode.ScaleAspectFit
                                self.imageEight.image = UIImage(data: imageData)
                            }
                        }
                    }
                }
                
            }
            
            let queryI = PFQuery(className:"eotdPage")
            queryI.getObjectInBackgroundWithId("3uO0zITrxl"){
                (object: PFObject?, error: NSError?) -> Void in
                if error == nil && object != nil
                {
                    if let object = object
                    {
                        let userImageFile = object["libPic"] as! PFFile
                        
                        userImageFile.getDataInBackgroundWithBlock { (imageData: NSData?, error: NSError?) -> Void in
                            
                            if let imageData = imageData where error == nil
                            {
                                self.imageNine.contentMode = UIViewContentMode.ScaleAspectFit
                                self.imageNine.image = UIImage(data: imageData)
                            }
                        }
                    }
                }
                
            }

            
            
            
    }
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    

    @IBAction func onClickOne(sender: AnyObject) {
        objectID = "ZBHBabDXqp"
        self.performSegueWithIdentifier("start", sender: self)
    }
    
    @IBAction func onClickTwo(sender: AnyObject) {
        objectID = "5kqoDqYZgj"
        self.performSegueWithIdentifier("start", sender: self)
    }
    
    @IBAction func onClickThree(sender: AnyObject) {
        objectID = "BxsXniDHBf"
        self.performSegueWithIdentifier("start", sender: self)
    }
    
    @IBAction func onClickFour(sender: AnyObject) {
        objectID = "NqGr109ZD4"
        self.performSegueWithIdentifier("start", sender: self)
    }
    
    @IBAction func onClickFive(sender: AnyObject) {
        objectID = "e2qW3gxf7r"
        self.performSegueWithIdentifier("start", sender: self)
    }
    
    @IBAction func onClickSix(sender: AnyObject) {
        objectID = "Xw1oNaYj1N"
        self.performSegueWithIdentifier("start", sender: self)
    }

    @IBAction func onClickSeven(sender: AnyObject) {
        objectID = "K9INyvEgOs"
        self.performSegueWithIdentifier("start", sender: self)
    }
    
    @IBAction func onClickEight(sender: AnyObject) {
        objectID = "sZ2aler2H6"
        self.performSegueWithIdentifier("start", sender: self)
    }
    
    @IBAction func onClickNine(sender: AnyObject) {
        objectID = "3uO0zITrxl"
        self.performSegueWithIdentifier("start", sender: self)
    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
