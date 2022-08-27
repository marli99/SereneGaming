//
//  RolePlayingXboxView.swift
//  SereneGaming
//
//  Created by Marli Correia on 2022/08/18.
//

import SwiftUI

struct PuzzleXboxView: View {
    var RolePlayXbox : RolePlayXbox
    var body: some View {
        HStack{
            VStack{
                Text(RolePlayXbox.name)
                    .font(.system(size: 13, weight:.regular))
                    .foregroundColor(.black)
                    .hoverEffect(.automatic)
                    .padding(.top, 20)
                             
                Image(RolePlayXbox.Image)
                    .renderingMode(.original)
                    .resizable()
                    
                    .frame(width: 145, height: 200, alignment: .leading)
                    .cornerRadius(8)
            }
        }
        .padding(.bottom,10)
    }
}

struct RolePlayingXboxView_Previews: PreviewProvider {
    static var previews: some View {
        PuzzleXboxView(RolePlayXbox: RolePlayingXboxData[0])
            .previewLayout(.sizeThatFits)
            .padding(4)
    }
}
