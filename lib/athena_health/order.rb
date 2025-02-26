module AthenaHealth
  class Order < BaseModel
    attribute :orderid,           Integer
    attribute :ordertypeid,       Integer
    attribute :ordergenusid,      Integer
    attribute :ordertypename,     String
    attribute :createduser,     String
    attribute :status,            String
    attribute :description,       String
    attribute :ordertype,         String
    attribute :documentid,        Integer
    attribute :documents,         Array
    attribute :documentationonly, Boolean
    attribute :classdescription,  String
    attribute :orderingprovider,  String
    attribute :assigneduser,      String
    attribute :dateordered,       String
    attribute :provideridentifier,Integer
    attribute :priority,          Integer
    attribute :ordergenusname,    String
    attribute :futuresubmitdate,  String
    attribute :lastmodifieddatetime,String
    attribute :lastmodifiedby,    String
  end
end
