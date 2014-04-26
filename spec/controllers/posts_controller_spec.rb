require 'spec_helper'

describe PostsController do
  describe 'create' do
    let(:topic) { FactoryGirl.create(:topic) }
    let(:mypost) { FactoryGirl.build(:post) }
    let(:post_params) {
      {name: mypost.name, body: mypost.body, topic_id: topic.id } }
    let(:params) { {post: post_params, format: :json} }
    let(:request) { ->{ post :create, params } }

    subject { request }
    it { should change(Post, :count).by(1) }

    context 'response' do
      before { request.call }
      subject { response }
      it { should be_success }
    end
  end

  describe 'index' do
    let(:request) { ->{ get :index, format: :json } }

    subject { request.call }

    it { should be_success }
  end

  describe 'show' do
    let(:post) { FactoryGirl.create(:post) }
    let(:params) { {id: post.id, format: :json} }
    let(:request) { ->{ get :show, params } }

    subject { request.call }

    it { should be_success }
  end
end
