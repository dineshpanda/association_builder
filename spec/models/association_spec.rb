require 'rails_helper'

RSpec.describe Association, type: :model do
  
    describe "Direct Associations" do

    it { should belong_to(:origin_model) }

    end

    describe "InDirect Associations" do

    end

    describe "Validations" do

    end
end
