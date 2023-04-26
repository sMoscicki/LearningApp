//
//  LearningAppApp.swift
//  LearningApp
//
//  Created by s.Moscicki on 26/04/2023.
//

import SwiftUI

@main
struct LearningApp: App {
    var body: some Scene {
        WindowGroup {
            HomeView()
                .environmentObject(ContentModel())
        }
    }
}
