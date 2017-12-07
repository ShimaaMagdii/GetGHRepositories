//
//  GRRepositoryService.swift
//  GetGHRepositories
//
//  Created by Shimaa Magdi on 12/6/17.
//  Copyright © 2017 Shimaa Magdi. All rights reserved.
//

import Foundation
import ObjectMapper

typealias ErrorClosure      = (Error) -> Void
typealias ViewModelClosure  = ([GRRepositoryViewModel]?) -> Void

class GRRepositoryService  {
    
    /**
     Get repository data from API.
     - Parameter searchPhrase: search text if found.
     - Parameter success: response success block with ViewModelClosure.
     - Parameter failure: response failure block with Error.
     */
    
    func getDataFromApiFor (searchPhrase: String, success :@escaping ViewModelClosure , failure: @escaping ErrorClosure) {
        getRepositoriesData(searchPhrase: searchPhrase, success: success, failure: failure)
    }
    
    private func getRepositoriesData (searchPhrase: String, success :@escaping ViewModelClosure , failure: @escaping ErrorClosure){
        
        let path = String(format:Network.getRepositories, searchPhrase)
        
        GRNetworkManager.performRequestWithPath(baseUrl: Network.baseUrl, path: path, requestMethod: .get, requestParam: nil, headersParam: nil, success: { (reponse) in
            
            let  repositoriesData:  GRRepositoriesListModel? = Mapper<GRRepositoriesListModel>().map(JSONObject: reponse)
            
            let repositoryList: [GRRepositoryViewModel]? = GRMappingManager.mapRepositoryListToRepositoryViewModel(repositoryListData: repositoriesData)
            
            success(repositoryList)
            
        }, failure: failure)
    }
    
}

