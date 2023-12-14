//
//  CitySelectionVC.swift
//  MuVi Design app
//
//  Created by Neosoft on 06/12/23.
//

import UIKit

class CitySelectionVC: BaseVC {

    @IBOutlet weak var lblUserCity: UILabel!
    @IBOutlet weak var btnAllCities: UIButton!
    @IBOutlet weak var citiesCollectionView: UICollectionView!
    @IBOutlet weak var lblWhichCity: UILabel!
    
    var citySelectionViewModel = CitySelectionViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setCollectionView()
        citySelectionViewModel.findRemainingCities()
        setUpUI()
    }
    
    private func setCollectionView(){
        citiesCollectionView.delegate = self
        citiesCollectionView.dataSource = self
        
        citiesCollectionView.register(UINib(nibName: CellIdentifiers.CitySelectionCell.rawValue , bundle: nil), forCellWithReuseIdentifier: CellIdentifiers.CitySelectionCell.rawValue)
        citiesCollectionView.register(UICollectionReusableView.self, forSupplementaryViewOfKind: UICollectionView.elementKindSectionFooter, withReuseIdentifier: CellIdentifiers.FooterView.rawValue)
    }

    private func setUpUI(){
        
        setUserLocationLabel()
        
        btnAllCities.setCornerRadius(cornerRadius: 20, maskedCorners: [.layerMaxXMaxYCorner, .layerMinXMinYCorner])
        
        lblWhichCity.setFont(font: Fonts.barlowRegular.rawValue, size: 30)
    }
    
    private func setUserLocationLabel(){
        let labelText = "You are at \(citySelectionViewModel.nearByCities[0]) as of now"
        let range = (labelText as NSString).range(of: "\(citySelectionViewModel.nearByCities[0])")

        let attributedString = NSMutableAttributedString(string: labelText)
        attributedString.addAttribute(NSAttributedString.Key.foregroundColor, value: AppColors.blackColor, range: NSRange(location: 0, length: labelText.count))
        attributedString.addAttribute(NSAttributedString.Key.foregroundColor, value: AppColors.secondary, range: range)

        lblUserCity.attributedText = attributedString
    }
    
    private func goToNextVC(){
        let nextVC = PreferedExperienceVC(nibName: VCNibs.PreferedExperienceVC.rawValue, bundle: nil)
        navigationController?.pushViewController(nextVC, animated: true)
    }
    @IBAction func btnAllCities(_ sender: UIButton) {
        goToNextVC()
    }
}
