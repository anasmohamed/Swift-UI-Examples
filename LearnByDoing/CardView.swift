//
//  CardView.swift
//  LearnByDoing
//
//  Created by Anas on 11/24/20.
//  Copyright © 2020 Anas. All rights reserved.
//

import SwiftUI

struct CardView: View {
    var gredient : [Color] = [Color("Color01"),Color("Color02")]
    var body: some View {
        ZStack{
            Image("developer-no2")
            VStack{
                Text("SWIFT UI")
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .foregroundColor(Color.white)
                    .multilineTextAlignment(.center)
                Text("Better Apps Less Code")
                    .fontWeight(.light)
                    .foregroundColor(Color.white)
                .italic()
            }.offset(y:-223)
            Button(action:{
                print("hello from the other side")
            }){
                HStack {
                    Text("Learn".uppercased())
                        .fontWeight(.heavy)
                        .foregroundColor(Color.white)
                        .accentColor(Color.white)
                    Image(systemName: "arrow.right.circle")
                        .font(Font.title.weight(.medium))
                        .accentColor(Color.white)
                }.padding(.vertical)
                    .padding(.horizontal,25)
                    .background(LinearGradient(gradient:Gradient(colors: gredient), startPoint: .leading, endPoint: .trailing))
                    .clipShape(Capsule())
                .shadow(color: Color("Shadow"), radius: 6 , x: 0, y: 3)
            }.offset(y:210)
                
            
        }.frame(width:340,height:545)
            .background(LinearGradient(gradient: Gradient(colors: gredient), startPoint: .top, endPoint: .bottom))
        .cornerRadius(16)
        .shadow(radius: 8)
        
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView()
            .previewLayout(.sizeThatFits)
    }
}
