//
//  CardModel.swift
//  LearnByDoing
//
//  Created by Anas on 11/25/20.
//  Copyright © 2020 Anas. All rights reserved.
//

import Foundation
import SwiftUI
struct Card : Identifiable {
    var id = UUID()
    var title : String
    var headline: String
    var imageName: String
    var callToAction: String
    var message : String
    var gradientColor : [Color]
}
