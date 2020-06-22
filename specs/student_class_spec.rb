require('minitest/autorun')
require('minitest/reporters')
require_relative('../student_class')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new()

class TestStudentClass < MiniTest::Test

    def test_student_name()
        student_class = StudentClass.new("Rebeka", "E41")
        assert_equal("Rebeka", student_class.name())
    end

    def test_student_cohort()
        student_class = StudentClass.new("Rebeka", "E41")
        assert_equal("E41", student_class.cohort())
    end

    def test_set_student_name()
        student_class = StudentClass.new("Rebeka", "E41")
        student_class.set_name("George")
        assert_equal("George", student_class.name)
    end

    def test_set_student_cohort()
        student_class = StudentClass.new("Rebeka", "E41")
        student_class.set_cohort("E20")
        assert_equal("E20", student_class.cohort)
    end

    def test_student_talks()
        student_class = StudentClass.new("Rebeka", "E41")
        student_class.student_talks()
        assert_equal("I can talk", student_class.student_talks())
    end

    def test_student_say_favourite_language()
        student_class = StudentClass.new("Rebeka", "E41")
        student_class.say_favourite_language()
        assert_equal("I love Ruby", student_class.say_favourite_language())
    end



end