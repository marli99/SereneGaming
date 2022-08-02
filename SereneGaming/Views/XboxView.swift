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
        HStack{
            Image(xbox.Image)
                .renderingMode(.original)
                .resizable()
                .scaledToFit()
                .frame(width: 80, height: 80, alignment: .leading)
                .background(Color.black)
                .cornerRadius(8)
            
            VStack(alignment: .leading, spacing: 5){
                Text(xbox.name)
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                Text(xbox.price)
                    .foregroundColor(.gray)
                    .font(.title3)
            }
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
