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
            case .main:
                Text("Main")
                Spacer()
                    .fullScreenCover(isPresented: $isPresented) {
                        NewChatView()
                    }
            case .chats:
                ChatsView()
            case .contacts:
                ContactsView()
            }

            Spacer()

            TabBarView(selectedTab: $selectedTab)
        }
        .frame(maxWidth: .infinity)
//        .background(.yellow)
        .onChange(of: selectedTab, { oldValue, newValue in
            if selectedTab == .main {
                isPresented = true
            }
        })
    }
}

#Preview {
    ContentView()
}
