require './lib/station.rb'

describe Station do
  context 'zone' do
     it 'to have a name 'do
       station = Station.new('Old Street', 1)
       expect(station.name).to eq('Old Street')
     end
     it 'to have a zone 'do
       station = Station.new('Old Street', 1)
       expect(station.zone).to eq(1)
     end


  end
end
