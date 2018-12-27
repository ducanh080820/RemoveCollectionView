//
//  CollectionViewCell.swift
//  RemoveCollectionView
//
//  Created by Duc Anh on 12/3/18.
//  Copyright © 2018 Duc Anh. All rights reserved.
//

import UIKit

protocol CollectionViewCellDelegate: class {
    func removeAtItem(at indexPath: IndexPath)
}

class CollectionViewCell: UICollectionViewCell {
    var indexPath: IndexPath!
    weak var delegate: CollectionViewCellDelegate?
    
    @IBOutlet weak var myImage: UIImageView!
    
    
    @IBAction func removeImage(_ sender: UIButton) {
        if indexPath != nil {
            delegate?.removeAtItem(at: indexPath)
        }
    }
}
