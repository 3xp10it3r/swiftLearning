//
//  CardSelectionViewController.swift
//  CardWorkout-Programmatic
//
//  Created by Digvijay Gupta on 18/01/23.
//

import UIKit

class CardSelectionViewController: UIViewController {
    
    let cardImageView   = UIImageView()
    let stopButton      = CWButton(color: .systemRed, title: "Stop!", systemImageName: "stop.circle")
    let restartButton   = CWButton(color: .systemGreen, title: "Restart", systemImageName: "arrow.clockwise.circle")
    let rulesButton     = CWButton(color: .systemBlue, title: "Rules", systemImageName: "list.bullet")
    
    let cards:[UIImage] = CardDeck.AllValues
    var timer: Timer!

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        configureUI()
        startTimer()
    }
    
    func startTimer(){
        timer = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(showRandomCards), userInfo: nil, repeats: true)
    }
    
    @objc func showRandomCards(){
        cardImageView.image = cards.randomElement()
    }
    
    @objc func stopButtonTapped(){
        timer.invalidate()
    }
    
    @objc func restartButtonTapped(){
        timer.invalidate()
        startTimer()
    }
    
    func configureUI(){
        configureCardImageViewUI()
        configureStopButton()
        configureRestartButton()
        configureRulesButton()
    }
    
    func configureCardImageViewUI(){
        view.addSubview(cardImageView)
        cardImageView.translatesAutoresizingMaskIntoConstraints = false
        cardImageView.image = UIImage(named: "AS")
        
        NSLayoutConstraint.activate([
            cardImageView.widthAnchor.constraint(equalToConstant: 250),
            cardImageView.heightAnchor.constraint(equalToConstant: 350),
            cardImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            cardImageView.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -75)
        ])
    }
    
    func configureStopButton() {
        view.addSubview(stopButton)
        stopButton.addTarget(self, action: #selector(stopButtonTapped), for: .touchUpInside)
        
        NSLayoutConstraint.activate([
            stopButton.widthAnchor.constraint(equalToConstant: 270),
            stopButton.heightAnchor.constraint(equalToConstant: 50),
            stopButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            stopButton.topAnchor.constraint(equalTo: cardImageView.bottomAnchor, constant: 30)
        ])
    }
    
    func configureRestartButton(){
        view.addSubview(restartButton)
        restartButton.addTarget(self, action: #selector(restartButtonTapped), for: .touchUpInside)
        
        NSLayoutConstraint.activate([
            restartButton.widthAnchor.constraint(equalToConstant: 120),
            restartButton.heightAnchor.constraint(equalToConstant: 50),
            restartButton.leadingAnchor.constraint(equalTo: stopButton.leadingAnchor),
            restartButton.topAnchor.constraint(equalTo: stopButton.bottomAnchor, constant: 20 )
        ])
    }
  
    func configureRulesButton(){
        view.addSubview(rulesButton)
        rulesButton.addTarget(self, action: #selector(presentRulesVC), for: .touchUpInside)
        
        NSLayoutConstraint.activate([
            rulesButton.widthAnchor.constraint(equalToConstant: 120),
            rulesButton.heightAnchor.constraint(equalToConstant: 50),
            rulesButton.trailingAnchor.constraint(equalTo: stopButton.trailingAnchor),
            rulesButton.topAnchor.constraint(equalTo: stopButton.bottomAnchor, constant:20)
        ])
    }
    
    @objc func presentRulesVC() {
        present(RulesViewController(), animated: true)
    }
}
