//
//  ContentView.swift
//  ProjetoIMC
//  Created by Anna Carolinne
//  HackATruck na Turma02-20 on 29/10/24.
//

import SwiftUI

struct ContentView: View {
    
    @State private var peso: String = ""
    @State private var altura: String = ""
    @State private var imc: Double = 0.0
    @State private var backgroundColor: Color = .white
    @State private var mensagemIMC: String = ""
    
    var body: some View {
        
        ZStack {
            backgroundColor
                .ignoresSafeArea()
            
            VStack (alignment: .center) {
                Text("Calculadora de IMC").font(.title)
                TextField("Digite seu peso:", text: $peso)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
                
                TextField("Digite seu altura:", text: $altura)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
                
                Button(action: calcularIMC) {
                    Text("Calcular IMC")
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                        .padding()
                }
                
                Text(mensagemIMC) // Exibe a mensagem do IMC
                    .font(.headline)
                    .padding()
                
                Spacer() // Empurra o conteúdo para cima e o botão para baixo
                
                Image("IMC")
                    .resizable()
                    .scaledToFit()
            }
        }
        
    }
    
    private func calcularIMC() {
        guard let pesoDouble = Double(peso), let alturaDouble = Double(altura), alturaDouble > 0 else {
            return
        }
        imc = pesoDouble / (alturaDouble * alturaDouble)
        
        if imc < 18.5 {
            backgroundColor = .baixoPeso
            mensagemIMC = "Abaixo do peso"
        } else if imc < 24.9 {
            backgroundColor = .normal
            mensagemIMC = "Peso normal"
        } else if imc < 29.9 {
            backgroundColor = .sobrepeso
            mensagemIMC = "Sobrepeso"
        } else {
            backgroundColor = .obesidade
            mensagemIMC = "Obesidade"
            
        }
    }
}
    
    #Preview {
        ContentView()
    }
