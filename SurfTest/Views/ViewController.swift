//
//  ViewController.swift
//  SurfTest
//
//  Created by Максим Ломакин on 06.02.2023.
//

import UIKit

class ViewController: UIViewController {
    
    let presenter         = Presenter()
    let collection        = CustomCollection(frame: .zero, collectionViewLayout: UICollectionViewLayout())
    let backgroundImgView = UIImageView()
    let mainScrollView    = UIScrollView()
    let mainVStack        = UIStackView()
    let bottomHStack      = UIStackView()
    let iOSButton         = CustomButton(title: "IOS")
    let androidButton     = CustomButton(title: "Android")
    let designButton      = CustomButton(title: "Design")
    let flutterButton     = CustomButton(title: "Flutter")
    let QAButton          = CustomButton(title: "QA")
    let PMButton          = CustomButton(title: "PM")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        collection.delegate = self
        collection.dataSource = self
        configBackground()
        configScrollView()
        configMainVStack()
        //configBottomStack()
        configBottomItems()
        configRectangle()
        configButtons()
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
    
    let bottomView: UIView = {
        let bottom = UIView()
        bottom.backgroundColor = .white
        bottom.translatesAutoresizingMaskIntoConstraints = false
        return bottom
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
    
    private func configBottomItems() {
        view.addSubview(bottomView)
        bottomView.addSubview(questionLabel)
        bottomView.addSubview(sendButton)
        sendButton.addTarget(self, action: #selector(sendButtonTapped), for: .touchUpInside)
        NSLayoutConstraint.activate([
            bottomView.bottomAnchor.constraint(equalTo: mainScrollView.bottomAnchor),
            bottomView.leadingAnchor.constraint(equalTo: mainScrollView.leadingAnchor),
            bottomView.trailingAnchor.constraint(equalTo: mainScrollView.trailingAnchor),
            bottomView.heightAnchor.constraint(equalToConstant: 118),
            
            sendButton.widthAnchor.constraint(equalToConstant: view.bounds.width * 0.58),
            sendButton.heightAnchor.constraint(equalToConstant: 60),
            sendButton.bottomAnchor.constraint(equalTo: bottomView.bottomAnchor, constant: -58),
            sendButton.trailingAnchor.constraint(equalTo: bottomView.trailingAnchor, constant: -20),
            
            questionLabel.leadingAnchor.constraint(equalTo: bottomView.leadingAnchor, constant: 20),
            questionLabel.centerYAnchor.constraint(equalTo: sendButton.centerYAnchor)
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
        roundedRectangle.addSubview(collection)
        roundedRectangle.addSubview(secondDescLabel)
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: roundedRectangle.topAnchor, constant: 24),
            titleLabel.leadingAnchor.constraint(equalTo: roundedRectangle.leadingAnchor, constant: 20),
            
            firstDescLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 12),
            firstDescLabel.leadingAnchor.constraint(equalTo: roundedRectangle.leadingAnchor, constant: 20),
            firstDescLabel.trailingAnchor.constraint(equalTo: roundedRectangle.trailingAnchor, constant: -20),
            
            collection.topAnchor.constraint(equalTo: firstDescLabel.bottomAnchor),
            collection.leadingAnchor.constraint(equalTo: roundedRectangle.leadingAnchor),
            collection.trailingAnchor.constraint(equalTo: roundedRectangle.trailingAnchor),
            collection.heightAnchor.constraint(equalToConstant: 68),
            
            secondDescLabel.topAnchor.constraint(equalTo: collection.bottomAnchor, constant: 20),
            secondDescLabel.leadingAnchor.constraint(equalTo: roundedRectangle.leadingAnchor, constant: 20),
            secondDescLabel.trailingAnchor.constraint(equalTo: roundedRectangle.trailingAnchor, constant: -20),
        ])
    }
    
