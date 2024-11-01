//
//  SheetView.swift
//  Desafio7_Mapa
//  Anna HackATruck
//  Created by Turma02-20 on 01/11/24.
//

import SwiftUI
import MapKit

struct sheetView: View {
    @State var locationSheet: Location
    var body: some View {
        VStack {
            Text(locationSheet.name)
                .font(.title)
                .bold()
            AsyncImage (url: URL(string: locationSheet.flag)) {
                image in image.resizable()
                    .frame(width: 350, height: 280)
            } placeholder: {
                ProgressView()
            }
            .padding()
            Text(locationSheet.description)
                .padding()
        }
    }
}

#Preview {
    sheetView(locationSheet: Location(name: "", coordinate: CLLocationCoordinate2D(latitude: -5.8015818, longitude: -35.3046098), flag: "", description: ""))
}
