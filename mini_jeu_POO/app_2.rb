require 'bundler'
Bundler.require


require_relative 'lib/game'
require_relative 'lib/player'

=begin 2.3. Version 2.0 : créer un nouveau type de joueur
Nous allons maintenant créer un nouveau type de joueur qui va disposer de plus de compétences et de plus de choix : il sera joué par un humain. Je vais un peu moins t'accompagner dans cette version-là afin de te laisser te creuser la tête et t'obliger à chercher les solutions sur internet ou parmi la communauté.
=end


# E) Orchestrons un combat !

# On va tout coder dans app.rb qui va orchestrer le combat et faire appel à la classe Player. 
#Player.new("Josiane", 10, 5).start_game

# À ma droite "Josiane" : crée un Player répondant à ce doux prénom et stocké dans la variable player1.
Player.new("Josiane", 10, 5).start_game

# À ma gauche "José" : crée un autre Player répondant à ce joli prénom et stocké dans la variable player2.
Player.new("José", 10, 4).start_game

# Présentations des deux combattants : 
puts "Voici l'état de chaque joueur :"
show_state(player1)
puts"\n"
show_state(player2)


# Fight ! Indique que le combat commence avec un puts "Passons à la phase d'attaque :".
puts "Passons à la phase d'attaque :"
# Josiane aura l'honneur d'attaquer la première : fais attaquer player2 par player1 avec la méthode attacks.
player1.attack(player2)

# José ne va pas se laisser faire : fais l'attaque inverse.
player2.attack(player1)


# Boucle while qui continue tant que le joueur 1 a plus de point de vie que le joueur 2.
while player1.hp > 0 and player2.hp > 0
  # Et on continue de faire les attaques.
  player1.attack(player2)
  player2.attack(player1)
end

# On affiche le résultat du combat :
puts "Le combat est terminé :"
show_state(player1)
puts"\n"
show_state(player2)

# On affiche le gagnant :
puts "Le gagnant est #{player1.name}"

while player1.hp > 0 and player2.hp > 0
  # Affiche un message indiquant que le combat va à la prochaine phase.
  puts "Passons à la phase d'attaque :"
  # Josiane attaque player2.
  player1.attack(player2)
  # José attaque player1.
  player2.attack(player1)
end

# Après la fin du combat, on affiche le résultat avec un puts.
puts "Le combat est terminé. Le gagnant est #{player1.name} avec #{player1.hp} points de vie."


binding.pry

