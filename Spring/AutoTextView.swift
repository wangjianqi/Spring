//
//  AutoTextView.swift
//  SpringApp
//
//  Created by Meng To on 2015-03-27.
//  Copyright (c) 2015 Meng To. All rights reserved.
//

import UIKit

public class AutoTextView: UITextView {

    ///固有的尺寸
    public override var intrinsicContentSize: CGSize {
        get {
            var size = self.sizeThatFits(CGSize(width: self.frame.size.width, height: CGFloat.greatestFiniteMagnitude))
            size.width = self.frame.size.width
            if text.length == 0 {
                size.height = 0
            }
            
            contentInset = UIEdgeInsets(top: -4, left: -4, bottom: -4, right: -4)
            layoutIfNeeded()
            
            return size
        }
    }
}
