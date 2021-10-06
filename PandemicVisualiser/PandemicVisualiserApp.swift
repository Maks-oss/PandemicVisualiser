//
//  PandemicVisualiserApp.swift
//  PandemicVisualiser
//
//  Created by Maksimus on 06.10.2021.
//

import SwiftUI

@main
struct PandemicVisualiserApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
