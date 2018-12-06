require 'rails_helper'

RSpec.describe PositionsHeld, type: :model do
  let(:leadership_role) { FactoryGirl.create(:positions_held) }

  describe "positions held validations" do
    it { is_expected.to allow_value(nil).for(:position) }
    it { is_expected.to allow_value(nil).for(:program) }
  end

  describe "positions held associations" do
    it { is_expected.to belong_to(:user) }
  end
end
