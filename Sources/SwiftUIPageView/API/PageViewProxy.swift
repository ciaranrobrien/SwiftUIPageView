/**
*  SwiftUIPageView
*  Copyright (c) Ciaran O'Brien 2022
*  MIT license, see LICENSE file for details
*/

import SwiftUI

/// A proxy value that supports programmatic paging of the first
/// page view within a view hierarchy.
public struct PageViewProxy {
    
    /// Scans the first page view contained by the proxy for the
    /// page with the index closest to `index`, and then moves
    /// to that page.
    ///
    /// - Parameters:
    ///   - index: The index of the page to move to.
    public func moveTo(_ index: Int) {
        interactionProxy?.moveTo(CGFloat(index))
    }
    
    /// Scans the first page view contained by the proxy for the
    /// first page, and then moves to that page.
    public func moveToFirst() {
        interactionProxy?.moveTo(-.infinity)
    }
    
    /// Scans the first page view contained by the proxy for the
    /// last page, and then moves to that page.
    public func moveToLast() {
        interactionProxy?.moveTo(.infinity)
    }
    
    internal var interactionProxy: InteractionProxy? = nil
    
    internal init() { }
}
