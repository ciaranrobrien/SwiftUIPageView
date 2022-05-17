/**
*  SwiftUIPageView
*  Copyright (c) Ciaran O'Brien 2022
*  MIT license, see LICENSE file for details
*/

import SwiftUI

internal struct InteractionProxyKey: PreferenceKey {
    static let defaultValue: InteractionProxy? = nil
    
    static func reduce(value: inout InteractionProxy?, nextValue: () -> InteractionProxy?) {
        value = nextValue()
    }
}
