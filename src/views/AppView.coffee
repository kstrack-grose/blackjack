class window.AppView extends Backbone.View
  el: '#board'

  template: _.template '
    <button class="hit-button">Hit</button>
    <button class="stand-button">Stand</button>
    <button class="double-button">Double Down</button>
    <button class="new-button">New Round</button>
    <div class="player-hand-container"></div>
    <div class="dealer-hand-container"></div>
  '

  events:
    'click .hit-button': -> @model.get('playerHand').hit()
    'click .stand-button': -> @model.get('playerHand').stand()
    'click .double-button': -> @model.get('playerHand').doubleDown()
    'click .new-button': -> @model.newRound()

  initialize: ->
    @render()
    # @model.on 'rerender', @render()

  render: ->
    @$el.children().detach()
    @$el.html @template()
    @$('.player-hand-container').html new HandView(collection: @model.get 'playerHand').el
    @$('.dealer-hand-container').html new HandView(collection: @model.get 'dealerHand').el

