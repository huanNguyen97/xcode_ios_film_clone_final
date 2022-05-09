//
//  TitleCollectionViewCell.swift
//  Film Clone
//
//  Created by BSP Macbook on 5/4/22.
//

import UIKit
import SDWebImage


class TitleCollectionViewCell: UICollectionViewCell {
    // Declare initialize variable
    static let indetifier = "TitleCollectionViewCell"
    
    private let posterImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    // End declaring
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        contentView.addSubview(posterImageView)
    }
    
    required init(coder: NSCoder) {
        fatalError()
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        posterImageView.frame = contentView.bounds
    }
    
    public func configure(with model: String) {
        guard let url = URL(string: "https://image.tmdb.org/t/p/w500\(model)") else { return
        }
        
        print(url)
        
        posterImageView.sd_setImage(with: url, completed: nil)
    }
}
