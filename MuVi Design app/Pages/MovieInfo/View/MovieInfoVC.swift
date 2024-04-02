//
//  MovieInfoVC.swift
//  MuVi Design app
//
//  Created by Neosoft on 20/12/23.
//

import UIKit
//MARK: - MovieInfoVC
class MovieInfoVC: BaseVC {

    //MARK: - @IBOutlets
    @IBOutlet weak var movieInfoTableView: UITableView!
    @IBOutlet weak var btnPreBook: UIButton!
    
    //Variable
    let movieViewModel = MovieInfoViewModel()
    var movieDetails: MovieDetails?
    
    //MARK: - LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        setTableView()
        setUpUI()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        movieViewModel.movieDetails = movieDetails
        setNavigationBar()
    }

    //setTableView
    private func setTableView(){
        movieInfoTableView.delegate = self
        movieInfoTableView.dataSource = self
        
        movieInfoTableView.register(UINib(nibName: CellIdentifiers.MovieInfoTableViewCell.rawValue, bundle: nil), forCellReuseIdentifier: CellIdentifiers.MovieInfoTableViewCell.rawValue)
        movieInfoTableView.registerNib(of: MovieInfoDetailsTableViewCell.self)
    }
    
    private func setUpUI(){
        btnPreBook.setAttributedString(text: Constants.prebook.rawValue, font: Fonts.barlowBold.rawValue, color: .white, size: 14)
        btnPreBook.applyGradient(colours: [AppColors.redColor, AppColors.purpleColor], angle: -45)
        btnPreBook.setCornerRadius(cornerRadius: 20, maskedCorners: [.layerMaxXMaxYCorner, .layerMinXMinYCorner], borderWidth: 0)
    
        movieInfoTableView.backgroundColor = AppColors.blackishPurleColor
        movieInfoTableView.contentInsetAdjustmentBehavior = .never
    }
    
    func setNavigationBar(){
        navigationController?.navigationBar.isHidden = false
        let backButton = createBarButtons(image: UIImage(named: "backBtn") ?? UIImage(), action: #selector(backButtonTapped))
        let rightButton = createBarButtons(image: UIImage(systemName: "heart") ?? UIImage(), action: #selector(rightButtonTapped))
        
        navigationItem.leftBarButtonItem = backButton
        navigationItem.rightBarButtonItem = rightButton

    }
    @objc func backButtonTapped() {
        // Add your code here for back button tap
        navigationController?.popViewController(animated: true)
    }

    @objc func rightButtonTapped() {
        // Add your code here for right button tap
    }
    
}
