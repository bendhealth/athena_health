# frozen_string_literal: true

module AthenaHealth
  module Orders
    class ReferralCollection < BaseCollection
      attribute :referral_types, Array[Referral]
    end
  end
end
