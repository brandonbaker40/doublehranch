require 'rails_helper'

RSpec.describe Comment, type: :model do
  let(:nice_one) { FactoryGirl.create(:comment) }

  describe "comment validations" do
    it { is_expected.to allow_value(nil).for(:title) }
    it { is_expected.to allow_value(nil).for(:comment) }
    it { is_expected.to allow_value("Post").for(:commentable_type) }
    it { is_expected.to allow_value("comments").for(:role) }
  end

  describe "comment associations" do
    it { is_expected.to belong_to(:commentable) }
    it { is_expected.to belong_to(:user) }
  end
end
