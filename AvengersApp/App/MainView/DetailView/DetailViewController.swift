//
//  DetailViewController.swift
//  AvengersApp
//
//  Created by Donato Gomez on 7/12/21.
//

import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet weak var characterImage: UIImageView?
    @IBOutlet weak var characterDescription: UILabel?
    @IBOutlet weak var characterView: UIView?
    @IBOutlet weak var battlesStackView: UIStackView?
    
    private let characterRepository = CharacterRepository()
    var character: Character?
    
    private let detailBackground = UIColor(named: "DetailBackground")
    
    override func viewDidLoad() {
        super.viewDidLoad()

        updateViews()
        updateNavigationController()
        setBattleLabels()
        
    }
    
    
    private func updateNavigationController() {
        
        navigationController?.navigationBar.topItem?.title = ""
        
        navigationController?.navigationBar.titleTextAttributes = [.font: UIFont.boldSystemFont(ofSize: 20), .foregroundColor: UIColor.white]
    }
    
    
    private func updateViews() {
        
        characterImage?.image = UIImage(named: character?.image ?? "")
        title = character?.name
        characterDescription?.text = character?.description
        
        characterView?.backgroundColor = detailBackground
        characterImage?.layer.cornerRadius = 4.0
        characterDescription?.textColor = .gray
        
    }
    
    
    private func setBattleLabels(){
        
        for character in characterRepository.charactersSample where character.name == title {
            for (index, battle) in character.winBattle.enumerated() {
                let battleLabel = UILabel()
                battleLabel.text = "Battle \(index + 1)"
                battleLabel.font = UIFont.boldSystemFont(ofSize: 12.0)
                battleLabel.textAlignment = .center
                battleLabel.layer.cornerRadius = 6
                battleLabel.layer.masksToBounds = true
                
                battlesStackView?.addArrangedSubview(battleLabel)
                
                if battle == true {
                    
                    battleLabel.textColor = UIColor.white
                    battleLabel.layer.backgroundColor =
                    UIColor.blue.cgColor
                    battleLabel.layer.borderWidth = 0
                    
                } else {
                    
                    battleLabel.layer.borderWidth = 0
                    battleLabel.textColor = UIColor.white
                    battleLabel.layer.backgroundColor =
                    UIColor.red.cgColor
                    
                }
            }
        }
        
        battlesStackView?.alignment = .fill
        battlesStackView?.distribution = .fillEqually
        battlesStackView?.spacing = 8.0
        
    }
}
