//
//  ViewController.swift
//  endOfYearTake2
//
//  Created by Mobile Apps 31 on 4/17/23.
//

import UIKit
import MapKit
import CoreLocation

class ViewController: UIViewController, MKMapViewDelegate {
    
    @IBOutlet weak var mapOfTheWorld: MKMapView!
    @IBOutlet weak var musicButton: UIButton!
    let location = CLLocation(latitude: 40.367474, longitude: -82.996216)
    let region_radious = 10000
    
    override func viewDidLoad() {
        super.viewDidLoad()
        centreMap(location: location)
    }
    
    func centreMap(location: CLLocation){
    let region = MKCoordinateRegion(center: location.coordinate,latitudinalMeters: CLLocationDistance(region_radious), longitudinalMeters: CLLocationDistance(region_radious))
    mapOfTheWorld.setRegion(region, animated: true)
    }
    
    @IBAction func worldSlider(_ sender: UISlider) {
        //mapOfTheWorld.setCamera(<#T##camera: MKMapCamera##MKMapCamera#>, animated: <#T##Bool#>)
    }
    
}

