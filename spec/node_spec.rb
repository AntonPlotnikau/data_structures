# frozen_string_literal: true

require './lib/list/node.rb'
require 'rspec'

RSpec.describe Node do
  let(:node) { described_class.new(5) }

  describe 'initialize' do
    context 'initializing new node with value 5' do
      it 'should create new node with 5 value' do
        expect(node.val).to eql(5)
      end
    end
  end
end
