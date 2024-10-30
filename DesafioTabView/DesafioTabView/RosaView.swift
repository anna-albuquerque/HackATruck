//
//  ContentView.swift
//  DesafioTabView
// Feito por Anna Carolinne, no HackATruck IFRN
//  Created by Turma02-20 on 30/10/24.
//

import SwiftUI

struct RosaView: View {
    var body: some View {
        ZStack {
            
            Color.pink.ignoresSafeArea(edges:.top)
            
            Circle().foregroundColor(.black).padding()

            Image(systemName: "paintbrush")
                .resizable()
                .scaledToFit()
                .padding(80)
                .foregroundColor(.white)
            
        }
    }
}

#Preview {
    RosaView()
}
