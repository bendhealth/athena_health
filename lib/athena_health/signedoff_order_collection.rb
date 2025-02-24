# frozen_string_literal: true

module AthenaHealth
  class SignedoffOrderCollection < BaseCollection
    attribute :orders, [SignedoffOrder]
  end
end
