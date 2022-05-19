/**
*  SwiftUIPageView
*  Copyright (c) Ciaran O'Brien 2022
*  MIT license, see LICENSE file for details
*/

import SwiftUI

/// An alignment in both axes.
public struct PageAlignment<HAlignment, VAlignment>: Equatable
where HAlignment : Equatable,
      VAlignment : Equatable
{
    
    /// The alignment on the horizontal axis.
    public var horizontal: HAlignment
    
    /// The alignment on the vertical axis.
    public var vertical: VAlignment
    
    private init() {
        fatalError("PageAlignment cannot be initialized using private init().")
    }
}


public extension PageAlignment
where HAlignment == HorizontalPageAlignment,
      VAlignment == VerticalAlignment
{
    
    /// Creates an instance with the given horizontal and vertical alignments.
    ///
    /// - Parameters:
    ///   - horizontal: The alignment on the horizontal axis.
    ///   - vertical: The alignment on the vertical axis.
    init(horizontal: HAlignment, vertical: VAlignment) {
        self.horizontal = horizontal
        self.vertical = vertical
    }
    
    /// A guide marking the top and leading edges of the page.
    static let topLeading = PageAlignment(horizontal: .leading, vertical: .top)
    
    /// A guide marking the top edge of the page.
    static let top = PageAlignment(horizontal: .center, vertical: .top)
    
    /// A guide marking the top and trailing edges of the page.
    static let topTrailing = PageAlignment(horizontal: .trailing, vertical: .top)
    
    /// A guide marking the leading edge of the page.
    static let leading = PageAlignment(horizontal: .leading, vertical: .center)
    
    /// A guide marking the center of the page.
    static let center = PageAlignment(horizontal: .center, vertical: .center)
    
    /// A guide marking the trailing edge of the page.
    static let trailing = PageAlignment(horizontal: .trailing, vertical: .center)
    
    /// A guide marking the bottom and leading edges of the page.
    static let bottomLeading = PageAlignment(horizontal: .leading, vertical: .bottom)
    
    /// A guide marking the bottom edge of the page.
    static let bottom = PageAlignment(horizontal: .center, vertical: .bottom)
    
    /// A guide marking the bottom and trailing edges of the page.
    static let bottomTrailing = PageAlignment(horizontal: .trailing, vertical: .bottom)
}


public extension PageAlignment
where HAlignment == HorizontalAlignment,
      VAlignment == VerticalPageAlignment
{
    /// Creates an instance with the given horizontal and vertical alignments.
    ///
    /// - Parameters:
    ///   - horizontal: The alignment on the horizontal axis.
    ///   - vertical: The alignment on the vertical axis.
    init(horizontal: HAlignment, vertical: VAlignment) {
        self.horizontal = horizontal
        self.vertical = vertical
    }
    
    /// A guide marking the top and leading edges of the page.
    static let topLeading = PageAlignment(horizontal: .leading, vertical: .top)
    
    /// A guide marking the top edge of the page.
    static let top = PageAlignment(horizontal: .center, vertical: .top)
    
    /// A guide marking the top and trailing edges of the page.
    static let topTrailing = PageAlignment(horizontal: .trailing, vertical: .top)
    
    /// A guide marking the leading edge of the page.
    static let leading = PageAlignment(horizontal: .leading, vertical: .center)
    
    /// A guide marking the center of the page.
    static let center = PageAlignment(horizontal: .center, vertical: .center)
    
    /// A guide marking the trailing edge of the page.
    static let trailing = PageAlignment(horizontal: .trailing, vertical: .center)
    
    /// A guide marking the bottom and leading edges of the page.
    static let bottomLeading = PageAlignment(horizontal: .leading, vertical: .bottom)
    
    /// A guide marking the bottom edge of the page.
    static let bottom = PageAlignment(horizontal: .center, vertical: .bottom)
    
    /// A guide marking the bottom and trailing edges of the page.
    static let bottomTrailing = PageAlignment(horizontal: .trailing, vertical: .bottom)
}


public extension PageAlignment
where HAlignment == HorizontalPageAlignment,
      VAlignment == VerticalPageAlignment
{
    /// Creates an instance with the given horizontal and vertical alignments.
    ///
    /// - Parameters:
    ///   - horizontal: The alignment on the horizontal axis.
    ///   - vertical: The alignment on the vertical axis.
    init(horizontal: HAlignment, vertical: VAlignment) {
        self.horizontal = horizontal
        self.vertical = vertical
    }
    
    /// A guide marking the top and leading edges of the page.
    static let topLeading = PageAlignment(horizontal: .leading, vertical: .top)
    
    /// A guide marking the top edge of the page.
    static let top = PageAlignment(horizontal: .center, vertical: .top)
    
    /// A guide marking the top and trailing edges of the page.
    static let topTrailing = PageAlignment(horizontal: .trailing, vertical: .top)
    
    /// A guide marking the leading edge of the page.
    static let leading = PageAlignment(horizontal: .leading, vertical: .center)
    
    /// A guide marking the center of the page.
    static let center = PageAlignment(horizontal: .center, vertical: .center)
    
    /// A guide marking the trailing edge of the page.
    static let trailing = PageAlignment(horizontal: .trailing, vertical: .center)
    
    /// A guide marking the bottom and leading edges of the page.
    static let bottomLeading = PageAlignment(horizontal: .leading, vertical: .bottom)
    
    /// A guide marking the bottom edge of the page.
    static let bottom = PageAlignment(horizontal: .center, vertical: .bottom)
    
    /// A guide marking the bottom and trailing edges of the page.
    static let bottomTrailing = PageAlignment(horizontal: .trailing, vertical: .bottom)
}
