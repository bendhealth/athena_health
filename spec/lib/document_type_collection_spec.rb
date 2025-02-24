# frozen_string_literal: true

require 'spec_helper'

describe AthenaHealth::DocumentTypeCollection do
  subject { described_class.new(signedoff_order_collection_attributes) }

  let(:signedoff_order_collection_attributes) {
    {
      documenttypes: [{
        documenttypeid: 387_756,
        name: '(INPT_NURSING_REPEATING): CUSTOM NURSING ORDER'
      }]
    }
  }

  it 'have proper attributes' do
    expect(described_class).to be < AthenaHealth::BaseCollection
    expect(subject.documenttypes.map(&:class)).to eq [AthenaHealth::DocumentType]
  end
end
