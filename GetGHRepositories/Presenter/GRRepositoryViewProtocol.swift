
//
//  GRRepositoryViewProtocol.swift
//  GetGHRepositories
//
//  Created by Shimaa Magdi on 12/6/17.
//  Copyright © 2017 Shimaa Magdi. All rights reserved.
//

import Foundation

protocol GRRepositoryViewProtocol: NSObjectProtocol {
    func startLoading()
    func finishLoading()
    func setRepositories(repositoriesList: [GRRepositoryViewModel])
    func handelError(error:Error)
}

