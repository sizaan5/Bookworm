//
//  BookwormApp.swift
//  Bookworm
//
//  Created by Izaan Saleem on 21/08/2024.
//

import SwiftUI
import SwiftData

@main
struct BookwormApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(for: Student.self)
    }
}
