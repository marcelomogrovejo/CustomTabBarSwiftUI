//
//  TabBarButton.swift
//  CustomTabBar.SwiftUI
//
//  Created by Marcelo Mogrovejo on 21/04/2025.
//

import SwiftUI

struct TabBarButton: View {

    var title = "Title"
    var iconName = "person.3"
    var tabType: TabsType
    @Binding var selectedTab: TabsType
    var isActive: Bool = false

    var body: some View {
        Button {
            selectedTab = tabType
        } label: {
            VStack(alignment: .center, spacing: 4) {
                Image(systemName: iconName)
                    .scaledToFit()
                    .frame(width: 25,
                           height: 25)

                Text(title)
                    .font(.TabBar.regular)
            }
            .padding(20)
//            .background(Color.brown)
        }
        .frame(width: 100)
        .tint(isActive ? .pink : .gray)
    }
}

#Preview {
    TabBarButton(title: "Test",
                 iconName: "person.2",
                 tabType: .chats,
                 selectedTab: .constant(.chats)
    )
}

