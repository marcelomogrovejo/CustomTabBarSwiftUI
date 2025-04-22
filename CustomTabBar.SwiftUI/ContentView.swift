//
//  ContentView.swift
//  CustomTabBar.SwiftUI
//
//  Created by Marcelo Mogrovejo on 21/04/2025.
//

import SwiftUI

struct ContentView: View {

    @State private var selectedTab: TabsType = .chats
    @State private var isPresented: Bool = false

    var body: some View {
        VStack {
            switch selectedTab {
            case .chats:
                ChatsView()
            case .contacts:
                ContactsView()
            }

            if isPresented {
                withAnimation {
                    Spacer()
                        .fullScreenCover(isPresented: $isPresented) {
                            NewChatView()
                                .transition(.asymmetric(insertion: .scale,
                                                        removal: .opacity))
                        }
                }
            }

            Spacer()

            TabBarView(selectedTab: $selectedTab,
                       isMainAction: $isPresented)
        }
        .frame(maxWidth: .infinity)
    }
}

#Preview {
    ContentView()
}
