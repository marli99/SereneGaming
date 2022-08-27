//
//  SportXboxDetailsView.swift
//  SereneGaming
//
//  Created by Marli Correia on 2022/08/18.
//

import SwiftUI

struct PuzzleWiiDetailsView: View {
    var puzzleWii: PuzzleWii
    var body: some View {
        ZStack(alignment:.center){
            VStack(alignment:.center){
                Image(puzzleWii.Image)
                    .renderingMode(.original)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 260, height: 400, alignment: .leading)
//                    .background(Color.blue)
                    .cornerRadius(8)

                
                HStack{
                    
                    VStack(alignment: .leading, spacing: 5){
                        Text(puzzleWii.name)
                            .foregroundColor(.black)
                            .font(.title)
                        Text(puzzleWii.price)
                            .foregroundColor(.black)
                            .font(.headline)
                    }
                }
                Text(puzzleWii.description)
                    .foregroundColor(.black
                    )
                    .padding(30)
                    .font(.callout)
                
//                SubmitButtonView()
            }
            
            
           
            
        }
    }
}

struct PuzzleWiiDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        PuzzleWiiDetailsView(puzzleWii: PuzzleWiiData[0])
    }
}
