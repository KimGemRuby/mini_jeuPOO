require 'bundler'
Bundler.require

require_relative 'lib/game'
require_relative 'lib/player'

puts " "
puts " -------------------------------------------"
puts " | B R O L I K VS SANGOKU                 | "
puts " -------------------------------------------"
puts " "


player1 = Player.new("Josiane")
player2 = Player.new ("Jose")


puts "C KOI TON BLAZE?"
puts "Voici l'état de chaque joueur :"
puts "Passons à la phase d'attaque :"

while player1.life_points > 0 && player2.life_points > 0 



















binding.pry