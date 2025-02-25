module AthenaHealth
  class Encounter < BaseModel
    attribute :encountertype,      String
    attribute :patientstatusid,    Integer
    attribute :stage,              String
    attribute :status,             String
    attribute :appointmentid,      Integer
    attribute :patientlocationid,  Integer
    attribute :encounterdate,      String
    attribute :encountervisitname, String
    attribute :patientlocation,    String
    attribute :encounterid,        Integer
    attribute :lastupdated,        String
    attribute :patientstatus,      String
    attribute :providerfirstname,	 String	#First name of the provider for this encounter
    attribute :providerid,	       Integer	#The ID of the provider for this encounter
    attribute :providerlastname,	 String	#Last name of the provider for this encounter
    attribute :providerphone,	     String	#Phone number of the provider for this encounter
  end
end
