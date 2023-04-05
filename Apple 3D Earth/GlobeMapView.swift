//
//  GlobeMapView.swift
//  Apple 3D Earth
//
//  Created by Damien Gautier on 05/04/2023.
//

import SwiftUI
import MapKit

struct GlobeMapView: UIViewRepresentable {
    func makeUIView(context: Context) -> MKMapView {
        let mapView = MKMapView()
        mapView.mapType = .satelliteFlyover
        return mapView
    }
    
    func updateUIView(_ mapView: MKMapView, context: Context) {}
}

struct ContentView: View {
    var body: some View {
        ZStack {
            GlobeMapView()
                .ignoresSafeArea()
        }
    }
}

struct GlobeMapView_Previews: PreviewProvider {
    static var previews: some View {
        GlobeMapView()
    }
}
