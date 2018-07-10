//
//  TopView.swift
//  Horscope
//
//  Created by Riken Maharjan on 5/16/18.
//  Copyright © 2018 Riken Maharjan. All rights reserved.
//

import UIKit


class TopView: UIView {
    
    
    let horoLabel:UILabel = {
        let lv = UILabel()
        lv.text = "Libra"
        //lv.backgroundColor = .green
        lv.setContentHuggingPriority(.defaultHigh, for: .horizontal)
        lv.font = UIFont(name: "ChockABlockNF", size: 36)
        lv.textColor = UIColor(red: 59/255, green: 68/255, blue: 84/255, alpha: 1.0)//.white// UIColor(red: 219/255, green: 148/255, blue: 25/255, alpha: 1.0)
        lv.translatesAutoresizingMaskIntoConstraints = false
        return lv
    }()
    
    var horoPic:UIImageView = {
        
        let iv = UIImageView()
        iv.setContentHuggingPriority(.defaultLow, for: .horizontal)
        iv.tintColor = UIColor(red: 59/255, green: 68/255, blue: 84/255, alpha: 1.0)
        iv.sizeThatFits(CGSize(width: 65, height: 65))
        iv.translatesAutoresizingMaskIntoConstraints = false
        return iv
    
    }()
    
    let horoPara:UILabel = {
        
        let label = UILabel()
        label.text = "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s."
        //label.backgroundColor = .purple
        
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont(name: "AmericanTypewriter", size: 14)
        label.adjustsFontSizeToFitWidth = true
        label.textColor = UIColor(displayP3Red: 83/255, green: 99/255, blue: 127/255, alpha: 1)
        // multiple line
        //label.setContentHuggingPriority(.defaultHigh, for: .vertical)
        
        return label
        
    }()
    
    let constLabel : UILabel = {
       
        let lb = UILabel()
        lb.text = "Today's Prediction"
        lb.textColor = UIColor(displayP3Red: 83/255, green: 99/255, blue: 127/255, alpha: 1)
        lb.font = UIFont(name: "HelveticaNeue", size: 14)
        
        lb.translatesAutoresizingMaskIntoConstraints = false
        return lb
        
    }()
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        backgroundColor = UIColor(displayP3Red: 218/255, green: 215/255, blue: 217/255, alpha: 1)
        
        
        
        
        setUpView()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    
    // Setup View
    func setUpView(){
        
        addSubview(horoPic)
        addSubview(horoLabel)
        addSubview(constLabel)
        addSubview(horoPara)
        
        
        // label
        //horoLabel.centerXAnchor.constraint(equalTo: centerXAnchor, constant: 0).isActive = true
        horoLabel.topAnchor.constraint(equalTo: topAnchor, constant: 20).isActive = true
        horoLabel.leadingAnchor.constraint(equalTo: horoPic.trailingAnchor, constant: 16).isActive = true
        
        
        // paragraph
        horoPara.topAnchor.constraint(equalTo: horoPic.bottomAnchor, constant: 12).isActive = true
        horoPara.centerXAnchor.constraint(equalTo: centerXAnchor, constant: 0).isActive = true
       // horoPara.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -16).isActive = true
        horoPara.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20).isActive = true
        horoPara.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20).isActive = true
        horoPara.sizeToFit()
    
        // constant prediction text
        constLabel.topAnchor.constraint(equalTo: horoLabel.bottomAnchor, constant: -1).isActive = true
        constLabel.leadingAnchor.constraint(equalTo: horoLabel.leadingAnchor,constant: -4).isActive = true
        
        
        horoPic.image = resizeImage(image:#imageLiteral(resourceName: "libra-1"), targetSize: CGSize(width: 65.0, height: 65.0)).withRenderingMode(.alwaysTemplate)
    
        
        // image
        //horoPic.trailingAnchor.constraint(equalTo: horoLabel.leadingAnchor, constant: -8).isActive = true
        horoPic.centerXAnchor.constraint(equalTo: centerXAnchor, constant : -100).isActive = true
        horoPic.topAnchor.constraint(equalTo: topAnchor, constant: 15).isActive = true
        
        
        
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
    
    
    func passData(horoscope:String, name:String){

            var horo = horoscope.split{$0 == "("}.map(String.init)
            print(horo)
            horoPara.text = horo[0]
            horoLabel.text = name
        
       
    }

}
