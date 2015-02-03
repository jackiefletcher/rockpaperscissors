class String
  define_method(:beats?) do |opponent|
    player_wins = "Player two is the victor!"
    if (self == "rock").&(opponent == "scissors")
      player_wins = "Player one is the victor!"
    elsif (self == "scissors").&(opponent == "paper")
      player_wins = "Player one is the victor!"
    elsif (self == "paper").&(opponent == "rock")
      player_wins = "Player one is the victor!"
    elsif self == opponent
      player_wins = "Ah! A tie!"
    end
    player_wins
  end
end
