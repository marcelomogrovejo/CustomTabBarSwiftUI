//
//  TabBarView.swift
//  CustomTabBar.SwiftUI
//
//  Created by Marcelo Mogrovejo on 21/04/2025.
//

import SwiftUI

struct TabBarView: View {

    @Binding var selectedTab: TabsType
    @Binding var isMainAction: Bool

    var body: some View {
        VStack {
            HStack {
                Rectangle()
                    .frame(height: 1)
                    .foregroundStyle(Color.pink)

                Rectangle()
                    .frame(width: 60, height: 0)
                    .foregroundStyle(Color.clear)
                
                Rectangle()
                    .frame(height: 1)
                    .foregroundStyle(Color.pink)
            }

            HStack(alignment: .bottom) {
                TabBarButton(title: "Chats",
                             iconName: "bubble.left",
                             tabType: .chats,
                             selectedTab: $selectedTab,
                             isActive: selectedTab == .chats
                )
//                .background(Color.gray)

                Spacer()

                TabMainButton(iconName: "plus.circle.fill",
                              title: "New",
                              isTapped: $isMainAction)
                
                Spacer()
                
                TabBarButton(title: "Contacts",
                             iconName: "person.2",
                             tabType: .contacts,
                             selectedTab: $selectedTab,
                             isActive: selectedTab == .contacts
                )
//                .background(Color.gray)
            }
            .frame(maxWidth: .infinity,
                   maxHeight: 80,
                   alignment: .bottom)
            .padding(.horizontal, 20)
        }
    }
}

#Preview {
    TabBarView(selectedTab: .constant(.chats),
               isMainAction: .constant(false))
}
