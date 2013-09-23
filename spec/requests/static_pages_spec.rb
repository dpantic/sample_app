require 'spec_helper'

describe "Static page" do

 describe "Home page" do
  it "should have the content 'Sample App'" do
    visit '/static_page/home'
    expect(page).to have_content('Sample App')
  end

  it "should have the base title" do
    visit '/static_page/home'
    expect(page).to have_title("Ruby on Rails Sample App")
  end

  it "should not have a custom page title" do
    visit '/static_page/home'
    expect(page).not_to have_title (' | Home')
  end
end


 describe "Help page" do
   it "should have the content 'Help Page'" do
     visit '/static_page/help'
     expect(page).to have_content('Help Page')
   end
  it "should have the content" do
    visit '/static_page/help'
    expect(page).to have_title('Ruby on Rails')
  end
  it "should not have a custom page title" do
    visit '/static_page/help'
    expect(page).not_to have_title (' | Help')
  end
 end

 describe "About page" do
   it "should have the content About" do
     visit '/static_page/about'
     expect(page).to have_content('About')
   end
   it "should have the base title" do
   visit '/static_page/about'
   expect(page).to have_title ('Ruby on Rails')
   end
  it "should not have a custom page title" do
    visit '/static_page/about'
    expect(page).not_to have_title (' | About Us')
  end
 end

 describe "Contact" do
   it "should have the content Contact" do
   visit '/static_page/contact'
   expect(page).to have_content ('Contact')
   end
   it "should have the base title" do
     visit '/static_page/contact'
     expect(page).to have_title ('Ruby on Rails Sample App')
   end
  it "should not have a custom page title" do
    visit '/static_page/contact'
    expect(page).not_to have_title (' | Contact:')
  end
 end

end
