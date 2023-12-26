//
//  FindVC.swift
//  MuVi Design app
//
//  Created by Neosoft on 12/12/23.
//

import UIKit
//MARK: - FindVC
class FindVC: BaseVC {
    //MARK: - @IBOutlets
    @IBOutlet weak var findTableView: UITableView!
    @IBOutlet weak var lblSearch: UILabel!
    @IBOutlet weak var lblFindMovies: UILabel!
    @IBOutlet weak var btnApply: UIButton!
    @IBOutlet weak var btnVoiceSearch: UIButton!
    @IBOutlet weak var txtSearch: UITextField!
    @IBOutlet weak var txtContainerView: UIView!
    
    //MARK: - LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        setTableView()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.navigationBar.isHidden = true
        setUpUI()
    }
    
    //MARK: - Functions
    private func setTableView(){
        findTableView.delegate = self
        findTableView.dataSource = self
        
        findTableView.register(UINib(nibName: CellIdentifiers.FindCollectionTableViewCell.rawValue, bundle: nil), forCellReuseIdentifier: CellIdentifiers.FindCollectionTableViewCell.rawValue)
    }

    //Setting UI
    private func setUpUI(){
        self.view.applyGradient(colours: [AppColors.primary, AppColors.darkPurpleColor])
        
        txtContainerView.clipsToBounds = true
        txtContainerView.layer.cornerRadius = 10
        
        lblSearch.text = Constants.search.rawValue
        lblSearch.setFont(font: Fonts.barlowRegular.rawValue, size: 30)
        lblSearch.textColor = .white
        
        lblFindMovies.text = Constants.findMoviesLbl.rawValue
        lblFindMovies.setFont(font: Fonts.barlowLight.rawValue, size: 16)
        lblFindMovies.textColor = .white
        
        btnApply.setCornerRadius(cornerRadius: 20, maskedCorners: [.layerMinXMinYCorner,.layerMaxXMaxYCorner],borderWidth: 0)
        btnApply.setAttributedString(text: Constants.applyBtn.rawValue, font: Fonts.barlowBold.rawValue, color: AppColors.primary, size: 16)
        btnApply.backgroundColor = .white
        
        setTextField()
        self.view.bounds.size.width = UIScreen.main.bounds.width
    }
    
    private func setTextField(){
        let leftImage = UIImage(systemName: ImageStrings.searchImg.rawValue)
        leftImage?.withRenderingMode(.alwaysTemplate)
        
        txtSearch.textColor = .white
        txtSearch.setIcon(leftImage ?? UIImage(systemName: "heart")!, action: nil, target: nil)
        txtSearch.setAttributedPlaceholder(placeHolder: Constants.searchbyNameTxt.rawValue, color: .white, font: Fonts.barlowLight.rawValue, size: 18)
        txtSearch.font = UIFont.appFont(font: Fonts.barlowRegular.rawValue, size: 18)
    }
}
