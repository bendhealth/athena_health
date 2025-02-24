# frozen_string_literal: true

module AthenaHealth
  class DocumentTypeCollection < BaseCollection
    attribute :documenttypes, [::AthenaHealth::DocumentType]
  end
end
