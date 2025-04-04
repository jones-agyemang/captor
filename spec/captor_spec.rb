# frozen_string_literal: true

require './lib/captor'

RSpec.describe Captor do
  subject(:captor) { described_class.new(readings:) }

  context 'empty' do
    let(:readings) { [] }

    it 'returns the value zero' do
      expect(captor.closest_to_zero).to eq(0)
    end
  end

  context 'non-empty' do
    let(:readings) do
      [7, -10, 13, 8, 4, -7.2, -12, -3.7, 3.5, -9.6, 6.5, -1.7, -6.2, 7]
    end
    it 'returns value closest to zero' do
      expect(captor.closest_to_zero).to eq(-1.7)
    end
  end
end
