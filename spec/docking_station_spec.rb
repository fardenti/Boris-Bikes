# in spec/docking_station_spec.rb
require 'docking_station'

describe DockingStation do
    
    describe '#release_bike' do
    it 'releases a bike' do
      bike = Bike.new
      subject.dock(bike)
      # we want to release the bike we docked
      expect(subject.release_bike).to eq bike
    end

    it 'raises an error when there are no bikes available' do
        # Let's not dock a bike first:
        # remember subject == DockingStation.new
        expect { subject.release_bike }.to raise_error 'No bikes available'
      end
  end


  describe '#dock' do
  it 'raises an error when full' do
    DEFAULT_CAPACITY.times { subject.dock Bike.new }
    expect { subject.dock Bike.new }.to raise_error 'Docking station full'
  end
end

it 'allows new docking stations to be created with new capacity'

end
