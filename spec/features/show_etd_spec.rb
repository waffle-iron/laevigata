# Generated via
#  `rails generate hyrax:work Etd`
require 'rails_helper'

RSpec.feature 'Display an ETD' do
  let(:title) { ['China and its Minority Population'] }
  let(:creator) { ['Eun, Dongwon'] }
  let(:keyword) { ['China', 'Minority Population'] }
  let(:department) { ['Department of Russian and East Asian Languages and Cultures'] }
  let(:school) { ['Emory College of Arts and Sciences'] }
  let(:degree) { ['Bachelor of Arts with Honors'] }
  let(:visibility) { Hydra::AccessControls::AccessRight::VISIBILITY_TEXT_VALUE_PUBLIC }
  let :etd do
    Etd.new(title: title, creator: creator, keyword: keyword, department: department, school: school, degree: degree, visibility: visibility)
  end

  context 'a logged in user' do
    let(:user_attributes) do
      { email: 'test@example.com' }
    end
    let(:user) do
      User.new(user_attributes) { |u| u.save(validate: false) }
    end

    before do
      login_as user
      etd.save
    end

    scenario "Show an ETD" do
      visit("/concern/etds/#{etd.id}")
      expect(page).to have_content etd.title.first
      expect(page).to have_content etd.creator.first
      expect(page).to have_content etd.keyword.first
      expect(page).to have_content etd.department.first
    end
  end
end
