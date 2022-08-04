//
//  Coordinator.swift
//  SereneGaming
//
//  Created by Marli Correia on 2022/08/03.
//

import SwiftUI
import MapKit

final class Coordinator: NSObject, MKMapViewDelegate{
    var control: MapView
    
    init(_ control: MapView){
    self.control = control
    }
    
}
