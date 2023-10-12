//
//  ViewController.swift
//  DemoPractical
//
//  Created by Dhruv Patel on 12/10/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var cvUser:UICollectionView!
    
    var userCount:Int = 23
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.getDetails()
    }
  
    
    @IBAction func btnOddClicked(_ sender:UIButton) {
        sender.isSelected = !sender.isSelected
        if(sender.isSelected) {
            sender.setTitle("Odd Item", for: .normal)
            userCount = 24
        }else{
            sender.setTitle("Even Item", for: .normal)
            userCount = 23
        }
        cvUser.reloadData()
    }
}



