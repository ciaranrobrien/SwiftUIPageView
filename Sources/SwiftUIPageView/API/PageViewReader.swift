/**
*  SwiftUIPageView
*  Copyright (c) Ciaran O'Brien 2022
*  MIT license, see LICENSE file for details
*/

import SwiftUI

/// A view that provides programmatic paging, by working with a proxy
/// to move to child pages.
public struct PageViewReader<Content>: View
where Content : View
{
    
    /// Creates an instance that can perform programmatic paging of its
    /// child page views.
    ///
    /// - Parameters:
    ///  - content: The reader's content, containing a page view.
    public init(@ViewBuilder content: @escaping (PageViewProxy) -> Content) {
        self.content = content
    }
    
    public var body: some View {
        content(proxy)
            .onPreferenceChange(InteractionProxyKey.self) { proxy.interactionProxy = $0 }
            .transformPreference(InteractionProxyKey.self) { $0 = InteractionProxyKey.defaultValue }
    }
    
    @State private var proxy = PageViewProxy()
    private var content: (PageViewProxy) -> Content
}
