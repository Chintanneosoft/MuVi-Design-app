//
//  PreferedExperienceVC.swift
//  MuVi Design app
//
//  Created by Neosoft on 07/12/23.
//

import UIKit

class PreferedExperienceVC: BaseVC {

    @IBOutlet weak var btnProceed: UIButton!
    @IBOutlet weak var preferedExpCollectionView: UICollectionView!
    @IBOutlet weak var lblWhatTypeOfExperience: UILabel!
    
    let preferedExperienceViewModel = PreferedExperienceViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setCollectionView()
        setUpUI()
    }
    
    private func setCollectionView(){
        preferedExpCollectionView.delegate = self
        preferedExpCollectionView.dataSource = self
        
        preferedExpCollectionView.register(UINib(nibName: CellNames.PreferedExperienceCell.rawValue, bundle: nil), forCellWithReuseIdentifier: CellNames.PreferedExperienceCell.rawValue)
    }
    
    private func setUpUI(){
        btnProceed.setCornerRadius(cornerRadius: 20, maskedCorners: [.layerMaxXMaxYCorner, .layerMinXMinYCorner])
        
        lblWhatTypeOfExperience.setFont(font: Fonts.barlowRegular.rawValue, size: 30)
    }
    
    private func goToNextVC(){
        let nextVC = LoginVC(nibName: VCNames.LoginVC.rawValue, bundle: nil)
        navigationController?.pushViewController(nextVC, animated: true)
    }
    
    @IBAction func btnProceedTapped(_ sender: UIButton) {
        UserDefaults.standard.set(true, forKey: UserDefaultKeys.hasAppLauchedBefore.rawValue)
        goToNextVC()
    }
}
