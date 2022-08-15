//
//  GameView.swift
//  SereneGaming
//
//  Created by Marli Correia on 2022/08/15.
//

import SwiftUI

struct XboxSandboxView: View {
    var SandboXbox: SandboXbox
    
    var body: some View {
        HStack{
            VStack{
                Text(SandboXbox.name)
                    .font(.system(size: 13, weight:.regular))
                    .foregroundColor(.black)
                    .hoverEffect(.automatic)
                    .padding(.top, 20)
                             
                Image(SandboXbox.Image)
                    .renderingMode(.original)
                    .resizable()
                    
                    .frame(width: 145, height: 200, alignment: .leading)
                    .cornerRadius(8)
            }
        }
        .padding(.bottom,10)
    }
}

struct XboxSandboxView_Previews: PreviewProvider {
    static var previews: some View {
        XboxSandboxView(SandboXbox: SandboxXboxData[0])
            .previewLayout(.sizeThatFits)
            .padding(4)
    }
}
