//
//  SecondViewController.swift
//  Shopping List
//
//  Created by admin on 28/07/2017.
//  Copyright © 2017 admin. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    
    @IBOutlet weak var input: UITextField!
    @IBAction func addItem(_ sender: UIButton)
    {
        //to prevent empty items in our list
        if (input.text != ""){
            addToShoppingList()
        }
        for textField in self.view.subviews where textField is UITextField {
            textField.resignFirstResponder()
        }
    }
    
    func addToShoppingList(){
        list.append(input.text!)
        input.text = ""
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

