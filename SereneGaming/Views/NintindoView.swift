//
//  NintindoView.swift
//  SereneGaming
//
//  Created by Marli Correia on 2022/08/13.
//

import SwiftUI

struct NintindoView: View {
    var Nintindo: Nin
    
    var body: some View {
        VStack{
            Text(Nintindo.name)
                .font(.system(size: 17, weight: .semibold))
                .foregroundColor(.black)
                .hoverEffect(.automatic)
                .padding(.top, 20)
                         
            Image(Nintindo.Image)
                .renderingMode(.original)
                .resizable()
                
                .frame(width: 320, height: 210, alignment: .leading)
                .cornerRadius(8)
        }
    }
}

struct NintindoView_Previews: PreviewProvider {
    static var previews: some View {
        NintindoView(Nintindo: NintindoData[0])
            .previewLayout(.sizeThatFits)
            .padding(4)
    }
}
