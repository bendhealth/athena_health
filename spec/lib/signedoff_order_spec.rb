# frozen_string_literal: true

require 'spec_helper'

describe AthenaHealth::SignedoffOrder do
  subject { described_class.new(signedoff_order_attributes) }

  let(:signedoff_order_attributes) do
    {
      documentid: 123_456,
      status: 'TEST'
    }
  end

  it 'have proper attributes' do
    expect(described_class).to be < AthenaHealth::BaseModel
    expect(subject).to have_attributes(
      documentid: 123_456,
      status: 'TEST'
    )
  end
end
