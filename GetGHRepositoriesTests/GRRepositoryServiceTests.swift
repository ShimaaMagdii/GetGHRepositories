//
//  GRRepositoryServiceTests.swift
//  GetGHRepositoriesTests
//
//  Created by Shimaa Magdi on 12/7/17.
//  Copyright © 2017 Shimaa Magdi. All rights reserved.
//

import XCTest

@testable import GetGHRepositories

class GRRepositoryServiceTests: XCTestCase {
    
    
    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testGetDataFromApiFor() {
        let expectations: XCTestExpectation = expectation(description: "Testing repository ServiceTests API")
        
        let repositoryService: GRRepositoryService = GRRepositoryService()
        repositoryService.getDataFromApiFor(searchPhrase: "Test", success: {
            (response) in
            let repositoryList: [GRRepositoryViewModel]? = response
            
            XCTAssertNotNil(repositoryList)
            XCTAssertNotNil(repositoryList?.first?.name)
            expectations.fulfill()
        }) { (error) in
            expectations.fulfill()
        }
        
        waitForExpectations(timeout: 120) { error in
            if let error = error {
                XCTFail("waitForExpectationsTimeout error: \(error)")
            }
        }
        
    }
    
    func testPerformanceExample() {
        self.measure {[weak self] in
            self?.testGetDataFromApiFor()
        }
    }
    
    
    
}

