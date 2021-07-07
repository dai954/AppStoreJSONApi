//
//  TodayMultipleAppCell.swift
//  AppStoreJSONApi
//
//  Created by 石川大輔 on 2021/07/03.
//

import UIKit

class TodayMultipleAppCell: BaseTodayCell {
    
    override var todayItem: TodayItem! {
        didSet {
            self.categoryLabel.text = todayItem?.category
            self.titleLabel.text = todayItem?.title
            
            multipleAppController.apps = todayItem.apps
            multipleAppController.collectionView.reloadData()
        }
    }
    
    let categoryLabel = UILabel(text: "LIFE HACK", font: .boldSystemFont(ofSize: 20))
    
    let titleLabel = UILabel(text: "Utilizing your Time", font: .boldSystemFont(ofSize: 32), numberOfLines: 2)
    
    let multipleAppController = TodayMultipleAppsController(mode: .small)
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        backgroundColor = .white
        layer.cornerRadius = 16
        
        let stackView = VerticalStackView(arrangedSubviews: [
            categoryLabel,
            titleLabel,
            multipleAppController.view
        ], spacing: 12)
        addSubview(stackView)
        stackView.fillSuperview(padding: .init(top: 24, left: 24, bottom: 24, right: 24))
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
}
