//
//  reasonView.swift
//  Science in Ten - Upload
//
//  Created by Sachin Saxena on 8/14/15.
//  Copyright (c) 2015 WLFRM Studios. All rights reserved.
//

import Parse
import Bolts
import CoreData

class reasonView: UIViewController {
    
    
    @IBOutlet var reasonTitle: UILabel!
    
    
    @IBOutlet var reasonText: UITextView!
    
    var x = age
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        self.reasonTitle.text = reasonTit
                    
        if self.x >= 3 && self.x <= 7
        {
            self.reasonText.text = reasonEasy
        }
                    
        else if self.x > 7 && self.x < 12
        {
            self.reasonText.text = reasonMed
        }
                    
        else
        {
            self.reasonText.text = reasonHard
        }
                    
                    
    }
    
    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    

}
