//
//  SandboxPlaystationView.swift
//  SereneGaming
//
//  Created by Marli Correia on 2022/08/25.
//

import SwiftUI

struct SandboxNintendoView: View {
    var SandboxNintendo: SandboxNintendo
    var body: some View {
        HStack{
            VStack{
                Text(SandboxNintendo.name)
                    .font(.system(size: 13, weight:.regular))
                    .foregroundColor(.black)
                    .hoverEffect(.automatic)
                    .padding(.top, 20)
                             
                Image(SandboxNintendo.Image)
                    .renderingMode(.original)
                    .resizable()
                    
                    .frame(width: 145, height: 200, alignment: .leading)
                    .cornerRadius(8)
            }
        }
        .padding(.bottom,10)
    }
}

struct SandboxNintendoView_Previews: PreviewProvider {
    static var previews: some View {
        SandboxNintendoView(SandboxNintendo: SandboxNintendoData[0])
            .previewLayout(.sizeThatFits)
            .padding(4)
    }
}
