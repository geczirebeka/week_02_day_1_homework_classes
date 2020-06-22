require('minitest/autorun')
require('minitest/reporters')
require_relative('../sports_team')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new()

class TestSportsTeam < MiniTest::Test

    def test_sports_team_team_name()
        sports_team = SportsTeam.new("Edinburgh FC", ["Juan", "George", "Jessica", "Philipa"], "Coach Denis")
        assert_equal("Edinburgh FC", sports_team.team_name())
    end

    def test_sports_team_players()
        sports_team = SportsTeam.new("Edinburgh FC", ["Juan", "George", "Jessica", "Philipa"], "Coach Denis")
        assert_equal(["Juan", "George", "Jessica", "Philipa"], sports_team.players())
    end

    def test_sports_team_coach()
        sports_team = SportsTeam.new("Edinburgh FC", ["Juan", "George", "Jessica", "Philipa"], "Coach Denis")
        assert_equal("Coach Denis", sports_team.coach())
    end

    def test_sports_team_set_coach_name()
        sports_team = SportsTeam.new("Edinburgh FC", ["Juan", "George", "Jessica", "Philipa"], "Coach Denis")
        sports_team.coach = "Coach Emanuel"
        assert_equal("Coach Emanuel", sports_team.coach)
    end


    def test_sports_team_add_new_player()
        sports_team = SportsTeam.new("Edinburgh FC", ["Juan", "George", "Jessica", "Philipa"], "Coach Denis")
        sports_team.add_new_player("Hijo")
        assert_equal(["Juan", "George", "Jessica", "Philipa", "Hijo"], sports_team.players())
    end

    def test_is_player_in_team_true()
        new_team = SportsTeam.new("Edinburgh FC", ["Juan", "George", "Jessica", "Philipa"], "Coach Denis")
        player = new_team.is_player_in_team("George")
        assert_equal(true, player)
    end

    def test_is_player_in_team_false()
        new_team = SportsTeam.new("Edinburgh FC", ["Juan", "George", "Jessica", "Philipa"], "Coach Denis")
        player = new_team.is_player_in_team("Ben")
        assert_equal(false, player)
    end







end