#Lignes très importantes qui appellent les gems twitter et pry.
require 'twitter'
require "pry"
#Lignes qui enregistrent les clés d'APIs
client = Twitter::Streaming::Client.new do |config|
  config.consumer_key        = "YOURCONSUMERKEY"
  config.consumer_secret     = "YOURCONSUMERSECRETKEY"
  config.access_token        = "YOURTOKENKEY"
  config.access_token_secret = "YOURTOKENSECRETKEY"
end


topics = ["coffee", "tea"]
client.filter(track: topics.join(",")) do |object|
  puts object.text if object.is_a?(Twitter::Tweet)
end

#On créé une variable "topics" qui à pour valeur un tableau contenant les mots à suivre.
