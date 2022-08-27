//
//  SportXboxDetailsView.swift
//  SereneGaming
//
//  Created by Marli Correia on 2022/08/18.
//

import SwiftUI

struct PuzzleNintendoDetailsView: View {
    var puzzleNintendo: PuzzleNintendo
    var body: some View {
        ZStack(alignment:.center){
            VStack(alignment:.center){
                Image(puzzleNintendo.Image)
                    .renderingMode(.original)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 260, height: 400, alignment: .leading)
//                    .background(Color.blue)
                    .cornerRadius(8)

                
                HStack{
                    
                    VStack(alignment: .leading, spacing: 5){
                        Text(puzzleNintendo.name)
                            .foregroundColor(.black)
                            .font(.title)
                        Text(puzzleNintendo.price)
                            .foregroundColor(.black)
                            .font(.headline)
                    }
                }
                Text(puzzleNintendo.description)
                    .foregroundColor(.black
                    )
                    .padding(30)
                    .font(.callout)
                
//                SubmitButtonView()
            }
            
            
           
            
        }
    }
}

struct PuzzleNintendoDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        PuzzleNintendoDetailsView(puzzleNintendo: PuzzleNintendoData[0])
    }
}
