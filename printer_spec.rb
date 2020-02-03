# frozen_string_literal: true

require './printer'

describe Printer do
  describe '#print' do
    let(:output) { Printer.print(10) }
    it 'returns the list' do
      expect(output).to eq(<<~EOS
        1
        2
        People
        4
        Power
        People
        7
        8
        People
        Power
      EOS
      )
    end
  end
end
