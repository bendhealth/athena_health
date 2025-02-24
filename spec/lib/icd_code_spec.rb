# frozen_string_literal: true

require 'spec_helper'

describe AthenaHealth::IcdCode do
  subject { AthenaHealth::IcdCode.new(**attributes) }

  let(:attributes) do
    {
      'description' => 'Attention-deficit hyperactivity disorder, unspecified type',
      'icdcodeallid' => '5386',
      'diagnosiscode' => 'F909',
      'code' => 'F90.9',
      'codeset' => 'ICD10'
    }
  end

  it 'have proper attributes' do
    expect(subject).to have_attributes(
      description: 'Attention-deficit hyperactivity disorder, unspecified type',
      icdcodeallid: '5386',
      diagnosiscode: 'F909',
      code: 'F90.9',
      codeset: 'ICD10'
    )
  end
end
