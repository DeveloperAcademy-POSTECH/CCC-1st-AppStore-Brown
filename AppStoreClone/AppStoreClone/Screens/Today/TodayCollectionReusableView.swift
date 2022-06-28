//
//  TodayCollectionReusableView.swift
//  AppStoreClone
//
//  Created by 이지수 on 2022/06/27.
//

import UIKit

import SnapKit

class TodayCollectionReusableView: UICollectionReusableView {
    private let dateLabel: UILabel = {
       let label = UILabel()
        label.text = "MONDAY 27 JUNE"
        label.font = .systemFont(ofSize: 14.0, weight: .semibold)
        label.textColor = .gray
        return label
    }()
    
    private let todayLabel: UILabel = {
       let label = UILabel()
        label.text = "Today"
        label.font = .systemFont(ofSize: 36.0, weight: .semibold)
        label.textColor = .black
        return label
    }()
    
    func setupViews() {
        [dateLabel, todayLabel].forEach { addSubview($0) }
        dateLabel.snp.makeConstraints {
            $0.leading.equalToSuperview().inset(16)
            $0.trailing.equalToSuperview()
            $0.top.equalToSuperview().inset(32)
        }
        todayLabel.snp.makeConstraints {
            $0.leading.equalTo(dateLabel)
            $0.top.equalTo(dateLabel.snp.bottom).offset(8)
        }
    }
}
