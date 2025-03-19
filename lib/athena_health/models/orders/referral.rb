# frozen_string_literal: true
module AthenaHealth
  module Orders
    class Referral < BaseModel
      attribute :name, String
      attribute :ordertypeid, Integer
    end
  end
end
