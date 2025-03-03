# frozen_string_literal: true

require 'spec_helper'

describe AthenaHealth::Endpoints::CustomFields do
  let(:practice_id) { 1_959_633 }
  let(:department_id) { 200 }

  describe '#all_document_types' do
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

  describe "admin_documents" do
    subject { client.admin_documents( practice_id:, department_id:, document_subclass:, start_date:, end_date:) }

    let(:start_date) { '2025-01-01' }
    let(:end_date) { '2025-03-03' }
    let(:document_subclass) { "ADMIN" }

    it 'returns and array of Documents' do
      VCR.use_cassette('admin_documents') do
        expect(subject).to be_an_instance_of AthenaHealth::DocumentCollection
        subject.documents.each do |document|
          expect(document).to be_an_instance_of AthenaHealth::Document
        end
      end
    end
  end

  describe "create_admin_document" do
    subject { client.create_admin_document( practice_id:, department_id:, document_subclass:, attachment_contents:) }

    let(:document_subclass) { "ADMIN" }
    let(:attachment_contents) { File.open('spec/fixtures/sample_doc.pdf', 'rb') }

    it 'creates the document' do
      VCR.use_cassette('create_admin_document') do
        expect(subject).to eql({"adminid" => 285394,"success" => true})
      end
    end
  end
end
