require 'rails_helper'

RSpec.describe EmailTemplate, type: :model do
  let(:just_cluttering_my_inbox) { FactoryGirl.create(:email_template) }

  describe "email_template validations" do
    it { is_expected.to validate_presence_of(:label) }
    it { is_expected.to validate_uniqueness_of(:label) }
    it { is_expected.to validate_presence_of(:subject) }
    it { is_expected.to validate_presence_of(:body) }
  end

  describe "email template associations" do
    it { is_expected.to belong_to(:author) }
  end
end
