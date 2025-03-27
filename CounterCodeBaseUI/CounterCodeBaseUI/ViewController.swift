//
//  ViewController.swift
//  CounterCodeBaseUI
//
//  Created by iOS study on 3/26/25.
//

import UIKit
import SnapKit


class ViewController: UIViewController {
    
    // ==== 카운트 변수와 텍스트, 버튼 선언 =====
    var number: Int = 0
    let countLabel = UILabel()
    let downButton = UIButton()
    let upButton = UIButton()
    let resetButton = UIButton()

    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
    }
    
    private func configureUI() {
        view.backgroundColor = .black
        
        // ===== 뷰에 버튼과 라벨 올리기 =====
        [countLabel, upButton, downButton, resetButton].forEach { view.addSubview($0)}
        
        // ===== 텍스트라벨 설정 =====
        countLabel.text = "\(number)"
        countLabel.textColor = .white
        countLabel.font = UIFont.boldSystemFont(ofSize: 45)
        countLabel.textAlignment = .center
        
        countLabel.snp.makeConstraints {
            $0.width.equalTo(80)
            $0.center.equalToSuperview()
        }
        
        // ===== 업카운트 버튼 설정 =====
        upButton.setTitle("증가", for: .normal)
        upButton.backgroundColor = .blue
        upButton.layer.cornerRadius = 8
        upButton.titleLabel?.textColor = .white
        upButton.addTarget(self, action: #selector(upButtonTapped), for: .touchDown)
        
        upButton.snp.makeConstraints {
            $0.width.equalTo(80)
            $0.height.equalTo(30)
            $0.centerY.equalTo(countLabel.snp.centerY)
            $0.leading.equalTo(countLabel.snp.trailing).offset(32)
        }
        
        // ===== 다운카운트 버튼 설정 =====
        downButton.setTitle("감소", for: .normal)
        downButton.backgroundColor = .red
        downButton.layer.cornerRadius = 8
        downButton.titleLabel?.textColor = .white
        downButton.addTarget(self, action: #selector(downButtonTapped), for: .touchDown)
        
        downButton.snp.makeConstraints {
            $0.width.equalTo(80)
            $0.height.equalTo(30)
            $0.centerY.equalTo(countLabel.snp.centerY)
            $0.trailing.equalTo(countLabel.snp.leading).offset(-32)
        }
        
        // ===== 초기화 버튼 설정 =====
        resetButton.setTitle("초기화", for: .normal)
        resetButton.backgroundColor = .gray
        resetButton.layer.cornerRadius = 8
        resetButton.titleLabel?.textColor = .white
        resetButton.addTarget(self, action: #selector(resetButtonTapped), for: .touchDown)
        
        resetButton.snp.makeConstraints {
            $0.width.equalTo(90)
            $0.centerX.equalToSuperview()
            $0.top.equalTo(countLabel.snp.bottom).offset(90)
        }
        
    }
    
    // ===== 업카운트 로직 =====
    @objc
    private func upButtonTapped() {
        self.number += 1
        countLabel.text = "\(number)"
    }
    
    // ===== 다운카운트 로직 =====
    @objc
    private func downButtonTapped() {
        self.number -= 1
        countLabel.text = "\(number)"
    }
    
    // ===== 카운트 초기화 로직 =====
    @objc
    private func resetButtonTapped() {
        self.number = 0
        countLabel.text = "\(number)"
    }
    
}

