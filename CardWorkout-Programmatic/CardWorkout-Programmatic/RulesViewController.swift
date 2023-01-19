//
//  RulesViewController.swift
//  CardWorkout-Programmatic
//
//  Created by Digvijay Gupta on 19/01/23.
//

import UIKit

class RulesViewController: UIViewController {
    
    let titleLabel      = UILabel()
    let rulesLabel      = UILabel()
    let exerciseLabel   = UILabel()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        configureUI()
    }
    
    func configureUI(){
        configureTitleLabel()
        configureRulesLabel()
        configureExerciseLabel()
    }
    
    
    func configureTitleLabel(){
        view.addSubview(titleLabel)
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        titleLabel.text          = "Rules"
        titleLabel.font          = .systemFont(ofSize: 40, weight: .bold)
        titleLabel.textAlignment = .center
        
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 60),
            titleLabel.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor,constant: 30),
            titleLabel.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor,constant:-30)
            
        ])
    }
    
    func configureRulesLabel(){
        view.addSubview(rulesLabel)
        rulesLabel.translatesAutoresizingMaskIntoConstraints = false
        rulesLabel.text = "The value of card represent the number of exercises you do.\n\nJ=11, K=12, Q=13,A=14"
        rulesLabel.font = .systemFont(ofSize: 19, weight: .semibold)
        rulesLabel.textAlignment = .center
        rulesLabel.numberOfLines = 0
        rulesLabel.lineBreakMode = .byWordWrapping
        
        NSLayoutConstraint.activate([
            rulesLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor,constant: 25),
            rulesLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor,constant: 30),
            rulesLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor,constant: -30)
        ])
    }
    
    func configureExerciseLabel(){
        view.addSubview(exerciseLabel)
        exerciseLabel.translatesAutoresizingMaskIntoConstraints = false
        exerciseLabel.text = "♠️ = Push-up\n\n❤️ = Sit-up\n\n♣️ = Burpees\n\n♦️ = Jumping Jacks"
        exerciseLabel.font = .systemFont(ofSize: 22, weight: .semibold)
        exerciseLabel.numberOfLines = 0
        
        NSLayoutConstraint.activate([
            exerciseLabel.topAnchor.constraint(equalTo: rulesLabel.bottomAnchor,constant: 60),
            exerciseLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            exerciseLabel.widthAnchor.constraint(equalToConstant: 200)
        ])
    }
    

}
