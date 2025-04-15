//
//  ContentView.swift
//  Cadastro de Lista
//
//  Created by Ângelo Mendes on 15/04/25.
//

import SwiftUI

struct ContentView: View {
    @State var userName: String = ""
    @State var userAge: String = ""
    @State var persons: [Person] = [] {
        didSet {
            clear()
        }
    }
    
    
    private func clear() {
        userName = ""
        userAge = ""
    }
    
    var body: some View {
        VStack {
            TextField("Nome:", text: $userName)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            TextField("Idade:", text: $userAge)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            
            Button("Cadastrar") {
                guard let age = Int(userAge) else {
                    // msg erro
                    return
                }
                
                let user = Person(name: userName, age: age)
                persons.append(user)
            }
            .padding()
            .background(Color.blue)
            .foregroundStyle(Color.white)
            .cornerRadius(10)
            
            List(persons) { persons in
                VStack {
                    Text(persons.info)
                }
                
            }
        }
        
        .padding()
    }
}

#Preview {
    ContentView()
}
