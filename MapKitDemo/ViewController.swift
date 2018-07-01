//
//  ViewController.swift
//  MapKitDemo
//
//  Created by Chinmay Patel on 3/30/18.
//  Copyright © 2018 Chinmay Patel. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController {

    
    @IBOutlet weak var myMapview: MKMapView!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 1 Set latitude and longitude of Place Which you wnat to Show
        let location = CLLocationCoordinate2D(latitude: 23.070864,
                                              longitude: 72.548365)
        
        
        // 2 Span is Make a latitude and longitude value Smaller
        //   MKCoordinateRegion method defines the visible region, it is set with the setRegion method
        let span = MKCoordinateSpanMake(0.05, 0.05)
        let region = MKCoordinateRegion(center: location, span: span)
        myMapview.setRegion(region, animated: true)
        
        //3 annotation is added to the Map View with the addAnnotation method
        let annotation = MKPointAnnotation()
        annotation.coordinate = location
        annotation.title = "ServiceHub"
        annotation.subtitle = "Ghatlodia"
        myMapview.addAnnotation(annotation)
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

