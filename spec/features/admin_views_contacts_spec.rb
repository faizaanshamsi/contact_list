require 'spec_helper'

feature 'admin views contacts' do
  context 'admin can browse all contact inquiries' do
    before {5.times {FactoryGirl.create(:contact)}}
    it 'should display all contacts' do
      visit '/contacts'
    end
  end
end

feature 'admin deletes contact inquiries' do
  context 'admin can delete contact inquiries' do
    before {5.times {FactoryGirl.create(:contact)}}
    it 'allows admin to delete contacts' do
      visit '/contacts'
      expect(Contact.count).to eql(5)
      first('.destroy').click_on('Destroy')
      expect(Contact.count).to eql(4)
    end
  end
end
