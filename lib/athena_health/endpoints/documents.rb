# frozen_string_literal: true

module AthenaHealth
  module Endpoints
    module Documents
      def all_document_types(practice_id:, search_value:, params: {})
        params['searchvalue'] = search_value

        response = @api.call(
          endpoint: "#{practice_id}/documenttypes",
          method: :get,
          params: params
        )

        DocumentTypeCollection.new(response)
      end

      def admin_documents( practice_id:, department_id:, document_subclass:, start_date:, end_date:, params: {})
        response = @api.call(
          endpoint: "#{practice_id}/documents/admin",
          method: :get,
          params: params.merge!(
            departmentid: department_id,
            documentsubclass: document_subclass,
            startdate: start_date,
            enddate: end_date
          )
        )

        AthenaHealth::DocumentCollection.new(documents: response['admins'])
      end
    end
  end
end
