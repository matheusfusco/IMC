//
//  ViewController.swift
//  IMC
//
//  Created by Usuário Convidado on 05/03/18.
//  Copyright © 2018 FIAP. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //MARK: - Lets and Vars
    
    //MARK: - IBOutlets
    @IBOutlet weak var heightTextField: UITextField!
    @IBOutlet weak var weightTextField: UITextField!
    @IBOutlet weak var imcValueLabel: UILabel!
    
    @IBOutlet weak var imcResultLabel: UILabel!
    //MARK: - Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    //MARK: - Button Actions
    @IBAction func calculateIMCBtnClicked(_ sender: Any) {
        let weight = Double(weightTextField.text!)!
        let height = Double(heightTextField.text!)!
        
        let imc = weight/(height*height)
        
        imcValueLabel.text = String(format: "%.2f", imc)
        var result = ""
        switch imc {
        case 0.0..<17.0:
            result = "Magreza"
        case 18.5..<25:
            result = "Peso ideal"
        case 25..<30:
            result = "Acima do peso"
        default:
            result = "Obesidade"
        }
        imcResultLabel.text = result
    }

    //MARK: - Memory Management
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

