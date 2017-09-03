
require 'rails_helper'

RSpec.feature 'jobs management', type: :feature do
  
  scenario 'User creates a new job with empty fields' do

    visit "https://boundless-qc.herokuapp.com/jobs"
    factorygirl.create(:Job)
    expect(page).to have_content ('New job')
    
    create_job('','','','')
    
    expect(page).to have_content ('1 error prohibited this job from being saved:')
    expect(page).to have_content ('Position can\'t be blank')

  end

  scenario 'User creates a new job' do
    
    visit "https://boundless-qc.herokuapp.com/jobs"
    factorygirl.create(:Job)
    expect(page).to have_content ('New job')
    
    create_job('QA','1','DOING TESTING','Automation and manual')
    
    expect(page).to have_content ('Job was successfully created.')
    
  end

  scenario 'User Show the newly created job' do
     
    visit "https://boundless-qc.herokuapp.com/jobs"
    factorygirl.create(:Job)
    expect(page).to have_content ('New job')
    
    create_job('QA','1','DOING TESTING','Automation and manual')
    click_button 'back'
    expect(page).to have_content ('QA')
   
  scenario 'User Edit the newly created job' do
    visit "https://boundless-qc.herokuapp.com/jobs"
    factorygirl.create(:Job)
    expect(page).to have_content ('New job')
    
    create_job('QA','1','DOING TESTING','Automation and manual')
    click_button 'back'
    expect(page).to have_content ('QA')
    click_button 'edit'
    Fill in 'Position', with: "QA2"
    click_button 'save'
    click_button 'back'
    expect(page).to have_content ('QA2')
         
  scenario 'User Destroy the newly created job' do
    
    visit "https://boundless-qc.herokuapp.com/jobs"
    click_button 'destroy1'
    .
    .

   
    
    
    
    def create_job ( position, level, description, skills)
          Fill in 'Position', with: position
          Fill in 'Level', with: level
          Fill in 'Description', with: description
          Fill in 'Skills', with: skills
          click_button 'save'
    end

end
