//
//  ContentView.swift
//  Desafio7_Mapa
//  Anna HackATruck
//  Created by Turma02-20 on 01/11/24.
//

import SwiftUI
import MapKit

struct ContentView: View {
    @State private var showingSheet = false
    @State var local = ""
    @State var position = MapCameraPosition.region(
        MKCoordinateRegion (
            center: CLLocationCoordinate2D(latitude: -5.8119077, longitude: -35.2045234),
            span: MKCoordinateSpan (latitudeDelta: 0.1, longitudeDelta: 0.1))
    )
    
    var body: some View {
        ZStack {
            Map(position: $position) {
                ForEach (arrayLocations) { item in
                    Annotation (item.name, coordinate: item.coordinate) {
                        Image(systemName: "pin.square.fill")
                            .foregroundColor(.red)
                            .onTapGesture {
                            showingSheet.toggle()
                        }
                        .sheet(isPresented: $showingSheet, content: {  sheetView(locationSheet: item)})
                    }
                }
            }
            VStack {
                VStack {
                    Text ("Mapa do Brasil")
                        .font(.largeTitle)
                        .bold()
                    Text(local)
                }
                .frame(width: 400, height: 100)
                .background(.white.opacity(0.5))
                
                Spacer()
                
                HStack {
                    ForEach (arrayLocations) { item in
                        
                        AsyncImage(url: URL(string: item.flag))
                        {
                            image in image.resizable()
                                .frame(width: 120, height: 100)
                                .onTapGesture {
                                    local = item.name
                                    position = MapCameraPosition.region(MKCoordinateRegion (
                                        center: item.coordinate,
                                        span: MKCoordinateSpan (latitudeDelta: 0.1, longitudeDelta: 0.1)))
                                }
                        } placeholder: {
                            ProgressView()
                            
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
