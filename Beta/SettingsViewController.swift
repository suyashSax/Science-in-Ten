//
//  SettingsViewController.swift
//  Science In Ten - Upload
//
//  Created by Suyash Saxena on 9/23/15.
//  Copyright © 2015 WLFRM Studios. All rights reserved.
//

import UIKit
import CoreData

class SettingsViewController: UIViewController {

    @IBOutlet var input: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func done(sender: AnyObject)
    {
        var x = 0
        
        if input.text != ""
        {
            x = Int(input.text!)!
        }
            
        else
        {
            let alertView = UIAlertView();
            alertView.addButtonWithTitle("Ok");
            alertView.title = "Age Invalid";
            alertView.message = "Please enter an age between 3-18";
            alertView.show();
            
        }
        
        if x >= 3 && x <= 18
        {
        
        let appDel: AppDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
        let context:NSManagedObjectContext = appDel.managedObjectContext!
        
        let request = NSFetchRequest(entityName: "User")
        
        request.returnsObjectsAsFaults = false
        
        do
        {
            
            let results = try context.executeFetchRequest(request)
            
            results[0].setValue(x, forKey: "age")
            
            age = x
            
            performSegueWithIdentifier("done", sender: self)
            
            try context.save()
            
        }
        catch
        {
            print("Error")
        }

        }
        else
        {
            let alertView = UIAlertView();
            alertView.addButtonWithTitle("Ok");
            alertView.title = "Age Invalid";
            alertView.message = "Please enter an age between 3-17";
            alertView.show();
        }
        
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

    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
