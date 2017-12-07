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
    private lazy var repositoryService = GRRepositoryService()
    weak private var delegate : GRRepositoryViewProtocol?
    
    
    /**
     init with current displayed view controller which confirm GRRepositoryViewProtocol.
     */
    init(_ delegate: GRRepositoryViewProtocol) {
        
        self.delegate = delegate
        super.init()
    }
    
    /**
     DetachView view controller when became disappeared.
     */
    func detachView() {
        delegate = nil
    }
    
    /**
     Get repositories data from service api and call VC delegte to update its views
     */
    func loadDataWithSearchText(searchText: String) {
        self.delegate?.startLoading()
        repositoryService.getDataFromApiFor(searchPhrase: searchText, success: {[weak self] (modelArray) in
            guard let strongSelf = self else { return }
            self?.delegate?.finishLoading()
            strongSelf.delegate?.setRepositories(repositoriesList: modelArray ?? [])
        }) {[weak self] (error) in
            guard let strongSelf = self else { return }
            self?.delegate?.finishLoading()
            strongSelf.delegate?.handelError(error: error)
        }
        
        
    }
    
    
    
}
