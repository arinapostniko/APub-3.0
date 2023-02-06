//
//  ContentView.swift
//  APub 3.0
//
//  Created by Arina Postnikova on 5.02.23.
//

import SwiftUI

struct ContentView: View {
    @State var beers = [Beer]()
    
    var revenuePerDay: Double = 0.0
    var soldBeer: Double = 0.0
    
    func setupBeers() {
        beers.append(Beer(country: "🇲🇽", name: "Corona", price: 1.4, left: 100))
        beers.append(Beer(country: "🇺🇸", name: "Budweiser", price: 0.8, left: 89))
        beers.append(Beer(country: "🇳🇱", name: "Heineken", price: 1, left: 68))
    }
    
    var body: some View {
        VStack {
            VStack(alignment: .leading, spacing: 10) {
                Text("Revenue per day: \(revenuePerDay) $")
                    .font(.system(size: 20))
                
                Text("Sold beer: \(soldBeer) L")
                    .font(.system(size: 20))
                Button {
                    
                } label: {
                    Text("NEW SHIFT")
                        .frame(width: 320)
                }
                .buttonStyle(.bordered)
            }
            .padding(.top, 10)
            VStack {
                List {
                    ForEach(beers) { beer in
                        BeerView(beer: beer)
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
