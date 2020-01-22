//
//  ViewController.swift
//  Final
//
//  Created by MacStudent on 2020-01-22.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import UIKit
import CoreData
import MapKit

class ViewController: UIViewController,MKMapViewDelegate {
    
    @IBOutlet weak var Map: UIView!
    
    @IBOutlet weak var List: UIView!
    
    static  var managedContext: NSManagedObjectContext!
    var selectPin: MKAnnotation!
    
    var locatonSingle = Location()
    //model class di entity da array
        var locDataArray = [Location]()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func switchView(_ sender: UISegmentedControl) {
        
        if sender.selectedSegmentIndex == 0 {
            Map.alpha = 1
            List.alpha = 0
           
        } else{
            
            Map.alpha = 0
            List.alpha = 1
        }
        
        
    }
    
}

