//
//  ViewController.swift
//  GPSTest
//
//  Created by Colin van der Geld on 11-12-17.
//  Copyright © 2017 Colin van der Geld. All rights reserved.
//

import UIKit
import CoreLocation
import MapKit

class ViewController: UIViewController, CLLocationManagerDelegate, MKMapViewDelegate {
    @IBOutlet weak var map: MKMapView!
    let setLocation = CLLocation(latitude: 51.8369, longitude: 5.78018)
    let locationManager = CLLocationManager()
    
    var currentLocation:CLLocation?
    override func viewDidLoad() {
        super.viewDidLoad()
        map.delegate = self
        
         let twoDLocation = CLLocationCoordinate2D(latitude: setLocation.coordinate.latitude, longitude: setLocation.coordinate.longitude)
        
        let span = MKCoordinateSpanMake(0.002, 0.002)
        let region = MKCoordinateRegion(center: twoDLocation, span: span)
        
        map.setRegion(region, animated: true)
        
        let annotation = MKPointAnnotation()
        
       
        annotation.coordinate = twoDLocation
        annotation.title = "De titel ervan"
        annotation.subtitle = "De subtitle hiervan"
        
        map.addAnnotation(annotation)
        
        
        
        
        locationManager.requestAlwaysAuthorization()
        
        if CLLocationManager.locationServicesEnabled(){
            locationManager.delegate = self
            locationManager.desiredAccuracy = kCLLocationAccuracyBest
            locationManager.startUpdatingLocation()
            
        }
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func integratedNav(_ sender: UIButton) {
        if (currentLocation != nil){
        let twoDLocation = CLLocationCoordinate2D(latitude: setLocation.coordinate.latitude, longitude: setLocation.coordinate.longitude)
        let request = MKDirectionsRequest()
            request.source = MKMapItem(placemark: MKPlacemark(coordinate: (currentLocation?.coordinate)!, addressDictionary: nil))
        request.destination = MKMapItem(placemark: MKPlacemark(coordinate: twoDLocation, addressDictionary: nil))
        request.requestsAlternateRoutes = false
        request.transportType = .walking
        
        let directions = MKDirections(request: request)
        
        directions.calculate { [unowned self] response, error in
            guard let unwrappedResponse = response else { return }
            
            for route in unwrappedResponse.routes {
                self.map.add(route.polyline)
                self.map.setVisibleMapRect(route.polyline.boundingMapRect, animated: true)
                }
            }
        }
    }
    
    @IBAction func navigate(_ sender: UIButton) {
        let twoDLocation = CLLocationCoordinate2D(latitude: setLocation.coordinate.latitude, longitude: setLocation.coordinate.longitude)
        
        let regionSpan = MKCoordinateRegionMakeWithDistance(twoDLocation, 1000, 1000)
        let options = [
            MKLaunchOptionsMapCenterKey: NSValue(mkCoordinate: regionSpan.center),
            MKLaunchOptionsMapSpanKey: NSValue(mkCoordinateSpan: regionSpan.span)
        ]
        
        let placeMark = MKPlacemark(coordinate: twoDLocation)
        let mapItem = MKMapItem(placemark: placeMark)
        mapItem.name = "Mijn favoriete attractie"
        mapItem.openInMaps(launchOptions: options)
        
    }
    
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        if let location = locations.first{
            currentLocation = location
            
        }
    }
    func locationManager(_ manager: CLLocationManager, didChangeAuthorization status: CLAuthorizationStatus) {
        if status == CLAuthorizationStatus.denied{
            showLocationDisabledPopUp()
        }
    }
    
    func showLocationDisabledPopUp(){
            let alertController = UIAlertController(title: "background location access disabled", message: "We're gonna need your location", preferredStyle: .alert)
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        alertController.addAction(cancelAction)
        
        
        let openAction = UIAlertAction(title: "Open settins", style: .default){(action) in
            if let url = URL(string: UIApplicationOpenSettingsURLString){
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
        }
     alertController.addAction(openAction)
        self.present(alertController, animated: true, completion:nil)
    }
    
        
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    func mapView(_ mapView: MKMapView, viewFor annotation: MKAnnotation) -> MKAnnotationView? {
        guard !(annotation is MKUserLocation) else {
            return nil
        }
        
        let annotationIdentifier = "Identifier"
        var annotationView: MKAnnotationView?
        if let dequeuedAnnotationView = mapView.dequeueReusableAnnotationView(withIdentifier: annotationIdentifier) {
            annotationView = dequeuedAnnotationView
            annotationView?.annotation = annotation
        }
        else {
            annotationView = MKAnnotationView(annotation: annotation, reuseIdentifier: annotationIdentifier)
            annotationView?.rightCalloutAccessoryView = UIButton(type: .detailDisclosure)
        }
        
        if let annotationView = annotationView {
            
            annotationView.canShowCallout = true
            let image = UIImage(named: "funfair")
//            image?.draw(in: CGRect(x: 0, y: 0, width: 16, height: 16))
            
            let size = CGSize(width: 64, height: 64)
            UIGraphicsBeginImageContext(size)
            image?.draw(in: CGRect(x: 0, y: 0, width: size.width, height: size.height))
            let resizedImage = UIGraphicsGetImageFromCurrentImageContext()
            UIGraphicsEndImageContext()
            
            
            annotationView.image = resizedImage
            
        }
        return annotationView
    }
    
    func mapView(_ mapView: MKMapView, rendererFor overlay: MKOverlay) -> MKOverlayRenderer {
        let polylineRenderer = MKPolylineRenderer(overlay: overlay)
        polylineRenderer.strokeColor = UIColor.blue
        polylineRenderer.fillColor = UIColor.red
        polylineRenderer.lineWidth = 2
        return polylineRenderer
        
        
    }
}

