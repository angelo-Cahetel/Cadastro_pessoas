//
//  Person.swift
//  Cadastro de Lista
//
//  Created by Ângelo Mendes on 15/04/25.
//
import Foundation

struct Person: Identifiable {
    let id = UUID()
    let name: String
    let age: Int

    func info() -> String {
        "\(name), \(age) anos."
    }
}
