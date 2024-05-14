//
//  MainViewViewModels.swift
//  todoliste
//
//  Created by Tekup-mac-2 on 29/4/2024.
//
import Firebase
import FirebaseAuth
import Foundation
class MainViewViewModel: ObservableObject {
    @Published var currentUserId: String = ""
    private var handler: AuthStateDidChangeListenerHandle?
    init() {
     
        self.handler = Auth.auth().addStateDidChangeListener{[weak self] _, user in DispatchQueue.main.async {
            self?.currentUserId = user?.uid ?? ""
        }
    }
}
    public var isSignedIn: Bool {
        return Auth.auth().currentUser != nil
    }
}
