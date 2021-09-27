//
//  Mapa.swift
//  APOD
//
//  Created by victor tique on 27/09/21.
//

import SwiftUI
import MapKit

struct Mapa: UIViewRepresentable {
    func makeUIView(context: UIViewRepresentableContext<Mapa>) -> MKMapView {
        MKMapView(frame: .zero)
    }
    func updateUIView(_ uiView: MKMapView, context: UIViewRepresentableContext<Mapa>){
        let coordinate = CLLocationCoordinate2D(latitude: 4.717366, longitude: -74.130097)
        let ancho = MKCoordinateSpan(latitudeDelta: 2.0, longitudeDelta: 2.0)
        let region = MKCoordinateRegion(center: coordinate, span: ancho)
        uiView.setRegion(region, animated: true)
    }
}

struct Mapa_Previews: PreviewProvider {
    static var previews: some View {
        Mapa()
    }
}
