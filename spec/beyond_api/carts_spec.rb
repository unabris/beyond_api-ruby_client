# frozen_string_literal: true

RSpec.describe BeyondApi::Carts do
  context "when authorized" do
    before(:all) do
      @session = BeyondApi::Session.new(api_url: ENV["API_URL"])
      @session.token.client_credentials
    end

    describe "#add_line_item" do
    end

    describe "#create" do
    end

    describe "#create_payment" do
    end

    describe "#create_payment_and_order" do
    end

    describe "#create_order" do
    end

    describe "#delete" do
    end

    describe "#delete_line_item" do
    end

    describe "#delete_shipping_address" do
    end

    describe "#find" do
      it "returns a successful response"
    end

    describe "#payment_method" do
      it "returns a successful response"
    end

    describe "#payment_methods" do
      it "returns a successful response"
    end

    describe "#replace_line_item" do
    end

    describe "#replace_line_items" do
    end

    describe "#set_billing_address" do
    end

    describe "#set_payment_method" do
    end

    describe "#set_payment_method_to_default" do
    end

    describe "#set_shipping_address" do
    end

    describe "#set_shipping_method" do
    end

    describe "#set_shipping_method_to_default" do
    end

    describe "#shipping_method" do
      it "returns a successful response"
    end

    describe "#shipping_methods" do
      it "returns a successful response"
    end
  end

  context "when unauthorized" do
    before(:all) do
      @session = BeyondApi::Session.new(api_url: ENV["API_URL"])
    end

    describe "#add_line_item" do
    end

    describe "#create" do
    end

    describe "#create_payment" do
    end

    describe "#create_payment_and_order" do
    end

    describe "#create_order" do
    end

    describe "#delete" do
    end

    describe "#delete_line_item" do
    end

    describe "#delete_shipping_address" do
    end

    describe "#find" do
      it "returns a successful response"
    end

    describe "#payment_method" do
      it "returns a successful response"
    end

    describe "#payment_methods" do
      it "returns a successful response"
    end

    describe "#replace_line_item" do
    end

    describe "#replace_line_items" do
    end

    describe "#set_billing_address" do
    end

    describe "#set_payment_method" do
    end

    describe "#set_payment_method_to_default" do
    end

    describe "#set_shipping_address" do
    end

    describe "#set_shipping_method" do
    end

    describe "#set_shipping_method_to_default" do
    end

    describe "#shipping_method" do
      it "returns a successful response"
    end

    describe "#shipping_methods" do
      it "returns a successful response"
    end
  end
end
