//
//  ContentView.swift
//  LearnByDoing
//
//  Created by Anas on 11/24/20.
//  Copyright © 2020 Anas. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    // MARK : - PROPERTIES
    var cards : [Card] = cardData
    // MARK : - CONTENT
    var body: some View {
        ScrollView(.horizontal)
        {
            HStack (alignment: .center, spacing: 20, content:{
                ForEach(cards) { item in
                    CardView(card: item)
                }
            })
        }.padding(20)
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(cards: cardData)
    }
}
