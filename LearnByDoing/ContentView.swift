//
//  ContentView.swift
//  LearnByDoing
//
//  Created by Anas on 11/24/20.
//  Copyright © 2020 Anas. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    // MARK : - CONTENT
    var body: some View {
        ScrollView(.horizontal)
        {
            HStack (alignment: .center, spacing: 20, content:{
                ForEach(0 ..< 5) { item in
                    CardView()
                }
            })
        }.padding(20)
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
