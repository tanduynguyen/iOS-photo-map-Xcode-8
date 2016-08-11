//
//  PhotoAnnotation.swift
//  Photo Map
//
//  Created by Duy Nguyen on 11/8/16.
//  Copyright © 2016 Timothy Lee. All rights reserved.
//

import UIKit
import MapKit

class PhotoAnnotation: NSObject, MKAnnotation {

    var coordinate: CLLocationCoordinate2D = CLLocationCoordinate2DMake(0, 0)
    var photo: UIImage!
    
    var title: String?
    
    var thumbnail: UIImage? {
        
        get {
            
            let resizeRenderImageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 45, height: 45))
            resizeRenderImageView.layer.borderColor = UIColor.white.cgColor
            resizeRenderImageView.layer.borderWidth = 3.0
            resizeRenderImageView.contentMode = UIViewContentMode.scaleAspectFill
            resizeRenderImageView.image = self.photo
            
            UIGraphicsBeginImageContext(resizeRenderImageView.frame.size)
            resizeRenderImageView.layer.render(in: UIGraphicsGetCurrentContext()!)
            let thumbnail = UIGraphicsGetImageFromCurrentImageContext()
            UIGraphicsEndImageContext()
            
            return thumbnail
        }
    }
    
}
