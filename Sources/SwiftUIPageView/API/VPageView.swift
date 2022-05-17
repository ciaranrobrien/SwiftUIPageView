/**
*  SwiftUIPageView
*  Copyright (c) Ciaran O'Brien 2022
*  MIT license, see LICENSE file for details
*/

import SwiftUI

public struct VPageView<Content>: View
where Content : View
{
    public var body: PageView<Content>
}


public extension VPageView {
    
    init(alignment preferredAlignment: PageAlignment<HorizontalAlignment, VerticalPageAlignment> = .center,
         pageHeight: CGFloat? = nil,
         spacing: CGFloat? = nil,
         @ViewBuilder content: @escaping () -> Content)
    {
        body = PageView(alignment: preferredAlignment.alignment,
                        axis: .vertical,
                        content: content,
                        pageLength: pageHeight,
                        spacing: spacing)
    }
}
