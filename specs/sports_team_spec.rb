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





end