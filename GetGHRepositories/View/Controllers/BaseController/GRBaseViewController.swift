//
//  GRBaseViewController.swift
//  GetGHRepositories
//
//  Created by Shimaa Magdi on 12/6/17.
//  Copyright © 2017 Shimaa Magdi. All rights reserved.
//

import UIKit
import MBProgressHUD

class GRBaseViewController: UIViewController {
    
    // MARK: - Utils
    func handleError(error: Error) {
        showMessage(message: error.localizedDescription)
    }
    
    func showMessageWithModel(model: GRRepositoryViewModel?) {

    }
    
    private func showMessage(message: String) {
        let alertController = UIAlertController.init(title: nil, message: message, preferredStyle: .alert)
        alertController.addAction(UIAlertAction.init(title: "OK", style: .cancel, handler: nil))
        present(alertController, animated: true, completion: nil)
    }
}
