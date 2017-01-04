require "Docking_Station"
require "Bike"

describe DockingStation do
#  it { is_expected.to respond_to(:release_bike) }
  it { should respond_to :dock_bike }
end

station = DockingStation.new(1)
bike = station.release_bike

describe bike do
  it { is_expected.to respond_to(:working?) }
end

describe DockingStation.new(1) do
  it {is_expected.to have_attributes( :bikes => 1) }
end
