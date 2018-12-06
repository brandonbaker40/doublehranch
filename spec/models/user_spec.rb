require 'rails_helper'

RSpec.describe User, type: :model do
  let(:princess_peach) { FactoryGirl.create(:user) }

  describe "comment validations" do
    it { is_expected.to validate_presence_of(:first_name) }
    it { is_expected.to validate_presence_of(:last_name) }
    it { is_expected.to validate_presence_of(:email) }
    it { is_expected.to allow_value(nil).for(:phone) }
    it { is_expected.to allow_value(nil).for(:street_address) }
    it { is_expected.to allow_value(nil).for(:city) }
    it { is_expected.to allow_value(nil).for(:state) }
    it { is_expected.to allow_value(nil).for(:country) }
    it { is_expected.to allow_value(nil).for(:zip_code) }
    it { is_expected.to allow_value(nil).for(:nickname) }
    it { is_expected.to allow_value(nil).for(:facebook_username) }
    it { is_expected.to allow_value(nil).for(:twitter_handle) }
    it { is_expected.to allow_value(nil).for(:instagram_username) }
    it { is_expected.to allow_value(nil).for(:tumblr_name) }
    it { is_expected.to allow_value(nil).for(:linkedin_username) }
    it { is_expected.to allow_value(nil).for(:pinterest_name) }
    it { is_expected.to allow_value(nil).for(:profile_photo_file_name) }
    it { is_expected.to allow_value(nil).for(:profile_photo_content_type) }
    it { is_expected.to allow_value(nil).for(:profile_photo_file_size) }
    it { is_expected.to allow_value(true, false).for(:subscribed_to_alumni_newsletter) }
    it { is_expected.to allow_value(true, false).for(:admin) }
    it { is_expected.to validate_inclusion_of(:salutation).in_array(['Mr.', 'Ms.', 'Mrs.', 'Dr.']) }
  end

  describe "comment associations" do
    it { is_expected.to have_many(:email_templates) }
    it { is_expected.to have_many(:positions_held) }
    it { is_expected.to have_many(:positions) }
    it { is_expected.to have_many(:programs) }
    it { is_expected.to have_many(:posts) }
  end
end
