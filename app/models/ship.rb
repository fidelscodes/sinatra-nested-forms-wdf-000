class Ship
  attr_accessor :name, :type, :booty, :pirate

  @@ships = []

  def initialize(params)
    params.each do |key, value|
      self.send(("#{key}="), value)
    end

    @@ships << self
  end

  def self.all
    @@ships
  end

  def self.clear
    @@ships.clear
  end
end
