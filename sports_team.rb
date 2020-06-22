class SportsTeam

    attr_reader :team_name, :players
    attr_accessor :coach, :points

    def initialize(team_name, players, coach)
        @team_name = team_name
        @players = players
        @coach = coach
        @points = 0
    end

    def add_new_player(name)
        return @players = players << name
    end

    def is_player_in_team(missing_player)
        for player in @players
            if player == missing_player
                return true
            end
        end
        return false
    end

    def update_points(result)
        @points += 3 if result == "won"
        @points if result == "lost"
    end



end

