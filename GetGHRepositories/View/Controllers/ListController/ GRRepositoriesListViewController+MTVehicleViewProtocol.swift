//
//   GRRepositoriesListViewController+MTVehicleViewProtocol.swift
//  GetGHRepositories
//
//  Created by Shimaa Magdi on 12/7/17.
//  Copyright © 2017 Shimaa Magdi. All rights reserved.
//

import Foundation

// MARK: Extension for Repositories List ViewController controller protocol
extension GRRepositoriesListViewController : GRRepositoryViewProtocol {
    func setRepositories(repositoriesList: [GRRepositoryViewModel]) {
        self.repositoriesList = repositoriesList
    }
    
    
    
    func startLoading() {
        //showProgressBar()
    }
    
    func finishLoading() {
       
        
        //hideProgressBar()
    }
    
    func handelError(error: Error) {
        handelError(error: error)
    }
    
}

