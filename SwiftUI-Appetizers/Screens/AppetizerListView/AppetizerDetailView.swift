//
//  DetailView.swift
//  SwiftUI-Appetizers
//
//  Created by Yakov Petrukhin on 2023-12-05.
//

import SwiftUI

struct AppetizerDetailView: View {
    
    let appetizer: Appetizer
    @Binding var isShowingDetail: Bool
    
    var body: some View {
        VStack {
            AppetizerRemoteImage(urlString: appetizer.imageURL)
                .scaledToFit()
                .frame(width: 300, height: 225)
            
            VStack {
                Text(appetizer.name)
                    .font(.title2)
                    .fontWeight(.semibold)
                
                Text(appetizer.description)
                    .multilineTextAlignment(.center)
                    .font(.body)
                    .padding()
            }
            
            HStack(spacing: 40){
                VStack {
                    Text("Calories")
                        .font(.caption)
                        .bold()
                    
                    Text("\(appetizer.calories)")
                        .foregroundStyle(.secondary)
                        .fontWeight(.semibold)
                        .italic()
                }
                
                VStack {
                    Text("Carbs")
                        .font(.caption)
                        .bold()
                    
                    Text("\(appetizer.carbs)")
                        .foregroundStyle(.secondary)
                        .fontWeight(.semibold)
                        .italic()
                }
                
                VStack {
                    Text("Protein")
                        .font(.caption)
                        .bold()
                    
                    Text("\(appetizer.protein)")
                        .foregroundStyle(.secondary)
                        .fontWeight(.semibold)
                        .italic()
                }
            }
            
            Spacer()
            
            Button {
                print("tapped")
            } label: {
                Text("$\(appetizer.price, specifier: "%.2f") - Add to Order")
                    .font(.title3)
                    .fontWeight(.semibold)
                    .frame(width: 260, height: 50)
                    .foregroundColor(.white)
                    .background(.brandPrimary)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
            }
            .padding(.bottom, 30)
        }
        .frame(width: 300, height: 525)
        .background(Color(.systemBackground))
        .clipShape(RoundedRectangle(cornerRadius: 12))
        .shadow(radius: 40)
        .overlay(Button {
            isShowingDetail = false
        } label:{
            ZStack {
                Circle()
                    .frame(width: 30, height: 30)
                    .foregroundStyle(.white)
                    .opacity(0.6)
                Image(systemName: "xmark")
                    .imageScale(.small)
                    .frame(width: 44, height: 44)
                    .foregroundStyle(.black)
            }
        }
                    , alignment: .topTrailing)
    }
}

#Preview {
    AppetizerDetailView(appetizer: MockData.sampleAppetizer, isShowingDetail: .constant(true))
}
