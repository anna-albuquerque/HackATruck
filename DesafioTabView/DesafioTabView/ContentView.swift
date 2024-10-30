//
//  ContentView.swift
//  DesafioTabView
// Feito por Anna Carolinne, no HackATruck IFRN
//  Created by Turma02-20 on 30/10/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        TabView {
            RosaView()
                .badge(2)
                .tabItem {
                    Label("Received", systemImage:  "paintbrush")
                }
            PencilView()
                .badge(2)
                .tabItem {
                    Label("Received", systemImage:  "paintbrush.pointed")
                }
            PaintView()
                .badge(2)
                .tabItem {
                    Label("Received", systemImage:  "paintpalette")
                }
            ListView()
                .badge(2)
                .tabItem {
                    Label("Received", systemImage:  "list.bullet")
                }
        }
    }
}

#Preview {
    ContentView()
}
