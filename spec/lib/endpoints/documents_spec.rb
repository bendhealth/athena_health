# frozen_string_literal: true

require 'spec_helper'

describe AthenaHealth::Endpoints::CustomFields do
  describe '#all_document_types' do
    let(:practice_id) { 1_959_633 }
    let(:search_value) { 'order' }

    it 'returns and array of DocumentType' do
      VCR.use_cassette('all_document_types') do
        response = client.all_document_types(practice_id: practice_id, search_value: search_value)
        expect(response).to be_an_instance_of AthenaHealth::DocumentTypeCollection
        response.documenttypes.each do |document_type|
          expect(document_type).to be_an_instance_of AthenaHealth::DocumentType
        end
      end
    end
  end
end
