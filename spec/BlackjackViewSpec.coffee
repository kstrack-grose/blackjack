assert = chai.assert

describe "the app", ->
  deck = null
  hand = null
  dealer = null
  app = null

  beforeEach ->
    app = new App()
    deck = new Deck()
    hand = deck.dealPlayer()
    dealer = deck.dealDealer()

  
