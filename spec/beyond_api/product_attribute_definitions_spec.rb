# frozen_string_literal: true

RSpec.describe BeyondApi::ProductAttributeDefinitions do
  context "when authorized" do
    before(:all) do
      @session = BeyondApi::Session.new(api_url: ENV["API_URL"])
      @session.token.client_credentials
    end

    describe "#all" do
      it "returns a successful response" do
        expect(@session.product_attribute_definitions.all).not_to be_instance_of(BeyondApi::Error)
      end
    end

    describe "#create" do
    end

    describe "#delete" do
    end

    describe "#find" do
      it "returns a successful response"
    end

    describe "#all_paginated" do
      it "returns a successful response" do
        expect(@session.product_attribute_definitions.all(paginated: false)).not_to be_instance_of(BeyondApi::Error)
      end
    end
  end

  context "when unauthorized" do
    before(:all) do
      @session = BeyondApi::Session.new(api_url: ENV["API_URL"])
    end

    describe "#all" do
      it "returns an unauthorized error" do
        expect(@session.product_attribute_definitions.all.error_id).to eq("unauthorized")
      end
    end

    describe "#create" do
    end

    describe "#delete" do
    end

    describe "#find" do
      it "returns a successful response"
    end

    describe "#all_paginated" do
      it "returns an unauthorized error"
    end
  end
end
