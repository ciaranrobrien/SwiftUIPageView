/**
*  SwiftUIPageView
*  Copyright (c) Ciaran O'Brien 2022
*  MIT license, see LICENSE file for details
*/

import SwiftUI

internal extension DragGesture.Value {
    var velocity: CGSize {
        CGSize(width: (predictedEndTranslation.width - translation.width) * 4,
               height: (predictedEndTranslation.height - translation.height) * 4)
    }
}
