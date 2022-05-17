/**
*  SwiftUIPageView
*  Copyright (c) Ciaran O'Brien 2022
*  MIT license, see LICENSE file for details
*/

import SwiftUI

internal extension EnvironmentValues {
    var pageAlignmentMode: PageAlignmentMode {
        get { self[PageAlignmentModeKey.self] }
        set { self[PageAlignmentModeKey.self] = newValue }
    }
}


private struct PageAlignmentModeKey: EnvironmentKey {
    static let defaultValue = PageAlignmentMode.normal
}
