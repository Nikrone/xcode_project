//
//  ViewController.swift
//  PassDataProject
//
//  Created by Evgeniy Nosko on 1.04.21.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var loginTF: UITextField!
    @IBOutlet weak var passwordTF: UITextField!
    
    @IBOutlet weak var resultLabel: UILabel!
    
    
    @IBAction func loginTapped(_ sender: UIButton) {
        performSegue(withIdentifier: "detailSeque", sender: nil)
    }
    
//    @IBAction func unwindSequeToMainScreen(seque: UIStoryboard) {
//        guard let svc = seque.source as? SecondViewController else { return }
//        self.resultLabel.text = svc.label.text
//    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let dvc = segue.destination as? SecondViewController else { return }
        dvc.login = loginTF.text
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
}
