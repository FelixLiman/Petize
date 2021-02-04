//
//  PetCollectionCell.swift
//  Petize
//
//  Created by Felix Liman on 03/02/21.
//

import UIKit

final class PetCollectionCell: UICollectionViewCell {
    
    let coverImg = UIImageView()
    let titleLbl = UILabel()
    let priceLbl = UILabel()
    let captionLbl = UILabel()
    
//    var model: ListingMainData? {
//        didSet {
//            if let model = model {
//                coverImg.image = model.image
//                titleLbl.text = model.title
//                priceLbl.text = model.price
//                captionLbl.text = model.caption
//            }
//        }
//    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupSubviews(views: [contentView])
        contentView.setupSubviews(views: [coverImg, titleLbl, priceLbl, captionLbl])
        
        setupConstraints()
        setupViews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupViews() {
        contentView.style {
            $0.backgroundColor = #colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1)
            $0.setLayer(cornerRadius: 8, clipToBounds: true)
        }
        coverImg.style {
            $0.contentMode = .scaleAspectFill
        }
        titleLbl.numberOfLines = 0
        priceLbl.numberOfLines = 0
        captionLbl.numberOfLines = 0
    }
    
    private func setupConstraints() {
        coverImg.snp.makeConstraints { (make) in
            make.top.leading.trailing.equalTo(contentView)
        }
        
        titleLbl.snp.makeConstraints { (make) in
            make.leading.equalTo(contentView).offset(12)
            make.trailing.equalTo(contentView).offset(-12)
        }
        
        priceLbl.snp.makeConstraints { (make) in
            make.top.equalTo(titleLbl.snp.bottom).offset(8)
            make.leading.trailing.equalTo(titleLbl)
        }
        
        captionLbl.snp.makeConstraints { (make) in
            make.top.equalTo(priceLbl.snp.bottom).offset(8)
            make.leading.trailing.equalTo(titleLbl)
            make.bottom.equalTo(contentView).offset(-16)
        }
        
        setNeedsLayout()
        layoutIfNeeded()
    }
}
