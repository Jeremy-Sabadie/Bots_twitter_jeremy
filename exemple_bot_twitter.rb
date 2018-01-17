# ligne très importante qui appelle la gem. Sans elle, le programme ne saura pas appeler Twitter
require 'twitter'

#Lignes qui enregistrent les clés d'APIs
client = Twitter::REST::Client.new do |config|
  config.consumer_key        = ""
  config.consumer_secret     = ""
  config.access_token        = ""
  config.access_token_secret = ""
end

# ligne qui permet de tweeter
client.update('Bonjour monde!')

 