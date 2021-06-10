//
//  DetailMovementCardView.swift
//  FinanceAppConcept
//
//  Created by Frank Juchim on 16.05.21.
//

import SwiftUI

struct DetailMovementCardView: View {
    
    var movement: Movement
    
    var body: some View {
        HStack (alignment: .center) {
            Image(movement.image)
                .resizable()
                .scaledToFit()
                .frame(width: 50)
                .padding(.bottom, 8)
            HStack {
                VStack (alignment: .leading) {
                    Text(movement.title)
                        .font(.headline)
                        .foregroundColor(.black)
                    Text(movement.date)
                        .font(.subheadline)
                        .foregroundColor(AppColors.darkblue)
                }
                .padding(.horizontal, 10)
                
                Spacer()
                
                Text("\(movement.amount, specifier: "%.2f") €") //With Specifier!
                    .foregroundColor(movement.amount < 0 ? Color.red : Color.green)
                    .bold()
                
            }
            .padding(.vertical, 15)
        }
        .padding(.horizontal, 10)
        
        .background(AppColors.darkWhite)
        .clipShape(RoundedRectangle(cornerRadius: 10))
        .shadow(color: Color.gray.opacity(0.2), radius: 2, x: 1, y: 1)
    }
    
}
