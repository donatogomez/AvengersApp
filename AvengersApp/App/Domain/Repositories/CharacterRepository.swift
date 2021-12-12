//
//  CharacterRepository.swift
//  AvengersApp
//
//  Created by Donato Gomez on 6/12/21.
//

import Foundation

class CharacterRepository {
    
    let charactersSample = [
        Character(image: "img_heroe_america_captain", name: "Captain America", description: "Recipient of the Super Soldier serum, World War II hero Steve Rogers fights for American ideals as one of the world’s mightiest heroes and the leader of the Avengers.", isHeroe: true, winBattle: [true, false, false]),
        Character(image: "img_heroe_black_panther", name: "Black Panther", description: "T’Challa is the king of the secretive and highly advanced African nation of Wakanda - as well as the powerful warrior known as the Black Panther.", isHeroe: true, winBattle: [true, true, false]),
        Character(image: "img_heroe_black_widow", name: "Black Widow", description: "A deadly assassin is closing in on Natasha Romanoff. Now Natasha must reunite with an unlikely group of spies from her past in order to survive and stop a lethal force from being unleashed on the world.", isHeroe: true, winBattle: [true, false, true]),
        Character(image: "img_heroe_dr_strange", name: "Doctor Strange", description: "Once a highly successful, yet notably egotistical, surgeon, Doctor Stephen Strange endured a terrible accident that led him to evolve in ways he could have never foreseen.", isHeroe: true, winBattle: [true, true, true]),
        Character(image: "img_heroe_gamora", name: "Gamora", description: "Raised by Thanos to be a living weapon, Gamora seeks redemption as a member of the Guardians of the Galaxy, putting her extraordinary fighting abilities to good use.", isHeroe: true, winBattle: [false, true, true]),
        Character(image: "img_heroe_hulk", name: "Hulk", description: "Exposed to heavy doses of gamma radiation, scientist Bruce Banner transforms into the mean, green rage machine called the Hulk.", isHeroe: true, winBattle: [false, false, false]),
        Character(image: "img_heroe_iron_man", name: "Iron Man", description: "Genius. Billionaire. Philanthropist. Tony Stark's confidence is only matched by his high-flying abilities as the hero called Iron Man.", isHeroe: true, winBattle: [true, false, false]),
        Character(image: "img_heroe_marvel_captain", name: "Captain Marvel", description: "Carol Danvers becomes one of the universe's most powerful heroes when Earth is caught in the middle of a galactic war between two alien races.", isHeroe: true, winBattle: [true, true, true]),
        Character(image: "img_heroe_spiderman", name: "Spider-Man", description: "Bitten by a radioactive spider, Peter Parker’s arachnid abilities give him amazing powers he uses to help others, while his personal life continues to offer plenty of obstacles.", isHeroe: true),
        Character(image: "img_heroe_thor", name: "Thor", description: "The son of Odin uses his mighty abilities as the God of Thunder to protect his home Asgard and planet Earth alike.", isHeroe: true, winBattle: [true, false, false]),
        Character(image: "img_villain_yon_rogg", name: "Yon-Rogg", description: "As the leader of a squad of elite Kree soldiers, Yon-Rogg takes newly-recruited Carol Danvers under his wing and trains her.", isHeroe: false, winBattle: [true, true, false]),
        Character(image: "img_villain_dormammu", name: "Dormammu", description: "Originating in the aptly-named Dark Dimension, this incredibly powerful being has ominous plans for Earth and those who live there.", isHeroe: false, winBattle: [true, false, true]),
        Character(image: "img_villain_ego", name: "Ego", description: "Ego, a powerful Celestial being and intergalactic explorer, traveled the cosmos in search of reuniting with his long-lost biological son, Peter Quill, and embarking on his most important mission together as father and son.", isHeroe: false, winBattle: [false, false, false]),
        Character(image: "img_villain_hela", name: "Hela", description: "Hela, Odin’s first born and sister to the Asgardian princes, seeks her place as the rightful heir of Asgard following the death of Odin and her release from imprisonment.", isHeroe: false, winBattle: [false, false, true]),
        Character(image: "img_villain_ivan_vanko", name: "Whiplash", description: "Russian physicist and the son of former Stark Industries employee Anton Vanko. Following the death of his father, Ivan set out for revenge on Tony Stark, as he blamed the Stark family for the humiliation that was brought upon his father.", isHeroe: false, winBattle: [false, true, false]),
        Character(image: "img_villain_red_skull", name: "Red Skull", description: "Rising to power during World War II, Johann Schmidt become one of Earth’s most dangerous threats and one of Captain America’s greatest enemies.", isHeroe: false, winBattle: [true, true, false]),
        Character(image: "img_villain_malekith", name: "Malekith", description: "The Dark Elf of Svartalfheim, Malekith uses his magic and trickery to bring war to all of the Ten Realms.", isHeroe: false, winBattle: [true, false, false]),
        Character(image: "img_villain_ronan", name: "Ronan", description: "As a cruel and fanatical member of the Kree race, Ronan double-crossed Thanos in an attempt to keep the Power Stone for himself.", isHeroe: false, winBattle: [true, true, true]),
        Character(image: "img_villain_thanos", name: "Thanos", description: "The Mad Titan Thanos quests across the universe in search of the Infinity Stones, intending to use their limitless power for shocking purposes.", isHeroe: false, winBattle: [true, false, false]),
        Character(image: "img_villain_ultron", name: "Ultron", description: "An artificial intelligence with access to all the data in the world, Ultron decides that the best way to save the Earth is to destroy all the people on it to make way for a new race of highly intelligent robotic lifeforms.", isHeroe: false, winBattle: [false, true, false])
    ]
}
