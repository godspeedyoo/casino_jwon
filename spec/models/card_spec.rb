require 'rails_helper'

describe Card, type: :model do
  describe '#flip' do
    let(:card) { Card.new }
    it 'flips the card\'s visible state' do
      expect{card.flip}.to change{card.visible}.from(false).to(true)
    end
  end
end
