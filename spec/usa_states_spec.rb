require 'spec_helper'

describe UsaStates do
  subject { described_class }

  it 'has a version number' do
    expect(described_class::VERSION).not_to be nil
  end

  it 'encapsulate internal hash' do
    expect { described_class::HASH }.to raise_error(NameError)
  end

  describe '.codes' do
    subject { described_class.codes }

    it { is_expected.to be_a(Array) }
    it { expect(subject.count).to eq 55 }

    it { is_expected.to include('CA') }
    it { is_expected.to include('NY') }

    it { is_expected.not_to include('AA') }
    it { is_expected.not_to include('California') }
  end

  describe '.all' do
    subject { described_class.all }

    it { is_expected.to be_a(Hash) }
    it { expect(subject.count).to eq 55 }

    it { is_expected.to include('CA' => 'California') }
    it { is_expected.to include('NY' => 'New York') }
  end
end
