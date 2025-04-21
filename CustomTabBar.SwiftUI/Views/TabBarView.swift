//
//  TabBarView.swift
//  CustomTabBar.SwiftUI
//
//  Created by Marcelo Mogrovejo on 21/04/2025.
//

import SwiftUI

struct TabBarView: View {

    @Binding var selectedTab: TabsType

    var body: some View {
        
        switch selectedTab {
        case .chats:
            Text("selectedTab: \(selectedTab)")
        case .contacts:
            Text("selectedTab: \(selectedTab)")
        case .new:
            Text("selectedTab: \(selectedTab)")
        }

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

                // TODO: it should act as a button, not a tab button, cause it opens a new full screen controller over whatever screen the user is standing.
//                TabBarButton(title: "New",
//                             iconName: "plus.circle.fill",
//                             isMainButton: true,
//                             tabType: .new,
//                             selectedTab: $selectedTab,
//                             isActive: selectedTab == .chats
//                )
//                .background(Color.yellow)
                
                Button {
                    selectedTab = .new
                } label: {
                    VStack(alignment: .center, spacing: 4) {
                        Image(systemName: "plus.circle.fill")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 64, height: 64)

                        Text("New")
                    }
                    .padding(20)
//                    .background(Color.brown)
                }
                .tint(.pink)
                
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
    TabBarView(selectedTab: .constant(.chats))
}
