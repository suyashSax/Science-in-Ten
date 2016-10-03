//
//  resultView.swift
//  Science in Ten - Upload
//
//  Created by Sachin Saxena on 8/14/15.
//  Copyright (c) 2015 WLFRM Studios. All rights reserved.
//

import UIKit
import Parse

class resultView: UIViewController {
    
    
    @IBOutlet var resultText: UITextView!
    
    @IBOutlet var imageURL: UIImageView!
    
    var urlString = ""
    
    override func viewDidLoad()
    {
        
        let query = PFQuery(className:"eotdPage")
        query.getObjectInBackgroundWithId(objectID) {
            (object: PFObject?, error: NSError?) -> Void in
            if error == nil && object != nil
            {
                
                if let object = object
                {
                    let userImageFile = object["resultURL"] as! PFFile
                    
                    userImageFile.getDataInBackgroundWithBlock { (imageData: NSData?, error: NSError?) -> Void in
                        
                        if let imageData = imageData where error == nil
                        {
                            self.imageURL.contentMode = UIViewContentMode.ScaleAspectFit
                            self.imageURL.image = UIImage(data: imageData)
                            self.resultText.text = result

                        }
                    }
                }
            }
        }
        
    }
    
    
    func getDataFromUrl(urL:NSURL, completion: ((data: NSData?) -> Void)) {
        NSURLSession.sharedSession().dataTaskWithURL(urL) { (data, response, error) in
            completion(data: data)
            }.resume()
    }
    
    func downloadImage(url:NSURL){
        getDataFromUrl(url) { data in
            dispatch_async(dispatch_get_main_queue()) {
                self.imageURL.image = UIImage(data: data!)
            }
        }
    }
    
    
    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}
