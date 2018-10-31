//
//  DummyCell.swift
//  CollectionViews
//
//  Created by Badarinath Venkatnarayansetty on 10/31/18.
//  Copyright © 2018 Badarinath Venkatnarayansetty. All rights reserved.
//

import Foundation
import UIKit

class DummyCell: UICollectionViewCell {
    
    override init(frame: CGRect) {
        super.init(frame: .zero)
        setupViews()
    }
    
    let productImage : UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.backgroundColor = .blue
        imageView.layoutIfNeeded()
        return imageView
    }()
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupViews() {
        self.backgroundColor = .orange
        
        
        [productImage].forEach {
            addSubview($0)
        }
        
        NSLayoutConstraint.activate([
            productImage.topAnchor.constraint(equalTo: topAnchor, constant: 16),
            productImage.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            productImage.widthAnchor.constraint(equalToConstant: 100),
            productImage.heightAnchor.constraint(equalTo: productImage.widthAnchor)
        ])
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
    }
}
