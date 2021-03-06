//
//  UIFontExt.swift
//  Horscope
//
//  Created by Biken Maharjan on 7/10/18.
//  Copyright © 2018 Riken Maharjan. All rights reserved.
//

import UIKit

extension UIFont{
    
    
    /**
     Will return the best font conforming to the descriptor which will fit in the provided bounds.
     */
    static func bestFittingFontSize(for text: String, in bounds: CGRect, fontDescriptor: UIFontDescriptor) -> CGFloat {
        let constrainingDimension = min(bounds.width, bounds.height)
        let properBounds = CGRect(origin: .zero, size: bounds.size)
        
        var bestFontSize: CGFloat = constrainingDimension
        
        for fontSize in stride(from: bestFontSize, through: 0, by: -1) {
            let newFont = UIFont(descriptor: fontDescriptor, size: fontSize)
            let currentFrame = text.boundingRect(with: properBounds.size, options: [.usesLineFragmentOrigin, .usesFontLeading], attributes: [.font: newFont], context: nil)
            
            if properBounds.contains(currentFrame) {
                bestFontSize = fontSize
                break
            }
        }
        
        return bestFontSize
    }
    
    static func bestFittingFont(for text: String, in bounds: CGRect, fontDescriptor: UIFontDescriptor) -> UIFont {
        let bestSize = bestFittingFontSize(for: text, in: bounds, fontDescriptor: fontDescriptor)
        return UIFont(descriptor: fontDescriptor, size: bestSize)
    }
    
}
