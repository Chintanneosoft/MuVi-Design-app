//
//  Helpers.swift
//  MuVi Design app
//
//  Created by Neosoft on 06/12/23.
//

import Foundation
import UIKit

// For Left Aligned of Preferences Collection View
class LeftAlignedCollectionViewFlowLayout: UICollectionViewFlowLayout {
    override func layoutAttributesForElements(in rect: CGRect) -> [UICollectionViewLayoutAttributes]? {
        let attributes = super.layoutAttributesForElements(in: rect)
        var leftMargin = sectionInset.left
        var maxY: CGFloat = -1.0
        attributes?.forEach { layoutAttribute in
            if layoutAttribute.frame.origin.y >= maxY {
                leftMargin = sectionInset.left 
            }
            layoutAttribute.frame.origin.x = leftMargin
            leftMargin += layoutAttribute.frame.width + minimumInteritemSpacing
            maxY = max(layoutAttribute.frame.maxY, maxY)
        }
        return attributes
    }
}

class LeftAlignedSectionHeaderFlowLayout: UICollectionViewFlowLayout
{
    let customHeaderWidth:CGFloat = 150.0
    
    required init?(coder aDecoder: NSCoder) {
        
        super.init(coder: aDecoder)
        sectionInset.left = customHeaderWidth
    }
}
