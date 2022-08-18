//
//  RolePlayingXboxDetailsView.swift
//  SereneGaming
//
//  Created by Marli Correia on 2022/08/18.
//

import SwiftUI

struct RolePlayingXboxDetailsView: View {
    var rolePlayXbox: RolePlayXbox
    var body: some View {
        ZStack(alignment:.center){
            VStack(alignment:.center){
                Image(rolePlayXbox.Image)
                    .renderingMode(.original)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 260, height: 400, alignment: .leading)
//                    .background(Color.blue)
                    .cornerRadius(8)

                
                HStack{
                    
                    VStack(alignment: .leading, spacing: 5){
                        Text(rolePlayXbox.name)
                            .foregroundColor(.black)
                            .font(.title)
                        Text(rolePlayXbox.price)
                            .foregroundColor(.black)
                            .font(.system(size: 15))
                    }
                }
                Text(rolePlayXbox.description)
                    .foregroundColor(.black
                    )
                    .padding(30)
                    .font(.system(size: 17))
                
//                SubmitButtonView()
            }
            
            
           
            
        }
    }
}

struct RolePlayingXboxDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        RolePlayingXboxDetailsView(rolePlayXbox: RolePlayingXboxData[0])
    }
}
