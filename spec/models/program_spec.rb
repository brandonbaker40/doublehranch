require 'rails_helper'

RSpec.describe Program, type: :model do
  let(:exercise) { FactoryGirl.create(:program) }

  describe "program validations" do
    it { is_expected.to allow_value(nil).for(:name) }
    it { is_expected.to allow_value(nil).for(:start_date) }
    it { is_expected.to allow_value(nil).for(:end_date) }
  end
end
