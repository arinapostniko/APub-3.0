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
            Spacer().frame(maxWidth: 20)
            Text(beer.country)
            Text(beer.name)
            Text("\(String(format: "%.2f", beer.left))")
            Spacer()
            Button {
                
            } label: {
                Image(systemName: "chevron.right")
            }
            Spacer().frame(maxWidth: 10)
        }
    }
}

struct BeerView_Previews: PreviewProvider {
    static var previews: some View {
        BeerView(beer: Beer(country: "🇲🇽", name: "Corona", price: 1.4, left: 100))
    }
}
