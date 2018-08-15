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
    @IBOutlet weak var lblPropina: UILabel!
    @IBOutlet weak var lblTotal: UILabel!
    @IBOutlet weak var txtcuenta: UITextField!
    @IBOutlet weak var doValueChangePorcentajePropinas: UISlider!
    
    
    @IBAction func doValueChangePorcentajePropina(sender: AnyObject) {
        
        //Calcular valores
        let totalCuenta = Double(txtcuenta.text!)
        let porcentajePropina = Int(doValueChangePorcentajePropinas.value)
        let cantidadPropina = totalCuenta! * (Double(porcentajePropina) / 100)
        let totalAPagar = cantidadPropina + totalCuenta!
        
        //Establecer textos
        lblPorcentaje.text = "\(porcentajePropina)%"
        lblPropina.text = "$\(cantidadPropina)"
        lblTotal.text = "$\(totalAPagar)"
        
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

