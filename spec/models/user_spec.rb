require 'rails_helper'

RSpec.describe User do
  describe 'validations' do
    it {should validate_presence_of :name}
    it {should validate_presence_of :email}
    it {should validate_presence_of :api_key}
    it {should validate_uniqueness_of :email}
    it {should validate_uniqueness_of :api_key}
  end

  describe 'relationships' do
    it {should have_many :favorites}
  end

  describe '#create_api_key' do
    it 'creates a 32 digit hex string' do
      user = User.new(name: 'Test Name', email: 'test@gmail.com')
      expect(user.api_key).to eq(nil)
      
      user.create_api_key
      expect(user.api_key).to be_a(String)
      expect(user.api_key.chars.count).to eq(32)
    end
  end
end