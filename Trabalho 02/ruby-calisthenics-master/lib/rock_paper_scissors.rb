class RockPaperScissors

  # Exceptions this class can raise:
  class NoSuchStrategyError < StandardError ; end

   @@win_order = Hash.new
   @@win_order['R'] = 'S'
   @@win_order['S'] = 'P'
   @@win_order['P'] = 'R'

  def self.winner(player1, player2)

    p1_choice = player1[1]
    p2_choice = player2[1]
    strategy_error = "Strategy must be one of R,P,S"

    raise NoSuchStrategyError, strategy_error unless p1_choice.match /[RPS]/
    raise NoSuchStrategyError, strategy_error unless p2_choice.match /[RPS]/

    p1_win = @@win_order[p1_choice] == p2_choice || p1_choice == p2_choice
    return player1 if p1_win

    player2
  end

  def self.tournament_winner(tournament)

      if tournament[0][0].is_a? String
          return self.winner(tournament[0], tournament[1])
      end

      t1 = self.tournament_winner tournament[0]
      t2 = self.tournament_winner tournament[1]

      return self.winner(t1, t2)
  end

end
