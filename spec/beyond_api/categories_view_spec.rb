# frozen_string_literal: true

RSpec.describe BeyondApi::CategoriesView do
  context "when authorized" do
    before(:all) do
      @session = BeyondApi::Session.new(api_url: ENV["API_URL"])
      @session.token.client_credentials
    end

    describe "#all" do
      it "returns a successful response" do
        expect(@session.categories_view.all).not_to be_instance_of(BeyondApi::Error)
      end
    end

    describe "#find" do
      it "returns an unauthorized error"
    end

    describe "#products" do
      it "returns a successful response"
    end

    describe "#search_by_label" do
      it "returns a successful response"
    end

    describe "#search_by_product_id" do
      it "returns a successful response"
    end

    describe "#search_by_product" do
    end
  end

  context "when unauthorized" do
    before(:all) do
      @session = BeyondApi::Session.new(api_url: ENV["API_URL"])
    end

    describe "#all" do
      it "returns a successful response" do
        expect(@session.categories_view.all).not_to be_instance_of(BeyondApi::Error)
      end
    end

    describe "#find" do
      it "returns a successful response"
    end

    describe "#products" do
      it "returns a successful response"
    end

    describe "#search_by_label" do
      it "returns a successful response"
    end

    describe "#search_by_product_id" do
      it "returns a successful response"
    end

    describe "#search_by_product" do
    end
  end
end
