require 'rails_helper'

RSpec.describe Post, type: :model do
  let(:another_post) { FactoryGirl.create(
    caption: "Super",
    user: user,
    photo_file_name: "pretty",
    photo_content_type: "jpg",
    photo_file_size: 4,
    photo_updated_at: Date.Today,
    hide: false
  )}

  describe "email_template validations" do
    it { is_expected.to allow_value(nil).for(:caption) }
    it { is_expected.to allow_value(nil).for(:photo_file_name) }
    it { is_expected.to allow_value(nil).for(:photo_content_type) }
    it { is_expected.to allow_value(nil).for(:photo_file_size) }
    it { is_expected.to allow_value(nil).for(:photo_updated_at) }
    it { is_expected.to allow_value(true, false).for(:hide) }
  end

  describe "email template associations" do
    it { is_expected.to belong_to(:user) }
  end
end
