//
//  SecondViewController.swift
//  tabla
//
//  Created by Germán Santos Jaimes on 06/05/22.
//

import Foundation
import UIKit

class SecondViewController: UIViewController{
    
    
    @IBOutlet var numero: UILabel!
    var otroNumero : Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        numero.text = "Numero recibido"
    }
    
    
    
}
