//
//  AllAccountsView.swift
//  FinanceAppConcept
//
//  Created by Frank Juchim on 12.05.21.
//

import SwiftUI

struct MainView: View {
    
    @State private var incomeAmount: Double = 9564
    @State private var expenseAmount: Double = 2860
    @State private var incomeTrendUp: Bool = true
    @State private var expenseTrendUp: Bool = false
    
    @State private var movements: [Movement] = []
    
    @State private var cards: [CreditCard] = []
    
    var body: some View {
        NavigationView {
            ZStack {
                AppColors.backgroundWhite
                    .ignoresSafeArea(.all)
                
                LinearGradient(gradient: Gradient(colors: [Color.black.opacity(0.05), Color.black.opacity(0)]), startPoint: .bottomTrailing, endPoint: .topLeading)
                    .ignoresSafeArea(.all)
                
                VStack {
                    HeaderView()
                    
                    //Credit Card View
                    CreditCardView(card: CreditCard.example())
                    
                    // Overview
                    IncomeExpenseView(income: $incomeAmount, expoense: $expenseAmount, incomeTrendUp: $incomeTrendUp, expenseTrendUp: $expenseTrendUp)
                        .padding(.bottom, 10)
                    
                    // List of movements
                    DetailMovementListView(movements: self.$movements)
                }
                .padding(.top, 20)
            }
            .navigationBarHidden(true)
        }
        .onAppear(perform: {
            // Create Examples - may replace with "loadData"-function
            self.createExamples(10)
            self.addExampleCards(3)
        })
    }
    
    // -------------- JUST FOR EXAMPLE PREVIEW FROM HERE--------------
    static let exampleImages: [String] = ["apartment", "bag", "bed", "calendar", "car", "clothes", "cocktail", "cup", "delivery", "dishes", "fire", "football", "handmirror", "ice", "keys", "phoneTool", "speechbubbels", "tooth", "transporter", "weights", "wrench"]
    static let exampleTitles: [String] = ["Restaurant Luigi", "Sports", "School Material", "Central Market", "Salary", "YouTube", "GitHub", "Apple Developer"]
    
    static let exampleDates: [String] = ["January, 4 1990", "March, 23 1992", "September, 11 1956", "August, 17 1958"]
    //Creates Example Card View
    func createExamples(_ count: Int) {
        for _ in 0..<count {
            self.movements.append(Movement(image: MainView.exampleImages.randomElement() ?? "car",
                                           title: MainView.exampleTitles.randomElement() ?? "New Title Here",
                                           date: MainView.exampleDates.randomElement() ?? "April, 1 2000",
                                           amount: Double(Int.random(in: -1000000...1000000)) / 100.00))
        }
        
    }
    
    func addExampleCards(_ count: Int) {
        for _ in 0..<count {
            self.cards.append(CreditCard.example())
        }
    }
    
    // -------------- JUST FOR EXAMPLE PREVIEW UP TO HERE --------------
    
    
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
