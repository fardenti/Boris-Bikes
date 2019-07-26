require_relative 'bike'
# in docking_station.rb

class DockingStation

  DEFAULT_CAPACITY = 20

  attr_reader :capacity

  def initialize(capacity = DEFAULT_CAPACITY)
  #array stored as an instance variable:
    @bikes = []
    @capacity = capacity
  end

  def release_bike
    fail 'No bikes available' if empty?
    @bikes.pop
  end

  def dock(bike)
    fail 'Docking station full' if full?
    # Use an instance variable to store the bike
    # in the 'state' of this instance
    @bikes << bike
  end

  #using private keyword to ensure these methods cannot be called from 'outside' instances of the DockingStation class.
  private

  def full?
    @bikes.count >= capacity
  end

  def empty?
    @bikes.empty?
  end

end
