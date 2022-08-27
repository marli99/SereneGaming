//
//  RolePlayingPlaystationDetailsView.swift
//  SereneGaming
//
//  Created by Marli Correia on 2022/08/25.
//

import SwiftUI

struct RolePlayingPlaystationDetailsView: View {
    
    var rolePlayPlaystation: RolePlayPlaystation
    
    var body: some View {
        
        ZStack(alignment:.center){
            VStack(alignment:.center){
                Image(rolePlayPlaystation.Image)
                    .renderingMode(.original)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 260, height: 400, alignment: .leading)
//                    .background(Color.blue)
                    .cornerRadius(8)

                
                HStack{
                    
                    VStack(alignment: .leading, spacing: 5){
                        Text(rolePlayPlaystation.name)
                            .foregroundColor(.black)
                            .font(.title)
                        Text(rolePlayPlaystation.price)
                            .foregroundColor(.black)
                            .font(.headline)
                    }
                }
                Text(rolePlayPlaystation.description)
                    .foregroundColor(.black
                    )
                    .padding(30)
                    .font(.callout)
                
//                SubmitButtonView()
            }
            
            
           
            
        }
    }
}

struct RolePlayingPlaystationDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        RolePlayingPlaystationDetailsView(rolePlayPlaystation: RolePlayingPlaystationData[0])
    }
}
