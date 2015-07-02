//
//  StudentProfileViewController.swift
//  Homework2
//
//  Created by Kannan Chandrasegaran on 25/6/15.
//  Copyright (c) 2015 Kannan Chandrasegaran. All rights reserved.
//

import UIKit

class StudentProfileViewController: UIViewController {

  var student:Student = Student()
  
    @IBOutlet weak var firstNameLabel: UILabel!
    
    @IBOutlet weak var lastNameLabel: UILabel!
    
    @IBOutlet weak var ageLabel: UILabel!
    
    @IBOutlet weak var averageScoreLabel: UILabel!
    
    @IBOutlet weak var phoneNumberLabel: UILabel!
    
    @IBOutlet weak var profilePicture: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        firstNameLabel.text = student.firstName

        lastNameLabel.text = student.lastName
        
        ageLabel.text = String(student.age)
        
        let sum = student.scores.reduce(0, combine: +)
        
        var averageScore = sum/student.scores.count
        
        averageScoreLabel.text = String(averageScore)
        
        if let trueNumber = student.phoneNumber {
            
            phoneNumberLabel.text = String(trueNumber)
            
            } else {
            
            phoneNumberLabel.text = "No Number"
            
        }
        
        let url = NSURL(string: student.profilePicURL)
        let data = NSData(contentsOfURL: url!)
        profilePicture.image = UIImage(data: data!)
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
