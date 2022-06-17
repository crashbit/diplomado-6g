//
//  ViewController.swift
//  pokemon
//
//  Created by Germán Santos Jaimes on 17/06/22.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource{
    
    var pokemones:[String] = []
    @IBOutlet var tabla: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        getData()
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return pokemones.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "celda", for: indexPath)
        cell.textLabel?.text = pokemones[indexPath.row]
        return cell
    }
    
    func getData(){
        guard let url = URL(string: "https://pokeapi.co/api/v2/pokemon") else{return}
        let task = URLSession.shared.dataTask(with: url) { [self] data, response, error in
            let jsondecoder = JSONDecoder()
            let datos = try? jsondecoder.decode(Resultado.self, from: data!)
            print(datos!.count )
            for i in datos!.results{
                pokemones.append(i.name)
                print(i.name)
            }
            
            DispatchQueue.main.async{
             tabla.reloadData()
            }
        }
        task.resume()
        
    }
}

