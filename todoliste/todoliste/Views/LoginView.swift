//
//  LoginView.swift
//  todoliste
//
//  Created by Tekup-mac-2 on 29/4/2024.
//

import SwiftUI

struct LoginView: View {
    @StateObject var viewModel = LoginViewViewModel()
    var body: some View {
        NavigationView{
            VStack{
                //Header
                HeaderView(title: "To Do List", subtitle: "Get things done", angle: 15, background: .pink)
              
                //Login Form
                Form {
                    if !viewModel.errorMessage.isEmpty{
                        Text(viewModel.errorMessage).foregroundColor(Color.red)
                    }
                    TextField("Email Address", text: $viewModel.email)
                        .textFieldStyle(RoundedBorderTextFieldStyle()).padding(.top, 10)
                    SecureField("Password", text: $viewModel.password ).textFieldStyle(RoundedBorderTextFieldStyle()).padding(.top, 10)
                    TLButton(
                        title: "Log In ",
                        background:.blue){
                        //login
                            viewModel.login()
                    }
                        
                }
                .offset(y: -100)
                //Create Account
                VStack{
                    Text("New around here?")
                    NavigationLink("Create An Account", destination: RegisterView())
                    
                }.padding(.bottom, 20)
                Spacer()
            }
        }
    }
}
#Preview {
    LoginView()
}
