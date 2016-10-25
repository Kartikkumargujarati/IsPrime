//
//  ViewController.swift
//  IsPrime
//
//  Created by Kartik on 10/11/16.
//  Copyright © 2016 Kartik. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var inputF: UITextField!
    @IBOutlet weak var resultF: UILabel!
    @IBOutlet weak var imageF: UIImageView!
    @IBAction func checkB(_ sender: AnyObject) {
        if let input = Int (inputF.text!){
            var i = 2
            var isPrime = true
            if input == 1 {
                isPrime = false
            }else if input == 2{
                isPrime = true
            }else{
                while i < input {
                    if input % i == 0{
                        isPrime = false
                    }
                    i += 1
                }
            }
            if isPrime == true{
                resultF.text = "\(input) is Prime"
                imageF.image = UIImage(named: "correct.png")
                
            }else{
                resultF.text = "\(input) is not Prime"
                imageF.image = UIImage(named: "wrong.png")
                
            }
        }else{
            resultF.text = "Enter a valid number!"
        }
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

