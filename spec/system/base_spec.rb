require 'rails_helper'

RSpec.describe "Searches", type: :system do
	let!(:user) { create(:user, confirmed_at: Time.zone.now) }
	
	context "base" do
		before do
			sign_in user
			visit root_path
		end

		it "should navigate to" do
			expect(page).to have_content "Welcome to your Homepage"
		end
	end
end
