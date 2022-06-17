//
//  ViewController.swift
//  network-test
//
//  Created by Germán Santos Jaimes on 10/06/22.
//

import UIKit

struct Jedi: Codable{
    var name: String
    var height: String
}

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        guard let url = URL(string: "https://swapi.dev/api/people/1/") else { return}
        let task = URLSession.shared.dataTask(with: url) { data, response, error in
            let cadena = String(data: data!, encoding: .utf8)
            let jsondecoder = JSONDecoder()
            let datos = try? jsondecoder.decode(Jedi.self, from:data!)
            print(datos!.name)
        }
        task.resume()
    }


}

