//
//  LocationsView.swift
//  InterestingPlacesMap-SwiftUI
//
//  Created by Okan Özdemir on 2.05.2023.
//

import SwiftUI
import MapKit

struct LocationsView: View {
    
    @EnvironmentObject private var vm: LocationsViewModel
    let maxWidthForIpad: CGFloat = 700
    
    var body: some View {
        ZStack {
            mapLayer
                .ignoresSafeArea()
            
            VStack(spacing: 0) {
                header
                    .padding()
                    .frame(maxWidth: maxWidthForIpad)
                Spacer()
                locationsPreviewStack
            }
        }
        .sheet(item: $vm.sheetLocation) { location in
            LocationDetailView(location: location)
        }
    }
    
    struct LocationsView_Previews: PreviewProvider {
        static var previews: some View {
            LocationsView()
                .environmentObject(LocationsViewModel())
        }
    }
}

extension LocationsView {
    private var header: some View {
        VStack {
            Button(action: vm.toggleLocationsList) {
                Text(vm.mapLocation.name + ", "+vm.mapLocation.cityName)
                    .font(.title2)
                    .fontWeight(.black)
                    .foregroundColor(.primary)
                    .frame(height: 55)
                    .frame(maxWidth: .infinity)
                    .animation(.none, value: vm.mapLocation)
                    .overlay(alignment: .leading) {
                        Image(systemName: "arrow.down")
                            .font(.headline)
                            .foregroundColor(.primary)
                            .padding()
                            .rotationEffect(Angle(degrees: vm.showLocationsList ? 180 : 0))
                    }
            }
            if vm.showLocationsList {
                LocationsListView()
            }
        }
        .background(.thickMaterial)
        .cornerRadius(10)
        .shadow(color: .black.opacity(0.3), radius: 20, y: 15)
    }
    
    // Another dropdown menu
    
//    private var menu: some View {
//        Menu {
//            ForEach(vm.locations) { location in
//                Button(action: {
//                    vm.mapLocation = location
//                }, label: {
//                    Text(location.name)
//                })
//            }
//        } label: {
//            VStack(spacing: 5) {
//                Text("\(vm.mapLocation.name)")
//                    .foregroundColor(.black)
//                    .font(.title)
//                Label("Change Location", systemImage: "location")
//                    .font(.headline)
//                    .foregroundColor(.primary)
//                    .padding(.horizontal, 20)
//            }
//            .background(Color.brown.opacity(0.1))
//        }
//        .background(.thickMaterial)
//        .cornerRadius(20)
//    }
    
    private var mapLayer: some View {
        Map(coordinateRegion: $vm.mapRegion,
            annotationItems: vm.locations) { location in
            MapAnnotation(coordinate: location.coordinates) {
                LocationMapAnnotionView()
                    .scaleEffect(vm.mapLocation == location ? 1 : 0.7)
                    .shadow(radius: 10)
                    .onTapGesture {
                        vm.showNextLocation(location: location)
                    }
            }
        }
    }
    
    private var locationsPreviewStack: some View {
        ZStack {
            ForEach(vm.locations) { location in
                if vm.mapLocation == location {
                    LocationPreviewView(location: location)
                        .shadow(color: .black.opacity(0.3), radius: 20)
                        .padding()
                        .frame(maxWidth: maxWidthForIpad)
                        .frame(maxWidth: .infinity)
                        .transition(.asymmetric(
                            insertion: .move(edge: .trailing),
                            removal: .move(edge: .leading)))
                }
            }
        }
        
    }
}
