- Keep score of how many times the player and computer each win. Don't use global or constant variables.
- Make it so that the first player to 5 wins the game.

- Add a round counter
- Add scores for each player
- If a player wins, identify the current player and count up 1 on their score
- Then check to see if that score = 5


computer_game_score = 0
player_game_score = 0
round_number = 1

MATCH_WINNING_SCORE = 5

prompt "The score is Player #{player_game_score} - #{computer_game_score} Computer. First to #{MATCH_WINNING_SCORE} wins the match!"
prompt "Round #{round_number}, fight!"

if player_game_score >= MATCH_WINNING_SCORE
  prompt "Player wins the game!"
elsif computer_game_score >= MATCH_WINNING_SCORE
  prompt "Computer wins the game!"



def match_won?(player_game_score, computer_game_score)
  if current_player = MATCH_WINNING_SCORE
