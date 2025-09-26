let cards = [8,2,5,3,4]

func handValue(cards: [Int], scoringRules: (Int) -> Int) -> Int {
    var totalValue = 0
    for card in cards {
        totalValue += scoringRules(card)
    }
    return totalValue
}

let allCards = { (card: Int) -> Int in
    return card
}

print(handValue(cards: cards, scoringRules: allCards))

let onlyEvens = { (card: Int) -> Int in
    if card.isMultiple(of: 2) {
        return card
    } else {
        return 0
    }
}

print(handValue(cards: cards, scoringRules: onlyEvens))
