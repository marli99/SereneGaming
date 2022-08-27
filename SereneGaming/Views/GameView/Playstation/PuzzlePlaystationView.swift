//
//  PuzzlePlaystationView.swift
//  SereneGaming
//
//  Created by Marli Correia on 2022/08/25.
//

import SwiftUI

struct PuzzlePlaystationView: View {
        var RolePlayPlaystation : RolePlayPlaystation
    
        var body: some View {
            HStack{
                VStack{
                    Text(RolePlayPlaystation.name)
                        .font(.system(size: 13, weight:.regular))
                        .foregroundColor(.black)
                        .hoverEffect(.automatic)
                        .padding(.top, 20)
                                 
                    Image(RolePlayPlaystation.Image)
                        .renderingMode(.original)
                        .resizable()
                        
                        .frame(width: 145, height: 200, alignment: .leading)
                        .cornerRadius(8)
                }
            }
            .padding(.bottom,10)
        }
}

struct PuzzlePlaystationView_Previews: PreviewProvider {
    static var previews: some View {
        PuzzlePlaystationView(RolePlayPlaystation: RolePlayingPlaystationData[0])
            .previewLayout(.sizeThatFits)
            .padding(4)
    }
}
