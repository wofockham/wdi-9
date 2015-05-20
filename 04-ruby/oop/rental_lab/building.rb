class Building
  attr_accessor :address, :style, :has_doorman, :has_elevator, :num_floors, :apartments

  def initialize(address, style, has_doorman, has_elevator, num_floors)
    @address = address
    @style = style
    @has_doorman = has_doorman
    @has_elevator = has_elevator
    @num_floors = num_floors
    @apartments = {}
  end

  def to_s
    "#{@address} has #{@style} style and #{@num_floors} floors."
  end
end
