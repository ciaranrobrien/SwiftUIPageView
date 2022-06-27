//
//  File.swift
//  
//
//  Created by Tomas Kafka on 27.06.2022.
//

import Foundation
import CoreGraphics

public enum GestureMinimumDistance {
    /// old default
    case compatible
    case comfortable
    case custom(CGFloat)

    var value: CGFloat {
        switch self {
        case .compatible:
            return 15
        case .comfortable:
            return 31
        case .custom(let customDistance):
            return customDistance
        }
    }
}
