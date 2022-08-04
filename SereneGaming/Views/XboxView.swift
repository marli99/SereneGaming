//
//  XboxView.swift
//  SereneGaming
//
//  Created by Marli Correia on 2022/08/02.
//

import SwiftUI

struct XboxView: View{
    var xbox: Xbox
    
    var body: some View{
        VStack{
            Image(xbox.Image)
                .renderingMode(.original)
                .resizable()
                .frame(width: 330, height: 210, alignment: .leading)
                .background(Color.white)
                .cornerRadius(8)
            
            Text(xbox.name)
                .font(.system(size: 17, weight: .semibold))
                .foregroundColor(.white)
                .hoverEffect(.automatic)
                .padding(.top, -45)
            
//            VStack(alignment: .leading, spacing: 5){
//                Text(xbox.name)
//                    .font(.title)
//                    .foregroundColor(.white)
//                Text(xbox.price)
//                    .foregroundColor(.white)
//                    .font(.title3)
//            }
        }
    }
}

struct XboxView_Previews: PreviewProvider {
    static var previews: some View {
        XboxView(xbox: XboxData[0])
            .previewLayout(.sizeThatFits)
            .padding(4)
    }
}
