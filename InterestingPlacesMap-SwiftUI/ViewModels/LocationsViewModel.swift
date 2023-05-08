//
//  LocationsViewModel.swift
//  InterestingPlacesMap-SwiftUI
//
//  Created by Okan Özdemir on 2.05.2023.
//

import Foundation
import MapKit
import SwiftUI

class LocationsViewModel: ObservableObject {
    
    // All loaded locations
    @Published var locations: [Location]
    @Published var fieldText: String = ""
    @Published var mapLocation: Location {
        didSet {
            updateMapRegion(location: mapLocation)
        }
    }
    // Current region on map
    @Published var mapRegion: MKCoordinateRegion = MKCoordinateRegion()
    let mapSpan = MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1)
    
    // Show list of locations
    @Published var showLocationsList: Bool = false
    
    // Show location detail via sheet
    
    @Published var sheetLocation: Location? = nil
    
    init() {
        let locations = LocationsDataService.locations
        self.locations = locations
        self.mapLocation = locations.first!
        self.updateMapRegion(location: locations.first!)
        self.fieldText = fieldText
    }
    
    private func updateMapRegion(location: Location) {
        withAnimation(.easeInOut) {
            mapRegion = MKCoordinateRegion(
                center: location.coordinates,
                span: mapSpan)
        }
    }
    func toggleLocationsList() {
        withAnimation(.easeInOut) {
            showLocationsList.toggle()
        }
    }
    
    func showNextLocation(location: Location) {
        withAnimation(.easeInOut) {
            mapLocation = location
            showLocationsList = false
        }
    }
    
    func nextButtonPressed() {
        // get the current index location
        guard let currentIndex = locations.firstIndex(of: mapLocation) else {
            print("Could not find current index in locations")
            return
        }
        
        let nextIndex = currentIndex + 1
        guard locations.indices.contains(nextIndex) else {
            guard let firstLocation = locations.first else { return }
            showNextLocation(location: firstLocation)
            return
        }
        let nextLocation = locations[nextIndex]
        showNextLocation(location: nextLocation)
    }
}

