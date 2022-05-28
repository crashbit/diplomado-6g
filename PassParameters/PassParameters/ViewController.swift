//
//  ViewController.swift
//  PassParameters
//
//  Created by Germán Santos Jaimes on 27/05/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var caja: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func evaluaTexto(_ sender: UIButton){
        let valor = caja.text ?? "no puso nada"
        print(valor)
        performSegue(withIdentifier: "second", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        print("metodo prepare")
        if segue.identifier == "second"{
            let second = segue.destination as! SecondViewController
            second.dato =  caja.text ?? "no puso nada"
        }
    }

}

