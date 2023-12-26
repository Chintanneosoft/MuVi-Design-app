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
        movieViewModel.movieDetails = movieDetails
    }

    //setTableView
    func setTableView(){
        movieInfoTableView.delegate = self
        movieInfoTableView.dataSource = self
        
        movieInfoTableView.register(UINib(nibName: CellIdentifiers.MovieInfoTableViewCell.rawValue, bundle: nil), forCellReuseIdentifier: CellIdentifiers.MovieInfoTableViewCell.rawValue)
    }
}
