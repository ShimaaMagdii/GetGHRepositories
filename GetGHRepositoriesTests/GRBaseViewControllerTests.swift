//
//  GRBaseViewControllerTests.swift
//  GetGHRepositoriesTests
//
//  Created by Shimaa Magdi on 12/7/17.
//  Copyright © 2017 Shimaa Magdi. All rights reserved.
//


import UIKit
import XCTest
@testable import GetGHRepositories

class GRBaseViewControllerTests: XCTestCase {
    
    //declaring the ViewController under test as an implicitly unwrapped optional
    var viewControllerUnderTest : GRBaseViewController!
    
    override func setUp() {
        super.setUp()
        
        viewControllerUnderTest = GRBaseViewController()
        //load view hierarchy
        if(viewControllerUnderTest != nil) {
            
            viewControllerUnderTest.loadView()
            viewControllerUnderTest.viewDidLoad()
        }
    }
    
    func testViewControllerShowBB() {
        
        XCTAssertNotNil(viewControllerUnderTest.showProgressBar(), "ViewController under test is not composed of a showProgressBar")
    }
    func testViewControllerHideBB() {
        
        XCTAssertNotNil(viewControllerUnderTest.hideProgressBar(), "ViewController under test is not composed of a showProgressBar")
    }
    
}

