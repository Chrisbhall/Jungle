require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'Validations' do
    # validation tests/examples here
    it 'validates password' do
      user = User.new(password:"bill").valid?
    end
    it 'validates password confirmation' do
      user = User.new(password_confirmation:"bill").valid?
  end
    it 'validates password & password confirmation are the same' do
      user = User.new(password: "bob", password_confirmation:"bob")
      expect(user.password).to eq(user.password_confirmation)
    end
end
end
