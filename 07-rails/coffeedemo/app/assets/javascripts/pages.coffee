$(document).ready ->
  $('#clickme').on 'click', ->
    $(this).text 'Thanks'

# Optional parentheses
console.log 'hello world'

# No semicolons
items = ['beer1', 'beer2', 'vb', 'fosters', 'reschs']
console.log items

# Backwards conditionals
maths_is_consistent = true if 2 + 2 == 4
js_maths_is_shitty = true if 0.2 + 0.1 != 0.3
console.log('js maths sucks') if js_maths_is_shitty

# Whitespace significant indentation
if (7 + 7 == 14 and items.length == 5)
  console.log 'everything is awesome'
  console.log 'thanks for that'

# Nicer loops
for item in items
  console.log item

# Ranges
for i in [5..0]
  console.log i

harry = [0..21]

# Fancy comprehensions.
for beer in items when beer isnt 'fosters'
  console.log "i love " + beer

# Short function syntax
drinkBeer = ->
  currentBeer = items.pop()
  console.log "glug glug glug #{ currentBeer }"

while items.length > 0 then drinkBeer()

hello = (name) ->
  console.log 'hello ' + name

hello 'george'


fridge =
  beer: ['vb', 'fosters', 'coopers'],
  chips: ['bbq', 'salt and vinegar'],
  consumeBeer: ->
    @beer.pop()

console.log fridge.consumeBeer()






















