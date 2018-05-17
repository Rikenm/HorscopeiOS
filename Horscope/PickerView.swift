//
//  PickerView.swift
//  Horscope
//
//  Created by Riken Maharjan on 5/16/18.
//  Copyright © 2018 Riken Maharjan. All rights reserved.
//

import UIKit


class PickerView: UIPickerView, UIPickerViewDelegate, UIPickerViewDataSource  {
    
    
    let pets = ["Libra","Cat","Squirrel","Hamster"]
    var label = UILabel()
    
    
    
    
    override func willMove(toSuperview newSuperview: UIView?) {
        super.willMove(toSuperview: newSuperview)
        
        label.text = "Libra"
        
    }
    
    
    
    
    
    
    
    
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        
        
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        
        
        return pets.count
    }
    
    func pickerView(_ pickerView: UIPickerView, rowHeightForComponent component: Int) -> CGFloat {
        return 250
    }
    
    func pickerView(_ pickerView: UIPickerView, widthForComponent component: Int) -> CGFloat {
        return 100
    }
    
    func pickerView(_ pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusing view: UIView?) -> UIView {
        
        let view = UIView()
        
        view.frame = CGRect(x: 0, y: 0, width: 100, height: 100)
        //view.backgroundColor = .red

        
        
        
        let imageview = UIImageView(image: #imageLiteral(resourceName: "Libra"))
        imageview.frame = CGRect(x: 0, y: 0, width: 100, height: 100)
        
        view.addSubview(imageview)

        view.transform = CGAffineTransform(rotationAngle: 90 * (.pi/180))
        
        return view
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
        
        
        label.text = pets[row]
        
    
    }
    
    
    
    
    
    
    
    
}
