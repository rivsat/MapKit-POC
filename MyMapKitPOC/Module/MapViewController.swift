//
//  MapViewController.swift
//  MyMapKitPOC
//
//  Created by Tasvir Rohila on 18/11/2016.
//  Copyright © 2016 Tasvir. All rights reserved.
//

import Foundation
import UIKit
import MapKit

class MapViewController: UIViewController {
    
    //MARK: -
    //MARK: Properties
    @IBOutlet weak var mapView: MKMapView!
    
    //MARK: -
    //MARK: Life-cycle methods
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        initialize()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func initialize() {
        // initialize the location to Melbourne, Aus
        let location = CLLocation(latitude: -37.8136, longitude: 144.9631)
        let radius: CLLocationDistance = 1000
        centerMap(onLocation: location, radius: radius)
    }
    
    func centerMap(onLocation location: CLLocation, radius: CLLocationDistance) {
        let coordinateRegion = MKCoordinateRegionMakeWithDistance(location.coordinate,
                                                                  radius * 2.0, radius * 2.0)
        mapView.setRegion(coordinateRegion, animated: true)
    }
}
