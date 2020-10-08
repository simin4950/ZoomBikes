//
//  MapView.swift
//  Zoom Bikes
//
//  Created by Simin Savani on 10/1/20.
//  Copyright © 2019 Simin Savani. All rights reserved.
//

import SwiftUI
import MapKit

var locationName = ["Bike 1", "Bike 2", "Bike 3", "Bike 4", "Bike 5", "Bike 6", "Bike 7", "Bike 8", "Bike 9", "Bike 10"]
var locationCoordX = [33.957551, 33.954826, 33.952127, 33.951551, 33.950370, 33.951153, 33.947989, 33.948246, 33.946491, 33.942652]
var locationCoordY = [-83.375280, -83.373102, -83.372935, -83.374124, -83.374566, -83.377259, -83.374410, -83.376838, -83.376371, -83.376898]

struct MapView: UIViewRepresentable {
    var coordinate: CLLocationCoordinate2D
    var name: String
    
    func makeUIView(context: Context) -> MKMapView {
        MKMapView(frame: .zero)
    }

    func updateUIView(_ view: MKMapView, context: Context) {
        let annotation1 = MKPointAnnotation()
        annotation1.coordinate = CLLocationCoordinate2D(latitude: locationCoordX[0], longitude: locationCoordY[0])
        annotation1.title = locationName[0]
        
        let annotation2 = MKPointAnnotation()
        annotation2.coordinate = CLLocationCoordinate2D(latitude: locationCoordX[1], longitude: locationCoordY[1])
        annotation2.title = locationName[1]
        
        let annotation3 = MKPointAnnotation()
        annotation3.coordinate = CLLocationCoordinate2D(latitude: locationCoordX[2], longitude: locationCoordY[2])
        annotation3.title = locationName[2]
        
        let annotation4 = MKPointAnnotation()
        annotation4.coordinate = CLLocationCoordinate2D(latitude: locationCoordX[3], longitude: locationCoordY[3])
        annotation4.title = locationName[3]
        
        let annotation5 = MKPointAnnotation()
        annotation5.coordinate = CLLocationCoordinate2D(latitude: locationCoordX[4], longitude: locationCoordY[4])
        annotation5.title = locationName[4]
        
        let annotation6 = MKPointAnnotation()
        annotation6.coordinate = CLLocationCoordinate2D(latitude: locationCoordX[5], longitude: locationCoordY[5])
        annotation6.title = locationName[5]
        
        let annotation7 = MKPointAnnotation()
        annotation7.coordinate = CLLocationCoordinate2D(latitude: locationCoordX[6], longitude: locationCoordY[6])
        annotation7.title = locationName[6]
        
        let annotation8 = MKPointAnnotation()
        annotation8.coordinate = CLLocationCoordinate2D(latitude: locationCoordX[7], longitude: locationCoordY[7])
        annotation8.title = locationName[7]
        
        let annotation9 = MKPointAnnotation()
        annotation9.coordinate = CLLocationCoordinate2D(latitude: locationCoordX[8], longitude: locationCoordY[8])
        annotation9.title = locationName[8]
        
        let annotation10 = MKPointAnnotation()
        annotation10.coordinate = CLLocationCoordinate2D(latitude: locationCoordX[9], longitude: locationCoordY[9])
        annotation10.title = locationName[9]
        
        let annotations = [annotation1, annotation2, annotation3, annotation4, annotation5, annotation6, annotation7, annotation8, annotation9, annotation10]
        
        let span = MKCoordinateSpan(latitudeDelta: 0.02, longitudeDelta: 0.02)
        let region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: locationCoordX[0], longitude: locationCoordY[0]), span: span)
        view.setRegion(region, animated: true)
        view.addAnnotations(annotations)
        //view.addAnnotation(annotation1)
    }
    
}

class MapViewCoordinator: NSObject, MKMapViewDelegate {
      var mapViewController: MapView
        
      init(_ control: MapView) {
          self.mapViewController = control
      }
        
      func mapView(_ mapView: MKMapView, viewFor
           annotation: MKAnnotation) -> MKAnnotationView?{
         //Custom View for Annotation
          let annotationView = MKAnnotationView(annotation: annotation, reuseIdentifier: "customView")
          annotationView.canShowCallout = true
          //Your custom image icon
          annotationView.image = UIImage(named: "BikeIcon")
          return annotationView
       }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView(coordinate: CLLocationCoordinate2D(
            latitude: 34.011286, longitude: -116.166868), name: "No Where Land")
    }
}

