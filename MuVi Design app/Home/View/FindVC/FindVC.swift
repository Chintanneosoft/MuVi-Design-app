//
//  FindVC.swift
//  MuVi Design app
//
//  Created by Neosoft on 12/12/23.
//

import UIKit

class FindVC: BaseVC {

    @IBOutlet weak var findTableView: UITableView!
    @IBOutlet weak var lblSearch: UILabel!
    @IBOutlet weak var lblFindMovies: UILabel!
    @IBOutlet weak var btnApply: UIButton!
    @IBOutlet weak var btnVoiceSearch: UIButton!
    @IBOutlet weak var txtSearch: UITextField!
    @IBOutlet weak var txtContainerView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setTableView()
        setUpUI()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        navigationController?.navigationBar.isHidden = true
        
        self.view.applyGradient(colours: [AppColors.primary, AppColors.darkPurpleColor])
    }
    
    private func setTableView(){
        findTableView.delegate = self
        findTableView.dataSource = self
    
        findTableView.register(UINib(nibName: CellNames.FindCollectionCell.rawValue, bundle: nil), forCellReuseIdentifier: CellNames.FindCollectionCell.rawValue)
        
    }

    
    //Setting UI
    private func setUpUI(){
        
        txtContainerView.clipsToBounds = true
        txtContainerView.layer.cornerRadius = 10
        
        lblSearch.text = ScreenText.search.rawValue
        lblSearch.setFont(font: Fonts.barlowRegular.rawValue, size: 30)
        lblSearch.textColor = .white
        
        lblFindMovies.text = ScreenText.lblFindMovies.rawValue
        lblFindMovies.setFont(font: Fonts.barlowLight.rawValue, size: 16)
        lblFindMovies.textColor = .white
        
        btnApply.setCornerRadius(cornerRadius: 20, maskedCorners: [.layerMinXMinYCorner,.layerMaxXMaxYCorner],borderWidth: 0)
        btnApply.setAttributedString(text: ScreenText.btnApply.rawValue, font: Fonts.barlowBold.rawValue, color: AppColors.primary, size: 16)
        btnApply.backgroundColor = .white
        
        setTextField()
        self.view.bounds.size.width = UIScreen.main.bounds.width
    }
    
    private func setTextField(){
        
        let leftImage = UIImage(named: ImageNames.findImg.rawValue)
        leftImage?.withRenderingMode(.alwaysTemplate)
        
        txtSearch.textColor = .white
        txtSearch.setIcon(leftImage ?? UIImage(systemName: "heart")!, action: nil, target: nil)
        txtSearch.setAttributedPlaceholder(placeHolder: ScreenText.txtSearchbyName.rawValue, color: .white, font: Fonts.barlowLight.rawValue, size: 18)
        txtSearch.font = UIFont.appFont(font: Fonts.barlowRegular.rawValue, size: 18)
    }
}
