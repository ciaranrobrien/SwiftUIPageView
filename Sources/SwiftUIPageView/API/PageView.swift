/**
*  SwiftUIPageView
*  Copyright (c) Ciaran O'Brien 2022
*  MIT license, see LICENSE file for details
*/

import SwiftUI

public struct PageView<Content>: View
where Content : View
{
    @Environment(\.displayScale) internal var displayScale
    
    public var body: some View {
        GeometryReader { geometry in
            let spacing = spacing ?? 8
            let viewLength = viewLength(for: geometry)
            let pageLength = pageLength(for: geometry, viewLength: viewLength)
            let baseOffset = baseOffset(pageLength: pageLength, viewLength: viewLength)
            
            PageGestureView(alignment: alignment,
                            axis: axis,
                            baseOffset: baseOffset,
                            content: content,
                            pageLength: pageLength,
                            spacing: spacing,
                            viewLength: viewLength)
        }
        .animation(nil, value: axis)
    }
    
    internal var alignment: Alignment
    internal var axis: Axis
    internal var content: () -> Content
    internal var pageLength: CGFloat?
    internal var spacing: CGFloat?
}


public extension PageView {
    
    init(_ axis: Axis,
         alignment preferredAlignment: PageAlignment<HorizontalPageAlignment, VerticalPageAlignment> = .center,
         pageLength: CGFloat? = nil,
         spacing: CGFloat? = nil,
         @ViewBuilder content: @escaping () -> Content)
    {
        self.alignment = preferredAlignment.alignment
        self.axis = axis
        self.content = content
        self.pageLength = pageLength
        self.spacing = spacing
    }
}
