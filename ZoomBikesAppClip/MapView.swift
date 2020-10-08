//
//  MapView.swift
//  Zoom Bikes
//
//  Created by Simin Savani on 10/1/20.
//  Copyright © 2019 Simin Savani. All rights reserved.
//

import SwiftUI
import MapKit

var locationName = "Bike 1"
var locationCoordX = 33.957551
var locationCoordY = -83.375280

struct MapView: UIViewRepresentable {
    var coordinate: CLLocationCoordinate2D
    var name: String
    
    func makeUIView(context: Context) -> MKMapView {
        MKMapView(frame: .zero)
    }

    func updateUIView(_ view: MKMapView, context: Context) {
        let annotation = MKPointAnnotation()
        annotation.coordinate = CLLocationCoordinate2D(latitude: locationCoordX, longitude: locationCoordY)
        annotation.title = locationName
        
        let span = MKCoordinateSpan(latitudeDelta: 0.02, longitudeDelta: 0.02)
        let region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: locationCoordX, longitude: locationCoordY), span: span)
        view.setRegion(region, animated: true)
        view.addAnnotation(annotation)
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

