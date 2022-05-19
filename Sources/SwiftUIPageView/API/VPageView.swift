/**
*  SwiftUIPageView
*  Copyright (c) Ciaran O'Brien 2022
*  MIT license, see LICENSE file for details
*/

import SwiftUI

/// A view that arranges its children in a vertical line, and provides
/// paged scrolling behaviour.
public struct VPageView<Content>: View
where Content : View
{
    public var body: PageView<Content>
    
    /// A view that arranges its children in a vertical line, and provides
    /// paged scrolling behaviour.
    ///
    /// This view returns a flexible preferred size to its parent layout.
    ///
    /// - Parameters:
    ///   - alignment: The guide for aligning the pages in this page view.
    ///   - pageHeight: The height of each page, or `nil` if you want each
    ///     page to fill the height of the page view.
    ///   - spacing: The distance between adjacent pages, or `nil` if you
    ///     want the page view to choose a default distance for each pair of
    ///     pages.
    ///   - content: A view builder that creates the content of this page view.
    public init(alignment: PageAlignment<HorizontalAlignment, VerticalPageAlignment> = .center,
                pageHeight: CGFloat? = nil,
                spacing: CGFloat? = nil,
                @ViewBuilder content: @escaping () -> Content)
    {
        body = PageView(alignment: alignment.alignment,
                        axis: .vertical,
                        content: content,
                        pageLength: pageHeight,
                        spacing: spacing)
    }
}
