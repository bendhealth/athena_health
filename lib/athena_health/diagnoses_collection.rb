# frozen_string_literal: true

module AthenaHealth
  class DiagnosesCollection < BaseCollection
    attribute :diagnoses, [Diagnosis]
  end
end
