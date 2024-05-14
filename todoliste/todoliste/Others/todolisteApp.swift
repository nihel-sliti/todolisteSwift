//
//  todolisteApp.swift
//  todoliste
//
//  Created by Tekup-mac-2 on 29/4/2024.
//
import FirebaseCore
import SwiftUI

@main
struct todolisteApp: App {
    init(){
        FirebaseApp.configure()
    }
    var body: some Scene {
        WindowGroup {
            MainView()
        }
    }
}

