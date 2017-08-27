
require 'rails_helper'

RSpec.feature 'jobs management', type: :feature do
  scenario 'User creates a new job' do
    skip('add scenario for posting a new job')

    visit "https://boundless-qc.herokuapp.com/jobs"
    click_button 'New Job'
    expect(page).to have_content 
    Fill in
    Fill in
    Fill in
    Fill in
    expect(page).to have_content 

  scenario 'User Show the newly created job' do

    
    
  scenario 'User Edit the newly created job' do
    
    
     
  scenario 'User Destroy the newly created job' do


    
    
  end
end
