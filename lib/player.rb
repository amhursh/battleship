# require './lib/game'
require './lib/board'
require './lib/ship'
require './lib/space'
require './lib/validation'
require './lib/communication'

require 'pry'

class Player

  attr_reader :player_board,
              :shells_fired,
              :player_ships,
              :board_size

  def initialize(board_size)
    @board_size = board_size
    @player_board = Board.new(board_size)
    @shells_fired = 0
    @player_ships = []
  end

  def determine_ships
    if board_size == 4
      @player_ships = [Ship.new(2), Ship.new(3)]
    elsif board_size == 8
      @player_ships = [Ship.new(2), Ship.new(3), Ship.new(4)]
    elsif board_size == 12
      @player_ships = [Ship.new(2), Ship.new(3), Ship.new(4), Ship.new(5)]
    end
  end

  include Validation

  include Communication

  # def place_ships(coordinates, number_of_ships = @player_ships.count)
  #   if number_of_ships == 2
  #
  #   elsif number_of_ships == 3
  #
  #   else
  #
  #   end
  # end
  #
  # def place_ships_easy(coordinates)
  #   place_two_unit_ship(coordinates)
  #   place_three_unit_ship(coordinates)
  # end
  #
  # def place_ships_intermediate(coordinates)
  #   place_two_unit_ship(coordinates)
  #   place_three_unit_ship(coordinates)
  #   place_four_unit_ship(coordinates)
  # end
  #
  # def place_ships_difficult(coordinates)
  #   place_two_unit_ship(coordinates)
  #   place_three_unit_ship(coordinates)
  #   place_four_unit_ship(coordinates)
  #   place_five_unit_ship(coordinates)
  # end

    #place_each_ship
  end

  def place_two_unit_ship(coordinates)
    if coordinates.split.count == 2 && valid_coordinates_location?(coordinates) && !any_spaces_occupied?(coordinates)
      coordinates.split.each do |coordinate|
        @player_board.game_board[coordinate].add_ship(@player_ships[0])
      end
    else
      Communication.invalid_menu_choice_message
    end
  end

  def place_three_unit_ship(coordinates)
    if coordinates.split.count == 3 && valid_coordinates_location?(coordinates) && !any_spaces_occupied?(coordinates)
      coordinates.split.each do |coordinate|
        @player_board.game_board[coordinate].add_ship(@player_ships[0])
      end
    else
      Communication.invalid_menu_choice_message
    end
  end

  def place_four_unit_ship(coordinates)
    if coordinates.split.count == 4 && valid_coordinates_location?(coordinates) && !any_spaces_occupied?(coordinates)
      coordinates.split.each do |coordinate|
        @player_board.game_board[coordinate].add_ship(@player_ships[0])
      end
    else
      Communication.invalid_menu_choice_message
    end
  end

  def place_five_unit_ship(coordinates)
    if coordinates.split.count == 5 && valid_coordinates_location?(coordinates) && !any_spaces_occupied?(coordinates)
      coordinates.split.each do |coordinate|
        @player_board.game_board[coordinate].add_ship(@player_ships[0])
      end
    else
      Communication.invalid_menu_choice_message
    end
  end

end

# player = Player.new(4)
# player.determine_ships
# player.place_two_unit_ship("A1 B1")
# p player.player_board.game_board
