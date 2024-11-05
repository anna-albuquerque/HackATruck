//
//  ContentView.swift
//  Desafio8_HarryPotterAPI
// Anna Carolinne, HackATruck IFRN
//  Created by Turma02-20 on 04/11/24.
//

import SwiftUI
struct ContentView: View {
    @StateObject var viewModel = ViewModel()
    var body: some View {
        NavigationStack {
            ZStack {
                VStack {
                    AsyncImage(url: URL(string: "https://tm.ibxk.com.br/2021/04/19/19165615261383.jpg")) {
                        image in image.resizable()
                            .scaledToFit()
                    } placeholder: {
                        ProgressView()
                    }
                    Spacer()
                    ScrollView {
                        VStack  (alignment: .leading) {
                            ForEach (viewModel.personagens) { p in
                                NavigationLink (destination: personagemInfo(personInfo: p)){
                                    HStack {
                                        AsyncImage(url: URL(string: p.image)) {
                                            image in image.resizable()
                                            .clipShape(Capsule())
                                                .frame(width: 120, height: 120)
                                                .scaledToFit()
                                        } placeholder: {
                                            ProgressView()
                                        }
                                        Text(p.name)
                                            .foregroundStyle(.white)
                                            .padding()
                                    }
                                }
                            }
                        }
                    }
                }
                .onAppear() {
                    viewModel.fetch()
                }
            } .ignoresSafeArea()
                .background(.hpfundo)
        }
    }
}
#Preview {
    ContentView()
}
