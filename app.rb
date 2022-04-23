require 'net/http'
require 'coingecko_ruby'
require 'date'
client = CoingeckoRuby::Client.new

# Nous donne la liste de toutes les coisn référencer pa la platforme
client.coins_list

# Donne le prix courant
client.price('bitcoin')
client.price('bitcoin', currency: 'usd')


# Donne le prix courant de la devise de notre choix
client.exchange_rate(from: 'bitcoin', to: 'usd')
client.get_exchange_rate(from: 'bitcoin', to: 'eth')

# Donne le prix à chaque heure pendant 1 semaine -  [UNIX timestamp for minutely price data, coin price in given currency]
client.hourly_historical_price('bitcoin', days: 1) 


puts client.historical_price('bitcoin', date: '30-12-2017')
