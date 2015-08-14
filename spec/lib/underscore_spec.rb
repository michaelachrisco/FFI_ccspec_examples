require 'spec_helper'

RSpec.describe Underscore do
  let(:underscore) { Underscore.new(string) }
  describe '#underscore_c' do
    let(:string) { 'HELLO-World' }
    subject { underscore.call_c }

    it { is_expected.to eq 'hello_world' }
  end

  describe '#underscore_ruby' do
    let(:string) { 'HELLO-World' }
    subject { underscore.call_ruby }

    it { is_expected.to eq 'hello_world' }
  end

  describe '#underscore_test' do
    let(:string) { 'HELLO-World' }
    subject { underscore.call_test }

    it { is_expected.to eq string }
  end
end
