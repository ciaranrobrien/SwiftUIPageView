/**
*  SwiftUIPageView
*  Copyright (c) Ciaran O'Brien 2022
*  MIT license, see LICENSE file for details
*/

import SwiftUI

internal extension PageView {
    func baseOffset(pageLength: CGFloat, viewLength: CGFloat) -> CGFloat {
        switch axis {
        case .horizontal:
            switch alignment.horizontal {
            case .leading: return 0
            case .center: return (viewLength - pageLength) / 2
            case .trailing: return (viewLength - pageLength)
            default: fatalError("Unexpected HorizontalAlignment.")
            }
            
        case .vertical:
            switch alignment.vertical {
            case .top: return 0
            case .center: return (viewLength - pageLength) / 2
            case .bottom: return (viewLength - pageLength)
            default: fatalError("Unexpected VerticalAlignment.")
            }
        }
    }
    func pageLength(for geometry: GeometryProxy, viewLength: CGFloat) -> CGFloat {
        max(round((pageLength ?? viewLength) * displayScale) / displayScale, 0)
    }
    func viewLength(for geometry: GeometryProxy) -> CGFloat {
        switch axis {
        case .horizontal: return geometry.size.width
        case .vertical: return geometry.size.height
        }
    }
}
