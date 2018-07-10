//
//  UILabel.swift
//  Horscope
//
//  Created by Biken Maharjan on 7/10/18.
//  Copyright © 2018 Riken Maharjan. All rights reserved.
//

import UIKit

extension UILabel{
    
    // Will auto resize the contained text to a font size which fits the frames bounds.
    /// Uses the pre-set font to dynamically determine the proper sizing
    func fitTextToBounds() {
        guard let text = text, let currentFont = font else { return }
        
        let bestFittingFont = UIFont.bestFittingFont(for: text, in: bounds, fontDescriptor: currentFont.fontDescriptor)
        font = bestFittingFont
    }
        
}
