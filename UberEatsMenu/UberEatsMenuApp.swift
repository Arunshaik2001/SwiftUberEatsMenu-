//
//  UberEatsMenuApp.swift
//  UberEatsMenu
//
//  Created by Shaik Ahron on 04/02/23.
//

import SwiftUI

@main
struct UberEatsMenuApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
