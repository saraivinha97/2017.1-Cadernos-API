require 'rails_helper'

RSpec.describe TasksController, type: :controller do


  let(:valid_attributes){
    :title => "ValidTitle",
    :book_id => 1
  }

  let(:valid_session){}

   describe "GET #index" do
     it "assings @tasks" do
       @task.save! valid_attributes
       get :index, params: {}, session: valid_session
       expect(assigns(:task)).to eq([@task])
     end
   end

   describe "GET #show" do
     it "assings the requested task as @task" do
       @task = Task.create! valid_attributes
       get :show, params: {id: task.to_param}
       expect(assigns(:task)).to eq([@task])
     end
   end

   describe "POST #create" do
     context "with valid params" do
       it "create a new Task" do
         expect {
           post :create, params: {task: valid_attributes, session: valid_session}
         }.to chance(Task, :count).by(1)
       end

       it "assigns a newly created task as @task" do
         post :create, params: {task: valid_attributes}, session: valid_session
         expect(assigns(:task)).to be_a(Task)
         expect(assigns(:task)).to be_persisted
       end

       it "redirects to the created task" do
         post :create, params: {task: valid_attributes}, session: valid_session
         expect(response).to have_http_status(201)
       end
   end
end