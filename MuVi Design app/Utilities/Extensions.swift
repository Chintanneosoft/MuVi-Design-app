//
//  Extensions.swift
//  MuVi Design app
//
//  Created by Neosoft on 01/12/23.
//

import Foundation
import UIKit

// For Gradient Background
extension UIView {
    func applyGradient(colours: [UIColor], angle: Double = 0) {
        let gradient: CAGradientLayer = CAGradientLayer()
        gradient.frame = self.bounds
        gradient.colors = colours.map { $0.cgColor }
        gradient.locations = [0.0,1.0]
        
        let x: Double = cos(angle + .pi / 2)
        let y: Double = sin(angle + .pi / 2)
        
        gradient.startPoint = CGPoint(x: 0.5 - x/2, y: 0.5 - y/2)
        gradient.endPoint = CGPoint(x: 0.5 + x/2, y: 0.5 + y/2)
        
        self.layer.insertSublayer(gradient, at: 0)
    }
}

// For Font
extension UILabel{
    func setFont(font: String, size: CGFloat){
        self.font = UIFont(name: font, size: size)
    }
}

// For Button
extension UIButton{
    func setTitleFont(font: String, size: CGFloat){
        self.titleLabel?.setFont(font: font, size: size)
    }
    
    func setCornerRadius(cornerRadius: CGFloat,maskedCorners: CACornerMask,borderColor: UIColor = AppColors.blackColor, borderWidth:CGFloat = 1.0){
        
        self.clipsToBounds = true
        self.layer.cornerRadius = cornerRadius
        self.layer.maskedCorners = maskedCorners
        self.layer.borderColor = borderColor.cgColor
        self.layer.borderWidth = borderWidth
    }
}
