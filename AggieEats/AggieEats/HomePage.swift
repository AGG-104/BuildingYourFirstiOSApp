//
//  ContentView.swift
//  AggieEats
//

import SwiftUI
import MapKit
import CodeScanner

//TODO: Import this package: https://github.com/twostraws/CodeScanner
struct HomePage: View {
    @State var showScanner = false
    @State var navigateToOrderingPage = false
    var body: some View {
            NavigationStack {
                ScrollView{
                    VStack(alignment: .leading){
                        VStack(alignment: .leading){
                            HStack{
                                Text("Today's Location")
                                    .font(.title2)
                                    .fontWeight(.bold)
                                Spacer()
                                ScanQrCodeButton(showScanner: $showScanner) // Add button here!
                            }
                            Text("Memorial Union")
                                .font(.largeTitle)
                                .fontWeight(.bold)
                        }
                        TruckLocationView()
                        TodaysMenuView()
                    } // end of outer VStack
                }
            }

        .sheet(isPresented: $showScanner) {
            CodeScannerView(codeTypes: [.qr], simulatedData: "ABCDE", completion: handleScan)
        }
        .navigationDestination(isPresented: $navigateToOrderingPage) {
            ConfirmOrderView()
        }// end of scrollView
        .padding()
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
    
    
    //TODO: Uncomment This Function When Implementing QR Code Scanning.
    func handleScan(result: Result<ScanResult, ScanError>) {
        showScanner = false
        switch result {
        case .success(let result):
            navigateToOrderingPage = true
            
        case .failure(let error):
            print("Scanning failed: \(error.localizedDescription)")
        }
    }
}

struct ScanQrCodeButton: View {
    @Binding var showScanner: Bool
    var body: some View {
        Button{
            showScanner = true
        } label: {
            Image(systemName: "camera")
                .imageScale(.large)
        }
    }
}
// Where we left off
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
            Text("What's On The Menu?")
                .font(.title)
                .fontWeight(.bold)
            MenuOptionsView()
        }
    }
}



#Preview {
    HomePage()
}
