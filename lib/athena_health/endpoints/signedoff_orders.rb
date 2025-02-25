# frozen_string_literal: true

module AthenaHealth
  module Endpoints
    module SignedoffOrders
      def signedoff_order_subscription(practice_id:, params: {})
        response = @api.call(
          endpoint: "#{practice_id}/orders/signedoff/subscription",
          method: :get,
          params: params
        )

        Subscription.new(response)
      end

      def create_signedoff_order_subscription(practice_id:, params: {})
        @api.call(
          endpoint: "#{practice_id}/orders/signedoff/subscription",
          method: :post,
          params: params
        )
      end

      def signedoff_orders(practice_id:, params: {})
        response = @api.call(
          endpoint: "#{practice_id}/orders/signedoff",
          method: :get,
          params: params
        )

        AthenaHealth::SignedoffOrderCollection.new(response)
      end
    end
  end
end
