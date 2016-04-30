require 'rails_helper'

RSpec.describe SponsoredPost, type: :model do
  let (:title) { RandomData.random_sentence }
  let (:body) { RandomData.random_paragraph }
  let (:price) { RandomData.random_number }
  let (:name) { RandomData.random_sentence }
  let (:description) { RandomData.random_paragraph }
  let (:topic) { Topic.create!(name: name, description: description) }
  let (:sponsoredpost) {topic.SponsoredPost.create!(title: title, body: body)}
  it { is_expected.to belong_to(:topic) }

  describe "attributes" do
    it "should respond to title" do
      expect(sponsoredpost).to respond_to(:title)
    end

    it "should respond to body" do
      expect(sponsoredpost).to respond_to(:body)
    end

    it "should respond to price" do
      expect(sponsoredpost).to respond_to(:price)
    end

    it "has a body, title and price attribute" do
      expect(sponsoredpost).to have_attributes(title: title, body: body, price: price)
    end
  end
end