    private func configButtons() {
        roundedRectangle.addSubview(iOSButton)
        roundedRectangle.addSubview(androidButton)
        roundedRectangle.addSubview(designButton)
        roundedRectangle.addSubview(flutterButton)
        roundedRectangle.addSubview(QAButton)
        roundedRectangle.addSubview(PMButton)
        iOSButton.addTarget(self, action: #selector(iOSButtonTapped), for: .touchUpInside)
        androidButton.addTarget(self, action: #selector(androidButtonTapped), for: .touchUpInside)
        designButton.addTarget(self, action: #selector(designButtonTapped), for: .touchUpInside)
        flutterButton.addTarget(self, action: #selector(flutterButtonTapped), for: .touchUpInside)
        QAButton.addTarget(self, action: #selector(QAButtonTapped), for: .touchUpInside)
        PMButton.addTarget(self, action: #selector(PMButtonTapped), for: .touchUpInside)
        NSLayoutConstraint.activate([
            iOSButton.topAnchor.constraint(equalTo: secondDescLabel.bottomAnchor, constant: 12),
            iOSButton.leadingAnchor.constraint(equalTo: roundedRectangle.leadingAnchor, constant: 20),
            iOSButton.widthAnchor.constraint(equalToConstant: 71),
            iOSButton.heightAnchor.constraint(equalToConstant: 44),
            
            androidButton.topAnchor.constraint(equalTo: secondDescLabel.bottomAnchor, constant: 12),
            androidButton.leadingAnchor.constraint(equalTo: iOSButton.trailingAnchor, constant: 12),
            androidButton.widthAnchor.constraint(equalToConstant: 96),
            androidButton.heightAnchor.constraint(equalToConstant: 44),
            
            designButton.topAnchor.constraint(equalTo: secondDescLabel.bottomAnchor, constant: 12),
            designButton.leadingAnchor.constraint(equalTo: androidButton.trailingAnchor, constant: 12),
            designButton.widthAnchor.constraint(equalToConstant: 91),
            designButton.heightAnchor.constraint(equalToConstant: 44),
            
            flutterButton.topAnchor.constraint(equalTo: androidButton.bottomAnchor, constant: 12),
            flutterButton.leadingAnchor.constraint(equalTo: QAButton.trailingAnchor, constant: 12),
            flutterButton.widthAnchor.constraint(equalToConstant: 87),
            flutterButton.heightAnchor.constraint(equalToConstant: 44),
            
            QAButton.topAnchor.constraint(equalTo: iOSButton.bottomAnchor, constant: 12),
            QAButton.leadingAnchor.constraint(equalTo: roundedRectangle.leadingAnchor, constant: 20),
            QAButton.widthAnchor.constraint(equalToConstant: 68),
            QAButton.heightAnchor.constraint(equalToConstant: 44),
            
            PMButton.topAnchor.constraint(equalTo: designButton.bottomAnchor, constant: 12),
            PMButton.leadingAnchor.constraint(equalTo: flutterButton.trailingAnchor, constant: 12),
            PMButton.widthAnchor.constraint(equalToConstant: 69),
            PMButton.heightAnchor.constraint(equalToConstant: 44),
        ])
    }
    
    @objc func iOSButtonTapped() {
        presenter.tappedButton(index: 0, sender: self)
    }
    
    @objc func androidButtonTapped() {
        presenter.tappedButton(index: 1, sender: self)
    }
    
    @objc func designButtonTapped() {
        presenter.tappedButton(index: 2, sender: self)
    }
    
    @objc func flutterButtonTapped() {
        presenter.tappedButton(index: 3, sender: self)
    }
    
    @objc func QAButtonTapped() {
        presenter.tappedButton(index: 5, sender: self)
    }
    
    @objc func PMButtonTapped() {
        presenter.tappedButton(index: 4, sender: self)
    }
    
    @objc func sendButtonTapped() {
        presenter.showAlert(sender: self, title: "Поздравляем!", message: "Ваша заявка успешно отправлена!")
    }
}

extension ViewController: UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return presenter.fetchData().count
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
        return CGSize(width: 20, height: 0)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForFooterInSection section: Int) -> CGSize {
        return CGSize(width: 20, height: 0)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return CGFloat(12)
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CustomCell
        cell.label.text = presenter.fetchData()[indexPath.row].name
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(
            width: presenter.fetchData()[indexPath.row].width,
            height: 44
        )
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let cell = collectionView.cellForItem(at: indexPath) as! CustomCell
        presenter.tappedButton(index: indexPath.row, sender: self)
        presenter.selectedItem(cell: cell)
    }
}
