/**
*  SwiftUIPageView
*  Copyright (c) Ciaran O'Brien 2022
*  MIT license, see LICENSE file for details
*/

import SwiftUI

public extension View {
    func pageAlignmentMode(_ mode: PageAlignmentMode) -> some View {
        environment(\.pageAlignmentMode, mode)
    }
}
