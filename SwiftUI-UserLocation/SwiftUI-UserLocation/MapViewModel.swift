//
//  MapViewModel.swift
//  SwiftUI-UserLocation
//
//  Created by Digvijay Gupta on 24/01/23. 2:10AM
//

import MapKit

enum MapDetails {
    static let startingLocation = CLLocationCoordinate2D(latitude: 12.9716, longitude: 77.5946)
    static let defaultSpan = MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05)
}

final class MapViewModel : NSObject, ObservableObject, CLLocationManagerDelegate {
    
    @Published var region  =  MKCoordinateRegion(center: MapDetails.startingLocation,
                                                 span: MapDetails.defaultSpan)
    
    var locationManager : CLLocationManager?
    
    func checkIfLocationEnabled() {
        if CLLocationManager.locationServicesEnabled() {
            locationManager = CLLocationManager()
            locationManager!.delegate = self
            //            locationManager?.desiredAccuracy = kCLLocationAccuracyBest
        } else {
            print("Show an alert, Location is not enabled, go to the settings and enable the location")
        }
    }
    
    
    private func checkLocationAuthorization() {
        guard let locationManager = locationManager else { return }
        
        switch locationManager.authorizationStatus {
            
        case .notDetermined:
            locationManager.requestWhenInUseAuthorization()
        case .restricted:
            print("Show alert, Your location service is restricted due to Parental Control.")
        case .denied:
            print("Location is denied! Go to settings and turn it ON.")
        case .authorizedAlways, .authorizedWhenInUse:
            region = MKCoordinateRegion(center: locationManager.location!.coordinate,
                                        span: MapDetails.defaultSpan)
        @unknown default:
            break
        }
    }
    
    func locationManagerDidChangeAuthorization(_ manager: CLLocationManager) {
        checkLocationAuthorization()
    }
    
}
