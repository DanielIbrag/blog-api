require "rails_helper"

RSpec.describe "Posts", type: :request do
  describe "GET /posts" do
    it "works! (now write some real specs)" do
      user = User.create!(name: "Peter", email: "peter@test.com", password: "password")
      Post.create!(user_id: user.id, title: Faker::Company.catch_phrase, body: Faker::Hipster.paragraph(sentence_count: 6), image: "https://i.picsum.photos/id/302/200/300.jpg?hmac=b5e6gUSooYpWB3rLAPrDpnm8PsPb84p_NXRwD-DK-1I")
      get "/posts"
      posts = JSON.parse(response.body)
      expect(response).to have_http_status(200)
      expect(posts.length).to eq(1)
    end
  end
end
