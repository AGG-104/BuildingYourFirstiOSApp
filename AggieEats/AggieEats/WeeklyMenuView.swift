//
//  WeeklyMenuView.swift
//  AggieEats
//

import SwiftUI

struct WeeklyMenuView: View {
    var body: some View {
        ScrollView{
            VStack(alignment: .leading){
                Text("Monday")
                    .font(.title2)
                    .fontWeight(.bold)
                MenuOptionsView()
                Text("Tuesday")
                    .font(.title2)
                    .fontWeight(.bold)
                MenuOptionsView()
                Text("Wednesday")
                    .font(.title2)
                    .fontWeight(.bold)
                MenuOptionsView()
                Text("Thursday")
                    .font(.title2)
                    .fontWeight(.bold)
                MenuOptionsView()
                Text("Friday")
                    .font(.title2)
                    .fontWeight(.bold)
                MenuOptionsView()
            }
        }
        .padding()
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

#Preview {
    WeeklyMenuView()
}
