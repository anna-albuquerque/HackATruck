//
//  Personagens.swift
//  Desafio8_HarryPotterAPI
// Anna Carolinne, HackATruck IFRN
//  Created by Turma02-20 on 04/11/24.
//

import SwiftUI
struct personagemInfo: View {
    @State var personInfo : Personagem
    var body: some View {
        VStack {
            AsyncImage(url: URL(string: personInfo.image)) {
                image in image.resizable()
                    .frame(width: 300, height: 300)
                    .clipShape(Circle())
            } placeholder: {
                ProgressView()
            }
            Text(personInfo.name)
            Text(personInfo.actor)
            Text(personInfo.patronus)
            Spacer()
        }
    }
}
//
//#Preview {
//    personagemInfo()
//}
