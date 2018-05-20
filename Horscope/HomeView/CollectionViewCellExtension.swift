//
//  CollectionViewCellExtension.swift
//  Horscope
//
//  Created by Riken Maharjan on 5/16/18.
//  Copyright © 2018 Riken Maharjan. All rights reserved.
//

import UIKit

extension CollectionViewCell{
    
    func createstackv() -> UIStackView {
        
        
        //some computation based on the saved variable
        var resizedimage = resizeImage(image:#imageLiteral(resourceName: "Libra"), targetSize: CGSize(width: 65.0, height: 65.0))
        
        
        
       
        
        
        
        var icons = [UIImageView]()
        
        icons.append(UIImageView(image: resizedimage ))
       
        icons.append(UIImageView(image: resizedimage ))
       
       icons.append(UIImageView(image: resizedimage ))
        
        //let stackViewHeight = (screenHeight/2) * 0.15
        
        let matchView = UIStackView(arrangedSubviews: icons)
        matchView.translatesAutoresizingMaskIntoConstraints = false
        matchView.axis = .horizontal
        matchView.distribution = .equalSpacing
        
        

        
        return matchView
        
        
    }
    
    
    func resizeImage(image: UIImage, targetSize: CGSize) -> UIImage {
        let size = image.size
        
        let widthRatio  = targetSize.width  / size.width
        let heightRatio = targetSize.height / size.height
        
        // Figure out what our orientation is, and use that to form the rectangle
        var newSize: CGSize
        if(widthRatio > heightRatio) {
            newSize = CGSize(width: size.width * heightRatio, height: size.height * heightRatio)
        } else {
            newSize = CGSize(width: size.width * widthRatio,  height: size.height * widthRatio)
        }
        
        // This is the rect that we've calculated out and this is what is actually used below
        let rect = CGRect(x: 0, y: 0, width: newSize.width, height: newSize.height)
        
        // Actually do the resizing to the rect using the ImageContext stuff
        UIGraphicsBeginImageContextWithOptions(newSize, false, 1.0)
        image.draw(in: rect)
        let newImage = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        
        return newImage!
    }
    
    
    
    
    
   
    
    
    
    
}
