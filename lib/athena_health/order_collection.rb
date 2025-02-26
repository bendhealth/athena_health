module AthenaHealth
  class OrderCollection < BaseCollection
    attribute :orders,          Array[Order]
    attribute :diagnosisicd,    Array[DiagnosisCd]
    attribute :diagnosis,       String
    attribute :diagnosissnomed, String
  end
end
