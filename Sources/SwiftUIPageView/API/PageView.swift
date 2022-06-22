/**
*  SwiftUIPageView
*  Copyright (c) Ciaran O'Brien 2022
*  MIT license, see LICENSE file for details
*/

import SwiftUI

/// A view that arranges its children in a line, and provides paged
/// scrolling behaviour.
public struct PageView<Content>: View
where Content : View
{
    @Environment(\.displayScale) internal var displayScale
    
    public var body: some View {
        GeometryReader { geometry in
            let spacing = spacing ?? 8
            let viewLength = viewLength(for: geometry)
            let pageLength = pageLength(viewLength: viewLength)
            let baseOffset = baseOffset(pageLength: pageLength, viewLength: viewLength)
            
            PageGestureView(alignment: alignment,
                            axis: axis,
                            baseOffset: baseOffset,
                            content: content,
                            pageLength: pageLength,
                            spacing: spacing,
                            viewLength: viewLength,
                            index: $index)
        }
        .animation(nil, value: axis)
    }
    
    internal var alignment: Alignment
    internal var axis: Axis
    internal var content: () -> Content
    internal var pageLength: CGFloat?
    internal var spacing: CGFloat?
    @Binding var index: Int
}


public extension PageView {
    
    /// A view that arranges its children in a line, and provides paged
    /// scrolling behaviour.
    ///
    /// This view returns a flexible preferred size to its parent layout.
    ///
    /// Changes to the layout axis will cause the pages to lose any internal
    /// state, and will not be animated.
    ///
    /// - Parameters:
    ///   - axis: The layout axis of this page view.
    ///   - alignment: The guide for aligning the pages in this page view.
    ///   - pageLength: The length of each page, parallel to the layout axis,
    ///     or `nil` if you want each page to fill the length of the page view.
    ///   - spacing: The distance between adjacent pages, or `nil` if you
    ///     want the page view to choose a default distance for each pair of
    ///     pages.
    ///   - content: A view builder that creates the content of this page view.
    init(_ axis: Axis,
         alignment: PageAlignment<HorizontalPageAlignment, VerticalPageAlignment> = .center,
         pageLength: CGFloat? = nil,
         spacing: CGFloat? = nil,
         index: Binding<Int> = Binding.constant(0),
         @ViewBuilder content: @escaping () -> Content)
    {
        self.alignment = alignment.alignment
        self.axis = axis
        self.content = content
        self.pageLength = pageLength
        self.spacing = spacing
        self._index = index
    }
}
