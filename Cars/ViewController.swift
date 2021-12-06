//
//  ViewController.swift
//  Cars
//
//  Created by Bridger Strickland on 11/5/21.
//

import UIKit

class ViewController: UIViewController
{
    //Outlets and Variables
    @IBOutlet weak var carImage: UIImageView!
    
    @IBOutlet weak var modelLabel: UILabel!
    
    var counter = 0
    
    let GTRC10 = UIImage(named: "GTRC10")
    let GTRC110 = UIImage(named:"GTRC110")
    let GTRR30 = UIImage(named: "GTRR30")
    let GTRR31 = UIImage(named: "GTRR31")
    let GTRR32 = UIImage(named: "GTRR32")
    let GTRR33 = UIImage(named: "GTRR33")
    let GTRR34 = UIImage(named: "GTRR34")
    let GTRR35 = UIImage(named: "GTRR35")
    var images:[UIImage] = []
    let carArray = ["GTRC10", "GTRC110", "GTRR30", "GTRR31", "GTRR32", "GTRR33", "GTRR34", "GTRR35"]
    override func viewDidLoad()
    {
        
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        carImage.image = nil
        images = [GTRC10, GTRC110, GTRR30, GTRR31, GTRR32, GTRR33, GTRR34, GTRR35] as! [UIImage]
       
    }

    @IBAction func evolveButton(_ sender: Any)
    {
        
        carImage.image = images[counter]
        modelLabel.text = carArray[counter]
        counter += 1
        if counter == 8
        {
            counter = 0
        }
        
    }
    
}

