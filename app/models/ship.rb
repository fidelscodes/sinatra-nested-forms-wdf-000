class Ship
  attr_accessor :name, :type, :booty

  SHIPS = []

  def initialize(params)
    @name = params[:name]
    @type = params[:type]
    @booty = params[:booty]
  end

  def self.all
    SHIPS.dup.freeze
  end

  def self.clear
    SHIPS.clear
  end
end
