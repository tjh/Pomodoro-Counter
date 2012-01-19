require 'spec_helper'

describe User do
  describe '#entries' do
    it 'should associate one or more entries' do
      user = User.new
      user.entries.build
      user.entries.empty?.should be_false
    end
  end
end
