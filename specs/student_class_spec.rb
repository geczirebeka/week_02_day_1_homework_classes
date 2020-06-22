require('minitest/autorun')
require('minitest/reporters')
require_relative('../student_code_clan')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new()

class TestStudentCodeClan < MiniTest::Test

    def test_student_name()
        student_code_clan = StudentCodeClan.new("Rebeka", "E41")
        assert_equal("Rebeka", student_code_clan.name())
    end

    def test_student_cohort()
        student_code_clan = StudentCodeClan.new("Rebeka", "E41")
        assert_equal("E41", student_code_clan.cohort())
    end







end