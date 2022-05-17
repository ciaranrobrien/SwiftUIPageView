/**
*  SwiftUIPageView
*  Copyright (c) Ciaran O'Brien 2022
*  MIT license, see LICENSE file for details
*/

import SwiftUI

public struct PageAlignment<HAlignment, VAlignment>: Equatable
where HAlignment : Equatable,
      VAlignment : Equatable
{
    public var horizontal: HAlignment
    public var vertical: VAlignment
    
    private init() {
        fatalError("PageAlignment cannot be initialized using private init().")
    }
}


public extension PageAlignment
where HAlignment == HorizontalPageAlignment,
      VAlignment == VerticalAlignment
{
    static let topLeading = PageAlignment(horizontal: .leading, vertical: .top)
    static let top = PageAlignment(horizontal: .center, vertical: .top)
    static let topTrailing = PageAlignment(horizontal: .trailing, vertical: .top)
    static let leading = PageAlignment(horizontal: .leading, vertical: .center)
    static let center = PageAlignment(horizontal: .center, vertical: .center)
    static let trailing = PageAlignment(horizontal: .trailing, vertical: .center)
    static let bottomLeading = PageAlignment(horizontal: .leading, vertical: .bottom)
    static let bottom = PageAlignment(horizontal: .center, vertical: .bottom)
    static let bottomTrailing = PageAlignment(horizontal: .trailing, vertical: .bottom)
    
    init(horizontal: HAlignment, vertical: VAlignment) {
        self.horizontal = horizontal
        self.vertical = vertical
    }
}


public extension PageAlignment
where HAlignment == HorizontalAlignment,
      VAlignment == VerticalPageAlignment
{
    static let topLeading = PageAlignment(horizontal: .leading, vertical: .top)
    static let top = PageAlignment(horizontal: .center, vertical: .top)
    static let topTrailing = PageAlignment(horizontal: .trailing, vertical: .top)
    static let leading = PageAlignment(horizontal: .leading, vertical: .center)
    static let center = PageAlignment(horizontal: .center, vertical: .center)
    static let trailing = PageAlignment(horizontal: .trailing, vertical: .center)
    static let bottomLeading = PageAlignment(horizontal: .leading, vertical: .bottom)
    static let bottom = PageAlignment(horizontal: .center, vertical: .bottom)
    static let bottomTrailing = PageAlignment(horizontal: .trailing, vertical: .bottom)
    
    init(horizontal: HAlignment, vertical: VAlignment) {
        self.horizontal = horizontal
        self.vertical = vertical
    }
}


public extension PageAlignment
where HAlignment == HorizontalPageAlignment,
      VAlignment == VerticalPageAlignment
{
    static let topLeading = PageAlignment(horizontal: .leading, vertical: .top)
    static let top = PageAlignment(horizontal: .center, vertical: .top)
    static let topTrailing = PageAlignment(horizontal: .trailing, vertical: .top)
    static let leading = PageAlignment(horizontal: .leading, vertical: .center)
    static let center = PageAlignment(horizontal: .center, vertical: .center)
    static let trailing = PageAlignment(horizontal: .trailing, vertical: .center)
    static let bottomLeading = PageAlignment(horizontal: .leading, vertical: .bottom)
    static let bottom = PageAlignment(horizontal: .center, vertical: .bottom)
    static let bottomTrailing = PageAlignment(horizontal: .trailing, vertical: .bottom)
    
    init(horizontal: HAlignment, vertical: VAlignment) {
        self.horizontal = horizontal
        self.vertical = vertical
    }
}
