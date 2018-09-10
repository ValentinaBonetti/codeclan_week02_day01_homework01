require('minitest/autorun')
require('minitest/rg')
require_relative('../sport_team')

class TestSportTeam < MiniTest::Test

  # The setup function resets the variables before every test_ .
  # The @ creates global variables that can be used in the class.
  def setup
    @team = SportTeam.new("Strath Tennis",["Valentina","Sophie","Jennifer","Rosie"],"Gordon")
  end

  def test_team_name
    assert_equal("Strath Tennis",@team.name)
  end

  def test_team_players
    assert_equal(["Valentina","Sophie","Jennifer","Rosie"],@team.players)
  end

  def test_team_coach
    assert_equal("Gordon",@team.coach)
  end

  def test_set_team_coach
    @team.coach = "Matthew"
    assert_equal("Matthew",@team.coach)
  end

  # Create a method that adds a new player to the players array.
  def test_add_team_player
    @team.add_team_player("Chloe")
    assert_equal("Chloe",@team.players.last)
  end

  # Add a method that takes in a string of a player's name
  # and checks to see if they are in the players array.
  def test_check_player_in__true
    result = @team.check_player_in("Valentina")
    assert_equal(true,result)
  end

  # Add a points property into your class that starts at 0.
  def test_add_points
    assert_equal(0,@team.points)
  end

  # Create a method that takes in whether the team has won or lost
  # and updates the points property for a win.
  def test_update_points
    @team.update_points("win")
    assert_equal(3,@team.points)
  end




end
