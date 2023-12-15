//
//  WalkThroughCell.swift
//  MuVi Design app
//
//  Created by Neosoft on 04/12/23.
//

import UIKit

//MARK: - ShowNextPageDelegate Protocol
protocol ShowNextPageDelegate:NSObject{
    func showNextPage(pageNumber: Int, isPageControl: Bool)
}

//MARK: - WalkThroughCell
class WalkThroughCell: UICollectionViewCell {
    
    //MARK: - @IBOutlets
    @IBOutlet weak var lblWalkThrough: UILabel!
    @IBOutlet weak var walkThroughPageControl: UIPageControl!
    @IBOutlet weak var btnWalkThrough: UIButton!
    @IBOutlet weak var btnWalkThroughWidth: NSLayoutConstraint!
    
    //Delegate
    weak var showNextPageDelegate : ShowNextPageDelegate?
    
    //Variables
    var cellIndex = Int()
    
    //MARK: - LifeCycle
    override func awakeFromNib() {
        super.awakeFromNib()
        setUpUI()
    }
    
    //MARK: - Functions
    private func setUpUI(){
        lblWalkThrough.setFont(font: Fonts.barlowRegular.rawValue, size: 24)
    }
    
    private func setButton(btnWalkThroughTitle: String){
        btnWalkThrough.setAttributedString(text: btnWalkThroughTitle, font: Fonts.barlowBold.rawValue, color: .white, size: 14)
        btnWalkThrough.applyGradient(colours: [AppColors.redColor, AppColors.purpleColor], angle: -45)
        btnWalkThrough.setCornerRadius(cornerRadius: 20, maskedCorners: [.layerMaxXMaxYCorner, .layerMinXMinYCorner], borderWidth: 0)
    }
    
    func setDetails(lblWalkThroughText:String, pageNumber:Int, btnWalkThroughTitle: String){
        lblWalkThrough.text = lblWalkThroughText
        walkThroughPageControl.currentPage = pageNumber
        setButton(btnWalkThroughTitle: btnWalkThroughTitle)
        
        btnWalkThroughWidth.constant = (pageNumber == 1) ? 130 : 100
    }
    
    //MARK: - @IBActions
    @IBAction func btnWalkThroughTapped(_ sender: UIButton) {
        showNextPageDelegate?.showNextPage(pageNumber: walkThroughPageControl.currentPage, isPageControl: false)
    }
    
    @IBAction func pageControlTapped(_ sender: UIPageControl) {
        showNextPageDelegate?.showNextPage(pageNumber: sender.currentPage, isPageControl: true)
    }
}
