//
//  Pessoa.swift
//  Desafio-sexta-dh
//
//  Created by Pedro Boga on 24/09/21.
//

import Foundation

class Pessoa: Profissao {
    var nome: String
    var idade: Int

    init(nome: String, idade: Int, cargo: String, salario: Double) {
        self.nome = nome
        self.idade = idade
        super.init(cargo: cargo, salario: salario)
    }
}
