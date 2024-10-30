//
//  ContentView.swift
//  DesafioTabView
// Feito por Anna Carolinne, no HackATruck IFRN
//  Created by Turma02-20 on 30/10/24.
//

import SwiftUI

struct ListView: View {
    var body: some View {
        ZStack {
            
            Color.purple.ignoresSafeArea(edges:.top)
            
            Circle().foregroundColor(.black).padding()
            
            Image(systemName: "list.bullet")
                .resizable()
                .scaledToFit()
                .padding(50)
                .foregroundColor(.white)
        }
    }
}

#Preview {
    ListView()
}
