require 'rails_helper'

RSpec.describe Lessons::ImportAllContentJob do
  subject(:job) { described_class.new }

  describe '#perform' do
    before do
      allow(LessonContentImporter).to receive(:import_all)
    end

    it 'delegates to the lesson content importer service' do
      job.perform

      expect(LessonContentImporter).to have_received(:import_all)
    end
  end
end
