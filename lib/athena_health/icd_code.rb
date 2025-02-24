# frozen_string_literal: true

module AthenaHealth
  class IcdCode < BaseModel
    attribute :description, String
    attribute :icdcodeallid, String
    attribute :diagnosiscode, String
    attribute :code, String
    attribute :codeset, String
  end
end
