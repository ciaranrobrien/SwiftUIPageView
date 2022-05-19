/**
*  SwiftUIPageView
*  Copyright (c) Ciaran O'Brien 2022
*  MIT license, see LICENSE file for details
*/

import SwiftUI

internal class AnimationState: ObservableObject {
    var dragAnimation: Animation? = nil
    var viewAnimation: Animation? = nil
    var viewAnimationCanUpdate = true
}
