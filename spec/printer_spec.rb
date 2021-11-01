# frozen_string_literal: true
require 'spec_helper'
require './printer'

RSpec.describe Printer do
  include_context("file_helper")

  describe '#print' do
    describe 'when the param is missing' do
      let(:expected_output) { file_fixture('100_items.txt').read }

      it 'returns the list with the default number of items' do
        expect(described_class.print).to eq(expected_output)
      end
    end

    describe 'when times is 0' do
      let(:times) { 0 }
      let(:expected_output) { file_fixture('empty.txt').read }

      it 'returns the empty message' do
        expect(described_class.print(times)).to eq(expected_output)
      end
    end

    describe 'when times is 10' do
      let(:times) { 10 }
      let(:expected_output) { file_fixture('10_items.txt').read }

      it 'returns the list' do
        expect(described_class.print(times)).to eq(expected_output)
      end
    end

    describe 'when times is 100' do
      let(:times) { 100 }
      let(:expected_output) { file_fixture('100_items.txt').read }

      it 'returns the list' do
        expect(described_class.print(times)).to eq(expected_output)
      end
    end

    describe 'when times is 110' do
      let(:times) { 110 }
      let(:expected_output) { file_fixture('110_items.txt').read }

      it 'returns the list' do
        expect(described_class.print(times)).to eq(expected_output)
      end
    end
  end
end
