require 'spec_helper'

describe "Static pages" do

  let(:base_title) { "SVG Store App" }

  describe "Home page" do

    it "should have the h1 'SVG Store app v1.0.0'" do
      visit '/static_pages/home'
      page.should have_selector('h1', :text => 'SVG Store app v1.0.0')
    end

    it "should have the base title" do
      visit '/static_pages/home'
      page.should have_selector('title',
                    :text => "SVG Store App")
    end

    it "should not have a custom page title" do
      visit '/static_pages/home'
      page.should_not have_selector('title', :text => '|Home')
    end
  end


 describe "Help page" do

    it "should have the h1 'Help'" do
      visit '/static_pages/help'
      page.should have_selector('h1', :text => 'Help')
    end
    it "should have the title 'Help'" do
      visit '/static_pages/help'
      page.should have_selector('title',
                        :text => "#{base_title} | Help")
    end
  end

  describe "About page" do

    it "should have the h1 'About Us'" do
      visit '/static_pages/about'
      page.should have_selector('h1', :text => 'About Us')
    end
    it "should have the title 'About Us'" do
      visit '/static_pages/about'
      page.should have_selector('title',
                    :text => "#{base_title} | About Us")
    end
  end

  describe "Contact page" do

    it "should have the h1 'Contact Us" do
      visit '/static_pages/contact'
      page.should have_selector('h1', :text => 'Get in touch!')
    end
    it "should have the title 'Contact'" do
      visit '/static_pages/contact'
      page.should have_selector('title',
                   :text => "#{base_title} | Contact")
    end
  end
end