# frozen_string_literal: true

require 'spec_helper'

RSpec.describe AthenaHealth::Endpoints::SignedoffOrders, type: :service do
  let(:practice_id) { 1_959_633 }
  describe '#signedoff_order_subscription' do
    it 'retrieves signed-off order subscription', :vcr do
      VCR.use_cassette('signedoff_order_subscription') do
        response = client.signedoff_order_subscription(practice_id:)
        expect(response).to be_a(AthenaHealth::Subscription)
      end
    end
  end

  describe '#create_signedoff_order_subscription' do
    it 'creates a signed-off order subscription', :vcr do
      VCR.use_cassette('create_signedoff_order_subscription') do
        response = client.create_signedoff_order_subscription(practice_id:)
        expect(response).to match({ 'success' => true })
      end
    end
  end

  describe '#signedoff_orders' do
    it 'retrieves signed-off orders', :vcr do
      VCR.use_cassette('signedoff_orders') do
        response = client.signedoff_orders(practice_id:)
        expect(response).to be_a(AthenaHealth::SignedoffOrderCollection)
      end
    end
  end
end
