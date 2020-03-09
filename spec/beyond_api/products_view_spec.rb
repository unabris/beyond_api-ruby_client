# frozen_string_literal: true

RSpec.describe BeyondApi::ProductsView do
  context "when authorized" do
    before(:all) do
      @session = BeyondApi::Session.new(api_url: ENV["API_URL"])
      @session.token.client_credentials
    end

    describe "#all" do
      it "returns a successful response" do
        expect(@session.products_view.all).not_to be_instance_of(BeyondApi::Error)
      end
    end

    describe "#available_tags" do
      it "returns a successful response"
    end

    describe "#find" do
      it "returns a successful response"
    end

    describe "#search_by_tag" do
      it "returns a successful response"
    end

    describe "#search_by_term" do
      it "returns a successful response"
    end
  end

  context "when unauthorized" do
    before(:all) do
      @session = BeyondApi::Session.new(api_url: ENV["API_URL"])
    end

    describe "#all" do
      it "returns a successful response" do
        expect(@session.products_view.all).not_to be_instance_of(BeyondApi::Error)
      end
    end

    describe "#available_tags" do
      it "returns a successful response"
    end

    describe "#find" do
      it "returns a successful response"
    end

    describe "#search_by_tag" do
      it "returns a successful response"
    end

    describe "#search_by_term" do
      it "returns a successful response"
    end
  end
end
