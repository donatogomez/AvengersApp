//
//  VillainsCollectionViewController.swift
//  AvengersApp
//
//  Created by Donato Gomez on 10/12/21.
//

import UIKit

class VillainsCollectionViewController: UIViewController {
    
    @IBOutlet weak var collectionView: UICollectionView?
    
    private var characters = Characters()
    private let characterRepository = CharacterRepository()
    
    private let villainsBackground = UIColor(named: "VillainsBackground")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        for character in characterRepository.charactersSample where character.isHeroe == false {
            characters.append(character)
        }
        
        collectionView?.backgroundColor = villainsBackground
        collectionView?.register(UINib(nibName: .cellCharacterId, bundle: nil), forCellWithReuseIdentifier: .cellCharacterId)
        collectionView?.dataSource = self
        collectionView?.delegate = self
    }
    
    private func navigateToDetail (character: Character) {
        let storyboard = UIStoryboard(name: .storyboardDetail, bundle: nil)
        
        if let destination = storyboard.instantiateInitialViewController() as? DetailViewController {
            destination.character = character
            navigationController?.pushViewController(destination, animated: true)
        }
        
    }
}

extension VillainsCollectionViewController: UICollectionViewDelegate{
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if characters.count > indexPath.row {
            let selectedCharacter = characters[indexPath.row]
            navigateToDetail(character: selectedCharacter)
        }
    }
}

extension VillainsCollectionViewController: UICollectionViewDataSource, UICollectionViewDelegateFlowLayout{
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        characters.count
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        CGSize(width: (collectionView.frame.width / 2) - 8, height: 240.0)
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: .cellCharacterId, for: indexPath) as? VillainsCollectionViewCell else { return UICollectionViewCell() }
        
        if characters.count > indexPath.row{
            let character = characters[indexPath.row]
            cell.configureViews(image: character.image, name: character.name)
            
        }
        return cell
    }
}

private extension String{
    static let cellCharacterId = "VillainsCollectionViewCell"
    static let storyboardDetail = "Detail"
}
