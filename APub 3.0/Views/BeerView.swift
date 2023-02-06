//
//  BeerView.swift
//  APub 3.0
//
//  Created by Arina Postnikova on 5.02.23.
//

import SwiftUI

struct BeerView: View {
    let beer: Beer
    
    var body: some View {
        HStack {
            Text(beer.country)
            Text(beer.name)
            Text("\(beer.left)")
            Button {
                
            } label: {
                Image(systemName: "chevron.right")
            }
        }
    }
}
