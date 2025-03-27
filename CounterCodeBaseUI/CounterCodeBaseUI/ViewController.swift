//
//  ViewController.swift
//  CounterCodeBaseUI
//
//  Created by iOS study on 3/26/25.
//

import UIKit
import SnapKit


class ViewController: UIViewController {
    
    var number: Int = 0
    let countLabel = UILabel()
    let downButton = UIButton()
    let upButton = UIButton()

    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
    }
    
    private func configureUI() {
        view.backgroundColor = .black
        
        [countLabel, upButton, downButton].forEach { view.addSubview($0)}
        
        countLabel.text = "\(number)"
        countLabel.textColor = .white
        countLabel.font = UIFont.boldSystemFont(ofSize: 45)
        countLabel.textAlignment = .center
        
        countLabel.snp.makeConstraints {
            $0.width.equalTo(80)
            $0.center.equalToSuperview()
        }
        
        upButton.setTitle("증가", for: .normal)
        upButton.backgroundColor = .blue
        upButton.layer.cornerRadius = 8
        upButton.titleLabel?.textColor = .white
        
        upButton.snp.makeConstraints {
            $0.width.equalTo(80)
            $0.height.equalTo(30)
            $0.centerY.equalTo(countLabel.snp.centerY)
            $0.leading.equalTo(countLabel.snp.trailing).offset(32)
        }
        
        downButton.setTitle("감소", for: .normal)
        downButton.backgroundColor = .red
        downButton.layer.cornerRadius = 8
        downButton.titleLabel?.textColor = .white
        
        downButton.snp.makeConstraints {
            $0.width.equalTo(80)
            $0.height.equalTo(30)
            $0.centerY.equalTo(countLabel.snp.centerY)
            $0.trailing.equalTo(countLabel.snp.leading).offset(-32)
        }
    }


}

