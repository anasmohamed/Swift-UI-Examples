//
//  CardView.swift
//  LearnByDoing
//
//  Created by Anas on 11/24/20.
//  Copyright © 2020 Anas. All rights reserved.
//

import SwiftUI

struct CardView: View {
    var card : Card
    @State private var infade : Bool = false
    @State private var moveDownword : Bool = false
    @State private var moveUpword : Bool = false

    var body: some View {
        ZStack{
            Image(card.imageName)
            VStack{
                Text(card.title)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .foregroundColor(Color.white)
                    .multilineTextAlignment(.center)
                Text(card.headline)
                    .fontWeight(.light)
                    .foregroundColor(Color.white)
                .italic()
            }.offset(y:moveDownword ? -223 : -300)
            Button(action:{
                print(self.card.message)
            }){
                HStack {
                    Text(card.callToAction.uppercased())
                        .fontWeight(.heavy)
                        .foregroundColor(Color.white)
                        .accentColor(Color.white)
                    Image(systemName: "arrow.right.circle")
                        .font(Font.title.weight(.medium))
                        .accentColor(Color.white)
                }.padding(.vertical)
                    .padding(.horizontal,25)
                    .background(LinearGradient(gradient:Gradient(colors: card.gradientColors), startPoint: .leading, endPoint: .trailing))
                    .clipShape(Capsule())
                .shadow(color: Color("Shadow"), radius: 6 , x: 0, y: 3)
            }.offset(y:moveUpword ? 210 : 300)
                
            
        }.frame(width:340,height:545)
            .background(LinearGradient(gradient: Gradient(colors: card.gradientColors), startPoint: .top, endPoint: .bottom))
        .cornerRadius(16)
        .shadow(radius: 8)
            .onAppear{
                withAnimation(.linear(duration: 1.2), {
                    self.infade.toggle()
                })
                withAnimation(.linear(duration: 0.8), {
                    self.moveUpword.toggle()
                    self.moveDownword.toggle()
                })
        }
        
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(card: cardData[0])
            .previewLayout(.sizeThatFits)
    }
}
