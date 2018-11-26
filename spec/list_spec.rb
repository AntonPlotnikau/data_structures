require 'rspec'
require './lib/task2/list.rb'

RSpec.describe List do

  let(:list) { described_class.new }

  describe ".initialize" do
    context "create new instance of list" do
      it "should returns head equals nil" do
        expect(list.head).to eql(nil)
      end
    end
  end

  describe ".add" do
    context "add new element in list" do
      it "shold return head element" do 
        list = List.new
        expect(list.add(2)).to eql(list.head)
      end
    end
  end

   describe ".size" do
    context "count nodes number in list" do
      it "shold return 5" do 
        list = List.new
        (0..5).each { |item| list.add(item)}
        expect(list.size).to eql(6)
      end
    end
  end
end