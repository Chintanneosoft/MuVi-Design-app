//
//  PreferedExperienceVC.swift
//  MuVi Design app
//
//  Created by Neosoft on 07/12/23.
//

import UIKit
//MARK: - PreferedExperienceVC
class PreferedExperienceVC: BaseVC {
    //MARK: - @IBOutlets
    @IBOutlet weak var btnProceed: UIButton!
    @IBOutlet weak var preferedExpCollectionView: UICollectionView!
    @IBOutlet weak var lblWhatTypeOfExperience: UILabel!
    
    //variables
    let preferedExperienceViewModel = PreferedExperienceViewModel()
    
    //MARK: - LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        setCollectionView()
        setUpUI()
    }
    
    //MARK: - Functions
    private func setCollectionView(){
        preferedExpCollectionView.delegate = self
        preferedExpCollectionView.dataSource = self
        
        preferedExpCollectionView.register(UINib(nibName: CellIdentifiers.PreferedExperienceCell.rawValue, bundle: nil), forCellWithReuseIdentifier: CellIdentifiers.PreferedExperienceCell.rawValue)
    }
    
    //Setting UI
    private func setUpUI(){
        btnProceed.setCornerRadius(cornerRadius: 20, maskedCorners: [.layerMaxXMaxYCorner, .layerMinXMinYCorner])
        lblWhatTypeOfExperience.setFont(font: Fonts.barlowRegular.rawValue, size: 30)
    }
    
    //Navigation
    private func goToNextVC(){
        let nextVC = LoginVC(nibName: VCNibs.LoginVC.rawValue, bundle: nil)
        navigationController?.pushViewController(nextVC, animated: true)
    }
    
    //MARK: - @IBActions
    @IBAction func btnProceedTapped(_ sender: UIButton) {
        UserDefaults.standard.set(true, forKey: UserDefaultKeys.hasAppLauchedBefore.rawValue)
        goToNextVC()
    }
}
