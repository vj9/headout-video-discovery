//
//  UILabelExtension.swift
//  headout
//
//  Created by varun jindal on 18/02/17.
//  Copyright © 2017 headout. All rights reserved.
//

import Foundation
import UIKit

extension UILabel{
    func setTextSpacing(spacing: CGFloat){
        if let text = text {
            let attributedString = NSMutableAttributedString(string: text)
            if textAlignment == .center || textAlignment == .right {
                attributedString.addAttribute(NSKernAttributeName, value: spacing, range: NSRange(location: 0, length: attributedString.length-1))
            } else {
                attributedString.addAttribute(NSKernAttributeName, value: spacing, range: NSRange(location: 0, length: attributedString.length))
            }
            attributedText = attributedString
        }
    }
}
