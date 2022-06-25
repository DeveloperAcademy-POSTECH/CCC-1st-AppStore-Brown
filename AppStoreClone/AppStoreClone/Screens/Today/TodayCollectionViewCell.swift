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
        label.font = .systemFont(ofSize: 24, weight: .bold)
        label.textColor = .white
        
        return label
    }()
    
    private lazy var subtitleLabel: UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 14, weight: .bold)
        label.textColor = .white
        
        return label
    }()
    
    private lazy var descriptionLabel: UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 14, weight: .bold)
        label.textColor = .white
        
        return label
    }()
    
    private lazy var imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleToFill
        imageView.clipsToBounds = true
        imageView.layer.cornerRadius = 12.0
        imageView.backgroundColor = .gray
        
        return imageView
    }()
    
    func setup() {
        setLayout()
        
        subtitleLabel.text = "닥터스트레인지"
        titleLabel.text = "메인제목이지롱"
        descriptionLabel.text = "이렇게 아래에 들어가는 글이에요"
    }
}

private extension TodayCollectionViewCell {
    func setLayout() {
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
