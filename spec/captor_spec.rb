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
end
