require './lib/journey.rb'

describe Journey do

  let(:entry_station) { double(:entry_station) }
  let(:exit_station) { double(:station) }
  let(:journey) { Journey.new(entry_station) }

  describe '#initialize' do
    it 'records entry_station' do
      expect(journey.entry_station).to eq(entry_station)
    end
  end

  describe '#finish' do
    it 'records exit_station' do
      journey.finish(exit_station)
      expect(journey.exit_station).to eq(exit_station)
    end
  end

  describe '#completed?' do
    context 'when start journey' do
      it 'returns false' do
        expect(journey.completed?).to eq(false)
      end
    end
    context 'when start finish' do
      it 'returns true' do
        journey.finish(exit_station)
        expect(journey.completed?).to eq(true)
      end
    end
  end

  describe '#fare' do
    it 'returns minimum fare when the journey is complete' do
        journey.finish(exit_station)
        expect(journey.fare).to eq Journey::MINIMUM_FARE
    end
    it 'returns a penalty fare when the journey is incomplete' do
      expect(journey.fare).to eq Journey::PENALTY_FARE
    end
  end

end