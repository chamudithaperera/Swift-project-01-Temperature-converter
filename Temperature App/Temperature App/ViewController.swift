//
//  ViewController.swift
//  Temperature App
//
//  Created by Chamuditha Kavishan on 2024-05-25.
//

import UIKit

class ViewController: UIViewController
{

    @IBOutlet weak var tempEnter: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func convertFotC(_ sender: AnyObject)
    {
        if let result = tempEnter.text
        {
            if (result == "")
            {
                return
            }
            else
            {
                if let num = Double(result)
                {
                    //let output = num * (9/5) + 32
                    let output = (num - 32)  * (5/9)
                    resultLabel.text = String(format: "%.2f", output) + " C"
                }
            }
        }
    }
    
    @IBAction func convertFtoC(_ sender: AnyObject)
    {
        if let result = tempEnter.text
        {
            if (result == "")
            {
                return
            }
            else
            {
                if let num = Double(result)
                {
                    let output = num * (9/5) + 32
                    resultLabel.text = String(format: "%.2f", output) + " F"
                }
            }
        }
    }
}

