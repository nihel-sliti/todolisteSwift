//
//  TodolisteItemView.swift
//  todoliste
//
//  Created by Tekup-mac-2 on 29/4/2024.
//

import SwiftUI

struct TodolisteItemView: View {
    @StateObject var viewModel = ProfileViewViewModel()
    let item: ToDoListItem
    var body: some View {
        HStack {
            VStack(alignment: .leading ){
                
                
                Text(item.title)
                    .font(.body)
                    
                Text("\(Date(timeIntervalSince1970:item.dueDate).formatted(date: .abbreviated, time: .shortened))")
                    .font(.footnote)
                    .foregroundColor(Color(.secondaryLabel))
            }
            Spacer()
            Button {
                viewModel.toggleIsDone(item: item)
                
            } label: {
                Image(systemName: item.isDone ? "checkmark.circle.fill" : "circle")
                    .foregroundColor(Color.blue)
            }
          }
        
    }
}

#Preview {
    TodolisteItemView(item: .init(
        id:"123",
        title: "Goodluck",
        dueDate: Date().timeIntervalSince1970,
        createDate : Date().timeIntervalSince1970 ,
        isDone : true ))
}
