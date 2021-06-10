//
//  HeaderView.swift
//  FinanceAppConcept
//
//  Created by Frank Juchim on 12.05.21.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
        VStack {
            HStack {
                Text("My Account")
                    .fontWeight(.semibold)
                    .font(.title)
                Spacer()
            }
            .foregroundColor(AppColors.darkblue)
            
            HStack {
                Text("June 10, 2021 - Date of Today TODO")
                    .font(.footnote)
                    .foregroundColor(AppColors.darkblue)
                    .fontWeight(.light)
                
                Spacer()
            }
        }
        .padding(.horizontal, 30)
        .padding(.bottom, 5)
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView()
    }
}
