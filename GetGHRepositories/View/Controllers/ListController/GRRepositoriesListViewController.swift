//
//  GRRepositoriesListViewController.swift
//  GetGHRepositories
//
//  Created by Shimaa Magdi on 12/6/17.
//  Copyright © 2017 Shimaa Magdi. All rights reserved.
//

import Foundation
import UIKit
/**
 *  GRRepositoriesListViewController table view controller contains the repositories details showen on list
 */
class GRRepositoriesListViewController: GRBaseViewController {
    
    // MARK: - IBOutlets
    @IBOutlet weak var repositoryTableView: UITableView!
    
    // MARK: - Properties
    var repositoryPresenter :  GRRepositoryPresenter!
    var repositoriesList = [GRRepositoryViewModel](){
        didSet{
            repositoryTableView.reloadData()
        }
    }
    
    // MARK: - UIViewController
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTableView()
        repositoryPresenter = GRRepositoryPresenter(self)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        repositoryPresenter.loadDataWithSearchText(searchText: "images")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        repositoryPresenter.detachView()
    }
    
    // MARK: - Methods
    
    // MARK: - Init
    
    /**
     Initialize an instance of Repositories List ViewController
     - returns: GRRepositoriesListViewController Object
     */
    public static func create() -> GRRepositoriesListViewController {
        
        return UIStoryboard(name: StoryboardIdentifier.mainStoryboardIdentifier, bundle: Bundle.main).instantiateViewController(withIdentifier: StoryboardIdentifier.repositoriesListVCIdentifier)as! GRRepositoriesListViewController
    }
    
    func setupTableView () {
        repositoryTableView.estimatedRowHeight = 100
        repositoryTableView.rowHeight = UITableViewAutomaticDimension
    }
    
    
}



