/**
*  SwiftUIPageView
*  Copyright (c) Ciaran O'Brien 2022
*  MIT license, see LICENSE file for details
*/

import SwiftUI

internal extension PageAlignment {
    var alignment: Alignment {
        if let horizontal = horizontal as? HorizontalAlignment,
           let vertical = vertical as? VerticalPageAlignment
        {
            return Alignment(horizontal: horizontal, vertical: vertical.alignment)
        }
        else if let horizontal = horizontal as? HorizontalPageAlignment,
                let vertical = vertical as? VerticalAlignment
        {
            return Alignment(horizontal: horizontal.alignment, vertical: vertical)
        }
        else if let horizontal = horizontal as? HorizontalPageAlignment,
                let vertical = vertical as? VerticalPageAlignment
        {
            return Alignment(horizontal: horizontal.alignment, vertical: vertical.alignment)
        }
        else
        {
            fatalError("PageAlignment cannot compute Alignment.")
        }
    }
}
