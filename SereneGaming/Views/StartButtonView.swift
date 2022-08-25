//
//  StartButtonView.swift
//  SereneGaming
//
//  Created by Marli Correia on 2022/08/18.
//

import SwiftUI

struct StartButtonView: View {
    
    @AppStorage("isOnboarding") var isOnboarding: Bool?
    
    var body: some View{
        Button(action: {
            isOnboarding = false
        }, label: {
            HStack{
            Text("SKIP")

            Image(systemName: "arrow.right.circle")
                .imageScale(.large)
            }

                .padding(.vertical,10)
                .padding(.horizontal,16)
                .background(Capsule()
                                .strokeBorder(Color.white, lineWidth: 1.35))
                .accentColor(.white)
        })
        .background(Color(.black))
//        NavigationView{
//        Button(action: {
//            isOnboarding = true
//        }) {
//            NavigationLink(destination: ContentView()) {
//            Text("SKIP")
//            Image(systemName: "arrow.right.circle")
//                                .imageScale(.large)
//            }
//                .padding(.vertical,10)
//                .padding(.horizontal,16)
//                .background(Capsule()
//                .strokeBorder(Color.white, lineWidth: 1.35))
//                .accentColor(.white)
//        }
//        .background(Color(.black))
//
//    }
    }
}

struct StartButtonView_Previews: PreviewProvider {
    static var previews: some View {
        StartButtonView()
            .previewLayout(.sizeThatFits)
    }
}
