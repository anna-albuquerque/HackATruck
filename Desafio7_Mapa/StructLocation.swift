//
//  StructLocation.swift
//  Desafio7_Mapa
//  Anna HackATruck
//  Created by Turma02-20 on 01/11/24.
//

import Foundation
import MapKit

struct Location: Identifiable {
    let id = UUID()
    let name: String
    let coordinate: CLLocationCoordinate2D
    let flag: String
    let description: String
}

var arrayLocations = [
Location(name: "Rio Grande do Norte",
         coordinate: CLLocationCoordinate2D(latitude: -5.8015818, longitude: -35.3046098),
         flag: "https://upload.wikimedia.org/wikipedia/commons/thumb/3/30/Bandeira_do_Rio_Grande_do_Norte.svg/1920px-Bandeira_do_Rio_Grande_do_Norte.svg.png",
         description: "Rio Grande do Norte é uma das 27 unidades federativas do Brasil. Sua área é 52.809,601 km², sendo um pouco maior que a Costa Rica. Com uma população de mais de 3,3 milhões de habitantes, o RN é o 17 estado mais populoso do Brasil, possuindo o segundo melhor IDH e a maior renda per capita da região Nordeste e a melhor expectativa de vida do Norte-Nordeste, chegando a 76,0 anos, a nona maior do país. A capital do estado é Natal e sua atual governadora é Fátima Bezerra, eleita nas eleições estaduais realizadas em 2018."),
         
Location(name: "Rio de Janeiro",
         coordinate: CLLocationCoordinate2D(latitude: -22.9137906, longitude: -43.7756526),
         flag: "https://upload.wikimedia.org/wikipedia/commons/thumb/7/73/Bandeira_do_estado_do_Rio_de_Janeiro.svg/1600px-Bandeira_do_estado_do_Rio_de_Janeiro.svg.png",
         description: "Rio de Janeiro é uma das 27 unidades federativas do Brasil. Situa-se a sudeste da região Sudeste do país, tendo como divisas os estados de Minas Gerais (norte e noroeste), Espírito Santo (nordeste) e São Paulo (sudoeste), além do Oceano Atlântico (leste e sul). Ocupa uma área de 43 750,425 km². Os naturais do estado do Rio de Janeiro são chamados de fluminenses (do latim flumen, literalmente rio)"),

Location(name: "Rio Grande do Sul",
         coordinate: CLLocationCoordinate2D(latitude: -30.1087672, longitude: -51.3419556),
         flag: "https://upload.wikimedia.org/wikipedia/commons/thumb/6/63/Bandeira_do_Rio_Grande_do_Sul.svg/1600px-Bandeira_do_Rio_Grande_do_Sul.svg.png",
         description: "O Rio Grande do Sul (pronúncia em português: [hiw ˈɡɾɐ̃ːdʒɪ dʊ ˈsuw]) é uma das 27 unidades federativas do Brasil. Está situado na Região Sul e tem por limites o estado de Santa Catarina ao norte, Argentina ao oeste e Uruguai ao sul, além do Oceano Atlântico ao leste. É dividido em 497 municípios e sua área total é de 281.730,223 km², sendo pouco maior que o Equador. Sua capital é o município de Porto Alegre e as cidades mais populosas são Porto Alegre, Caxias do Sul, Canoas, Pelotas e Santa Maria.")
]
