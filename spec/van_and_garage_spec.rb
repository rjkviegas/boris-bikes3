require 'Docking_Station'

describe Van do
    describe '#initialization' do
        it 'Van instances are of Van class' do
            expect(Van.new).to be_a(Van)
        end
    end
    describe '#store()' do
        it 'Van objects respond to store() method' do
            van1 = Van.new
            dock1 = DockingStation.new.dock(Bike.new)
            expect(van1.store(dock1.working_bikes).count).to eq 1
        end

        it 'Van object can only store up to capacity' do
            dock1 = DockingStation.new(25)
            21.times {dock1.dock(Bike.new)}
            van1 = Van.new
            expect {(van1.store(dock1.working_bikes))}.to raise_error('Van at capacity')
        end
    end 
end

describe Garage do
    describe '#repair()' do

        let(:bike) { double :bike } 
        it 'repairs broken bikes delivered by a Van object' do
        allow(bike).to receive(:working?).and_return(false)
        allow(bike).to receive(:working=).and_return(true)
        van1 = Van.new
        10.times {van1.store([bike])}
        garage1 = Garage.new
        expect(garage1.repair(van1.stored_bikes)).to eq garage1.stored_bikes
        end
    end
end

=begin    
        let(:bike) { double :bike} 
        let(:van) {double :van }
        it 'repairs broken bikes delivered by a Van object' do
        allow(bike).to receive(:working?).and_return(false)
        allow(bike).to receive(:working=).and_return(true)
        allow(van).to receive(store).and_return([bike])
        garage1 = Garage.new
        garage1.repair(van.stored)
        expect(garage1.)
=end


