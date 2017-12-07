//
//  GRRepositoryViewCell.swift
//  GetGHRepositories
//
//  Created by Shimaa Magdi on 12/6/17.
//  Copyright © 2017 Shimaa Magdi. All rights reserved.
//

import UIKit
/**
 *  GRRepositoryViewCell table view cell displays the repository details.
 */
class GRRepositoryViewCell : UITableViewCell {
    
    // MARK: - Outlets
    @IBOutlet weak var containerView: GRCustomView!
    @IBOutlet weak var ownerAvatar: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var descLabel: UILabel!
    @IBOutlet weak var forksLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        containerView.addShadow()
    }
    
    /**
     Customize Cell With Model displays details for each repository model.
     - Parameter repository: GRRepositoryViewModel contains repository details.
     */
    func customizeCellWithModel(_ repository: GRRepositoryViewModel?) {
        if let repositoryModel = repository {
            nameLabel.text = repositoryModel.name
            descLabel.text = repositoryModel.desc
            if let forks =  repositoryModel.forks {
                 forksLabel.text = "\(forks)"
            }
           
            //  ownerAvatar.image = UIImage(
            
        }
    }
    
    
}





