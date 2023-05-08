//
//  InterestingPlacesMap_SwiftUIApp.swift
//  InterestingPlacesMap-SwiftUI
//
//  Created by Okan Özdemir on 2.05.2023.
//

import SwiftUI

@main
struct InterestingPlacesMap_SwiftUIApp: App {

    @StateObject private var vm = LocationsViewModel()

    var body: some Scene {
        WindowGroup {
            LocationsView()
                .environmentObject(vm)
        }
    }
}
