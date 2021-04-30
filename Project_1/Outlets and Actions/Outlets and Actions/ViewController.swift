//
//  ViewController.swift
//  Outlets and Actions
//
//  Created by Evgeniy Nosko on 25.03.21.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var label: UILabel!
    
    @IBOutlet var labelCollection: [UILabel]!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func buttonTapped(_ sender: UIButton) {
        print("Hello World")
        label.text = "Hello Zhenya"
    }
    

}

