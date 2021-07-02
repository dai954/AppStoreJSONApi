//
//  ReviewCell.swift
//  AppStoreJSONApi
//
//  Created by 石川大輔 on 2021/06/30.
//

import UIKit

class ReviewCell: UICollectionViewCell {
    
    let titleLabel = UILabel(text: "title", font: .boldSystemFont(ofSize: 18))
    
    let authorLabel = UILabel(text: "author", font: .systemFont(ofSize: 16))
    
    let starsLabel = UILabel(text: "star", font: .systemFont(ofSize: 14))
    
    let starsStackView: UIStackView = {
       
        var arrangedSubviews = [UIView]()
        
        (0..<5).forEach { _ in
            let imageView = UIImageView(image: #imageLiteral(resourceName: "star"))
            imageView.constrainWidth(constant: 24)
            imageView.constrainHeight(constant: 24)
            arrangedSubviews.append(imageView)
        }
        arrangedSubviews.append(UIView())
        
        let stackView = UIStackView(arrangedSubviews: arrangedSubviews)
        return stackView
    }()
    
    let bodyLabel = UILabel(text: "body ------------ body _____//// \n bodyNNNN", font: .systemFont(ofSize: 18), numberOfLines: 5)
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = #colorLiteral(red: 0.9409626126, green: 0.9405626059, blue: 0.9777715802, alpha: 1)
        layer.cornerRadius = 16
        
        let stackView = VerticalStackView(arrangedSubviews: [
            UIStackView(arrangedSubviews: [
                titleLabel, authorLabel
            ], customSpacing: 8),
            starsStackView,
            bodyLabel
        ], spacing: 12)
        
        titleLabel.setContentCompressionResistancePriority(.init(0), for: .horizontal)
        authorLabel.textAlignment = .right
        
        addSubview(stackView)
        
//        stackView.fillSuperview(padding: .init(top: 20 , left: 20, bottom: 20, right: 20))
        stackView.anchor(top: topAnchor, leading: leadingAnchor, bottom: nil, trailing: trailingAnchor, padding: .init(top: 20, left: 20, bottom: 0, right: 20))
        
    }
  
    required init?(coder: NSCoder) {
        fatalError()
    }
  
}
