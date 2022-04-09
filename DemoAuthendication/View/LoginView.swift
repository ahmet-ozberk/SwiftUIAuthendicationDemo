//
//  LoginView.swift
//  DemoAuthendication
//
//  Created by Ahmet OZBERK on 8.04.2022.
//

import SwiftUI

struct LoginView: View {
    @State var username = ""
    @State var password = ""
    
    var body: some View {
        NavigationView {
            GeometryReader{s in
                VStack(alignment: .leading){
                    Text("Lets Sign you in")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .padding(.vertical,5)
                    Text("Welcome Back ,\nYou have been missed")
                        .font(.largeTitle)
                        .fontWeight(.regular)
                    TextField("Email ,phone & username",text: $username)
                        .frame(width: .infinity, height: 50)
                        .padding(.horizontal)
                        .border(Color.black.opacity(0.5), width: 0.5)
                        .cornerRadius(5)
                        .overlay(RoundedRectangle(cornerRadius: 5).stroke(.black.opacity(0.5),lineWidth: 0.5))
                        .padding(.top,20)
                        .padding(.bottom,3)
                    SecureField("Password",text: $password)
                        .frame(width: .infinity, height: 50)
                        .padding(.horizontal)
                        .border(Color.black.opacity(0.5), width: 0.5)
                        .cornerRadius(5)
                        .overlay(RoundedRectangle(cornerRadius: 5).stroke(.black.opacity(0.5),lineWidth: 0.5))
                    HStack{
                        Spacer()
                        Button(
                            action: {
                                print("Forgot password clicked!")
                            }
                        ){
                            Text("Forgot Password ?").padding(.horizontal)
                                .foregroundColor(Color.black)
                        }
                    }
                    Button(
                        action: {
                            print("Login clicked!")
                        }
                    ){
                        Text("Sign in")
                            .font(.title2)
                            .fontWeight(.semibold)
                            .foregroundColor(Color.white)
                        
                    }.frame(width: s.size.width, height: 50)
                        .background(Color.black)
                        .cornerRadius(10)
                        .padding(.vertical)
                    HStack{
                        VStack {
                            Divider()
                                .background(Color.black)
                        }
                        Text("or")
                            .fontWeight(.semibold)
                        VStack {
                            Divider()
                                .background(Color.black)
                        }
                    }
                    HStack(alignment: .center,spacing: 51){
                        Image("googleLogo")
                        Image("facebookLogo")
                        Image("iosLogo")
                    }.frame(width: s.size.width).padding(.vertical)
                    HStack(alignment: .center){
                        Text("Don’t have an account ?")
                        NavigationLink(destination: RegisterView().navigationBarBackButtonHidden(true)){
                            Text("Register Now").fontWeight(.bold)
                        }
                    }.frame(width: s.size.width).padding(.vertical)
                    Spacer()
                }
            }.padding()
                .navigationBarHidden(true)
                .navigationBarTitle("")
        }.navigationBarBackButtonHidden(true)
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
