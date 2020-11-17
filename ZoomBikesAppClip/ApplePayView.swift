//
//  ApplePayView.swift
//  ZoomBikesAppClip
//
//  Created by Capstone on 10/27/20.
//

import SwiftUI
import MapKit

struct ApplePayView: View {
    @ObservedObject var stopWatchManager = StopWatchManager()
    
    var body: some View {
        ZStack{
            MapView(coordinate: CLLocationCoordinate2D(latitude: 0.0, longitude: 0.0), name: "nothing")
                .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
                .edgesIgnoringSafeArea(.all)
            link(destination: RideView())
    }
        .navigationBarHidden(true)
}
    
    private func link<Destination: View>(destination: Destination) -> some View {
            return NavigationLink(destination: destination) {
                Image("apple-pay")
                    .resizable()
                    .scaledToFit()
                    .offset(y: 100)
            }
    }
}

struct ApplePayView_Previews: PreviewProvider {
    static var previews: some View {
        ApplePayView()
    }
}
