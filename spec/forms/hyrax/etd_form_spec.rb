# Generated via
#  `rails generate hyrax:work Etd`
require 'rails_helper'

RSpec.describe Hyrax::EtdForm do
  subject { form }
  let(:etd)     { Etd.new }
  let(:ability) { Ability.new(nil) }
  let(:request) { nil }
  let(:form)    { described_class.new(etd, ability, request) }

  describe "::terms" do
    subject { described_class }
    its(:terms) { is_expected.to include(:title) }
    its(:terms) { is_expected.to include(:department) }
    its(:terms) { is_expected.to include(:school) }
    its(:terms) { is_expected.to include(:degree) }
  end
end
