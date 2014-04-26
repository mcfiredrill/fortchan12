require 'spec_helper'

describe TopicsController do
  describe 'create' do
    let(:topic_params) { FactoryGirl.attributes_for(:topic) }
    let(:params) { {topic: topic_params, format: :json} }
    let(:request) { ->{ post :create, params } }

    subject { request }
    it { should change(Topic, :count).by(1) }

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
    let(:topic) { FactoryGirl.create(:topic) }
    let(:params) { {id: topic.id, format: :json} }
    let(:request) { ->{ get :show, params } }

    subject { request.call }

    it { should be_success }
  end
end
