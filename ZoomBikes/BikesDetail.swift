//
//  BikesDetail.swift
//  ZoomBikes
//
//  Created by Simin Savani on 10/1/20.
//  Copyright © 2020 Simin Savani. All rights reserved.
//

import SwiftUI
import MapKit

struct BikesDetail: View {
    var item: Int
    @State var locationName = ["Bike 1", "Bike 2", "Bike 3", "Bike 4", "Bike 5", "Bike 6", "Bike 7", "Bike 8", "Bike 9", "Bike 10"]
    @State var locationCoordX = [33.957551, 33.954826, 33.952127, 33.951551, 33.950370, 33.951153, 33.947989, 33.948246, 33.946491, 33.942652]
    @State var locationCoordY = [-83.375280, -83.373102, -83.372935, -83.374124, -83.374566, -83.377259, -83.374410, -83.376838, -83.376371, -83.376898]
    /* @State var locationAddress = ["5680 Oakbrook Pkwy Suite 148, Norcross, GA 30093", "2305 Parklake Dr NE, Atlanta, GA 30345", "2305 Parklake Dr NE Building 9, Suite 150, Atlanta, GA 30345", "3510 Shallowford Rd, Atlanta, GA 30341", "2300 Henderson Mill Rd, Atlanta, GA 30345", "655 Village Square Dr, Stone Mountain, GA 30083", "436 N Indian Creek Dr, Clarkston, GA 30021", "2750 Buford Hwy NE, Atlanta, GA 30324", "230 Peachtree St #1100, Atlanta, GA 30303", "970 Jefferson St NW, Atlanta, GA 30318"] */

    var body: some View {
        VStack {
            MapView(coordinate: CLLocationCoordinate2D(
                latitude: locationCoordX[item], longitude: locationCoordY[item]), name: locationName[item])
                .edgesIgnoringSafeArea(.top)
                .frame(height: 300)
            Image("BikeIcon")
            
            Text(locationName[item])
            .padding()

            //Spacer()
        }
    }
}

struct BikesDetail_Previews: PreviewProvider {
    static var previews: some View {
        BikesDetail(item: 0)
    }
}

