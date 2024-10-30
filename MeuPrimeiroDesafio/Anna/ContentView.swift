//
//  ContentView.swift
//  Anna
//  Created by Turma02-20 on 24/10/24.
//

import SwiftUI

struct ContentView: View {
    @State private var name: String = "Anna"
    @State private var showAlert = false // Estado de inicio
    
    var body: some View {
        
        VStack (alignment: .center) {
            Text("Bem vindo, \(name)!").font(.title)
            TextField("Digite seu nome:", text: $name)
            
            Image(systemName: "hacka")
                .imageScale(.large)
                .foregroundStyle(.ultraThinMaterial)
                .padding()
        }
        .padding()
        
        ZStack {
            Image("lhacka")
                .resizable()
            Image("hacka")
                .resizable()
        }
    
        Spacer() // Empurra o conteúdo para cima e o botão para baixo
        Button(action: {
            showAlert = true // Para acionar o botão
        }) {
            HStack {
                Text("Entrar")
            }
        }
        .alert(isPresented: $showAlert) {
            Alert(
                title: Text ("Alerta!"),
                message: Text ("Você irá iniciar o desafio da aula agora!"),
                dismissButton: .default(Text("Vamos lá!"))
                )
        }
        
        .padding(.bottom, 20) // Espaçamento inferior para não ficar muito colado na borda
    }
}

#Preview {
    ContentView()
}
