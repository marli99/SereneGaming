//
//  MapScreen.swift
//  SereneGaming
//
//  Created by Marli Correia on 2022/08/10.
//

import SwiftUI
import MapKit
import Combine

//struct XbxoxAnnotion: Identifiable, Decodable {
//    var id = UUID()
//    let latitude: Double
//    let longitude: Double
//
//    private enum CodingKeys: CodingKey {
//        case latitude
//        case longitude
//    }
//}


struct MapScreen: View {
    
    @State private var cancellable: AnyCancellable?
    
    private var locationManger = LocationManager()
    
//    private func setCurrentLocation(){
//        cancellable = locationManger.$location
//    }
    
    var body: some View {
        MapView()
    }
}

struct MapScreen_Previews: PreviewProvider {
    static var previews: some View {
        MapScreen()
    }
}
