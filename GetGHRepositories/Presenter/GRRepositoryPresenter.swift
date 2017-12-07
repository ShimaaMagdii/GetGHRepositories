//
//  GRRepositoryPresenter.swift
//  GetGHRepositories
//
//  Created by Shimaa Magdi on 12/6/17.
//  Copyright © 2017 Shimaa Magdi. All rights reserved.
//

import Foundation
/**
 *  GRRepositoryPresenter class which responsable for getting models data and display it to the view.
 */
class GRRepositoryPresenter: NSObject {
    // MARK: - Properties
    private let repositoryService = GRRepositoryService()
    weak private var repositoryView : GRRepositoryViewProtocol?
    
    /**
     Attach current displayed view controller which confirm GRRepositoryViewProtocol.
     */
    func attachView(view: GRRepositoryViewProtocol){
        repositoryView = view
    }
    
    /**
     DetachView view controller when became disappeared.
     */
    func detachView() {
        repositoryView = nil
    }
    
    /**
     Get repositories data from service api and call VC delegte to update its views
     */
     func loadDataWithSearchText(searchText: String) {
        self.repositoryView?.startLoading()
        repositoryService.getDataFromApiFor(searchPhrase: searchText, success: {[weak self] (modelArray) in
            guard let strongSelf = self else { return }
            self?.repositoryView?.finishLoading()
            strongSelf.repositoryView?.setRepositories(repositoriesList: modelArray ?? [])
        }) {[weak self] (error) in
            guard let strongSelf = self else { return }
            self?.repositoryView?.finishLoading()
            strongSelf.repositoryView?.handelError(error: error)
        }
        
        
    }
    

    
}
