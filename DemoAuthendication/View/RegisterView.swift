//
//  RegisterView.swift
//  DemoAuthendication
//
//  Created by Ahmet OZBERK on 8.04.2022.
//

import SwiftUI

struct RegisterView: View {
    @State var name = ""
    @State var password = ""
    @State var businessName = ""
    @State var phone = ""
    @State var email = ""
    
    var body: some View {
        NavigationView{
            GeometryReader{s in
                VStack(alignment: .leading){
                    Text("Lets Register\nAccount")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .padding(.vertical,5)
                    Text("Hello user , you have\na greatful journey")
                        .font(.largeTitle)
                        .fontWeight(.regular)
                    Group{
                        InputField(text: $name, hint: "Name")
                        InputField(text: $businessName, hint: "Business Name")
                        InputField(text: $phone, hint: "Phone")
                        InputField(text: $email, hint: "Email")
                    }
                    SecureField("Password",text: $password)
                        .frame(width: .infinity, height: 50)
                        .padding(.horizontal)
                        .border(Color.black.opacity(0.5), width: 0.5)
                        .cornerRadius(5)
                        .overlay(RoundedRectangle(cornerRadius: 5).stroke(.black.opacity(0.5),lineWidth: 0.5))

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
                        .padding(.top)
                    HStack(alignment: .center){
                        Text("Already  have an account ?")
                        NavigationLink(destination: LoginView().navigationBarBackButtonHidden(true)){
                            Text("Login").fontWeight(.bold)
                        }
                    }.frame(width: s.size.width).padding(.vertical)
                    Spacer()
                }
            }.padding()
                .navigationBarHidden(true)
                .navigationBarTitle("")
                
        }
    }
}

struct InputField: View{
    var text:Binding<String>
    var hint:String
    var body: some View{
        TextField(hint,text: text)
            .frame(width: .infinity, height: 50)
            .padding(.horizontal)
            .border(Color.black.opacity(0.5), width: 0.5)
            .cornerRadius(5)
            .overlay(RoundedRectangle(cornerRadius: 5).stroke(.black.opacity(0.5),lineWidth: 0.5))
            .padding(.bottom,3)
    }
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}
