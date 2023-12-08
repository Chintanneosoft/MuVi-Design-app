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
        self.font = UIFont.appFont(font: font,size: size)
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

//For font size
extension UIFont {
    static func appFont(font: String,size: CGFloat) -> UIFont {
        let device = UIScreen.main.nativeBounds
        var adjustedSize = size
        
        // iPhone SE
        if device.height <= 1140 {
            adjustedSize = size * 0.8
        }
        return UIFont(name: font, size: adjustedSize) ?? UIFont()
    }
}

//for TextField
extension UITextField {
    func setIcon(_ image1: UIImage, _ labelText: String, _ image2: UIImage, action: Selector, target: Any) {
        // Create the first ImageView
        let imageView1 = UIImageView(frame: CGRect(x: 10, y: 0, width: 30, height: 30))
        imageView1.image = image1
        imageView1.clipsToBounds = true
        imageView1.layer.cornerRadius = imageView1.bounds.width/2
        
        // Create the label
        let label = UILabel()
        label.text = labelText
        label.setFont(font: Fonts.barlowRegular.rawValue, size: 22)
        label.textAlignment = .center
        label.textColor = .white
        label.sizeToFit()
        
        label.frame = CGRect(x: imageView1.frame.maxX + 5 , y: 0, width: label.frame.width + 30, height: 30)
        
        let imageView2 = UIImageView(frame: CGRect(x: label.frame.maxX , y: label.frame.maxY/2, width: 15, height: 10))
        imageView2.image = image2
        
        
        let iconContainerView: UIView = UIView(frame: CGRect(x: 0, y: 0, width: imageView1.frame.width + label.frame.width + imageView2.frame.width + 30, height: 30))
        iconContainerView.addSubview(imageView1)
        iconContainerView.addSubview(label)
        iconContainerView.addSubview(imageView2)
        
        // Add tap gesture recognizer to the container view
        let tapGesture = UITapGestureRecognizer(target: target, action: action)
        iconContainerView.addGestureRecognizer(tapGesture)
        iconContainerView.isUserInteractionEnabled = true
        
        leftView = iconContainerView
        leftViewMode = .always
    }
}



