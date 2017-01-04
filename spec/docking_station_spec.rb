require "docking_station"
require "bike"

describe DockingStation do
  it { is_expected.to respond_to(:release_bike) }

  it 'releases a good bike' do
    bike = subject.release_bike
    expect(bike).to be_working
  end

  it 'docks a bike' do
    bike = Bike.new
    expect(subject.dock_bike(bike)).to eq bike
  end

  it 'returns a docked bike' do
    bike = Bike.new
    subject.dock_bike(bike)
    expect(subject.bikes).to eq bike
  end

  it { is_expected.to respond_to(:bikes) }
end

=begin
station = DockingStation.new
bike = station.release_bike

describe bike do
  it { is_expected.to respond_to(:working?) }
end

describe DockingStation.new(1) do
  it {is_expected.to have_attributes( :bikes => 1) }
end
=end
