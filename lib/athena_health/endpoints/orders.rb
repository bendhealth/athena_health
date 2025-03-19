# frozen_string_literal: true

module AthenaHealth
  module Endpoints
    module Orders
      def all_referral_order_types(practice_id:, search_value:, params: {})
        params['searchvalue'] = search_value

        response = @api.call(
          endpoint: "#{practice_id}/reference/order/referral",
          method: :get,
          params: params
        )

        AthenaHealth::Orders::ReferralCollection.new(referral_types: response)
      end
    end
  end
end
