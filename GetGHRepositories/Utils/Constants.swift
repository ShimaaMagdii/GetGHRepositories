//
//  Constants.swift
//  GetGHRepositories
//
//  Created by Shimaa Magdi on 12/6/17.
//  Copyright © 2017 Shimaa Magdi. All rights reserved.
//

import Foundation
import UIKit

struct UITableViewConstants {
    static let estimatedRowHeight          :CGFloat = 110.0
}

struct UITableViewCellIdentifier {
    static let gettyCellIdentifier          :String  = "repositoryCell"
}

struct Network {
    static let baseUrl                      :String = "https://api.github.com/"
    static let getRepositories              :String = "search/repositories?q=%@"
}

struct StoryboardIdentifier {
    static let mainStoryboardIdentifier     :String = "Main"
    static let repositoriesListVCIdentifier :String = "GRRepositoriesListViewController"
    
}

