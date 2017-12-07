//
//  GRRepositoriesListViewController+UISearchBar.swift
//  GetGHRepositories
//
//  Created by Shimaa Magdi on 12/7/17.
//  Copyright © 2017 Shimaa Magdi. All rights reserved.
//

import UIKit

// MARK: Extension for Repositories List ViewController searchBar and searchController delegates
extension GRRepositoriesListViewController: UISearchControllerDelegate, UISearchBarDelegate {
    
    // MARK: - UISearchBarDelegate Methods
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        if searchController.searchBar.text != "" {
            searchText = searchController.searchBar.text
        }
    }
    
    // MARK: - UISearchControllerDelegate Methods
    func didDismissSearchController(_ searchController: UISearchController) {
        searchText = nil
    }
    
    
}

