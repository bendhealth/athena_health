# frozen_string_literal: true

module AthenaHealth
  class Diagnosis < BaseModel
    attribute :diagnosisid, Integer
    attribute :ranking, Integer
    attribute :snomedcode, Integer
    attribute :description, String
    attribute :supportslaterality, Boolean
    attribute :icdcodes, [::AthenaHealth::IcdCode]
  end
end
