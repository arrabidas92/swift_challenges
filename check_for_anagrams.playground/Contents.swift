import UIKit

func isAnagram(_ s1: String, _ s2: String) -> Bool {
    let lowercasedS1 = s1.lowercased()
    let lowercasedS2 = s2.lowercased()
    let listOfCharacters: [Character] = lowercasedS1.map { $0 }
    var listOfCharactersRemoved: [Character] = []
    
    for character in lowercasedS2 {
        if listOfCharacters.contains(character) {
            listOfCharactersRemoved.append(character)
        }
    }
    
    return listOfCharacters.count == listOfCharactersRemoved.count && listOfCharacters.sorted() == listOfCharactersRemoved.sorted()
}

isAnagram("Nope", "Note")
