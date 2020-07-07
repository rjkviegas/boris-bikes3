require 'Docking_Station'

describe 'Docking_Station' do
  it 'check for operating docking_station' do
    expect(working(yes_no)).to eq true
  end
end
