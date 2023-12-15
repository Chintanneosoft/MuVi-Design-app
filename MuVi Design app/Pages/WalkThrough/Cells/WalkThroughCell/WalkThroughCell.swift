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
    @IBOutlet weak var lbl: UILabel!
    @IBOutlet weak var pageControl: UIPageControl!
    @IBOutlet weak var btn: UIButton!
    @IBOutlet weak var btnWidth: NSLayoutConstraint!
    
    //Delegate
    weak var showNextPageDelegate : ShowNextPageDelegate?
    
    //Variables
    var cellIndex = Int()
    
    //MARK: - LifeCycle
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        setUpUI()
    }
    
    //MARK: - Functions
    private func setUpUI(){
        lbl.setFont(font: Fonts.barlowRegular.rawValue, size: 24)
    }
    
    private func setButton(btnTitle: String){
        btn.setAttributedString(text: btnTitle, font: Fonts.barlowBold.rawValue, color: .white, size: 14)
        btn.applyGradient(colours: [AppColors.redColor, AppColors.purpleColor], angle: -45)
        btn.setCornerRadius(cornerRadius: 20, maskedCorners: [.layerMaxXMaxYCorner, .layerMinXMinYCorner], borderWidth: 0)
    }
    
    func setDetails(lblText:String, pageNumber:Int, btnTitle: String){
        lbl.text = lblText
        pageControl.currentPage = pageNumber
        setButton(btnTitle: btnTitle)
        
        btnWidth.constant = (pageNumber == 1) ? 130 : 100
    }
    
    //MARK: - @IBActions
    @IBAction func btnTapped(_ sender: UIButton) {
        showNextPageDelegate?.showNextPage(pageNumber: pageControl.currentPage, isPageControl: false)
    }
    
    @IBAction func pageControlTapped(_ sender: UIPageControl) {
        showNextPageDelegate?.showNextPage(pageNumber: sender.currentPage, isPageControl: true)
    }
}
