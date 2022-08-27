//
//  SandboxPlaystationView.swift
//  SereneGaming
//
//  Created by Marli Correia on 2022/08/25.
//

import SwiftUI

struct SandboxWiiView: View {
    var SandboxWII: SandboxWII
    var body: some View {
        HStack{
            VStack{
                Text(SandboxWII.name)
                    .font(.system(size: 13, weight:.regular))
                    .foregroundColor(.black)
                    .hoverEffect(.automatic)
                    .padding(.top, 20)
                             
                Image(SandboxWII.Image)
                    .renderingMode(.original)
                    .resizable()
                    
                    .frame(width: 145, height: 200, alignment: .leading)
                    .cornerRadius(8)
            }
        }
        .padding(.bottom,10)
    }
}

struct SandboxWiiView_Previews: PreviewProvider {
    static var previews: some View {
        SandboxWiiView(SandboxWII: SandboxWIIData[0])
            .previewLayout(.sizeThatFits)
            .padding(4)
    }
}
