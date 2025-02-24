# frozen_string_literal: true

require 'spec_helper'

describe AthenaHealth::Diagnosis do
  subject { AthenaHealth::Diagnosis.new(**attributes) }

  let(:attributes) do
    {
      'snomedcode' => 406_506_008,
      'ranking' => 0,
      'diagnosisid' => 22_614,
      'description' => 'attention deficit hyperactivity disorder',
      'supportslaterality' => false,
      'icdcodes' => [
        { 'description' => 'Attention-deficit hyperactivity disorder, unspecified type',
          'icdcodeallid' => '5386',
          'diagnosiscode' => 'F909',
          'code' => 'F90.9',
          'codeset' => 'ICD10'
        }
      ]
    }
  end

  it 'have proper attributes' do
    expect(subject).to have_attributes(
      snomedcode: 406_506_008,
      ranking: 0,
      diagnosisid: 22_614,
      description: 'attention deficit hyperactivity disorder',
      supportslaterality: false,
      icdcodes: [
        have_attributes(
          description: 'Attention-deficit hyperactivity disorder, unspecified type',
          icdcodeallid: '5386',
          diagnosiscode: 'F909',
          code: 'F90.9',
          codeset: 'ICD10'
        )
      ]
    )
  end
end
