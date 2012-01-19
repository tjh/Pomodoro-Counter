require 'spec_helper'

describe Entry do
  describe '#before_validation' do
    it 'should set the length to 25 if it has not already been set' do
      entry = Entry.new
      entry.valid?
      entry.length.should == 25
    end

    it 'should not set the length if it is already set' do
      entry = Entry.new :length => 20
      entry.valid?
      entry.length.should == 20
    end
  end

  describe '#user' do
    it 'should associate a user record' do
      entry = Entry.new :user => User.new
      entry.user.should_not be_nil
    end
  end
end
