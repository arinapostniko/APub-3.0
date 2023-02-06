//
//  ContentView.swift
//  APub 3.0
//
//  Created by Arina Postnikova on 5.02.23.
//

import SwiftUI

struct ContentView: View {
    @State var beers: [Beer] = [
        Beer(country: "🇲🇽", name: "Corona", price: 1.4, left: 100),
        Beer(country: "🇺🇸", name: "Budweiser", price: 0.8, left: 89),
        Beer(country: "🇳🇱", name: "Heineken", price: 1, left: 68)
    ]
    
    var revenuePerDay: Double = 0.0
    var soldBeer: Double = 0.0
    
    var body: some View {
        VStack {
            HStack {
                Spacer().frame(maxWidth: 20)
                VStack(alignment: .leading, spacing: 10) {
                    Text("Revenue per day: \(String(format: "%.2f", revenuePerDay)) $")
                        .font(.system(size: 20))
                    
                    Text("Sold beer: \(String(format: "%.2f", soldBeer)) L")
                        .font(.system(size: 20))
                    Button {
                        
                    } label: {
                        Text("NEW SHIFT")
                            .frame(
                                minWidth: 0,
                                maxWidth: .infinity,
                                alignment: .center
                            )
                    }
                    .buttonStyle(.bordered)
                }
                .frame(
                    minWidth: 0,
                    maxWidth: .infinity,
                    alignment: .topLeading
                )
                .padding(.top, 10)
                Spacer().frame(maxWidth: 20)
            }
            List {
                ForEach(beers) { beer in
                    BeerView(beer: beer)
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
