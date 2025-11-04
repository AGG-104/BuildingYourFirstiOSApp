//
//  ContentView.swift
//  AggieEats
//

import SwiftUI
import MapKit

//TODO: Import this package: https://github.com/twostraws/CodeScanner

struct HomePage: View {
    var body: some View {
        ScrollView{
            VStack(alignment: .leading){
                VStack(alignment: .leading){
                    HStack{
                        Text("Today's Location")
                            .font(.title2)
                            .fontWeight(.bold)
                        Spacer()
                        ScanQrCodeButton() // Add button here!
                    }
                    Text("Memorial Union")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                }
            } // end of outer VStack
        } // end of scrollView
        .padding()
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}
    
//TODO: Uncomment This Function When Implementing QR Code Scanning.
  /* func handleScan(result: Result<ScanResult, ScanError>) {
       showScanner = false
        switch result {
        case .success(let result):
            navigateToOrderingPage = true
            
        case .failure(let error):
            print("Scanning failed: \(error.localizedDescription)")
        }
    }*/


struct ScanQrCodeButton: View {
    var body: some View {
        Button{
            // Implement Later
        } label: {
            Image(systemName: "camera")
                .imageScale(.large)
        }
    }
}

struct TruckLocationView: View {
    var body: some View {
        Map{
            Marker("MU", coordinate:
                    CLLocationCoordinate2D(latitude: 38.54141, longitude: -121.74845))
        }
        .frame(width: 370, height: 400)
        .padding(.bottom)
    }
}

struct TodaysMenuView: View {
    var body: some View {
        VStack(alignment: .leading) {
            EmptyView()
        }
    }
}



#Preview {
    HomePage()
}
