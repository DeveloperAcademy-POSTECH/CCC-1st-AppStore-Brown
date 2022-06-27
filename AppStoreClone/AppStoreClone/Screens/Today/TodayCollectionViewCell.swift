//
//  TodayCollectionViewCell.swift
//  AppStoreClone
//
//  Created by 이지수 on 2022/06/25.
//

import UIKit

import SnapKit

final class TodayCollectionViewCell: UICollectionViewCell {
    
    private lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.text = "콧구멍에 바람 쐬러"
        label.font = .systemFont(ofSize: 24, weight: .bold)
        label.textColor = .white
        
        return label
    }()
    
    private lazy var subtitleLabel: UILabel = {
        let label = UILabel()
        label.text = "APP CULTURE"
        label.font = .systemFont(ofSize: 14, weight: .bold)
        label.textColor = .white
        
        return label
    }()
    
    private lazy var descriptionLabel: UILabel = {
        let label = UILabel()
        label.text = "원데이 클래스부터 여행까지! 국내에서 해외까지!"
        label.font = .systemFont(ofSize: 14, weight: .bold)
        label.textColor = .white
        
        return label
    }()
    
    private lazy var imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleToFill
        imageView.clipsToBounds = true
        imageView.layer.cornerRadius = 12.0
        imageView.backgroundColor = .red
        
        return imageView
    }()
    
    func setup() {
        setupSubViews()
    }
}

private extension TodayCollectionViewCell {
    func setupSubViews() {
        [titleLabel, subtitleLabel, descriptionLabel, imageView].forEach { addSubview($0) }
        subtitleLabel.snp.makeConstraints {
            $0.leading.equalToSuperview().inset(24.0)
            $0.trailing.equalToSuperview().inset(24.0)
            $0.top.equalToSuperview().inset(24.0)
        }
        
        titleLabel.snp.makeConstraints {
            $0.leading.equalTo(subtitleLabel)
            $0.trailing.equalTo(subtitleLabel)
            $0.top.equalTo(subtitleLabel.snp.bottom).offset(4)
        }
        
        descriptionLabel.snp.makeConstraints {
            $0.leading.equalTo(subtitleLabel)
            $0.trailing.equalTo(subtitleLabel)
            $0.bottom.equalToSuperview().inset(24.0)
        }
        
        imageView.snp.makeConstraints {
            $0.edges.equalToSuperview()
        }
    }
}
