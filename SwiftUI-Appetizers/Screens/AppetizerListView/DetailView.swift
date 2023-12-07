//
//  DetailView.swift
//  SwiftUI-Appetizers
//
//  Created by Yakov Petrukhin on 2023-12-05.
//

import SwiftUI

struct DetailView: View {
    let appetizer: Appetizer
    
    var body: some View {
        ZStack {
            Rectangle()
                .fill(.white)
                
            VStack {
                Image("asian-flank-steak")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 300)
                    
                
                Text(appetizer.name)
                    .font(.title2)
                    .fontWeight(.semibold)
                
                Text(appetizer.description)
                    .multilineTextAlignment(.center)
                    .padding()
                
                HStack {
                    AppetizerDetailCell(nutritionLabel: "Calories", nutritionValue: 700)
                    AppetizerDetailCell(nutritionLabel: "Carbs", nutritionValue: 11)
                    AppetizerDetailCell(nutritionLabel: "Protein", nutritionValue: 13)
                }
                .padding()
                
                Button {
                    
                } label: {
                    Label("$\(appetizer.price, specifier: "%.2f") - Add to Order", image: "")
                        .fontWeight(.semibold)
                }
                .buttonStyle(.borderedProminent)
                .controlSize(.large)
                .tint(.brandPrimary)
                .buttonBorderShape(.roundedRectangle(radius: 10))
                .padding()
            }
        }
        .frame(width: 300, height: 500)
        .clipShape(RoundedRectangle(cornerRadius: 20))
        .padding(50)
    }
}

#Preview {
    DetailView(appetizer: MockData.sampleAppetizer)
}


struct AppetizerDetailCell: View {
    let nutritionLabel: String
    let nutritionValue: Int
    
    var body: some View {
        VStack {
            Text(nutritionLabel)
            nutritionLabel == "Calories" ? Text("\(nutritionValue)") : Text("\(nutritionValue) g")
        }
    }
}
