require 'Docking_Station'

describe Van do
    describe '#initialization' do
        it 'Van instances are of Van class' do
            expect(Van.new).to be_a(Van)
        end
    
    describe '#store()'
        it 'Van objects respond to store() method' do
            van1 = Van.new
            dock1 = DockingStation.new.dock(Bike.new)
            expect(van1.store(dock1.working_bikes).bikes).to eq 1
        end

        it 'Van object can only store up to capacity' do
            dock1 = DockingStation.new(25)
            21.times {dock1.dock(Bike.new)}
            van1 = Van.new
            expect {(van1.store(dock1.working_bikes))}.to raise_error('Van at capacity')
        end

    end 
end