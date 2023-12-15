//
//  CitySelectionVC.swift
//  MuVi Design app
//
//  Created by Neosoft on 06/12/23.
//

import UIKit
//MARK: - CitySelectionVC
class CitySelectionVC: BaseVC {
    //MARK: - @IBOutlets
    @IBOutlet weak var lblUserCity: UILabel!
    @IBOutlet weak var btnAllCities: UIButton!
    @IBOutlet weak var citiesCollectionView: UICollectionView!
    @IBOutlet weak var lblWhichCity: UILabel!
    
    //variable
    var citySelectionViewModel = CitySelectionViewModel()
    
    //MARK: - LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        setCollectionView()
        citySelectionViewModel.findRemainingCities()
        setUpUI()
    }
    
    //MARK: - Functions
    private func setCollectionView(){
        citiesCollectionView.delegate = self
        citiesCollectionView.dataSource = self
        
        citiesCollectionView.register(UINib(nibName: CellIdentifiers.CitySelectionCell.rawValue , bundle: nil), forCellWithReuseIdentifier: CellIdentifiers.CitySelectionCell.rawValue)
        citiesCollectionView.register(UICollectionReusableView.self, forSupplementaryViewOfKind: UICollectionView.elementKindSectionFooter, withReuseIdentifier: CellIdentifiers.FooterView.rawValue)
    }
    
    //Setting UI
    private func setUpUI(){
        citySelectionViewModel.selectedCities = citySelectionViewModel.nearByCities[0]
        setUserLocationLabel(selectedCity: citySelectionViewModel.nearByCities[0])
        btnAllCities.setCornerRadius(cornerRadius: 20, maskedCorners: [.layerMaxXMaxYCorner, .layerMinXMinYCorner])
        lblWhichCity.setFont(font: Fonts.barlowRegular.rawValue, size: 30)
    }
    
    func setUserLocationLabel(selectedCity: String){
        let labelText = "You are at \(selectedCity) as of now"
        let range = (labelText as NSString).range(of: "\(selectedCity)")

        let attributedString = NSMutableAttributedString(string: labelText)
        attributedString.addAttribute(NSAttributedString.Key.foregroundColor, value: AppColors.blackColor, range: NSRange(location: 0, length: labelText.count))
        attributedString.addAttribute(NSAttributedString.Key.foregroundColor, value: AppColors.secondary, range: range)

        lblUserCity.attributedText = attributedString
        if selectedCity == citySelectionViewModel.nearByCities[0]{
            citiesCollectionView.selectItem(at: IndexPath(item: 0, section: 0), animated: true, scrollPosition: [])
        }
    }
    
    // navigation
    private func goToNextVC(){
        let nextVC = PreferedExperienceVC(nibName: VCNibs.PreferedExperienceVC.rawValue, bundle: nil)
        navigationController?.pushViewController(nextVC, animated: true)
    }
    
    //MARK: - @IBActions
    @IBAction func btnAllCities(_ sender: UIButton) {
        goToNextVC()
    }
}
