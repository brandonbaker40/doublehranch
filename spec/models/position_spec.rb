require 'rails_helper'

RSpec.describe Position, type: :model do
  let(:nice_one) { FactoryGirl.create(:position) }

  describe "position validations" do
    it { is_expected.to allow_value(nil).for(:name) }
    it { is_expected.to allow_value(nil).for(:position_type) }
  end

  describe "position associations" do
    it { is_expected.to have_many(:positions_held) }
    it { is_expected.to have_many(:users) }
  end
end
