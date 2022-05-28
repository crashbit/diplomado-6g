//
//  SecondViewController.swift
//  PassParameters
//
//  Created by Germán Santos Jaimes on 27/05/22.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var etiqueta: UILabel!
    var dato: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        etiqueta.text = "\(dato)"
    }
    

   
}
