/**
*  SwiftUIPageView
*  Copyright (c) Ciaran O'Brien 2022
*  MIT license, see LICENSE file for details
*/

import SwiftUI

public struct PageViewProxy {
    
    public func pageTo(_ index: Int) {
        interactionProxy?.pageTo(CGFloat(index))
    }
    
    public func pageToStart() {
        interactionProxy?.pageTo(-.infinity)
    }
    
    public func pageToEnd() {
        interactionProxy?.pageTo(.infinity)
    }
    
    internal var interactionProxy: InteractionProxy? = nil
    
    internal init() { }
}
