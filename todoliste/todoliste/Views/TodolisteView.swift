//
//  todolisteView.swift
//  todoliste
//
//  Created by Tekup-mac-2 on 29/4/2024.
//
import FirebaseFirestoreSwift
import SwiftUI

struct TodoListeView: View {
    @StateObject var viewModel : TodolisteViewViewModel
 @FirestoreQuery var items: [ToDoListItem]
    
    
    init(userId: String) {
       // self.userId = userId
        self._items = FirestoreQuery(collectionPath: "users/\(userId)/todos")
        self._viewModel = StateObject (
             wrappedValue: TodolisteViewViewModel(userId: userId)
        )
        
    }
    
    var body: some View {
        NavigationView{
            VStack{
                List(items) { item in
                    TodolisteItemView(item: item)
                        .swipeActions {
                            Button ("Delete"){
                                viewModel.delete(id: item.id)
                                
                            }
                            .tint(.red)
                            .background(Color.red)
                        }
                }
                .listStyle(PlainListStyle())
                
                
            }
            .navigationTitle("To Do List")
            .toolbar{
                Button{
                    viewModel.showingNewItemView = true
                } label: {
                    Image(systemName: "plus")
                }
            }
            .sheet(isPresented: $viewModel.showingNewItemView) {
                NewItemView(newItemPresented: $viewModel.showingNewItemView)
            }
        }
    }
}

#Preview {
    TodoListeView(userId: "oMDjC0JsUIU7sH6K77ixcSVMauH3")
}
