require 'rails_helper'

RSpec.describe Announcement, type: :model do
  let(:surprise) { FactoryGirl.create(:announcement) }

  describe "announcement validations" do
    it { is_expected.to validate_presence_of(:text) }
    it { is_expected.to validate_presence_of(:start_date) }
    it { is_expected.to validate_presence_of(:end_date) }
  end
end
