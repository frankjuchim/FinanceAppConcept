//
//  IncomeExpenseView.swift
//  FinanceAppConcept
//
//  Created by Frank Juchim on 16.05.21.
//

import SwiftUI

struct IncomeExpenseView: View {
    
    @Binding var income: Double
    @Binding var expoense: Double
    @Binding var incomeTrendUp: Bool
    @Binding var expenseTrendUp: Bool
    
    var body: some View {
        HStack {
            VStack {
                HStack{
                    Text("Income")
                        .foregroundColor(AppColors.darkblue)
                        .font(.subheadline)
                        .bold()
                }
                .padding(.horizontal, 8)
                .padding(.vertical, 2)
                .overlay(Capsule().stroke(AppColors.darkblue.opacity(0.4), lineWidth: 1))
                
                HStack {
                    Image(systemName: incomeTrendUp ? "arrow.up" : "arrow.down")
                    Text("\(income, specifier: "%.2f")")
                }
                .font(.headline)
                .foregroundColor(.green)
            }
            Spacer()
            Divider()
                .frame(height: 40)

            Spacer()
            
            VStack {
                HStack{
                    Text("Expense")
                        .foregroundColor(AppColors.darkblue)
                        .font(.subheadline)
                        .bold()
                }
                .padding(.horizontal, 8)
                .padding(.vertical, 2)
                .overlay(Capsule().stroke(AppColors.darkblue.opacity(0.4), lineWidth: 1))
                
                HStack {
                    Image(systemName: expenseTrendUp ? "arrow.up" : "arrow.down")
                    Text("\(expoense, specifier: "%.2f")")
                }
                .font(.headline)
                .foregroundColor(.red)
            }
        }
        .padding(.horizontal, 30)
        .padding(.vertical, 20)
        .background(AppColors.darkWhite)
        .clipShape(RoundedRectangle(cornerRadius: 10))
        .shadow(color: Color.gray.opacity(0.2), radius: 2, x: 2, y: 2)
        .padding(.horizontal, 30)
    }
}
