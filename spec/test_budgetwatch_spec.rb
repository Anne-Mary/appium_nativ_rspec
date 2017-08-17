require 'spec_helper'

describe "testing budger app" do 

	before(:all) do 
		Appium::Driver.new(desired_capabilities).start_driver
		Appium.promote_appium_methods(RSpec::Core::ExampleGroup) #A method that includes all the metho
	end

	after(:all) do
		driver_quit
	end 

	it "will find the id title" do
		find_elements(:id, "protect.budgetwatch:id/title")
	end

	it "should click the budget button" do 
		click_budget_button = find_elements(:id, "protect.budgetwatch:id/menu")
		click_budget_button[0].click
	end

	it "should click on the plus button" do 
		click_plus_button = find_elements(accessibility_id: 'Add')
		click_plus_button[0].click
	end

	it"should add name to the name text field" do
		add_name = find_elements(:id, "protect.budgetwatch:id/budgetNameEdit")
		add_name[0].type("Anne's travel Money")
	end

	it"should numbers on the value text field" do
		add_value = find_elements(:id, "protect.budgetwatch:id/valueEdit")
		add_value[0].type("300")
	end

	it "should click on the save button" do 
		click_save_button = find_elements(accessibility_id: 'Save')
		click_save_button[0].click
	end
	it "should select the created budget name" do
		click_budget_name = find_elements(:id, 'protect.budgetwatch:id/budgetName')
		click_budget_name[0].click
	end

	it "should click on the plus button" do 
		click_plus_button = find_elements(accessibility_id: 'Add')
		click_plus_button[0].click
	end
	it"should add name to the name text field" do
		add_name = find_elements(:id, "protect.budgetwatch:id/nameEdit")
		add_name[0].type("Holiday pees")
	end
	it"should add Account to the account text field" do
		add_name = find_elements(:id, "protect.budgetwatch:id/accountEdit")
		add_name[0].type("Natwest")
	end
	it"should add value on the account text field" do
		add_account = find_elements(:id, "protect.budgetwatch:id/valueEdit")
		add_account[0].type("200")
	end
	it"should add note on the notes text field" do
		add_notes = find_elements(:id, "protect.budgetwatch:id/noteEdit")
		add_notes[0].type("The only money I have")
	end
	it"should add a date" do
		add_date = find_elements(:id, "protect.budgetwatch:id/dateEdit")
		add_date[1].click
	end
	


end