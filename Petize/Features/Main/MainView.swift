//
//  MainView.swift
//  Petize
//
//  Created by Felix Liman on 02/02/21.
//

import UIKit
import SnapKit

class MainView: UIView {
    let title = UILabel()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(title)
        
        setupConstraints()
        setupViews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupViews() {
        title.text = "This is Petize"
    }
    
    private func setupConstraints() {
        title.snp.makeConstraints { (make) in
            make.center.equalTo(self)
        }
    }
    
}
