//
//  ViewController.swift
//  Science in Ten - Upload
//
//  Created by Suyash Saxena on 8/14/15.
//  Copyright (c) 2015 WLFRM Studios. All rights reserved.

import UIKit
import Parse
import CoreData

var age:Int = 0

var objectID = ""

class ViewController: UIViewController {
    @IBOutlet var ageText: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let appDel: AppDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
        let context:NSManagedObjectContext = appDel.managedObjectContext!
        let newUser = NSEntityDescription.insertNewObjectForEntityForName("User", inManagedObjectContext: context) as NSManagedObject
        
        newUser.setValue(8, forKey: "age")
        
        do
        {
            try context.save()
        }
        catch
        {
            print("error")
        }
        
        
    }
    
    @IBAction func onStart(sender: AnyObject)
    {
        
        
        if ageText.text != ""
        {
        age = Int(ageText.text!)!
        }
        
        else
        {
            
            let alertController = UIAlertController(title: "Sorry", message:
                "Ages 3-17 only.", preferredStyle: UIAlertControllerStyle.Alert)
            alertController.addAction(UIAlertAction(title: "Try Again", style: UIAlertActionStyle.Default,handler: nil))
            
            self.presentViewController(alertController, animated: true, completion: nil)
            
        }
        
        //else
        //{
        //ageText.text = "Sorry. Ages 3 - 18"
        //}
        
        if age >= 3 && age <= 18
        {
            let appDel: AppDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
            let context:NSManagedObjectContext = appDel.managedObjectContext!
            let newUser = NSEntityDescription.insertNewObjectForEntityForName("User", inManagedObjectContext: context) as NSManagedObject
            
            newUser.setValue(age, forKey: "age")
            
            do
            {
                try context.save()
            }
            catch
            {
                print("error")
            }
            self.performSegueWithIdentifier("start", sender: self)

        }
        else
        {
            let alertController = UIAlertController(title: "Sorry", message:
                "Ages 3-17 only.", preferredStyle: UIAlertControllerStyle.Alert)
            alertController.addAction(UIAlertAction(title: "Try Again", style: UIAlertActionStyle.Default,handler: nil))
            
            self.presentViewController(alertController, animated: true, completion: nil)             
        }
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
    }
    
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?)
    {
        self.view.endEditing(true)
    }
    
    
    func textFieldShouldReturn(textField: UITextField) -> Bool
    {
        
        textField.resignFirstResponder()
        
        return true
        
        
    }



}

