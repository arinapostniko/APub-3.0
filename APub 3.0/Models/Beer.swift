//
//  Beer.swift
//  APub 3.0
//
//  Created by Arina Postnikova on 5.02.23.
//

import SwiftUI

struct Beer: Identifiable {
    let id = UUID()
    
    var country: String = "🇲🇽"
    var name: String = "Corona"
    var price: Double = 1.4
    var left: Double = 100
}
