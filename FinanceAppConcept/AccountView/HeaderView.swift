//
//  HeaderView.swift
//  FinanceAppConcept
//
//  Created by Frank Juchim on 12.05.21.
//

import SwiftUI

struct HeaderView: View {
    @State private var date: Date = Date()
    
    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    
    var body: some View {
        VStack {
            HStack {
                Text("My Account")
                    .fontWeight(.semibold)
                    .font(.title)
                Spacer()
                Text(self.getDateFormat(date: date))
                    .font(.footnote)
                    .foregroundColor(AppColors.darkblue)
                    .fontWeight(.light)
            }
            .foregroundColor(AppColors.darkblue)
            
            
        }
        .padding(.horizontal, 30)
        .padding(.bottom, 5)
        .onReceive(timer, perform: { _ in
            self.date = Date()
        })
    }
    
    func getDateFormat(date: Date) -> String {
        let formatter = DateFormatter()
        formatter.timeZone = TimeZone.current
        formatter.dateFormat = "dd. MMMM YYYY - hh:mm:ss"
        return formatter.string(for: date) ?? "Date n/a"
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView()
    }
}
