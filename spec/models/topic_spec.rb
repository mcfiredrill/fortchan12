require 'spec_helper'

describe Topic do
  context 'factory' do
    it 'is valid from the factory' do
      FactoryGirl.build(:topic).should be_valid
    end
  end
end
