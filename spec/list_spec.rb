# frozen_string_literal: true

require 'rspec'
require './lib/list/list.rb'

RSpec.describe List do
  let(:list) { described_class.new(0) }
  let(:reversed_list) { '4 ~ 3 ~ 2 ~ 1 ~ 0' }

  describe 'add' do
    before { list.add(1) }

    context 'add new node in list' do
      it 'shold return head element' do
        expect(list.size).to eq(2)
      end
    end
  end

  context 'for list with 5 elements' do
    before { (1..4).each { |i| list.add(i) } }

    describe 'size' do
      context 'count nodes number in list containing 5 elements' do
        it 'shold return list size equals 5' do
          expect(list.size).to eq(5)
        end
      end
    end

    describe 'print_list' do
      context 'print all list values' do
        it 'retrun string with all list nodes' do
          expect(list.print_list).to eq('0 ~ 1 ~ 2 ~ 3 ~ 4')
        end
      end
    end

    describe 'reverse_list' do
      before { list.reverse_list }
      
      context 'reversing list from head to tail' do
        it 'should return string with velues in reverse order' do
          expect(list.print_list).to eq(reversed_list)
        end
      end
    end
  end
end
