/**
*  SwiftUIPageView
*  Copyright (c) Ciaran O'Brien 2022
*  MIT license, see LICENSE file for details
*/

import SwiftUI

internal extension EnvironmentValues {
    var strictPageAlignment: Bool {
        get { self[StrictPageAlignmentKey.self] }
        set { self[StrictPageAlignmentKey.self] = newValue }
    }
}


private struct StrictPageAlignmentKey: EnvironmentKey {
    static let defaultValue = false
}
