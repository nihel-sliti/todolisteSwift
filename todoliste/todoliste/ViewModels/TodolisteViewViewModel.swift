//
//  TodolisteViewViewModel.swift
//  todoliste
//
//  Created by Tekup-mac-2 on 29/4/2024.
//

import Foundation
import FirebaseFirestore

class TodolisteViewViewModel: ObservableObject{
    @Published var showingNewItemView = false
    
    
    private let userId: String
    
    init(userId: String)  {
           self.userId = userId
    }

    
    func delete(id: String){
        let db = Firestore.firestore()

        db.collection("users")
               .document(userId)
               .collection("todos")
               .document(id)
               .delete()

        
    }
}
