//
//  ContentView.swift
//  DesafioTabView
// Feito por Anna Carolinne, no HackATruck IFRN
//  Created by Turma02-20 on 30/10/24.
//

import SwiftUI

struct PencilView: View {
    var body: some View {
        ZStack {
            
            Color.blue.ignoresSafeArea(edges:.top)
            
            Circle().foregroundColor(.black).padding()
            
            Image(systemName: "paintbrush.pointed")
                .resizable()
                .scaledToFit()
                .padding(50)
                .foregroundColor(.white)
        }
    }
}
#Preview {
    PencilView()
}
