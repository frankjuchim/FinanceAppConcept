//
//  CreditCardView.swift
//  FinanceAppConcept
//
//  Created by Frank Juchim on 16.05.21.
//

import SwiftUI

struct CreditCardView: View {
    
    let card: CreditCard
    
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color.black.opacity(0.35), Color.black.opacity(0)]), startPoint: .bottomTrailing, endPoint: .topLeading)
            VStack {
                HStack {
                    Image("visaLogoWhite")
                        .resizable()
                        .scaledToFit()
                        .shadow(color: Color.black.opacity(0.3), radius: 0, x: 1, y: 1)
                        .frame(height: 20)
                    
                    Spacer()
                }
                Spacer()
                HStack {
                    Image(systemName: "creditcard.fill")
                        .font(.largeTitle)
                        .foregroundColor(.yellow)
                        .overlay(Image("cardChip")
                                    .resizable())
                    
                    Spacer()
                    
                    VStack {
                        Text("Available Balance")
                            .foregroundColor(Color.green)
                            .shadow(color: Color.black.opacity(0.4), radius: 0, x: 1, y: 1)
                        HStack {
                            Text("€")
                                .foregroundColor(AppColors.backgroundWhite)
                                .font(.title2)
                                .offset(x: -1, y: 0)
                                .padding(7)
                                .background(Color.black.opacity(0.3))
                                .clipShape(Circle())
                                .shadow(color: Color.black.opacity(0.4), radius: 1, x: 1, y: 1)
                            
                            Text("\(self.card.creditBalance, specifier: "%.2f")")
                                .foregroundColor(AppColors.backgroundWhite)
                                .font(.title)
                                .shadow(color: Color.black.opacity(0.4), radius: 0, x: 1, y: 1)
                        }
                    }
                }
                
                Spacer()
                
                Text(self.card.cardNumber)
                    .font(.title)
                    .foregroundColor(AppColors.backgroundWhite)
                    .bold()
                    .shadow(color: Color.black.opacity(0.4), radius: 0, x: 1, y: 1)
                
                Spacer()
                HStack {
                    HStack {
                        Text("EXPIRE")
                            .font(.caption)
                        Image(systemName: "arrowtriangle.forward.fill")
                            .font(.caption2)
                        Text(self.card.expireDate)
                            .font(.callout)
                            .bold()
                    }
                    Spacer()
                    HStack {
                        Text("CVC CODE")
                            .font(.caption)
                        Image(systemName: "arrowtriangle.forward.fill")
                            .font(.caption2)
                        
                        Text("\(self.card.cvcCode)")
                            .font(.callout)
                            .bold()
                    }
                }
                .foregroundColor(AppColors.backgroundWhite)
                .shadow(color: Color.black.opacity(0.4), radius: 0, x: 1, y: 1)
            }
            .padding(.horizontal, 20)
            .padding(.vertical, 20)
        }
        .frame(height: 200)
        .background(AppColors.darkblue)
        .clipShape(RoundedRectangle(cornerRadius: 10))
        .shadow(color: Color.black.opacity(0.25), radius: 5, x: 0, y: 4)
        .padding(.horizontal, 30)
        .padding(.bottom, 10)
    }
}
