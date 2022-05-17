/**
*  SwiftUIPageView
*  Copyright (c) Ciaran O'Brien 2022
*  MIT license, see LICENSE file for details
*/

import SwiftUI

public struct HPageView<Content>: View
where Content : View
{
    public var body: PageView<Content>
}


public extension HPageView {
    
    init(alignment preferredAlignment: PageAlignment<HorizontalPageAlignment, VerticalAlignment> = .center,
         pageWidth: CGFloat? = nil,
         spacing: CGFloat? = nil,
         @ViewBuilder content: @escaping () -> Content)
    {
        body = PageView(alignment: preferredAlignment.alignment,
                        axis: .horizontal,
                        content: content,
                        pageLength: pageWidth,
                        spacing: spacing)
    }
}
