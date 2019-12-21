//
//  CardView.swift
//  WaterFallView
//
//  Created by ZZJ on 2019/12/20.
//  Copyright © 2019 Peking University. All rights reserved.
//

import SwiftUI

public struct CardView: View {
    var card: Card
    
    public var body: some View {
        VStack(alignment: HorizontalAlignment.leading, spacing: 0) {
            Image(card.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
            Text("\(card.title), \(card.place)")
                .font(.headline)
                .padding([.leading, .trailing], 5)
                .padding(.bottom, 5)
            Text(card.description)
                .lineLimit(5)
                .padding([.leading, .trailing], 5)
            
        }
        .background(Color.white)
        .clipShape(RoundedRectangle(cornerRadius: 5))
    }
}

struct CardView_Previews: PreviewProvider {
    static var card = DataGenerator.shared.genCardData(count: 1)[0]
    static var previews: some View {
        CardView(card: card)
    }
}
