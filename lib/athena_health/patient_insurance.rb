# frozen_string_literal: true

module AthenaHealth
  class PatientInsurance < BaseModel # rubocop:disable Metrics/ClassLength, cspell: disable
    attribute :insuredfirstname, String
    attribute :insurancepolicyholdercity, String
    attribute :lastupdatedby, String
    attribute :ircname, String
    attribute :insurancephone, String
    attribute :insurancepolicyholderaddress1, String
    attribute :lastupdated, String
    attribute :relationshiptoinsured, String
    attribute :eligibilitylastchecked, String
    attribute :insureddob, String
    attribute :insurancepolicyholder, String
    attribute :insurancepolicyholderstate, String
    attribute :eligibilitystatus, String
    attribute :insurancepolicyholdercountryiso3166, String
    attribute :created, String
    attribute :insuranceid, String
    attribute :insuredcity, String
    attribute :id, String
    attribute :insurancepolicyholdersex, String
    attribute :insurancepackagecity, String
    attribute :insuranceplanname, String
    attribute :insuranceidnumber, String
    attribute :insuredzip, String
    attribute :insurancepayername, String
    attribute :insurancepackagepayerid, String
    attribute :eligibilityreason, String
    attribute :insurancepackagezip, String
    attribute :insuranceplandisplayname, String
    attribute :insurancetype, String
    attribute :insuredaddress, String
    attribute :insurancepolicyholdercountrycode, String
    attribute :insurancepackageid, Integer
    attribute :insuredlastname, String
    attribute :insurancepackageaddress1, String
    attribute :insuredentitytypeid, Integer
    attribute :insuredsex, String
    attribute :insurancepolicyholderdob, String
    attribute :insurancepolicyholderfirstname, String
    attribute :sequencenumber, Integer
    attribute :insuranceproducttype, String
    attribute :insuredstate, String
    attribute :ircid, Integer
    attribute :createdby, String
    attribute :insurancepackagestate, String
    attribute :relationshiptoinsuredid, Integer
    attribute :insuredcountrycode, String
    attribute :insurancepolicyholderlastname, String
    attribute :insuredcountryiso3166, String
    attribute :insurancepolicyholderzip, String
  end
end
