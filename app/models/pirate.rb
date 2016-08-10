class Pirate
  attr_accessor :name, :weight, :height
  attr_reader :ships

  @@all = []

  def initialize(params)
    @name = params[:name]
    @weight = params[:weight]
    @height = params[:height]
    #self.send(("#{ships}="), params[:ships])
    # self.ships= params[:ships]
    params.each do |key, value|
      self.send(("#{key}="), value)
    end
    @@all << self
  end

  def ships=(ships)
    @ships = ships.map do |ship_hash|
      new_ship = Ship.new(ship_hash)
      new_ship.pirate = self
      new_ship
    end
  end

  def self.all
    @@all
  end
end
