//
//  SecondViewController.swift
//  TVC
//
//  Created by Germán Santos Jaimes on 20/05/22.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet var nombre: UILabel!
    var cadena: String = ""
    var table: TableViewController!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nombre.text = cadena
        table.showData(dato: "Gola")
    }
    

    

}
