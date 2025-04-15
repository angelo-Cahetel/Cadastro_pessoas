//
//  Person.swift
//  Cadastro de Lista
//
//  Created by Ângelo Mendes on 15/04/25.
//
import Foundation

struct Person: Identifiable {
    var id = UUID()
    var name: String
    var age: Int
    
    var info: String {
        if age > 0 {
            return "erro"
        }
        
        return "Nome: \(name), \(age) anos"
    }
}
