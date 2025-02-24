# frozen_string_literal: true

# cspell: disable
# https://docs.athenahealth.com/api/api-ref/document-type-order#Get-signed-off-orders
module AthenaHealth
  class SignedoffOrder < ::AthenaHealth::BaseModel
    attribute :documentid,	Integer #	The id of this order.
    attribute :clinicalordertypeid,	Integer #	The athena ID for this type of order. Can be used to create another order of this type.
    attribute :administeryn, String # True if the order is marked as administered.
    attribute :approvedby,   String # The user who approved this order. Blank if the order has not been approved.
    attribute :approvedtimestamp,	String #	The timestamp when this order was approved. Blank if the order has not been approved.
    attribute :assigneduser,	String #	User this order is assigned to.
    attribute :classdescription,	String #	A description of the document class for this order.
    attribute :clinicalproviderordertypeid,	Integer #	The Unique ID for the type of order referred to by a clinical provider. A clinical provider here refers to a facility.
    attribute :dateordered,	String #	Timestamp for when this order was created.
    attribute :deniedby,	String #	The user who denied this order. Blank if the order has not been denied.
    attribute :deniedtimestamp,	String #	The timestamp when this order was denied. Blank if the order has not been denied.
    attribute :departmentid,	Integer #	The ID of the department this order is associated with.
    attribute :description,	String #	A description of this document.
    attribute :documentationonly,	String #	A boolean field describing if this order is documentation only.
    attribute :encounterid,	Integer #	The ID of the clinical encounter this order is associated with.
    attribute :externalnote,	String #	Note to the provider.
    attribute :ordergenusname,	String #	It represents a class of vaccine.
    attribute :orderingprovider,	String #	The username of the provider who created the order.
    attribute :outofnetworkreason,	String #	Out of network reason
    attribute :patientid,	Integer #	The ID of the patient this order is associated with.
    attribute :status,	String #	Current status of the order.
  end
end
