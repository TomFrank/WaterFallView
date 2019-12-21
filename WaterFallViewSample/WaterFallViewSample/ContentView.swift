//
//  ContentView.swift
//  WaterFallViewSample
//
//  Created by ZZJ on 2019/12/21.
//  Copyright © 2019 Peking University. All rights reserved.
//

import SwiftUI
import WaterFallView

struct GeometryGetter: View {
    @Binding var rect: CGRect

    var body: some View {
        return GeometryReader { geometry in
            self.makeView(geometry: geometry)
        }
    }

    func makeView(geometry: GeometryProxy) -> some View {
        DispatchQueue.main.async {
            self.rect = geometry.frame(in: .global)
        }
        return Rectangle().fill(Color.clear)
    }
}

struct WidthPreferenceKey: PreferenceKey {
    typealias Value = CGFloat
    
    static var defaultValue: CGFloat = 0
    
    static func reduce(value: inout CGFloat, nextValue: () -> CGFloat) {
        if abs(nextValue() - value) > 10 {
            value = nextValue()
        }
    }
}

struct ContentView: View {
    @State var cards = DataGenerator.shared.genCardData(count: 20)
    
    @State private var rect: CGRect = CGRect()
    
    func loadMoreCard() {
        self.cards += DataGenerator.shared.genCardData(count: 6)
    }
    
    
    var button: some View {
        Button(action: {
            self.loadMoreCard()
        }) {
            Image(systemName: "plus")
        }
    }
    
    var body: some View {
        NavigationView {
            ScrollView {
                ZStack {
                    Color.init(red: 0.95, green: 0.95, blue: 0.95)
                    WaterFallView(cards) {
                        CardView(card: $0)
                    }
                }
                .background(GeometryGetter(rect: $rect))
                .preference(key: WidthPreferenceKey.self, value: rect.maxY)
            }
            .onPreferenceChange(WidthPreferenceKey.self) {
                if $0 - UIScreen.main.bounds.height < 30 {
                    print("scroll to bottom", self.cards.count)
                    self.loadMoreCard()
                }
            }
            .navigationBarTitle("WaterFall", displayMode: .automatic)
            .navigationBarItems(trailing: button)
            .edgesIgnoringSafeArea(.bottom)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
