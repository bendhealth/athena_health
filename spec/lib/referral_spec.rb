# frozen_string_literal: true

require 'spec_helper'

describe AthenaHealth::Orders::Referral do
  subject { described_class.new(attributes) }

  let(:attributes) do
    {
      ordertypeid: 123_456,
      name: 'PSYCH REFERRAL'
    }
  end

  it 'have proper attributes' do
    expect(described_class).to be < AthenaHealth::BaseModel
    expect(subject).to have_attributes(
      ordertypeid: 123_456,
      name: 'PSYCH REFERRAL'
    )
  end
end
