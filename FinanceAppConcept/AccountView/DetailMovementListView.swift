//
//  DetailMovementListView.swift
//  FinanceAppConcept
//
//  Created by Frank Juchim on 16.05.21.
//

import SwiftUI

struct DetailMovementListView: View {
    
    @Binding var movements: [Movement]

    var body: some View {
        VStack {
            HStack {
                Text("Detail of movements")
                Spacer()
                Button(action: {
                    print("Filter options? Or anything you want?")
                }, label: {
                    Image(systemName: "calendar")
                })
            }
            .font(.title3)
            .foregroundColor(AppColors.darkblue)
            .padding(.bottom, 5)
            
            ScrollView (showsIndicators: false) {
                ForEach (self.movements) { movement in
                    //Display Card
                    DetailMovementCardView(movement: movement)
                }
            }
            
        }
        .padding(.horizontal, 30)
    }
}
