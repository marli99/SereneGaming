//
//  SandboxPlaystationView.swift
//  SereneGaming
//
//  Created by Marli Correia on 2022/08/25.
//

import SwiftUI

struct SandboxPlaystationView: View {
    var SandboXPlaystation: SandboXPlaystation
    var body: some View {
        HStack{
            VStack{
                Text(SandboXPlaystation.name)
                    .font(.system(size: 13, weight:.regular))
                    .foregroundColor(.black)
                    .hoverEffect(.automatic)
                    .padding(.top, 20)
                             
                Image(SandboXPlaystation.Image)
                    .renderingMode(.original)
                    .resizable()
                    
                    .frame(width: 145, height: 200, alignment: .leading)
                    .cornerRadius(8)
            }
        }
        .padding(.bottom,10)
    }
}

struct SandboxPlaystationView_Previews: PreviewProvider {
    static var previews: some View {
        SandboxPlaystationView(SandboXPlaystation: SandboxPlaystationData[0])
            .previewLayout(.sizeThatFits)
            .padding(4)
    }
}
