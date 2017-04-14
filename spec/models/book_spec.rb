require 'rails_helper'

RSpec.describe Book, type: :model do

  	before(:each) do
  		@user = nil
  	end

	describe "user_id validations" do
		it "shouldnt save if theres no user" do
			@book = Book.new
			expect(@book.save).to be(false)
			@book.user = @user
			expect(@book.save).to be(false)
		end
	end

end
