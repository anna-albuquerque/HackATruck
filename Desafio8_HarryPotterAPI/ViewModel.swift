//
//  ViewModel.swift
//  Desafio8_HarryPotterAPI
// Anna Carolinne, HackATruck IFRN
//  Created by Turma02-20 on 04/11/24.
//

import Foundation
class ViewModel: ObservableObject {
    @Published var personagens : [Personagem] = []
    
    func fetch() {
        let task = URLSession.shared.dataTask(with: URL(string: "https://hp-api.onrender.com/api/characters/house/gryffindor")!) { data, _, error in
            do {
                self.personagens = try JSONDecoder().decode([Personagem].self, from: data!)
            } catch {
                print(error)
            }
        }
        task.resume()
    }
}
