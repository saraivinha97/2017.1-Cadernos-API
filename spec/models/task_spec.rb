require 'rails_helper'

RSpec.describe Task, type: :model do
  before(:each) do
    @task = FactoryGirl.create :task
  end
  it "Saves a task with valid attributes" do
    expect(@task.save).to be (true)
  end
  describe "Title validations" do

    it "Won't save a task without a Title" do
      @task.title = ""
      expect(@task.save).not_to be (true)
      expect(@task.errors[:title]).to include("can't be blank")
      @task.title = "Valid Title"
      expect(@task.save).to be(true)
    end

    it "Won't save a user with invalid name length" do
      @task.title = "Test"
      expect(task.save).not_to be(true)
      expect(@task.errors[:title]).to include("is too short (minimum is 5 characters)")

      @task.title = "a"*200
      expect(@task.save).not_to be(true)
      expect(@task.errors[:name]).to include("is too long (maximum is 200 characters)")

      @task.title = "Valid Name"
      expect(@user.save).to be(true)
    end

    end

end
