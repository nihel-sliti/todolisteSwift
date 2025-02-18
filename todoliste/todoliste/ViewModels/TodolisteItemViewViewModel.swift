//
//  TodolisteItemViewViewModel.swift
//  todoliste
//
//  Created by Tekup-mac-2 on 29/4/2024.
//

import FirebaseAuth
import FirebaseFirestore
import Foundation
class TodolisteItemViewViewModel: ObservableObject{
    init(){}
    
    func toggleIsDone(item: ToDoListItem)  {
           var itemCopy = item
           itemCopy.setDone(!item.isDone)

           guard let uid = Auth.auth().currentUser?.uid else {
                    return
            }
          
         let db = Firestore.firestore()
         db.collection("users")
               .document(uid)
               .collection("todos")
               .document(itemCopy.id)
               .setData(itemCopy.asDictionary())
    }

}
