require 'rails_helper'

feature 'Bananas' do
 scenario 'User can see bananas listed on index' do
   banana = create_banana(
    :smell => false,
    :color => 'yellow'
   )
   another_banana = create_banana
   visit bananas_path
   expect(page).to have_content(banana.color)
   expect(page).to have_content(banana.smell)
   expect(page).to have_content(banana.email)

 end
end
