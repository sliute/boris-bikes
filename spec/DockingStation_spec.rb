require "Docking_Station"
require "Bike"

describe DockingStation do
  it { is_expected.to respond_to(:release_bike) }
  # it "responds to release_bike method" do
  #  expect(DockingStation.new).to respond_to(:release_bike)
  # end
end

station = DockingStation.new
bike = station.release_bike

describe bike do
  it { is_expected.to respond_to(:working?) }
end
