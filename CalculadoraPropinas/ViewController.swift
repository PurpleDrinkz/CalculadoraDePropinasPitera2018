//
//  ViewController.swift
//  CalculadoraPropinas
//
//  Created by Maestro on 14/08/18.
//  Copyright © 2018 Maestro. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var lblPorcentaje: UILabel!
    @IBOutlet weak var doValueChangePorcentajePropinas: UISlider!
    var porcentaje = 0.0
    
    @IBOutlet weak var lblPropina: UILabel!
    @IBOutlet weak var lblTotal: UILabel!
    @IBOutlet weak var txtcuenta: UITextField!
    var propina = 0.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func doValueChangePorcentajePropina(sender: AnyObject) {
        porcentaje = Double(doValueChangePorcentajePropinas.value)
        
        lblPorcentaje.text = "\(porcentaje)%"
        
        lblPropina.text = "\(porcentaje)"
        
        
        
        
    }

    
   
    
}

