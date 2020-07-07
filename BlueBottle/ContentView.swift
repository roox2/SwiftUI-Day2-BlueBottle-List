//
//  ContentView.swift
//  BlueBottle
//
//  Created by 이재훈 on 2020/07/07.
//  Copyright © 2020 Jaehoon. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        DrinkList()
    }
}

struct DrinkList: View {
    let drinks = TestModel.shared.drinks
    
    var body: some View {
        List(drinks) { drink in
            DrinkRow(drink: drink)
        }
    }
}

struct DrinkRow: View {
    let drink: Drink
    
    var body: some View {
        Image(drink.imageURL)
            .resizable()
            .aspectRatio(contentMode: .fill)
            .overlay(
                VStack {
                    Text(drink.name)
                        .font(.headline)
                        .padding(.vertical, 4)
                    
                    Text(drink.subtitle)
                        .font(.footnote)
                        .foregroundColor(.secondary)
                        .multilineTextAlignment(.center)
                        .lineSpacing(4)
                        .padding(.vertical, 4)
                    
                    Spacer()
                }
                .padding(20))
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
