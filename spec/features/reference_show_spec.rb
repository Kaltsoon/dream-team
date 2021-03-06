require 'spec_helper'

include TestHelper

describe "Show reference page" do
  
  before :all do
    self.use_transactional_fixtures = false
  end

  before :each do
    DatabaseCleaner.strategy = :truncation
    DatabaseCleaner.start
    visit new_reference_path
  end

  after :each do
    DatabaseCleaner.clean
  end

  after :all do
    self.use_transactional_fixtures = true
  end
  
  #Tests
  
  it "reference remove", js:true do
      create_custom_test_reference("reference_remove")

      page.find('.reference-attributes-popover').click
      click_link("Show")

      click_link("Remove")
      page.driver.browser.switch_to.alert.accept

      expect(page).to have_content "Reference 'reference_remove' has been removed" 
  end

  it "reference not found", js:true do
      create_custom_test_reference("reference")
      page.find('.reference-attributes-popover').click
      Reference.first.destroy
      click_link("Show")  

      expect(page).to have_content "Reference not found or removed!" 
  end                               

  it "single reference download", js:true do
      create_custom_test_reference("reference")
      page.find('.reference-attributes-popover').click
      click_link("Show")  

      expect(page).to have_content "Download"
      click_link("Download")

  end
  
end