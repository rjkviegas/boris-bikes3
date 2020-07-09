require 'bike'

describe Bike do
  describe '#broken' do
    it 'results in Bike instance returning false for working?' do
      expect(subject.broken.working?).to eq false
    end
  end
end
