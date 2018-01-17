# Lignes très importantes qui appellent les gems twitter et pry.
require 'twitter'
require 'pry'
#Lignes qui enregistrent les clés d'APIs
@client = Twitter::REST::Client.new do |config|
  config.consumer_key        = "YOURCONSUMERKEY"
  config.consumer_secret     = "YOURCONSUMERSECRETKEY"
  config.access_token        = "YOURTOKENKEY"
  config.access_token_secret = "YOURTOKENSECRETKEY"
end



def method_tweet()	
	list = ["@alicedorgeval","@LouiseMalnoy","@alix_fx","@pierre_baudis","@LucMagoutier","@AgatheMuller"]
	list.each do |x|	
		puts x	
	    text = "Je suis élève à The Hacking Projet une formation gratuite au code et je viens de faire un bot Twitter trop cool !"
	    @client.update(text + " " + x)
	end
end

method_tweet()

#On défiini la fonction "method_tweet".
#On crée une variable qui à pour valeur un tableau contenant les noms des destinataires.
#On sépare chaque éléments de "list".
#On créé une variable "text" qui est égale au texte à envouyer.
#On appelle la méthode d'envoi de tweet qui envoi la valeur de "text" + un espace + les noms des destinataires.
#Les @ permetttent de pouvoir appeler des éléments externes à la fonction.