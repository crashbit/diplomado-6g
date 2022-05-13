//
//  ViewController.swift
//  App_1
//
//  Created by Germán Santos Jaimes on 22/04/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func boton(_ sender: UIButton) {
        print("Click")
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let secondView = segue.destination as? SecondViewConntroller
        secondView?.dato = "fin de clase por lluvia"
    }
    

}

