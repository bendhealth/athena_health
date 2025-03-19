require 'spec_helper'

describe AthenaHealth::Endpoints::Orders do
  describe '#all_referral_order_types' do
    let(:attributes) do
      {
        practice_id: 1_959_633,
        search_value: "referral"
      }
    end

    it 'returns instance of PatientCollection' do
      VCR.use_cassette('all_referral_order_types') do
        expect(client.all_referral_order_types(**attributes)).to be_an_instance_of AthenaHealth::Orders::ReferralCollection
      end
    end
  end
end
