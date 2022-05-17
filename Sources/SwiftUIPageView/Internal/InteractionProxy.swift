/**
*  SwiftUIPageView
*  Copyright (c) Ciaran O'Brien 2022
*  MIT license, see LICENSE file for details
*/

import SwiftUI

internal struct InteractionProxy: Equatable {
    let id: UUID
    let pageTo: (CGFloat) -> Void
    
    static func == (lhs: InteractionProxy, rhs: InteractionProxy) -> Bool {
        lhs.id == rhs.id
    }
}
