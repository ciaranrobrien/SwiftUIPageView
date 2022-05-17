/**
*  SwiftUIPageView
*  Copyright (c) Ciaran O'Brien 2022
*  MIT license, see LICENSE file for details
*/

import SwiftUI

public struct PageViewReader<Content>: View
where Content : View
{
    public var body: some View {
        content(proxy)
            .onPreferenceChange(InteractionProxyKey.self) { proxy.interactionProxy = $0 }
            .transformPreference(InteractionProxyKey.self) { $0 = InteractionProxyKey.defaultValue }
    }
    
    @State private var proxy = PageViewProxy()
    private var content: (PageViewProxy) -> Content
}


public extension PageViewReader {
    init(@ViewBuilder _ content: @escaping (PageViewProxy) -> Content) {
        self.content = content
    }
}
