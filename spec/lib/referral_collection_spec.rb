# frozen_string_literal: true

require 'spec_helper'

describe AthenaHealth::Orders::ReferralCollection do
  subject { described_class.new(collection_attributes) }

  let(:collection_attributes) {
    {
      referral_types: [{
        ordertypeid: 387_756,
        name: 'PSYCH REFERRAL'
      }]
    }
  }

  it 'have proper attributes' do
    expect(described_class).to be < AthenaHealth::BaseCollection
    expect(subject.referral_types.map(&:class)).to eq [AthenaHealth::Orders::Referral]
  end
end
