# frozen_string_literal: true

require 'spec_helper'

describe AthenaHealth::SignedoffOrderCollection do
  subject { described_class.new(signedoff_order_collection_attributes) }

  let(:signedoff_order_collection_attributes) {
    {
      orders: [{
        documentid: 123_456,
        status: 'TEST'
      }],
    }
  }

  it 'have proper attributes' do
    expect(described_class).to be < AthenaHealth::BaseCollection
    expect(subject.orders.map(&:class)).to eq [AthenaHealth::SignedoffOrder]
  end
end
