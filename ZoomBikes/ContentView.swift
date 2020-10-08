//
//  ContentView.swift
//  ZoomBikes
//
//  Created by Capstone on 10/3/20.
//

import SwiftUI
import MapKit

struct ContentView: View {
    var body: some View {
        NavigationView{
            ZStack{
                MapView(coordinate: CLLocationCoordinate2D(latitude: 0.0, longitude: 0.0), name: "nothing")
                    .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
                    .edgesIgnoringSafeArea(.all)
                VStack{
                    Spacer()
                    NavigationLink(
                        destination: ScanView(),
                        label: {
                            Text("Scan to Ride")
                                .padding()
                                .font(.largeTitle)
                                .foregroundColor(.pink)
                                .background(Color.black)
                                .cornerRadius(50)
                        })
                }
                
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
