//
//  SearchResultCell.swift
//  AppStoreJSONApi
//
//  Created by 石川大輔 on 2021/06/10.
//

import UIKit

class SearchResultCell: UICollectionViewCell {
    

    let appIconImageView: UIImageView = {
        let iv = UIImageView()
        iv.backgroundColor = .red
        iv.widthAnchor.constraint(equalToConstant: 64).isActive = true
        iv.heightAnchor.constraint(equalToConstant: 64).isActive = true
        iv.layer.cornerRadius = 12
        return iv
    }()
    
    let nameLabel: UILabel = {
        let label = UILabel()
        label.text = "APP NAME"
        return label
    }()
    
    let categoryLabel: UILabel = {
        let label = UILabel()
        label.text = "Photos & Video"
        return label
    }()
    
    let ratingsLabel: UILabel = {
        let label = UILabel()
        label.text = "9.26M"
        return label
    }()
    
    let getButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("GET", for: .normal)
        button.setTitleColor(.blue, for: .normal)
        button.titleLabel?.font = .boldSystemFont(ofSize: 14)
        button.backgroundColor = UIColor(white: 0.95, alpha: 1)
        button.widthAnchor.constraint(equalToConstant: 80).isActive = true
        button.heightAnchor.constraint(equalToConstant: 32).isActive = true
        button.layer.cornerRadius = 16
        return button
    }()
    
    lazy var screenshot1ImageView = self.createScreenshotImageView()
    lazy var screenshot2ImageView = self.createScreenshotImageView()
    lazy var screenshot3ImageView = self.createScreenshotImageView()
    
    func createScreenshotImageView() -> UIImageView {
        let imageView = UIImageView()
        imageView.backgroundColor = .blue
        return imageView
    }
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
//        let labelsStackView = UIStackView(arrangedSubviews: [
//            nameLabel, categoryLabel, ratingsLabel
//        ])
//        labelsStackView.axis = .vertical

        let infoTopStackView = UIStackView(arrangedSubviews: [
            appIconImageView,
            VerticalStackView(arrangedSubviews: [
                nameLabel, categoryLabel, ratingsLabel
            ]),
            getButton
        ])
        infoTopStackView.spacing = 12
        infoTopStackView.alignment = .center
        
        let screenShotStackView = UIStackView(arrangedSubviews: [
            screenshot1ImageView, screenshot2ImageView, screenshot3ImageView
        ])
        screenShotStackView.spacing = 12
        screenShotStackView.distribution = .fillEqually
        
//        let overallStackView = UIStackView(arrangedSubviews: [
//            infoTopStackView ,screenShotStackView
//        ])
//        overallStackView.axis = .vertical
//        overallStackView.spacing = 16
        
        let overallStackView = VerticalStackView(arrangedSubviews: [
            infoTopStackView, screenShotStackView
        ], spacing: 16)
        
        addSubview(overallStackView)
        
        overallStackView.anchor(top: self.topAnchor, leading: self.leadingAnchor, bottom: self.bottomAnchor, trailing: self.trailingAnchor, padding: .init(top: 16, left: 16, bottom: 16, right: 16))
        
//        stackView.translatesAutoresizingMaskIntoConstraints = false
//        stackView.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
//        stackView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16).isActive = true
//        stackView.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
//        stackView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16).isActive = true
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
}
