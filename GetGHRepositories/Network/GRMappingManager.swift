//
//  GRMappingManager.swift
//  GetGHRepositories
//
//  Created by Shimaa Magdi on 12/6/17.
//  Copyright © 2017 Shimaa Magdi. All rights reserved.
//

import Foundation

class GRMappingManager {
    
    
    /**
     Map repositoryModel to RepositoryViewModel.
     
     - Parameter GRRepositoryModel: repositoryModel to be mapped.
     - Returns : mapped GRRepositoryViewModel array.
     .
     */
    class func mapRepositoryListToRepositoryViewModel(repositoryListData: GRRepositoriesListModel?) -> [GRRepositoryViewModel] {
        
        var repositoriesList = [GRRepositoryViewModel]()
        if let repositories = repositoryListData?.repositoriesList {
            for repository in repositories  {
                let newRepositoryModel =  GRRepositoryViewModel(name: repository.name, desc: repository.desc, avatarUrl: repository.owner?.avatarUrl, forks: repository.forksCount)
                repositoriesList.append(newRepositoryModel)
            }
            
        }
        return repositoriesList
        
    }
    
    
    
}
