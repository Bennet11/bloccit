require 'rails_helper'
include RandomData

RSpec.describe SponsoredPostsController, type: :controller do
  let(:my_topic) {Topic.create!(name: RandomData.random_sentence, description: RandomData.random_paragraph)}
  # let(:my_sponsoredpost) { my_topic.SponsoredPost.create!(title: RandomData.random_sentence, body: RandomData.random_sentence, price: RandomData.random_number) }

  describe "GET #show" do
    it "returns http success" do
      # get :show, topic_id: my_topic.id, id: my_sponsoredpost.id
      expect(response).to have_http_status(:success)
    end

    it "renders the #show view" do
      # get :show, topic_id: my_topic.id, id: my_sponsoredpost.id
      expect(response).to render_template :show
    end

    it "assigns my_sponsored_post to @sponsoredpost" do
      # get :show, topic_id: my_topic.id, id: my_sponsoredpost.id
      expect(assigns(:sponsoredpost)).to eq(my_sponsoredpost)
    end
  end

  describe "GET #new" do
    it "returns http success" do
      # get :new, topic_id: my_topic.id
      expect(response).to have_http_status(:success)
    end

    it "renders #new view" do
      # get :new, topic_id: my_topic.id
      expect(response).to render_template :new
    end

    it "initializes @sponsoredpost" do
      # get :new, topic_id: my_topic.id
      expect(assigns(:sponsoredpost)).not_to be_nil
    end
  end

  describe "GET #edit" do
    it "returns http success" do
      # get :edit, topic_id: my_topic.id, id: my_sponsoredpost.id
      expect(response).to have_http_status(:success)
    end

    it "renders #edit view" do
      # get :edit, topic_id: my_topic.id, id: my_sponsoredpost.id
      expect(response).to render_template :edit
    end

    it "assigns sponsoredpost to be updated at @sponsoredpost" do
      # get :edit, topic_id: my_topic.id, id: my_sponsoredpost.id
      sponsoredpost_instance = assigns(:sponsoredpost)

      expect(sponsoredpost_instance.id).to eq my_sponsoredpost.id
      expect(sponsoredpost_instance.title).to eq my_sponsoredpost.title
      expect(sponsoredpost_instance.body).to eq my_sponsoredpost.body
    end
  end
end
