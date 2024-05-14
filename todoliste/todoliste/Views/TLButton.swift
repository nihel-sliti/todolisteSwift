//
//  TLButton.swift
//  todoliste
//
//  Created by Tekup-mac-2 on 6/5/2024.
//

import SwiftUI

struct TLButton: View {
    let title :String
    let background: Color
    let action: () -> Void
    var body: some View {
        Button{
           action()
            
        }label: {
            ZStack{
                RoundedRectangle(cornerRadius: 10).foregroundColor(background)
                Text(title).foregroundColor(.white)
                    .bold()
            }
        }
        .padding()
       
    }
}

struct TLButton_Previews: PreviewProvider{
    static var previews: some View{
        TLButton(title: "Value",
                 background: .pink){
            //action
        }
    }
}
