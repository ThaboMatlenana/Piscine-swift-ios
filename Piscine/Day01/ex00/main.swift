var values: [Value] = Value.allValues
var colors: [Color] = Color.allColors

for cards in values {
    print("\(cards) = \(cards.rawValue)")
}

for cards in colors {
    print("\(cards) = \(cards.rawValue)")
}