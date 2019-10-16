import Foundation
class Deck : NSObject
{
   static let allSpades    : [Card] = Value.allValues.map({Card(Color:Color.spade, Value:$0)})
   static let allDiamonds    : [Card] = Value.allValues.map({Card(Color:Color.diamond, Value:$0)})
   static let allHearts    : [Card] = Value.allValues.map({Card(Color:Color.heart, Value:$0)})
   static let allClubs        : [Card] = Value.allValues.map({Card(Color:Color.crude, Value:$0)})
   static let allCards        : [Card] = allSpades + allDiamonds + allHearts + allClubs
}