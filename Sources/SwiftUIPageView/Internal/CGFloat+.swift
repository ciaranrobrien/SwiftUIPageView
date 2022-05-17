/**
*  SwiftUIPageView
*  Copyright (c) Ciaran O'Brien 2022
*  MIT license, see LICENSE file for details
*/

import SwiftUI

internal extension CGFloat {
    static let velocityThreshold: CGFloat = 200
    
    func rubberBand(viewLength: CGFloat) -> CGFloat {
        (1 - (1 / ((magnitude * 0.55 / viewLength) + 1))) * viewLength * self / magnitude
    }
    func invertRubberBand(viewLength: CGFloat) -> CGFloat {
        (((1 / (1 - (magnitude / viewLength))) - 1) * viewLength / 0.55) * self / magnitude
    }
}
