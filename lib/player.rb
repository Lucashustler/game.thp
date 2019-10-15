class Player
  attr_accessor :name, :life_points

  def initialize(name_player)
    @name = name_player
    @life_points = 10
  end

  def show_state
    puts "#{name} à #{@life_points} points de vie ! "
  end

  def gets_damage(damage_player)
      @life_points -= damage_player
      if @life_points <= 0
        puts " "
        puts "Le joueur #{name} a été tué"
      end
  end

  def attacks(player)
    puts "Le joueur #{name} attaque le joueur #{player.name}"
    damage_player = compute_damage
    puts "Il lui inflige #{damage_player} points de dommages"
    player.gets_damage(damage_player)
  end

  def compute_damage
    return rand(1..6)
  end

end

class HumanPlayer < Player
  attr_accessor :weapon_level

  def initialize(name_player)
    @name = name_player
    @life_points = 100
    @weapon_level = 1
  end

  def show_state_1
    puts "#{name_player} à #{@life_points} points de vie et une arme de niveau #{weapon_level}! "
  end
  def compute_damage
    rand(1..6) * @weapon_level
  end

  def search_weapon(new_weapon)
    rand(1..6) = new_weapon
    puts "Tu as trouvé une arme de niveau #{new_weapon}"
    if new_weapon > @weapon_level 
      @weapon_level = new_weapon
      puts "Better weapon dude, kill it !"
    else
      puts "Same weapon level, keep killing it !"
    end 
  end

  def search_health_pack(up_life_points)
    rand(1..6) = up_life_points
    if up_life_points = 1
      puts "Nothing in this health pack"
    elsif up_life_points >= 2 && up_life_points <= 5
      @life_points += 50 && @life_points < 100
      puts "You found a +50 life_points pack"
    elsif up_life_points = 6
      @life_points += 80 && @life_points < 100
      puts "You found a +80 life_points pack"
    end
  end
end

