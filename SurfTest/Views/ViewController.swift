//
//  ViewController.swift
//  SurfTest
//
//  Created by Максим Ломакин on 06.02.2023.
//

import UIKit

class ViewController: UIViewController {
    
    let backgroundImgView   = UIImageView()
    let mainScrollView      = UIScrollView()
    let firstScrollView     = UIScrollView()
    let secondScrollView    = UIScrollView()
    let mainVStack          = UIStackView()
    let firstHStack         = UIStackView()
    let secondHStack        = UIStackView()
    let bottomHStack        = UIStackView()
    let firstIOSButton      = STButton(title: "IOS")
    let firstAndroidButton  = STButton(title: "Android")
    let firstDesignButton   = STButton(title: "Design")
    let firstFlutterButton  = STButton(title: "Flutter")
    let firstQAButton       = STButton(title: "QA")
    let firstPMButton       = STButton(title: "PM")
    let secondIOSButton     = STButton(title: "IOS")
    let secondAndroidButton = STButton(title: "Android")
    let secondDesignButton  = STButton(title: "Design")
    let secondFlutterButton = STButton(title: "Flutter")
    let secondQAButton      = STButton(title: "QA")
    let secondPMButton      = STButton(title: "PM")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .black
        configBackground()
        configScrollView()
        configMainVStack()
        configBottomStack()
        configBottomItems()
        configRectangle()
    }
    
    let titleLabel: UILabel = {
        let label = UILabel()
        label.text = "Стажировка в Surf"
        label.textColor = UIColor(named: "buttonColor")
        label.font = .systemFont(ofSize: 24, weight: .bold)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let firstDescLabel: UILabel = {
        let label = UILabel()
        label.text = "Работай над реальными задачами под руководством опытного наставника и получи возможность стать частью команды мечты. "
        label.numberOfLines = 0
        label.textColor = UIColor(named: "textColor")
        label.font = .systemFont(ofSize: 14, weight: .regular)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let secondDescLabel: UILabel = {
        let label = UILabel()
        label.text = "Получай стипендию, выстраивай удобный график, работай на современном железе."
        label.numberOfLines = 0
        label.textColor = UIColor(named: "textColor")
        label.font = .systemFont(ofSize: 14, weight: .regular)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let questionLabel: UILabel = {
        let label = UILabel()
        label.text = "Хочешь к нам?"
        label.textColor = UIColor(named: "textColor")
        label.font = .systemFont(ofSize: 14, weight: .regular)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let sendButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Отправить заявку", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 16)
        button.layer.cornerRadius = 30
        button.backgroundColor = UIColor(named: "buttonColor")
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    let roundedRectangle: UIView = {
        let rectangle = UIView()
        rectangle.backgroundColor = .white
        rectangle.layer.cornerRadius = 40
        rectangle.translatesAutoresizingMaskIntoConstraints = false
        return rectangle
    }()
    
    private func configBackground() {
        view.addSubview(backgroundImgView)
        backgroundImgView.image = UIImage(named: "fon1")
        backgroundImgView.contentMode = .scaleAspectFill
        backgroundImgView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            backgroundImgView.topAnchor.constraint(equalTo: view.topAnchor),
            backgroundImgView.leftAnchor.constraint(equalTo: view.leftAnchor),
            backgroundImgView.rightAnchor.constraint(equalTo: view.rightAnchor)
        ])
    }
    
    private func configBottomStack() {
        view.addSubview(bottomHStack)
        bottomHStack.spacing = 24
        bottomHStack.axis = .horizontal
        bottomHStack.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            bottomHStack.bottomAnchor.constraint(equalTo: mainScrollView.bottomAnchor, constant: -50),
            bottomHStack.leadingAnchor.constraint(equalTo: mainScrollView.leadingAnchor, constant: 20),
            bottomHStack.trailingAnchor.constraint(equalTo: mainScrollView.trailingAnchor, constant: -20)
        ])
    }
    
    private func configBottomItems() {
        bottomHStack.addArrangedSubview(questionLabel)
        bottomHStack.addArrangedSubview(sendButton)
        NSLayoutConstraint.activate([
            sendButton.widthAnchor.constraint(equalToConstant: view.bounds.width * 0.58),
            sendButton.heightAnchor.constraint(equalToConstant: 60)
        ])
    }
    
    private func configScrollView() {
        view.addSubview(mainScrollView)
        mainScrollView.addSubview(mainVStack)
        mainScrollView.showsVerticalScrollIndicator = false
        mainVStack.axis = .vertical
        mainScrollView.translatesAutoresizingMaskIntoConstraints = false
        mainVStack.translatesAutoresizingMaskIntoConstraints     = false
        NSLayoutConstraint.activate([
            mainScrollView.topAnchor.constraint(equalTo: view.topAnchor),
            mainScrollView.leftAnchor.constraint(equalTo: view.leftAnchor),
            mainScrollView.rightAnchor.constraint(equalTo: view.rightAnchor),
            mainScrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            
            mainVStack.topAnchor.constraint(equalTo: mainScrollView.topAnchor, constant: view.bounds.height * 0.5),
            mainVStack.leftAnchor.constraint(equalTo: mainScrollView.leftAnchor),
            mainVStack.rightAnchor.constraint(equalTo: mainScrollView.rightAnchor),
            mainVStack.bottomAnchor.constraint(equalTo: mainScrollView.bottomAnchor)
        ])
    }
    
    private func configMainVStack() {
        mainVStack.addArrangedSubview(roundedRectangle)
        NSLayoutConstraint.activate([
            roundedRectangle.widthAnchor.constraint(equalTo: view.widthAnchor),
            roundedRectangle.heightAnchor.constraint(equalToConstant: view.bounds.height * 0.9)
        ])
    }
    
    private func configRectangle() {
        roundedRectangle.addSubview(titleLabel)
        roundedRectangle.addSubview(firstDescLabel)
        roundedRectangle.addSubview(firstIOSButton)
        roundedRectangle.addSubview(secondDescLabel)
        roundedRectangle.addSubview(secondAndroidButton)
        roundedRectangle.addSubview(secondPMButton)
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: roundedRectangle.topAnchor, constant: 24),
            titleLabel.leadingAnchor.constraint(equalTo: roundedRectangle.leadingAnchor, constant: 20),
            
            firstDescLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 12),
            firstDescLabel.leadingAnchor.constraint(equalTo: roundedRectangle.leadingAnchor, constant: 20),
            firstDescLabel.trailingAnchor.constraint(equalTo: roundedRectangle.trailingAnchor, constant: -20),
            
            firstIOSButton.topAnchor.constraint(equalTo: firstDescLabel.bottomAnchor, constant: 12),
            firstIOSButton.leadingAnchor.constraint(equalTo: roundedRectangle.leadingAnchor, constant: 20),
            
            secondDescLabel.topAnchor.constraint(equalTo: firstIOSButton.bottomAnchor, constant: 24),
            secondDescLabel.leadingAnchor.constraint(equalTo: roundedRectangle.leadingAnchor, constant: 20),
            secondDescLabel.trailingAnchor.constraint(equalTo: roundedRectangle.trailingAnchor, constant: -20),
            
            secondAndroidButton.topAnchor.constraint(equalTo: secondDescLabel.bottomAnchor, constant: 12),
            secondAndroidButton.leadingAnchor.constraint(equalTo: roundedRectangle.leadingAnchor, constant: 20),
            
            secondPMButton.topAnchor.constraint(equalTo: secondAndroidButton.bottomAnchor, constant: 12),
            secondPMButton.leadingAnchor.constraint(equalTo: roundedRectangle.leadingAnchor, constant: 20)
        ])
    }

}
