require 'rails_helper'

RSpec.describe LearningResourceFacade do
  describe '#resources' do
    it 'creates LearningResource objects' do
      learning_resource = LearningResourceFacade.resources('laos')

      expect(learning_resource).to be_a(LearningResource)
    end
  end
end