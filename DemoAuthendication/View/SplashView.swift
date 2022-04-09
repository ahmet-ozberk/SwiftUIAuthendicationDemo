//
//  SplashView.swift
//  DemoAuthendication
//
//  Created by Ahmet OZBERK on 8.04.2022.
//

import SwiftUI

struct SplashView: View {
    var items:[SplashModel] = [
        SplashModel(image: "splashImage", title: "Team work all 1", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Id potenti nisl tellus vestibulum dictum luctus cum habitasse augue. Convallis vitae, dictum justo, iaculis id. Cras a ac augue netus egestas semper varius facilisis id."),
        SplashModel(image: "splashImage", title: "Team work all 2", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Id potenti nisl tellus vestibulum dictum luctus cum habitasse augue. Convallis vitae, dictum justo, iaculis id. Cras a ac augue netus egestas semper varius facilisis id."),
        SplashModel(image: "splashImage", title: "Team work all 3", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Id potenti nisl tellus vestibulum dictum luctus cum habitasse augue. Convallis vitae, dictum justo, iaculis id. Cras a ac augue netus egestas semper varius facilisis id."),
        SplashModel(image: "splashImage", title: "Team work all 4", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Id potenti nisl tellus vestibulum dictum luctus cum habitasse augue. Convallis vitae, dictum justo, iaculis id. Cras a ac augue netus egestas semper varius facilisis id."),
    ]
    
    @State var currentIndex:Int = 0
    var body: some View {
        NavigationView {
            GeometryReader{ s in
                VStack{
                    TabView(selection: $currentIndex){
                        ForEach(0..<items.count, id: \.self){ index in
                            ItemWidget(model: items[index], s: s).tag(index)
                        }
                    }.tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
                        .frame(height: s.size.height*0.7)
                    ScrollView([.horizontal,.vertical],showsIndicators: false){
                        HStack(alignment: .center){
                            ForEach(0..<items.count, id: \.self){ index in
                                Circle()
                                    .foregroundColor(index == currentIndex ? Constant.mainColor : Constant.lowGreyColor)
                                    .frame(width: index == currentIndex ? 14 : 9, height: index == currentIndex ? 14 : 9)
                            }
                        }
                    }
                        HStack(spacing: 0){
                            NavigationLink(destination: LoginView().navigationBarBackButtonHidden(true)){
                                Text("Sign In")
                                    .font(.title2)
                                    .fontWeight(.bold)
                                    .foregroundColor(Color.white)
                                    .padding()
                                    .frame(width: s.size.width*0.4,height: 60)
                                    .background(Color.black)
                                    .cornerRadius(10,corners: [.topLeft,.bottomLeft])
                                    .navigationBarTitle("")
                                                        .navigationBarHidden(true)
                            }
                            NavigationLink(destination: RegisterView().navigationBarBackButtonHidden(true)){
                                Text("Register")
                                    .font(.title2)
                                    .fontWeight(.bold)
                                    .foregroundColor(Color.white)
                                    .padding()
                                    .frame(width: s.size.width*0.4, height: 60)
                                    .background(Constant.mainColor)
                                .cornerRadius(10,corners: [.topRight,.bottomRight])
                            }
                        }.padding(.horizontal,20)
                    
                }.padding(.vertical,50)
            }
        }
    }
}

struct ItemWidget: View{
    var model:SplashModel
    var s:GeometryProxy
    var body: some View{
        VStack(spacing: 0){
            Image(model.image ?? "")
                .frame(width: s.size.width, height: s.size.height*0.4)
            Text(model.title ?? "")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .padding(.top,40)
            Text(model.description ?? "")
                .font(.body)
                .multilineTextAlignment(.center)
                .padding(.all,10)
        }
    }
}

struct SplashView_Previews: PreviewProvider {
    static var previews: some View {
        SplashView()
    }
}
