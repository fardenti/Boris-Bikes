require_relative 'bike'
# in docking_station.rb
class DockingStation
  def initialize
    @bikes = []
  end

  def release_bike
    fail 'No bikes available' if @bikes.empty?
    @bikes.pop
  end

  def dock(bike)
    fail 'Docking station full' if @bikes.count >= 20
 # Use an instance variable to store the bike
    # in the 'state' of this instance
    @bikes << bike
  end

  #def bike
   # @bike
  #end
  # this will essentially write the method above
  # on any instances of this class
  attr_reader :bike

end
