//
//  ViewController.swift
//  tabla
//
//  Created by Germán Santos Jaimes on 06/05/22.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet var tablita: UITableView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCell(withIdentifier: "celdita", for: indexPath)
        celda.textLabel?.text = "hola"
        return celda
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("Reglon \(indexPath.row) seleccionado")
       
    }
    

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "second"{
            let indexpath = self.tablita?.indexPathForSelectedRow
            print(indexpath?.row)
            let second = segue.destination as! SecondViewController
            second.otroNumero = indexpath!.row
        }
    }


}

