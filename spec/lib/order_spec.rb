require 'spec_helper'

describe AthenaHealth::Order do
  let(:order_attributes) do
    {
      'status': 'REVIEW',
      'orderid': '123',
      'ordertypeid': '281489',
      'ordergenusid': 824,
      'ordertypename': 'attention        deficit hyperactivity disorder (ADHD) in children: care instructions',
      'createduser': 'p-lcosta2',
      'description': 'Ankle Brace',
      'documentid': '116881',
      'documentationonly': 'false',
      'classdescription': 'durable medical equipment',
      'orderingprovider': 'khaworth0',
      'assigneduser': 'khaworth0',
      'dateordered': '03\/30\/2016 05:46 AM',
      'ordertype': 'DME',
      'provideridentifier': 23,
      'ordergenusname': 'INFORMATION',
      'futuresubmitdate': '2025-02-20',
      'lastmodifieddatetime': '2025-02-20T19:13:44-05:00',
      'lastmodifiedby': 'p-lcosta2',
      'documents': []
    }
  end

  subject { AthenaHealth::Order.new(order_attributes) }

  it_behaves_like 'a model'

  it 'have proper attributes' do
    expect(subject).to have_attributes(
      orderid: 123,
      ordertypeid: 281489,
      ordergenusid: 824,
      ordertypename: 'attention        deficit hyperactivity disorder (ADHD) in children: care instructions',
      createduser: 'p-lcosta2',
      status: 'REVIEW',
      description: 'Ankle Brace',
      documentid: 116881,
      documentationonly: false,
      classdescription: 'durable medical equipment',
      orderingprovider: 'khaworth0',
      assigneduser: 'khaworth0',
      dateordered: '03\/30\/2016 05:46 AM',
      ordertype: 'DME',
      provideridentifier: 23,
      ordergenusname: 'INFORMATION',
      futuresubmitdate: '2025-02-20',
      lastmodifieddatetime: '2025-02-20T19:13:44-05:00',
      lastmodifiedby: 'p-lcosta2',
      documents: []
    )
  end
end
