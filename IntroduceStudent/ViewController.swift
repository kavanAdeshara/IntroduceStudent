//
//  ViewController.swift
//  IntroduceStudent
//
//  Created by Kavan Adeshara on 12/19/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var firstName: UITextField!
    @IBOutlet weak var lastName: UITextField!
    @IBOutlet weak var schoolName: UITextField!
    
    @IBOutlet weak var yearSegmentedControl: UISegmentedControl!
    
    @IBOutlet weak var morePetsButton: UISwitch!
    @IBOutlet weak var petCountIncr: UIStepper!
    @IBOutlet weak var petNum: UILabel!
    
    
    @IBAction func stepperDidChange(_ sender: UIStepper) {
        petNum.text = "\(Int(sender.value))"
    }
    
    
    @IBAction func introduceSelfDidTapped(_ sender: UIButton) {
        
        let year = yearSegmentedControl.titleForSegment(at: yearSegmentedControl.selectedSegmentIndex)
        
        let introduction = "My name is \(firstName.text!) \(lastName.text!) and I attend \(schoolName.text!). I am currently in my \(year!) year and I own \(petNum.text!) dogs. It is \(morePetsButton.isOn) that I want more pets."
        
        let alertController = UIAlertController(title: "Introduction", message: introduction, preferredStyle: .alert)
        
        let action = UIAlertAction(title: "Nice to meet you!", style: .default, handler: nil)
        
        alertController.addAction(action)
        
        present(alertController, animated: true, completion: nil)
    }
    
    @IBOutlet weak var introduceBttn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

