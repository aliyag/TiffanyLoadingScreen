//
//  BouncingItem.swift
//  TiffanyLoadingScreen
//
//  Created by Aliya Gangji on 8/10/18.
//  Copyright © 2018 Aliya Gangji. All rights reserved.
//

import UIKit
@IBDesignable

class BouncingItem: UIImageView {

    @IBInspectable public var speed: CGFloat = 20
    

    override func awakeFromNib() {
        super.awakeFromNib()
        stopAnimating()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }

    func animateTiffanyBox() {
        UIView.animate(withDuration: 1, animations: {self.frame.origin.y -= self.speed}) { _ in
            UIView.animateKeyframes(withDuration: 1, delay: 0.25, options: [.autoreverse, .repeat ], animations: {self.frame.origin.y += self.speed})
        }
    }
    
    override func startAnimating() {
        animateTiffanyBox()
    }
    
    override func stopAnimating() {
        self.layer.removeAllAnimations()
    }
    

}
