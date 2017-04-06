//
//  LocalViewController.swift
//  ApoieACena
//
//  Created by Rafael Sol Santos Martins on 03/04/17.
//  Copyright © 2017 Felipe Montenegro. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation


class LocalViewController: UIViewController, CLLocationManagerDelegate {
    
    
    @IBOutlet weak var userLocation: UILabel!
    
    let manager = CLLocationManager()
    var city:String = ""
    var state:String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        manager.delegate = self
        manager.desiredAccuracy = kCLLocationAccuracyBest
        manager.requestWhenInUseAuthorization()
        manager.startUpdatingLocation()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
        print("Error while updating location " + error.localizedDescription)
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        CLGeocoder().reverseGeocodeLocation(manager.location!, completionHandler: { (placemarks, error) ->Void in if (error != nil){
            print("Reverse Geocoder failed with error")
            return
        }else{
            
        var placemark: CLPlacemark!
        placemark = placemarks?[0]
        self.city = placemark.locality!
        self.state = placemark.administrativeArea!
        print("\(self.city) (\(placemark.administrativeArea!))")

        self.setLabel()
        self.manager.stopUpdatingLocation()
            }
    })
    }
    
    func setLabel(){
        self.userLocation.text = self.city + " " + "(" + self.state + ")"
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
