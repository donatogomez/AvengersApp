//
//  HeroesTableViewController.swift
//  AvengersApp
//
//  Created by Donato Gomez on 6/12/21.
//

import UIKit

class HeroesTableViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView?
    
    private var characters = Characters()
    private let characterRepository = CharacterRepository()
    
    private let heroesBackground = UIColor(named: "HeroesBackground")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        for character in characterRepository.charactersSample where character.isHeroe == true {
            characters.append(character)
        }
        
        tableView?.backgroundColor = heroesBackground
        tableView?.dataSource = self
        tableView?.delegate = self

    }
    
    private func navigateToDetail (character : Character) {
        let storyboard = UIStoryboard(name: .storyboardDetail, bundle: nil)
        
        if let destination = storyboard.instantiateInitialViewController() as? DetailViewController {
            destination.character = character
            navigationController?.pushViewController(destination, animated: true)
        }
    }
}

extension HeroesTableViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        characters.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: .cellCharacterId, for: indexPath) as? HeroesTableViewCell else { return UITableViewCell() }
        
        if characters.count > indexPath.row {
            let character = characters[indexPath.row]
            cell.configureViews(image: character.image, name: character.name)
        }
        return cell
    }
}

extension HeroesTableViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 210
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if characters.count > indexPath.row {
            let selectedCharacter = characters[indexPath.row]
            
            navigateToDetail(character: selectedCharacter)
        }
    }
}

private extension String {
    static let cellCharacterId = "HeroesTableViewCell"
    static let storyboardDetail = "Detail"
}


