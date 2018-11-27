require 'rspec'
require './lib/task2/list.rb'

RSpec.describe List do

  let(:list) { described_class.new }

  describe ".add" do
    context "add new element in list" do
      it "shold return head element" do 
        list = List.new
        expect(list.add(2)).to eql(list.head)
      end
    end
  end

   describe ".size" do
    context "count nodes number in listcontaining 5 elements" do
      it "shold return 5" do 
        list = List.new
        (0..5).each { |item| list.add(item)}
        expect(list.size).to eql(6)
      end
    end
  end

  describe ".tail_element" do
    context "get list tail element" do
      it "shold return nil on next value" do 
        (0..5).each { |item| list.add(item)}
        expect(list.tail_element.next).to eql(nil)
      end
    end    
  end

  describe ".reverse_list" do 
    context "reversing list from head to tail" do 
      it "should return source head equals tail after reversing" do 
        (0..5).each { |item| list.add(item)}
        temp_list = list
        list.reverse_list
        expect(list.head.val).to eql(temp_list.head.val)
      end
    end
  end
end