import UIKit

func replace(_ str: String, _ r: String) -> String {
    var stringReplaced = ""
    if str.isEmpty { return stringReplaced }
    let startingRange = Character(String(r.prefix(1)))
    let endingRange = Character(String(r.suffix(1)))
    let alphabeticalSet: [Character] = "abcdefghijklmnopqrstuvwxyz".map { $0 }
    let startingIndex = alphabeticalSet.firstIndex { $0 == startingRange }
    let endingIndex = alphabeticalSet.firstIndex { $0 == endingRange }
    var listOfAllowedCharacters = [Character]()
    for (index, character) in alphabeticalSet.enumerated() {
        if let startingIndex = startingIndex,
           let endingIndex = endingIndex,
           index >= startingIndex,
           index <= endingIndex {
            listOfAllowedCharacters.append(character)
        }
    }
    
    for character in str {
        if listOfAllowedCharacters.contains(character) {
            stringReplaced += "#"
        } else {
            stringReplaced += String(character)
        }
    }
    
    return stringReplaced
}

replace("abcdef", "c-f")
