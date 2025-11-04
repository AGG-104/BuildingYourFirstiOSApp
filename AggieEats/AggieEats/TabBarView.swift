//
//  TabBarView.swift
//  AggieEats
//

import SwiftUI

struct TabBarView: View {
    var body: some View {
        TabView{
            Tab("Today", systemImage: "house"){
                HomePage()
            }
            Tab("Weekly Menu", systemImage: "menucard"){
                WeeklyMenuView()
            }
        }
    }
}

#Preview {
    TabBarView()
}
