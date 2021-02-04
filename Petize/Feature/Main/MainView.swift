//
//  MainView.swift
//  Petize
//
//  Created by Felix Liman on 02/02/21.
//

import UIKit
import SnapKit

class MainView: UIView {
    let collection = UICollectionView(frame: CGRect(), collectionViewLayout: UICollectionViewLayout())
    let title = UILabel()
    let refreshControl = UIRefreshControl()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupSubviews(views: [title, collection])
        
        setupConstraints()
        setupViews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupViews() {
        title.style {
            $0.text = "Kenfolg"
            $0.font = UIFont.systemFont(ofSize: Margin.heading3)
        }
        
        collection.style {
            $0.register(PetCollectionCell.self, forCellWithReuseIdentifier: "cell")
            let layout = DynamicCollectionLayout()
            layout.numberOfColumns = Int.random(in: 2...4)
            layout.cellPadding = 8
//            layout.cellInterItemSpacing = 16
//            layout.cellLineSpacing = 16
            $0.setCollectionViewLayout(layout, animated: true)
            $0.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
            $0.contentInset = .init(top: 8, left: 8, bottom: 0, right: 8)
            $0.refreshControl = refreshControl
        }
        
        refreshControl.style {
            $0.tintColor = .random()
        }
    }
    
    private func setupConstraints() {
        title.snp.makeConstraints { (make) in
            make.top.equalTo(safeAreaLayoutGuide)
            make.centerX.equalTo(self)
        }
        
        collection.snp.makeConstraints { (make) in
            make.top.equalTo(title.snp.bottom).offset(12)
            make.leading.equalTo(safeAreaLayoutGuide)
            make.trailing.equalTo(safeAreaLayoutGuide)
            make.bottom.equalTo(self)
        }
    }
    
}
