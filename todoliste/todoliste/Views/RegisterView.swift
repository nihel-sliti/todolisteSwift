//
//  RegisterView.swift
//  todoliste
//
//  Created by Tekup-mac-2 on 29/4/2024.
//

import SwiftUI

struct RegisterView: View {
   @StateObject var viewModel = RegisterViewViewModel()
    var body: some View {
        NavigationView{
            VStack{
                //Header
                HeaderView(title: "Registre", subtitle: "Start organizing todos", angle: -15, background: .orange)
                Form{
                    
                    TextField("Full name", text: $viewModel.name)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .padding(.top, 10)
                    TextField("Email Address", text: $viewModel.email)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .padding(.top, 10)
                    SecureField("Password", text: $viewModel.password)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .padding(.top, 10)
                    
                    TLButton(
                        title: "Create Account",
                        background:.green){
                            viewModel.register()
                            //register
                        }
                        .padding(.bottom, 10)
                }
                .offset(y: -100)
                
                Spacer()
                
            }
        }
        
    }
}

#Preview {
    RegisterView()
}
