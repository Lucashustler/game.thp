require 'bundler'
Bundler.require

require_relative 'lib/game'
require_relative 'lib/player'

------------------------------------------------
|Bienvenue sur 'ILS VEULENT TOUS MA POO' !      |
|Le but du jeu est d'être le dernier survivant' |
------------------------------------------------

while player_name.life_points > 0 || (player1.life_points > 0 && player2.life_points > 0) do
    player_name.show_state_1
    #initialisation du joueur
    puts "Quel est votre prénom ?"
    player_name = gets.chomp
    player_name.HumanPlayer.new

    #initialisation des ennemis
    enemies = []
    player1.Player.new("Josiane")
    player2.Player.new("José")
    enemies << Player.new
    enemies.show_state
    puts = "Veuillez saisir l'un des choix suivants :

    a : Partir à la recherche d'une arme
    s : Partir à la recherche d'un pack de soin
    0 : Attaquer Josiane
    1 : Attaquer José
    "
    menu = gets.chomp
    
end
puts "END GAME"
    if player_name.life_points = 0
        puts "Loser ! Tu as perdu !"
    else
        puts "BRAVO ! TU AS GAGNE !"
    end 