//
//  Utility.swift
//  Dhruv Jaiswal
//
//  Created by Harsh Yadav on 03/03/23.
//

import Foundation
import SwiftUI

enum ImageUtility{
    
    case bell
    case darkKaftanYellow
    case icon
    case people
    case search
    case useApp
    
    case tick
    var image:Image{
        switch self{
        case .bell:
            return Image("bell")
        case .darkKaftanYellow:
            return Image("darkKaftanYellow")
        case .icon:
            return Image("icon")
        case .people:
            return Image("people")
        case .search:
            return Image("search")
        case .useApp:
            return Image("useApp")
        case .tick:
            return Image("tick")
        }
    }
}
