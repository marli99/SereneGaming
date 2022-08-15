//
//  LocationManager.swift
//  SereneGaming
//
//  Created by Marli Correia on 2022/08/03.
//

import SwiftUI
import MapKit

class LocationManager: NSObject {
    
    @IBOutlet weak var mapView: MKMapView!
    
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        mapView.delegate = self
//
//        createAnnotations(locations: annotationLocations)
//    }
    
    private let locationManager = CLLocationManager()
    var location: CLLocation? = nil
    
    override init(){
        super.init()
        self.locationManager.delegate = self
        self.locationManager.desiredAccuracy = kCLLocationAccuracyBest
        self.locationManager.distanceFilter = kCLDistanceFilterNone
        self.locationManager.requestWhenInUseAuthorization()
        self.locationManager.startUpdatingLocation()
    }
//    let annotationLocations = [
//        ["title": "SereneGaming", "latitude": 40.003252, "longitude":-86.0655897],
//        ["title": "SereneGaming", "latitude": 37.791965, "longitude":-122.406903]
//    ]
    
//    func createAnnotations(locations: [[String : Any]]) {
//        for location in locations {
//            let annotations = MKPointAnnotation()
//            annotations.title = location["title"] as? String
//            annotations.coordinate = CLLocationCoordinate2D(latitude: location["latitude"] as! CLLocationDegrees, longitude: location["logitude"] as! CLLocationDegrees)
//
//            mapView.addAnnotation(annotations)
//        }
//    }
    
   
}

extension LocationManager: CLLocationManagerDelegate{



}
