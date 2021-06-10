//
//  Movement.swift
//  FinanceAppConcept
//
//  Created by Frank Juchim on 16.05.21.
//

import SwiftUI

struct Movement: Codable, Identifiable {
    var id = UUID()
    var image: String
    var title: String
    var date: String
    var amount: Double
}
