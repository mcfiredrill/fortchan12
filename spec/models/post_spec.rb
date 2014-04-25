require 'spec_helper'

describe Post do
  context 'factory' do
    it 'is valid from the factory' do
      FactoryGirl.build(:post).should be_valid
    end
  end
end
