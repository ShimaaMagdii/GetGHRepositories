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
    var repositoryPresenter : GRRepositoryPresenter!
    internal var searchController: UISearchController = UISearchController(searchResultsController: nil)
    
    var repositoriesList = [GRRepositoryViewModel](){
        didSet{
            repositoryTableView.reloadData()
        }
    }
    internal var searchText: String? {
        didSet {
            if let text = searchText {
                repositoryPresenter.loadDataWithSearchText(searchText: text)
            }
        }
    }
    
    // MARK: - UIViewController
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTableView()
        repositoryPresenter = GRRepositoryPresenter(self)
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
    
    //MARK:- Private Methods
    private func setupTableView () {
        repositoryTableView.estimatedRowHeight = UITableViewConstants.estimatedRowHeight
        repositoryTableView.rowHeight = UITableViewAutomaticDimension
        searchController.searchBar.delegate = self
        searchController.dimsBackgroundDuringPresentation = false
        searchController.delegate = self
        definesPresentationContext = true
        repositoryTableView.tableHeaderView = searchController.searchBar
    }
    
    
}



