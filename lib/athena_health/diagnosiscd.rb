# frozen_string_literal: true

module AthenaHealth
  class DiagnosisCd < BaseModel
    attribute :description, String
    attribute :code, String
    attribute :codeset, String
  end
end
