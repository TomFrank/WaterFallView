//
//  Card.swift
//  WaterFallView
//
//  Created by ZZJ on 2019/12/20.
//  Copyright © 2019 Peking University. All rights reserved.
//

import Foundation

struct Card : Identifiable {
    var id: Int { title.hashValue }
    var image: String
    var title: String
    var place: String
    var description: String
}
