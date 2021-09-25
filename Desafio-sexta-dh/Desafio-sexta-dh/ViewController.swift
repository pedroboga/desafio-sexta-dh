//
//  ViewController.swift
//  Desafio-sexta-dh
//
//  Created by Pedro Boga on 24/09/21.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var name1: UILabel!
    @IBOutlet weak var name2: UILabel!
    @IBOutlet weak var profession1: UILabel!
    @IBOutlet weak var profession2: UILabel!
    
    var pessoas: [Pessoa] = [.init(nome: "João", idade: 25, cargo: "Advogado", salario: 5000.0), .init(nome: "Maria", idade: 23, cargo: "Nutricionista", salario: 5000.0), .init(nome: "Francisco", idade: 24, cargo: "Dev iOS", salario: 5000.0), .init(nome: "Fernando", idade: 20, cargo: "Dev Android", salario: 5000.0)]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        Draw()
    }
    
    @IBAction func drawNames(_ sender: Any) {
        Draw()
    }
    
    func Draw() {
        let person1 = pessoas[Int(arc4random_uniform(UInt32(pessoas.count)))]
        let person2 = pessoas[Int(arc4random_uniform(UInt32(pessoas.count)))]
        
        fillLabels(person1: person1, person2: person2)
    }
    
    func fillLabels(person1: Pessoa, person2: Pessoa) {
        if person1.nome == person2.nome {
            Draw()
            return
        }
        
        name1.text = person1.nome
        name2.text = person2.nome
        profession1.text = person1.cargo
        profession2.text = person2.cargo
    }
    

}

