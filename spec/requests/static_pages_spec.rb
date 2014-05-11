require 'spec_helper'

describe "Static pages" do

	#let(:base_title) {"Sample App"}

  describe "Home page" do

    it "should have the content 'Sample App'" do
      visit '/static_pages/home'
      expect(page).to have_content('Sample App')
    end

    it "static page Home should have the base title" do
      visit '/static_pages/home'
      expect(page).to have_title("Sample App | Home")
    end
  end

  describe "Help Page" do

    it "should have the content 'Help Page'" do
      visit '/static_pages/help'
      expect(page).to have_content('Help Page')
    end
  end

  	it "static page Help should have the right title" do
	  	visit '/static_pages/help'
	  	expect(page).to have_title("Sample App | Help")
		end

  describe "About page" do

    it "should have the content 'About Us'" do
      visit '/static_pages/about'
      expect(page).to have_content('About Us')
    end

    it "should have the right title" do
  	visit '/static_pages/about'
  	expect(page).to have_title("Sample App | About Us")
		end
	end
		
		describe "Contact page" do

			it "should have the content 'Contact'" do
				visit '/static_pages/contact'
				expect(page).to have_content('Contact')
			end

			it "should have the right title" do
				visit '/static_pages/contact'
				expect(page).to have_title('Sample App | Contact')
			end

  end
end