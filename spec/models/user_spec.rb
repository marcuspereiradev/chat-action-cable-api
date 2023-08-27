# frozen_string_literal: true

require 'rails_helper'

RSpec.describe User, type: :model do
  context 'Validation' do
    it { is_expected.to }

    it 'Should be a valid model' do
      expect(User.new).to be_valid
    end
  end
end
