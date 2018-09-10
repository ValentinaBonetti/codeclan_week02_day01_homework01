require('minitest/autorun')
require('minitest/rg')
require_relative('../codeclan_student')

class TestCodeclanStudent < MiniTest::Test

  # The setup function resets the variables before every test_ .
  # The @ creates global variables that can be used in the class.
  def setup
    @student = CodeclanStudent.new("Valentina","G8")
  end

  def test_student_name
    assert_equal("Valentina",@student.name)
  end

  def test_student_cohort
    assert_equal("G8",@student.cohort)
  end

  def test_set_student_name
    @student.name = "Vale"
    assert_equal("Vale",@student.name)
  end

  def test_set_student_cohort
    @student.cohort = "G9"
    assert_equal("G9",@student.cohort)
  end

  def test_talk
    result = @student.talk
    assert_equal("I can talk!",result)
  end

  def test_favourite_language
    result = @student.favourite_language("Ruby")
    assert_equal("My favourite language is Ruby", result)
  end 


end
