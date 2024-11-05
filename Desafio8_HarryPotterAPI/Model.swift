//
//  Personagens.swift
//  Desafio8_HarryPotterAPI
// Anna Carolinne, HackATruck IFRN
//  Created by Turma02-20 on 04/11/24.
//
// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//   let personagem = try? JSONDecoder().decode(Personagem.self, from: jsonData)

import Foundation
struct Personagem: Codable, Identifiable {
    let id, name: String
    let alternateNames: [String]
    let species: Species
    let gender: Gender
    let house: House
    let dateOfBirth: String?
    let yearOfBirth: Int?
    let wizard: Bool
    let ancestry: Ancestry
    let eyeColour, hairColour: String
    let wand: Wand
    let patronus: String
    let hogwartsStudent, hogwartsStaff: Bool
    let actor: String
    let alternateActors: [String]
    let alive: Bool
    let image: String
    enum CodingKeys: String, CodingKey {
        case id, name
        case alternateNames = "alternate_names"
        case species, gender, house, dateOfBirth, yearOfBirth, wizard, ancestry, eyeColour, hairColour, wand, patronus, hogwartsStudent, hogwartsStaff, actor
        case alternateActors = "alternate_actors"
        case alive, image
    }
}
enum Ancestry: String, Codable {
    case empty = ""
    case halfBlood = "half-blood"
    case muggleborn = "muggleborn"
    case pureBlood = "pure-blood"
}
enum Gender: String, Codable {
    case female = "female"
    case male = "male"
}
enum House: String, Codable {
    case gryffindor = "Gryffindor"
}
enum Species: String, Codable {
    case ghost = "ghost"
    case halfGiant = "half-giant"
    case human = "human"
    case werewolf = "werewolf"
}
// MARK: - Wand
struct Wand: Codable {
    let wood: String
    let core: Core
    let length: Double?
}
enum Core: String, Codable {
    case dragonHeartstring = "dragon heartstring"
    case empty = ""
    case phoenixFeather = "phoenix feather"
    case phoenixTailFeather = "phoenix tail feather"
    case unicornTailHair = "unicorn tail hair"
}
typealias personagens = [Personagem]
